require('Actor/ActorCommon')
local DailyNpc = require('Actor/Npc/DailyNpc')
local MengdeDayStandTest = class("MengdeDayStandTest",DailyNpc)
local NpcEventType = require('Actor/Npc/NPCEventType')
MengdeDayStandTest.defaultAlias = "MengdeDayStand"

local Config = require('Actor/Npc/Config/CfgMengdeDayStand')
local DummyPointData = Config.DummyPointData
local NpcVoiceData = nil

--重载碰撞后恢复方法
function MengdeDayStandTest:RecoverFromCollisionEnter()
	print("RecoverFromCollisionEnter")
	--self:ClearAllTask()	
	--self:CallDelay(0.5,self.WalkBack)
	self:Recover()
end

function MengdeDayStandTest:PreGetAlias()
	local NpcAlias = DummyPointData.Npc .. '_' .. tostring(self.dataIndex)
	return NpcAlias
end

function MengdeDayStandTest:WalkBack()
	print("walkback")
	self:WalkToTask(DummyPointData.BornPos[self.dataIndex],self.Recover)
	--self:StartDay()
end

function MengdeDayStandTest:Recover()
	self.OnAction=0
	self:Standby()
	--self:TurnTo(M.Euler2DirXZ(DummyPointData.BornDir[self.dataIndex]))
	self:SteerToTask(M.Euler2DirXZ(DummyPointData.BornDir[self.dataIndex]),1,true,true)
	self:DoFreeStateTrigger()
end

function MengdeDayStandTest:StartDay()
	self:Standby()
	self:TurnTo(M.Euler2DirXZ(DummyPointData.BornDir[self.dataIndex]))
	self:DoFreeStateTrigger()
	self:ShowSelf()
	self:PerformDither(true, 2)	
	self:DataInit()
	self:StartBubble()
end

function MengdeDayStandTest:StartNight()
	self:ClearNpcSpeechBubble(DummyPointData.NpcID[self.dataIndex])
	self:PerformDither(false, 2, self.HideSelf)
end


return MengdeDayStandTest