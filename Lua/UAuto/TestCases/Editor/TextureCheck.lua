--baseClass提供基础接口
local baseClass = require('UAuto/TestCases/Editor/EditorCaseBase')
--所有testcase继承baseClass
local UAutoLuaTestCase = class("TextureCheck",baseClass)
local self = UAutoLuaTestCase

self.TestFixture = "TextureCheck"
self.Category = "编辑器"
self.Description="贴图格式检测"

self.SetUp = {
	Order = 0.5,
	Type = CaseType.MonoTest,
	Description = "贴图格式检测",
	Action = UAutoCoroutine(function()
		yield_return(self.base:PostTextureResult())
	end)
}

return self