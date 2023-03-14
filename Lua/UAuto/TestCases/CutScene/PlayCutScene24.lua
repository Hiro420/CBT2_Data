local baseClass = require("UAuto/Base/UAutoLuaTestBase")
local UAutoLuaTestCase = class("PlayCutScene24", baseClass)
local self = UAutoLuaTestCase
self.TestFixture = "CutScene24"
self.Category = "CutScene" --自行修改分类
self.Description = "芭芭拉还琴" --自行修改用例描述

UAutoLuaTestCase.Step_1 = {
    Order = 1, --执行顺序
    Type = CaseType.MonoTest,
    Description = "芭芭拉还琴", --步骤描述
    Action = UAutoCoroutine(
        function()
			yield_return(self:EnterWorldBySex())
			
			yield_return(self:GotoPos("2008 250 -279"))
		
			yield_return(self:PlayCutscene(39402,self.TestFixture))


        end
    )
}

return self