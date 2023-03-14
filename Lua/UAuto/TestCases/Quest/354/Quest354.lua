local baseClass = require('UAuto/Base/UAutoLuaTestBase')
local UAutoLuaTestCase = class("Quest354",baseClass)
local self = UAutoLuaTestCase
self.TestFixture = "Quest354"
self.Category = "任务系统" --自行修改分类
self.Description = "任务354" --自行修改用例描述

UAutoLuaTestCase.Step_1 = {
	Order = 1, --执行顺序
	Type = CaseType.MonoTest,
	Description = "安柏入队", --步骤描述
	Action = UAutoCoroutine(function()
		for idx,pos in ipairs(self.ambor) do
		yield_return(self.base:MoveToPosition(pos,10,1,1,true))
		end
		yield_return(CS.UnityEngine.WaitForSeconds(1))
		yield_return(self:WaitCutScene(true))
	end)
}

UAutoLuaTestCase.Step_2 = {
	Order = 2, --执行顺序
	Type = CaseType.MonoTest,
	Description = "安柏射箭教学", --步骤描述
	Action = UAutoCoroutine(function()
		yield_return(self:ChangeAvatar("Anbo"))
		yield_return(self.base:MouseClick( "Canvas/Pages/InLevelMainPage/GrpMainPage/ActionPanelContainer/ActionBtnPanel/AM/ActionBtn_AM(Clone)/Focus/Btn"))
		local cameraData = TestCaseBaseClass.CameraData()
		cameraData.cameraSpherical=CS.UnityEngine.Vector3( -0.7260283 , 0.1134465 , 3.339703 )
		yield_return(self.base:RotateByCameraData(cameraData))
		yield_return(self.base:Skill(0,true))

	end)
}

self.ambor={
	CS.UnityEngine.Vector3(2343.904,210.7314,-1135.389),
CS.UnityEngine.Vector3(2335.495,206.9191,-1136.943),
CS.UnityEngine.Vector3(2325.948,206.5078,-1138.769),
CS.UnityEngine.Vector3(2317.776,207.3056,-1139.826),
CS.UnityEngine.Vector3(2310.332,208.8682,-1139.473),
CS.UnityEngine.Vector3(2307.925,209.142,-1138.732),
CS.UnityEngine.Vector3(2301.06,209.2007,-1137.17),
	}

return self
