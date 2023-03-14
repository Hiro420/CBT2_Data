require('Actor/ActorCommon')
local DailyNpc = require('Actor/Npc/DailyNpc')
local MengdeDayPatrol = class("MengdeDayPatrol", DailyNpc)
local NpcEventType = require('Actor/Npc/NPCEventType')
MengdeDayPatrol.defaultAlias = "MengdeDayPatrol"
MengdeDayPatrol.pointID = 1

function MengdeDayPatrol:RecoverFromFreeStyle()
	print("RecoverFromFreeStyle")
	self:Recover()
end

function MengdeDayPatrol:RecoverFromCollisionEnter()
	print("RecoverFromCollisionEnter")	
	self:Recover()
end

function MengdeDayPatrol:Recover()
	self.OnAction=0
	self:GoPatrol()
end

function MengdeDayPatrol:Start()
	--print("start!!!!!!!!!!!!!!!!!!!!!"..tostring(self.dataIndex))	
	self:DataInit()
	self:PosDataInit()
	self:SetPos(self.PosData[self.pointID].dummypoint.pos,true)
	--self:CallDelay(5,self.StartDaily)
	self:StartDaily()
end

function MengdeDayPatrol:PosDataInit()
		self.PosData=self.ConfigData.PosData
		self.Count=#self.PosData
		self.pointID=math.random(1,self.Count)	
end

function MengdeDayPatrol:StartDay()
	--print("start day"..tostring(self.dataIndex))
	self:ShowSelf()
	self:PerformDither(true, 2)
	--self:GoPatrol()
	--self:CallDelay(2,self.GoPatrol)
	self:GoPatrol()
	self:StartBubble()	
end

function MengdeDayPatrol:GoPatrol()
	if self.pointID == self.Count+1 then
		self.pointID = 1
	end
	--self:CallDelay(math.random(10,20), self.GoPatrolRoute)
	self:GoPatrolRoute()
end

function MengdeDayPatrol:GoPatrolRoute()
	--print("npc"..tostring(self.dataIndex).."walkto"..tostring(self.pointID))
	self:WalkToTask(self.PosData[self.pointID].dummypoint.pos, self.SelfPointUpdate, self.Standby)	
end

function MengdeDayPatrol:SelfPointUpdate()
	local time=self.PosData[self.pointID].time
	local dir=self.PosData[self.pointID].dummypoint.rot
	self.pointID = self.pointID + 1
	if time==0 then
		self:GoPatrol()
	else
		self:Standby()
		--self:TurnTo(M.Euler2DirXZ(dir))
		self:SteerToTask(M.Euler2DirXZ(dir),1,true,true)
		self:CallDelay(time, self.GoPatrol)
	end
end

function MengdeDayPatrol:StartNight()
	self:Standby()
	self:ClearNpcSpeechBubble(self.ID)
	self:PerformDither(false, 2, self.HideSelf)
end

return MengdeDayPatrol