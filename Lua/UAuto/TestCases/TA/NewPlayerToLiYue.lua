require("UAuto/TestCases/TA/Config/RoutePoint")
local baseClass = require("UAuto/TestCases/TA/TABase")
local UAutoLuaTestCase = class("NewPlayerToLiYue", baseClass)
local self = UAutoLuaTestCase
self.TestFixture = "PlayerToLiYue"
self.Category = "TA测试_正式_4" --自行修改分类
self.Description = "TA_流程测试:璃月场景内存用例" --自行修改用例描述

local caseCate = "SceneMeshMemory"

function MoveByRoute(route)
    for idx, pos in ipairs(route) do
        yield_return(self.base:MoveToPosition(pos))
        -- yield_return(recodeMemory())
        yield_return(self:TAUpLoadDate(0))
    end
end

--录点工具函数

function Record()
    local avatarpos = self.base:GetAvatarLocation()
    local start = 0
    local basepostr = "CS.UnityEngine.Vector3"
    local content = ""
    while start < 150 do
        local avatarpos = self.base:GetAvatarLocation()
        local poststr = "(" .. tostring(avatarpos.x) .. "," .. tostring(avatarpos.y) .. "," .. tostring(avatarpos.z) .. ")"
        print(poststr)
        content = content .. basepostr .. poststr .. ",\n"
        yield_return(CS.UnityEngine.WaitForSeconds(2))
        start = start + 2
    end
    local f = io.open("testpos.txt", "a")
    f:write(content)
    f:close()
end

UAutoLuaTestCase.Step_1 = {
    Order = 1, --执行顺序
    Type = CaseType.MonoTest,
    Description = "初始化", --步骤描述
    Action = UAutoCoroutine(
        function()
            yield_return(self:TAinit())
        end
    )
}

UAutoLuaTestCase.Step_2 = {
    Order = 2, --执行顺序
    Type = CaseType.MonoTest,
    Description = "轻策庄", --步骤描述
    Action = UAutoCoroutine(
        function()

            -- yield_return(unlockAll())
            -- yield_return(RunPregm())
            -- yield_return(self.TAinitEnv())

            -- yield_return(StartStatUnit("轻策庄"))
            yield_return(self:TAStartRecord(caseCate, "轻策庄"))

            local route_qcz = RouteData.Route1_qcz
            yield_return(self:GotoPos("1758 255 559"))
            yield_return(MoveByRoute(route_qcz))

            yield_return(self:TAUploadDB())
            
        end
    )
}

UAutoLuaTestCase.Step_3 = {
    Order = 3, --执行顺序
    Type = CaseType.MonoTest,
    Description = "荻花洲", --步骤描述
    Action = UAutoCoroutine(
        function()
            -- yield_return(StartStatUnit("荻花洲"))
            yield_return(self:TAStartRecord(caseCate, "荻花洲"))

            local route_dhz = RouteData.Route2_dhz
            yield_return(self:GotoPos("1576 227 212"))
            yield_return(MoveByRoute(route_dhz))

            -- yield_return(uploadData())
            yield_return(self:TAUploadDB())

        end
    )
}

UAutoLuaTestCase.Step_4 = {
    Order = 4, --执行顺序
    Type = CaseType.MonoTest,
    Description = "石门", --步骤描述
    Action = UAutoCoroutine(
        function()
            -- yield_return(StartStatUnit("石门"))
            yield_return(self:TAStartRecord(caseCate, "石门"))

            local route_sm = RouteData.Route3_sm
            yield_return(self:GotoPos("1485 200 305"))
            yield_return(MoveByRoute(route_sm))

            -- yield_return(uploadData())
            yield_return(self:TAUploadDB())
        end
    )
}

UAutoLuaTestCase.Step_5 = {
    Order = 5, --执行顺序
    Type = CaseType.MonoTest,
    Description = "望舒客栈", --步骤描述
    Action = UAutoCoroutine(
        function()
            -- yield_return(StartStatUnit("望舒客栈"))
            yield_return(self:TAStartRecord(caseCate, "望舒客栈"))

            local route_wskz = RouteData.Route4_wskz
            yield_return(self:GotoPos("1160 204 283"))
            yield_return(MoveByRoute(route_wskz))

            -- yield_return(uploadData())
            yield_return(self:TAUploadDB())
        end
    )
}

UAutoLuaTestCase.Step_6 = {
    Order = 6, --执行顺序
    Type = CaseType.MonoTest,
    Description = "归离原", --步骤描述
    Action = UAutoCoroutine(
        function()
            -- yield_return(StartStatUnit("归离原"))
            yield_return(self:TAStartRecord(caseCate, "归离原"))
            local route_gly = RouteData.Route5_gly
            yield_return(self:GotoPos("539 209 370"))
            yield_return(MoveByRoute(route_gly))

            -- yield_return(uploadData())
            yield_return(self:TAUploadDB())
        end
    )
}

UAutoLuaTestCase.Step_7 = {
    Order = 7, --执行顺序
    Type = CaseType.MonoTest,
    Description = "遁玉", --步骤描述
    Action = UAutoCoroutine(
        function()
            -- yield_return(StartStatUnit("遁玉"))
            yield_return(self:TAStartRecord(caseCate, "遁玉"))
            local route_dy = RouteData.Route6_dy
            yield_return(self:GotoPos("-556 225 1039"))
            yield_return(MoveByRoute(route_dy))

            -- yield_return(uploadData())
            yield_return(self:TAUploadDB())
        end
    )
}

UAutoLuaTestCase.Step_8 = {
    Order = 8, --执行顺序
    Type = CaseType.MonoTest,
    Description = "玉衡山", --步骤描述
    Action = UAutoCoroutine(
        function()
            -- yield_return(StartStatUnit("玉衡山"))
            yield_return(self:TAStartRecord(caseCate, "玉衡山"))
            local route_yhs = RouteData.Route7_yhs
            yield_return(self:GotoPos("-459 245 498"))
            yield_return(MoveByRoute(route_yhs))

            -- yield_return(uploadData())
            yield_return(self:TAUploadDB())
        end
    )
}

UAutoLuaTestCase.Step_9 = {
    Order = 9, --执行顺序
    Type = CaseType.MonoTest,
    Description = "绝云间", --步骤描述
    Action = UAutoCoroutine(
        function()
            -- yield_return(StartStatUnit("绝云间"))
            yield_return(self:TAStartRecord(caseCate, "绝云间"))
            local route_jyj = RouteData.Route8_jyj
            yield_return(self:GotoPos("953 269 1296"))
            yield_return(MoveByRoute(route_jyj))

            -- yield_return(uploadData())
            yield_return(self:TAUploadDB())
        end
    )
}

UAutoLuaTestCase.Step_10 = {
    Order = 10, --执行顺序
    Type = CaseType.MonoTest,
    Description = "璃月港(main上部分区域没碰撞，不全", --步骤描述
    Action = UAutoCoroutine(
        function()
            -- yield_return(StartStatUnit("璃月港"))
            yield_return(self:TAStartRecord(caseCate, "璃月港"))
            local route_lyg = RouteData.Route9_lyg
            yield_return(self:GotoPos("-435 239 421"))
            yield_return(MoveByRoute(route_lyg))

            -- yield_return(uploadData())
            yield_return(self:TAUploadDB())
        end
    )
}

return self
