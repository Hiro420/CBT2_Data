require('Actor/ActorCommon')
local DailyNpc = require('Actor/Npc/DailyNpc')
local MengdeDayStand = class("MengdeDayStand",DailyNpc)
local NpcEventType = require('Actor/Npc/NPCEventType')


--local Config = require('Actor/Npc/Config/CfgMengdeDayStand')
--local DummyPointData = Config.DummyPointData


--重载构建函数
function MengdeDayStand:Start()
	self:DataInit()
	self:PosDataInit()    
    self:StartDaily()
    --调用父类方法
    --self.__super:Start()
end

function MengdeDayStand:PosDataInit()
	self.PosData=self.ConfigData.PosData[1].dummypoint
end

--重载碰撞后恢复方法
function MengdeDayStand:RecoverFromCollisionEnter()
	print("RecoverFromCollisionEnter")
	--self:ClearAllTask()	
	--self:CallDelay(0.5,self.WalkBack)
	self:Recover()
end

function MengdeDayStand:WalkBack()
	print("walkback")
	self:WalkToTask(self.PosData.rot,self.Recover)
	--self:StartDay()
end

function MengdeDayStand:Recover()
	self.OnAction=0
	self:Standby()
	--self:TurnTo(M.Euler2DirXZ(DummyPointData.BornDir[self.dataIndex]))
	self:SteerToTask(M.Euler2DirXZ(self.PosData.rot),1,true,true)
	self:DoFreeStateTrigger()
end

function MengdeDayStand:StartDay()
	self:Standby()
	self:TurnTo(M.Euler2DirXZ(self.PosData.rot))
	self:DoFreeStateTrigger()
	self:ShowSelf()
	self:PerformDither(true, 2)	
	self:DataInit()
	self:StartBubble()
end

function MengdeDayStand:StartNight()
	self:ClearNpcSpeechBubble(self.ID)
	self:PerformDither(false, 2, self.HideSelf)
end


return MengdeDayStand