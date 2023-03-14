
local baseClass = require('UAuto/Base/UAutoLuaTestBase')
local UAutoLuaTestCase = class("PlayCutScene16",baseClass)
local self = UAutoLuaTestCase
self.TestFixture = "CutScene16"
self.Category = "CutScene" --自行修改分类
self.Description = "摘星之崖" --自行修改用例描述

UAutoLuaTestCase.Step_1 = {
	Order = 1, --执行顺序
	Type = CaseType.MonoTest,
	Description = "摘星之崖", --步骤描述
	Action = UAutoCoroutine(function()
		yield_return(self:EnterWorldBySex())
		yield_return(self:GotoPos("2629 380 -1730"))
		
		yield_return(self:PlayCutscene(38401,self.TestFixture))

	end)
}

return self
