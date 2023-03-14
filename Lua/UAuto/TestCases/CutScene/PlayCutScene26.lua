local baseClass = require("UAuto/Base/UAutoLuaTestBase")
local UAutoLuaTestCase = class("PlayCutScene26", baseClass)
local self = UAutoLuaTestCase
self.TestFixture = "CutScene26"
self.Category = "CutScene" --自行修改分类
self.Description = "魈登场" --自行修改用例描述

UAutoLuaTestCase.Step_1 = {
    Order = 1, --执行顺序
    Type = CaseType.MonoTest,
    Description = "魈登场", --步骤描述
    Action = UAutoCoroutine(
        function()
			yield_return(self:EnterWorldBySex())
			
			yield_return(self:GotoPos("904.2 271.5 345.6"))

			yield_return(self:PlayCutscene(100301,self.TestFixture))

        end
    )
}

return self