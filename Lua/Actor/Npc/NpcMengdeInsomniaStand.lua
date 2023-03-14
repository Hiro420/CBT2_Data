require('Actor/ActorCommon')
local DailyNpc = require('Actor/Npc/DailyNpc')
local MengdeInsomniaStand = class("MengdeInsomniaStand", DailyNpc)
local NpcEventType = require('Actor/Npc/NPCEventType')
MengdeInsomniaStand.defaultAlias = "MengdeInsomniaStand"

function MengdeInsomniaStand:Start()
	self:DataInit()
	self:PosDataInit()    
    self:StartDaily()
    --调用父类方法
    --self.__super:Start()
end

function MengdeInsomniaStand:PosDataInit()
	self.PosData=self.ConfigData.PosData[1].dummypoint
end


function MengdeInsomniaStand:WalkBack()
	print("walkback")
	self:WalkToTask(self.PosData.rot,self.Recover)
	--self:StartDay()
end

function MengdeInsomniaStand:RecoverFromFreeStyle()
	print("RecoverFromFreeStyle")
	self:Recover()
end

function MengdeInsomniaStand:RecoverFromCollisionEnter()
	print("RecoverFromCollisionEnter")	
	--self:ClearAllTask()
	self:Recover()
	--self:CallDelay(0.5,self.WalkBack)
end

function MengdeInsomniaStand:Recover()
	self.OnAction=0
	self:Standby()
	self:SteerToTask(M.Euler2DirXZ(self.PosData.rot),1,true,true)
	--self:TurnTo(M.Euler2DirXZ(DummyPointData.BornDir[self.dataIndex]))
	self:DoFreeStateTrigger()
end

function MengdeInsomniaStand:StartDay()
	self:Standby()
	self:TurnTo(M.Euler2DirXZ(self.PosData.rot))
	self:DoFreeStateTrigger()
	self:ShowSelf()
	self:PerformDither(true, 2)
	self:DataInit()
	self:StartBubble()	
end

function MengdeInsomniaStand:StartNight()
	self:StartDay()
end


return MengdeInsomniaStand