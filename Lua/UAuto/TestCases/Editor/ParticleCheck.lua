--baseClass提供基础接口
local baseClass = require('UAuto/TestCases/Editor/EditorCaseBase')
--所有testcase继承baseClass
local UAutoLuaTestCase = class("ParticleCheck",baseClass)
local self = UAutoLuaTestCase

self.TestFixture = "ParticleCheck"
self.Category = "编辑器"
self.Description="Particle特效检查"

self.SetUp = {
	Order = 0.5,
	Type = CaseType.MonoTest,
	Description = "Particle Window Check Init",
	Action = UAutoCoroutine(function()
		yield_return(self.base:PostEffectCheckResult())
	end)
}

return self