--baseClass提供基础接口
local baseClass = require('UAuto/TestCases/Editor/EditorCaseBase')
--所有testcase继承baseClass
local UAutoLuaTestCase = class("ModelChecker",baseClass)
local self = UAutoLuaTestCase

self.TestFixture = "ModelChecker"
self.Category = "编辑器"
self.Description="模型检查"

self.SetUp = {
	Order = 0.5,
	Type = CaseType.MonoTest,
	Description = "开始模型检测",
	Action = UAutoCoroutine(function()
		yield_return(self.base:PostModelCheckResult())
	end)
}

return self