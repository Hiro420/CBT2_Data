
local baseClass = require('UAuto/Base/UAutoLuaTestBase')
local UAutoLuaTestCase = class("PlayCutScene22",baseClass)
local self = UAutoLuaTestCase
self.TestFixture = "CutScene22"
self.Category = "CutScene" --自行修改分类
self.Description = "雷泽史莱姆" --自行修改用例描述

UAutoLuaTestCase.Step_1 = {
	Order = 1, --执行顺序
	Type = CaseType.MonoTest,
	Description = "雷泽史莱姆", --步骤描述
	Action = UAutoCoroutine(function()
		yield_return(self:EnterWorldBySex())

		yield_return(self:GotoPos("2004 250 -300"))

		
		yield_return(self:PlayCutscene(45101,self.TestFixture))


	end)
}

return self
