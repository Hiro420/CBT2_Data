local baseClass = require("UAuto/Base/UAutoLuaTestBase")
local UAutoLuaTestCase = class("PlayCutScene27", baseClass)
local self = UAutoLuaTestCase
self.TestFixture = "CutScene27"
self.Category = "CutScene" --自行修改分类
self.Description = "公子逃离" --自行修改用例描述

UAutoLuaTestCase.Step_1 = {
    Order = 1, --执行顺序
    Type = CaseType.MonoTest,
    Description = "公子逃离", --步骤描述
    Action = UAutoCoroutine(
        function()
			yield_return(self:EnterWorldBySex())
			
			yield_return(self:GotoPos("-514.2 242.5 135.6"))

			yield_return(self:PlayCutscene(100002,self.TestFixture))

        end
    )
}

return self