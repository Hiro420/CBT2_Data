
local baseClass = require('UAuto/Base/UAutoLuaTestBase')
local UAutoLuaTestCase = class("PlayCutScene03",baseClass)
local self = UAutoLuaTestCase
self.TestFixture = "CutScene3"
self.Category = "CutScene" --自行修改分类
self.Description = "登女神岛" --自行修改用例描述

local goddess 

function CutSceneStart()
	goddessActor = actorMgr:GetActor("Goddess_3003")
	goddess = goddessActor:GetPos()
	goddessActor:SetPos(M.Pos(goddess.x, goddess.y + 100, goddess.z))
    print("playCutScene start")
end

UAutoLuaTestCase.Step_1 = {
	Order = 1, --执行顺序
	Type = CaseType.MonoTest,
	Description = "登女神岛", --步骤描述
	Action = UAutoCoroutine(function()
		yield_return(self:EnterWorldBySex())

		yield_return(self:GotoPos("2564, 213, -1327"))

		self:PlayCutscene(35202,self.TestFixture,CutSceneStart)
		
		
	end)
}

return self
