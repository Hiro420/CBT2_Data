require('Actor/ActorCommon')
local DailyNpc = require('Actor/Npc/DailyNpc')
local MengdeInsomniaPatrol = class("MengdeInsomniaPatrol", DailyNpc)
local NpcEventType = require('Actor/Npc/NPCEventType')
MengdeInsomniaPatrol.defaultAlias = "MengdeInsomniaPatrol"
MengdeInsomniaPatrol.pointID = 1

function MengdeInsomniaPatrol:RecoverFromFreeStyle()
	print("RecoverFromFreeStyle")
	self:Recover()
end

function MengdeInsomniaPatrol:RecoverFromCollisionEnter()
	print("RecoverFromCollisionEnter")
	self:Recover()
end

function MengdeInsomniaPatrol:Recover()
	self.OnAction=0
	self:GoPatrol()
end

--重载构建函数
function MengdeInsomniaPatrol:Start()
	--print("start!!!!!!!!!!!!!!!!!!!!!"..tostring(self.dataIndex))
	self:DataInit()	
	self:PosDataInit()	
	self:SetPos(self.PosData[self.pointID].dummypoint.pos,true)
	--self:CallDelay(5,self.StartDaily)
	self:StartDaily()
end



function MengdeInsomniaPatrol:PosDataInit()
	self.PosData=self.ConfigData.PosData
	self.Count=#self.PosData
	self.pointID=math.random(1,self.Count)	
end


function MengdeInsomniaPatrol:StartDay()	
	--print("start day"..tostring(self.dataIndex))
	self:ShowSelf()
	self:PerformDither(true, 2)
	--self:GoPatrol()
	--self:CallDelay(2,self.GoPatrol)
	self:GoPatrol()
	self:StartBubble()	
end


function MengdeInsomniaPatrol:GoPatrol()
	if self.pointID == self.Count+1 then
		self.pointID = 1
	end
	--self:CallDelay(math.random(10,20), self.GoPatrolRoute)
	self:GoPatrolRoute()
end

function MengdeInsomniaPatrol:GoPatrolRoute()
	--print("npc"..tostring(self.dataIndex).."walkto"..tostring(self.pointID))
	self:WalkToTask(self.PosData[self.pointID].dummypoint.pos, self.SelfPointUpdate, self.Standby)	
end

function MengdeInsomniaPatrol:SelfPointUpdate()
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

function MengdeInsomniaPatrol:StartNight()
	self:StartDay()
end

return MengdeInsomniaPatrol