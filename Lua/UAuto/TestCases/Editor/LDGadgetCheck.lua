--baseClass提供基础接口
local baseClass = require('UAuto/TestCases/Editor/EditorCaseBase')
--所有testcase继承baseClass
local UAutoLuaTestCase = class("LDGadgetCheck",baseClass)
local self = UAutoLuaTestCase

self.TestFixture = "LDGadgetCheck"
self.Category = "场景2"
self.Description="LDGadgetCheck"

self.LDGadgetCheck = {
	Order = 0.5,
	Type = CaseType.MonoTest,
	Description = "LD Gadget检查",
	Action = UAutoCoroutine(function()
		yield_return(self.base:LDGadgetCheck())
	end)
}


return self