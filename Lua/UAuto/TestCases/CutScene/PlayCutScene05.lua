
local baseClass = require('UAuto/Base/UAutoLuaTestBase')
local UAutoLuaTestCase = class("PlayCutScene05",baseClass)
local self = UAutoLuaTestCase
self.TestFixture = "CutScene5"
self.Category = "CutScene" --自行修改分类
self.Description = "安伯入队" --自行修改用例描述

UAutoLuaTestCase.Step_1 = {
	Order = 1, --执行顺序
	Type = CaseType.MonoTest,
	Description = "安伯入队", --步骤描述
	Action = UAutoCoroutine(function()
		yield_return(self:EnterWorldBySex())

		yield_return(self:PlayCutscene(35401,self.TestFixture))

	end)
}

return self
