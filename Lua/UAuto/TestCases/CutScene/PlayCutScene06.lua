
local baseClass = require('UAuto/Base/UAutoLuaTestBase')
local UAutoLuaTestCase = class("PlayCutScene06",baseClass)
local self = UAutoLuaTestCase
self.TestFixture = "CutScene6"
self.Category = "CutScene" --自行修改分类
self.Description = "初入蒙德" --自行修改用例描述

UAutoLuaTestCase.Step_1 = {
	Order = 1, --执行顺序
	Type = CaseType.MonoTest,
	Description = "初入蒙德", --步骤描述
	Action = UAutoCoroutine(function()
		yield_return(self:EnterWorldBySex())
		
		yield_return(self:GotoPos("2210 210 -965"))

		yield_return(self:PlayCutscene(36001,self.TestFixture))

	end)
}

return self
