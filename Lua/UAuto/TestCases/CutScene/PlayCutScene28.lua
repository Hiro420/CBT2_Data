local baseClass = require("UAuto/Base/UAutoLuaTestBase")
local UAutoLuaTestCase = class("PlayCutScene28", baseClass)
local self = UAutoLuaTestCase
self.TestFixture = "CutScene28"
self.Category = "CutScene" --自行修改分类
self.Description = "海灯节" --自行修改用例描述

UAutoLuaTestCase.Step_1 = {
    Order = 1, --执行顺序
    Type = CaseType.MonoTest,
    Description = "海灯节", --步骤描述
    Action = UAutoCoroutine(
        function()
			yield_return(self:EnterWorldBySex())
			
			yield_return(self:GotoPos("492.2 211.5 282.6"))

			yield_return(self:PlayCutscene(4000501,self.TestFixture))

        end
    )
}

return self