local baseClass = require('UAuto/Base/UAutoLuaTestBase')
local UAutoLuaTestCase = class("Quest351",baseClass)
local self = UAutoLuaTestCase
self.TestFixture = "Quest351"
self.Category = "任务系统,Smoke2" --自行修改分类
self.Description = "任务351：流浪者的足迹" --自行修改用例描述

UAutoLuaTestCase.Step_1 = {
	Order = 1, --执行顺序
	Type = CaseType.MonoTest,
	Description = "解锁传送锚点", --步骤描述
	Action = UAutoCoroutine(function()
		yield_return(self.base:RunGM("clear all",false))
		CS.MoleMole.GlobalVars.enemyRange = 10.0
		--yield_return(self.base:RunGM("combat ai"))
		for idx,pos in ipairs(self.posTatepot) do
			yield_return(self.base:MoveToPosition(pos))
		end
		yield_return(self.base:SelectDialog("传送锚点"))
		--yield_return(self.base:RunGM("combat ai off"))
		yield_return(self.base:MouseClick( "Canvas/SuspendBars/TutorialDialog/Content/ClickBtn",false))
	end)
}


--录制的路点
self.posTatepot = {
	CS.UnityEngine.Vector3(2744.934,194.6424,-1717.207),
	CS.UnityEngine.Vector3(2740.214,194.5741,-1710.782),
	CS.UnityEngine.Vector3(2734.49,194.4589,-1704.8),
	CS.UnityEngine.Vector3(2729.551,194.4476,-1699.633),
	CS.UnityEngine.Vector3(2725.138,194.4752,-1695.013),
	CS.UnityEngine.Vector3(2682.549,194.476,-1650.434),
	CS.UnityEngine.Vector3(2680.647,197.7584,-1637.444),
}

return self
