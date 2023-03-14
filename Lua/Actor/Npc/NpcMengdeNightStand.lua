require('Actor/ActorCommon')
local DailyNpc = require('Actor/Npc/DailyNpc')
local MengdeNightStand = class("MengdeNightStand", DailyNpc)
local NpcEventType = require('Actor/Npc/NPCEventType')
MengdeNightStand.defaultAlias = "MengdeNightStand"

function MengdeNightStand:Start()
	self:DataInit()
	self:PosDataInit()    
    self:StartDaily()
    --调用父类方法
    --self.__super:Start()
end

function MengdeNightStand:PosDataInit()
	self.PosData=self.ConfigData.PosData[1].dummypoint
end


function MengdeNightStand:WalkBack()
	print("walkback")
	self:WalkToTask(self.PosData.rot,self.Recover)
	--self:StartDay()
end

function MengdeNightStand:RecoverFromFreeStyle()
	print("RecoverFromFreeStyle")
	self:Recover()
end

function MengdeNightStand:RecoverFromCollisionEnter()
	print("RecoverFromCollisionEnter")
	self:ClearAllTask()
	self:Recover()
	--self:CallDelay(0.5,self.WalkBack)
end

function MengdeNightStand:Recover()
	self.OnAction=0
	self:Standby()
	--self:TurnTo(M.Euler2DirXZ(DummyPointData.BornDir[self.dataIndex]))
	self:SteerToTask(M.Euler2DirXZ(self.PosData.rot),1,true,true)
	self:DoFreeStateTrigger()
end


function MengdeNightStand:StartDay()
	self:ClearNpcSpeechBubble(self.ID)
	self:PerformDither(false, 2, self.HideSelf)
end

function MengdeNightStand:StartNight()
	self:Standby()
	self:TurnTo(M.Euler2DirXZ(self.PosData.rot))
	self:DoFreeStateTrigger()
	self:ShowSelf()
	self:PerformDither(true, 2)
	self:StartBubble()
end


return MengdeNightStand