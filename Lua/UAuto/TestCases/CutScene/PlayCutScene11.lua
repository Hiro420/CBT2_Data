
local baseClass = require('UAuto/Base/UAutoLuaTestBase')
local UAutoLuaTestCase = class("PlayCutScene11",baseClass)
local self = UAutoLuaTestCase
self.TestFixture = "CutScene11"
self.Category = "CutScene" --自行修改分类
self.Description = "天气恢复" --自行修改用例描述

UAutoLuaTestCase.Step_1 = {
	Order = 1, --执行顺序
	Type = CaseType.MonoTest,
	Description = "天气恢复", --步骤描述
	Action = UAutoCoroutine(function()
		yield_return(self:EnterWorldBySex())

		yield_return(self:PlayCutscene(30901,self.TestFixture))
		yield_return(self:WaitCutScene(true,20,true))

		yield_return(self.base:RunGM("quest accept 30904"))
		yield_return(CS.UnityEngine.WaitForSeconds(15))

	end)
}

return self
