local baseClass = require("UAuto/Base/UAutoLuaTestBase")
local UAutoLuaTestCase = class("PlayCutScene25", baseClass)
local self = UAutoLuaTestCase
self.TestFixture = "CutScene25"
self.Category = "CutScene" --自行修改分类
self.Description = "请仙仪式" --自行修改用例描述

UAutoLuaTestCase.Step_1 = {
    Order = 1, --执行顺序
    Type = CaseType.MonoTest,
    Description = "请仙仪式", --步骤描述
    Action = UAutoCoroutine(
        function()
			yield_return(self:EnterWorldBySex())
			
			yield_return(self:GotoPos("2564, 213, -1327"))

			yield_return(self:PlayCutscene(100001,self.TestFixture))


        end
    )
}

return self