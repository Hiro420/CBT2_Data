
local baseClass = require('UAuto/Base/UAutoLuaTestBase')
local UAutoLuaTestCase = class("PlayCutScene13",baseClass)
local self = UAutoLuaTestCase
self.TestFixture = "CutScene13"
self.Category = "CutScene" --自行修改分类
self.Description = "净化龙泪" --自行修改用例描述

UAutoLuaTestCase.Step_1 = {
	Order = 1, --执行顺序
	Type = CaseType.MonoTest,
	Description = "净化龙泪", --步骤描述
	Action = UAutoCoroutine(function()
		yield_return(self:EnterWorldBySex())

		yield_return(self:GotoPos("2330 250 -733"))
		
		yield_return(self:PlayCutscene(37202,self.TestFixture))

	end)
}

return self
