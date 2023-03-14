
local baseClass = require('UAuto/Base/UAutoLuaTestBase')
local UAutoLuaTestCase = class("PlayCutScene19",baseClass)
local self = UAutoLuaTestCase
self.TestFixture = "CutScene19"
self.Category = "CutScene" --自行修改分类
self.Description = "迪卢克后门" --自行修改用例描述

UAutoLuaTestCase.Step_1 = {
	Order = 1, --执行顺序
	Type = CaseType.MonoTest,
	Description = "迪卢克后门", --步骤描述
	Action = UAutoCoroutine(function()
		yield_return(self:EnterWorldBySex())
		yield_return(self:GotoPos("2314 214 -906"))
		
		yield_return(self:PlayCutscene(46401,self.TestFixture))

	end)
}

return self
