
local baseClass = require('UAuto/Base/UAutoLuaTestBase')
local UAutoLuaTestCase = class("PlayCutScene04",baseClass)
local self = UAutoLuaTestCase
self.TestFixture = "CutScene4"
self.Category = "CutScene" --自行修改分类
self.Description = "森林遇龙" --自行修改用例描述

UAutoLuaTestCase.Step_1 = {
	Order = 1, --执行顺序
	Type = CaseType.MonoTest,
	Description = "森林遇龙", --步骤描述
	Action = UAutoCoroutine(function()
		yield_return(self:EnterWorldBySex())
		yield_return(self:GotoPos("2364 206 -1148"))
		yield_return(self:PlayCutscene(35501,self.TestFixture))

	
	end)
}


return self
