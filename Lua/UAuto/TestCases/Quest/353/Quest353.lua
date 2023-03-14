local baseClass = require('UAuto/Base/UAutoLuaTestBase')
local UAutoLuaTestCase = class("Quest353",baseClass)
local self = UAutoLuaTestCase
self.TestFixture = "Quest353"
self.Category = "任务系统" --自行修改分类
self.Description = "任务353：异常的权柄" --自行修改用例描述

UAutoLuaTestCase.Step_1 = {
	Order = 1, --执行顺序
	Type = CaseType.MonoTest,
	Description = "执行教程", --步骤描述
	Action = UAutoCoroutine(function()
		yield_return(self:WaitCutScene(true,20,true))
		yield_return(CS.UnityEngine.WaitForSeconds(4))
		yield_return(self.base:Skill(1,true))
		yield_return(CS.UnityEngine.WaitForSeconds(8))
		yield_return(self.base:Skill(1,true))
		yield_return(CS.UnityEngine.WaitForSeconds(8))
		yield_return(self.base:Skill(1,false))
		yield_return(CS.UnityEngine.WaitForSeconds(3))
		yield_return(self.base:Skill(4))
		
	end)
}

return self
