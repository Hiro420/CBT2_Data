local baseClass = require("UAuto/Base/UAutoLuaTestBase")
local UAutoLuaTestCase = class("PlayCutScene30", baseClass)
local self = UAutoLuaTestCase
self.TestFixture = "CutScene30"
self.Category = "CutScene" --自行修改分类
self.Description = "可莉登场" --自行修改用例描述

UAutoLuaTestCase.Step_1 = {
    Order = 1, --执行顺序
    Type = CaseType.MonoTest,
    Description = "可莉登场", --步骤描述
    Action = UAutoCoroutine(
        function()
			yield_return(self:EnterWorldBySex())
            yield_return(self.base:RunGM("jump 1004"))
            yield_return(CS.UnityEngine.WaitForSeconds(10))
			
			yield_return(self:GotoPos("6.47 0.16 7.343"))

			yield_return(self:PlayCutscene(1020001,self.TestFixture))

        end
    )
}

return self