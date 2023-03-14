--baseClass提供基础接口
local baseClass = require("UAuto/Server/ServerBase")
--所有testcase继承baseClass
local UAutoLuaTestCase = class("Player",baseClass)
local self = UAutoLuaTestCase
self.TestFixture = "Player协议测试"
self.Category = "服务器"
self.Description="收发角色相关协议的测试"
--判断返回的retcode是否为成功，仅能判断rsp
function IsSucc(retcode)
    assert(retcode == 0, "get the rsp failed and retmsg is :"..self:getRetCode(retcode)) 
end

--判断换人协议
function OnChangeAvatarRsp(proto)
    
end

--判断游戏时间改变协议
function OnChangeGameTimeRsp(proto)

end

--获得玩家token协议
function OnGetPlayerTokenRsp(proto)
    IsSucc(proto.Retcode)
    print(proto)
end


self.Step1 = {
	Order = 1,
	Type = CaseType.MonoTest,
	Description = "测试数据",
    Action = UAutoCoroutine(function()
        self.base:ChangeWorldTime(48)
        local playerUid = self.base:GetPlayerUid()
        print(playerUid)
		
	end)
}

return self