
local baseClass = require('UAuto/Base/UAutoLuaTestBase')
local UAutoLuaTestCase = class("PlayCutScene18",baseClass)
local self = UAutoLuaTestCase
self.TestFixture = "CutScene18"
self.Category = "CutScene" --自行修改分类
self.Description = "风龙巢穴" --自行修改用例描述

UAutoLuaTestCase.Step_1 = {
	Order = 1, --执行顺序
	Type = CaseType.MonoTest,
	Description = "风龙巢穴", --步骤描述
	Action = UAutoCoroutine(function()
		yield_return(self:EnterWorldBySex())
		
		yield_return(CS.UnityEngine.WaitForSeconds(2))

		yield_return(self.base:RunGM("dungeon 2002"))
		yield_return(CS.UnityEngine.WaitForSeconds(10))

		yield_return(self:WaitCutScene(true,20,true))

		yield_return(CS.UnityEngine.WaitForSeconds(5))

		yield_return(self.base:RunGM("jump 3"))
		yield_return(self.base:WaitLevelLoaded("Level"))
		yield_return(CS.UnityEngine.WaitForSeconds(5))
		
	end)
}

return self
