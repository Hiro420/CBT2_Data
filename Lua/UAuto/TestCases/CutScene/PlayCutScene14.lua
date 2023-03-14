
local baseClass = require('UAuto/Base/UAutoLuaTestBase')
local UAutoLuaTestCase = class("PlayCutScene14",baseClass)
local self = UAutoLuaTestCase
self.TestFixture = "CutScene14"
self.Category = "CutScene" --自行修改分类
self.Description = "偷琴失败" --自行修改用例描述

UAutoLuaTestCase.Step_1 = {
	Order = 1, --执行顺序
	Type = CaseType.MonoTest,
	Description = "偷琴失败", --步骤描述
	Action = UAutoCoroutine(function()
		yield_return(self:EnterWorldBySex())
		yield_return(self.base:RunGM("jump 1005"))
		yield_return(CS.UnityEngine.WaitForSeconds(10))
		yield_return(CS.UnityEngine.WaitForSeconds(2))

		yield_return(self:PlayCutscene(37501,self.TestFixture))

		yield_return(self.base:RunGM("jump 3"))
		yield_return(self.base:WaitLevelLoaded("Level"))
	end)
}

return self
