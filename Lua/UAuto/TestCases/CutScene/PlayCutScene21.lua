
local baseClass = require('UAuto/Base/UAutoLuaTestBase')
local UAutoLuaTestCase = class("PlayCutScene21",baseClass)
local self = UAutoLuaTestCase
self.TestFixture = "CutScene21"
self.Category = "CutScene" --自行修改分类
self.Description = "琴个人线" --自行修改用例描述

UAutoLuaTestCase.Step_1 = {
	Order = 1, --执行顺序
	Type = CaseType.MonoTest,
	Description = "琴个人线", --步骤描述
	Action = UAutoCoroutine(function()
		yield_return(self:EnterWorldBySex())
		yield_return(self:GotoPos("1953.042 195.021 -1262.606"))
		
		yield_return(self:PlayCutscene(49001,self.TestFixture))

	end)
}

return self
