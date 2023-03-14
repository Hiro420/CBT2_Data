
local baseClass = require('UAuto/Base/UAutoLuaTestBase')
local UAutoLuaTestCase = class("PlayCutScene17",baseClass)
local self = UAutoLuaTestCase
self.TestFixture = "CutScene17"
self.Category = "CutScene" --自行修改分类
self.Description = "哥妹出场" --自行修改用例描述

UAutoLuaTestCase.Step_1 = {
	Order = 1, --执行顺序
	Type = CaseType.MonoTest,
	Description = "哥妹出场", --步骤描述
	Action = UAutoCoroutine(function()
		yield_return(self:EnterWorldBySex())
		yield_return(self:GotoPos("2629 380 -1730"))
		
		yield_return(self:PlayCutscene(38402,self.TestFixture))
		
	end)
}

return self
