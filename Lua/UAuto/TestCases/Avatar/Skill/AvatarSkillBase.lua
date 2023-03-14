local baseClass = require("UAuto/Base/UAutoLuaTestBase")
local UAutoLuaTestCase = class("AvatarSkillBase", baseClass)
local self = UAutoLuaTestCase
self.base = TestCaseBaseClass()
self.TestFixture = "AvatarSkillBase"

self.safePos = "1955.741 196.5956 -1298.704"
self.doSkillCount = 15
self.doSkillWait = 0.3
self.caseWait = 5


function self:AvatarSkillPerf(AvatarName)
    --普通攻击
    yield_return(CS.UnityEngine.WaitForSeconds(self.caseWait))
	yield_return(self.base:RunGM("goto "..self.safePos, true, true))
	yield_return(self:ChangeAvatar(AvatarName))
	yield_return(self.base:RunGM("WUDI ON"))
	yield_return(self.base:RunGM("ENERGY INFINITE ON"))

	local attackCount = self.doSkillCount
	while attackCount > 0 do
		yield_return(CS.UnityEngine.WaitForSeconds(self.doSkillWait))
		yield_return(self.base:Skill(0))
		attackCount = attackCount - 1
    end
    -- 加强型普攻
    yield_return(CS.UnityEngine.WaitForSeconds(self.caseWait))
	yield_return(self.base:Skill(0, false))
	yield_return(CS.UnityEngine.WaitForSeconds(2))
	yield_return(self.base:SkillUp(0))
	yield_return(self.base:Skill(0))
    --小技能1-
    yield_return(CS.UnityEngine.WaitForSeconds(self.caseWait))
	yield_return(self.base:Skill(1, false))
	yield_return(CS.UnityEngine.WaitForSeconds(2))
    yield_return(self.base:SkillUp(1))
    
    --充能技（大招）
    yield_return(CS.UnityEngine.WaitForSeconds(self.caseWait))
	yield_return(self.base:Skill(4))
end

return self
