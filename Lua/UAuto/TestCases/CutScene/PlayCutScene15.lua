
local baseClass = require('UAuto/Base/UAutoLuaTestBase')
local UAutoLuaTestCase = class("PlayCutScene15",baseClass)
local self = UAutoLuaTestCase
self.TestFixture = "CutScene15"
self.Category = "CutScene" --自行修改分类
self.Description = "偷琴逃跑" --自行修改用例描述

UAutoLuaTestCase.Step_1 = {
	Order = 1, --执行顺序
	Type = CaseType.MonoTest,
	Description = "偷琴逃跑", --步骤描述
	Action = UAutoCoroutine(function()
		yield_return(self:EnterWorldBySex())
		yield_return(self:GotoPos("2350 260 -689"))

		yield_return(self:PlayCutscene(37502,self.TestFixture))


	end)
}

return self
