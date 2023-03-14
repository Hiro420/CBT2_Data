
local baseClass = require('UAuto/Base/UAutoLuaTestBase')
local UAutoLuaTestCase = class("PlayCutScene09",baseClass)
local self = UAutoLuaTestCase
self.TestFixture = "CutScene9"
self.Category = "CutScene" --自行修改分类
self.Description = "凯亚地城" --自行修改用例描述

UAutoLuaTestCase.Step_1 = {
	Order = 1, --执行顺序
	Type = CaseType.MonoTest,
	Description = "凯亚地城", --步骤描述
	Action = UAutoCoroutine(function()
		yield_return(self:EnterWorldBySex())
		yield_return(self.base:RunGM("dungeon 1"))
		yield_return(CS.UnityEngine.WaitForSeconds(20)) 

		yield_return(self:PlayCutscene(30701,self.TestFixture))
		

		yield_return(self.base:RunGM("jump 3"))
		yield_return(self.base:WaitLevelLoaded("Level"))

	end)
}

return self
