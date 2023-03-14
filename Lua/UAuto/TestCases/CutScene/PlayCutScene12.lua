
local baseClass = require('UAuto/Base/UAutoLuaTestBase')
local UAutoLuaTestCase = class("PlayCutScene12",baseClass)
local self = UAutoLuaTestCase
self.TestFixture = "CutScene12"
self.Category = "CutScene" --自行修改分类
self.Description = "温迪的激奏" --自行修改用例描述

UAutoLuaTestCase.Step_1 = {
	Order = 1, --执行顺序
	Type = CaseType.MonoTest,
	Description = "温迪的激奏", --步骤描述
	Action = UAutoCoroutine(function()
		yield_return(self:EnterWorldBySex())

		yield_return(self:GotoPos("2330 250 -733"))

		yield_return(self:PlayCutscene(37201,self.TestFixture))

	end)
}

return self
