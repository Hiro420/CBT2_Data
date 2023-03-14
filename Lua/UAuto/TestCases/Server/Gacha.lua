--baseClass提供基础接口
local baseClass = require("UAuto/Base/UAutoLuaTestBase")
--所有testcase继承baseClass
local UAutoLuaTestCase = class("Gacha", baseClass)
local self = UAutoLuaTestCase

self.TestFixture = "抽奖协议测试"
self.Category = "服务器"
self.Description = "抽奖系统的自动化用例"

--判断返回的retcode是否为成功，仅能判断rsp
function IsSucc(retcode)
    assert(retcode == 0, "get the rsp failed and retmsg is :" .. self:getRetCode(retcode))
end


local random = 0
local filename = ""
local GachaInfoList = {}

function OnDoGachaRsp(proto)
    local itemlist = proto.GachaItemList
    random = proto.NewGachaRandom
    for i = 0, 9, 1 do
        local item = itemlist[i]
        local itemId = item.GachaItem_.ItemId
        local itemCount = item.GachaItem_.Count
        local f = io.open(filename, "a")
        local content = tostring(itemId) .. "\n"
        f:write(content)
        f:close()
    end
end

function OnGetGachaInfoRsp(proto)
    random = proto.GachaRandom
    GachaInfoList = proto.GachaInfoList
    print(GachaInfoList)
end

self.Step1 = {
    Order = 1,
    Type = CaseType.MonoTest,
    Description = "根据返回的扭蛋池配置进行抽奖",
    Action = UAutoCoroutine(
        function()            
            local gachaProto = CS.Proto.DoGachaReq()
            local getGachaInfo = CS.Proto.GetGachaInfoReq()
            yield_return(self.base:SendMessageAndWaitRecv(getGachaInfo, "GetGachaInfoRsp", OnGetGachaInfoRsp))

            for index =0,1,1 do
                local gachaInfo = GachaInfoList[index]
                filename = tostring(gachaInfo.GachaType)..".txt"
                os.remove(filename)
                local costItemId = gachaInfo.CostItemId
                local gmmsg = "item add "..tostring(costItemId).." 10000"
                --增加一万个抽奖的道具
                yield_return(self.base:RunGM(gmmsg))
                for i = 1, 1000, 1 do
                    gachaProto.GachaType = gachaInfo.GachaType
                    gachaProto.GachaTimes = 10
                    gachaProto.GachaRandom = random
                    gachaProto.GachaScheduleId = gachaInfo.ScheduleId
                    yield_return(self.base:SendMessageAndWaitRecv(gachaProto, "DoGachaRsp", OnDoGachaRsp))
                end
                -- 清空背包
                yield_return(self.base:RunGM("item clear"))
            end
        end
    )
}

return self
