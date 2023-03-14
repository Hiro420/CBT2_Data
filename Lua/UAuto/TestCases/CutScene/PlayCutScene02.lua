
local baseClass = require('UAuto/Base/UAutoLuaTestBase')
local UAutoLuaTestCase = class("PlayCutScene02",baseClass)
local self = UAutoLuaTestCase
self.TestFixture = "CutScene02"
self.Category = "CutScene" --自行修改分类
self.Description = "鸟瞰世界" --自行修改用例描述

UAutoLuaTestCase.Step_1 = {
	Order = 1, --执行顺序
	Type = CaseType.MonoTest,
	Description = "鸟瞰世界", --步骤描述
	Action = UAutoCoroutine(function()

		yield_return(self:EnterWorldBySex())
	
		yield_return(self:GotoPos("2611 235 -1489.736"))

		yield_return(self:PlayCutscene(35201,self.TestFixture))

	end)
}

return self
