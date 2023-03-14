
local baseClass = require('UAuto/Base/UAutoLuaTestBase')
local UAutoLuaTestCase = class("PlayCutScene08",baseClass)
local self = UAutoLuaTestCase
self.TestFixture = "CutScene08"
self.Category = "CutScene" --自行修改分类
self.Description = "凯亚登场" --自行修改用例描述
local q357Cfg = require('Quest/Client/Q357ClientConfig')
local GaiaData = q357Cfg.GaiaData

UAutoLuaTestCase.Step_1 = {
	Order = 1, --执行顺序
	Type = CaseType.MonoTest,
	Description = "凯亚登场1", --步骤描述
	Action = UAutoCoroutine(function()
		yield_return(self:EnterWorldBySex())

		yield_return(self:PlayCutscene(35702,self.TestFixture))

		yield_return(self.base:WaitLevelLoaded("Level"))

	end)
}

UAutoLuaTestCase.Step_2 = {
	Order = 2, --执行顺序
	Type = CaseType.MonoTest,
	Description = "凯亚登场2", --步骤描述
	Action = UAutoCoroutine(function()
		yield_return(self:GotoPos("2330 250 -733"))

		local NpcUtil = require('Actor/Npc/NPCUtil')
		local MengdeNpcList = NpcUtil.GetMengdeNpcListSpecial()
		for i = 1, #MengdeNpcList do
			globalActor:NotifyTo(MengdeNpcList[i],NpcUtil.NpcEventType.HIDESELF, true)
		end

		yield_return(self:PlayCutscene(35703,self.TestFixture))

		yield_return(CS.UnityEngine.WaitForSeconds(5))

	end)
}




return self
