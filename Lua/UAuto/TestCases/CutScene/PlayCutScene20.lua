
local baseClass = require('UAuto/Base/UAutoLuaTestBase')
local UAutoLuaTestCase = class("PlayCutScene20",baseClass)
local self = UAutoLuaTestCase
self.TestFixture = "CutScene20"
self.Category = "CutScene" --自行修改分类
self.Description = "迪卢克前门" --自行修改用例描述

UAutoLuaTestCase.Step_1 = {
	Order = 1, --执行顺序
	Type = CaseType.MonoTest,
	Description = "迪卢克前门", --步骤描述
	Action = UAutoCoroutine(function()
		yield_return(self:EnterWorldBySex())
		yield_return(self:GotoPos("2218 209 -961"))
		
		yield_return(self:PlayCutscene(46601,self.TestFixture))
	end)
}

return self
