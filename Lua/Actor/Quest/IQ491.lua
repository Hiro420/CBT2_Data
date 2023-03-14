require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest491 = class("Quest491", questActorProxy)

Quest491.defaultAlias = "Quest491"

--local q491Cfg = require('Quest/Client/Q491ClientConfig')
local DailyNpcManager = require('Actor/DailyNPCManager')

-- Generated
function Quest491:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["49101"] = self.OnSubStart49101
	self.subStartHandlers["49102"] = self.OnSubStart49102
end

function Quest491:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["49101"] = self.OnSubFinish49101
	self.subFinishHandlers["49102"] = self.OnSubFinish49102
end

---sub start & finish 内调用的函数

--@region sub start & finish handlers
---按流程触发顺序
function Quest491:OnSubFinish49102(quest)
    print("49102 Finish: Paimon Talk")
    self.uActor:AvatarPaimonAppear()
	globalActor:StopLocalAvatar()	
    globalActor:EnablePlayerInput(false)
    self:NarratorOnlyTask(self.clientData.NarratorData.Story1)
    self:CallDelay(5, self.OnEnableInput2)
end
function Quest491:OnEnableInput2()
    print("49102 DelayFinish: Enable Player Input")
    self.uActor:AvatarPaimonDisappear(nil, false)	
    globalActor:EnablePlayerInput(true)
	self:TransmitPlayer(3, sceneData:GetDummyPoint(3, "Q46625Player").pos, sceneData:GetDummyPoint(3, "Q46625Player").rot)
end

function Quest491:OnSubFinish49101(quest)
    print("49104 Finish : BartenderShow")
    self:NotifyTo("Npc1433", DailyNpcManager.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1465", DailyNpcManager.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1523", DailyNpcManager.NpcEventType.STARTDAILY, true)
end

--@endregion

function Quest491:Start()
end

function Quest491:OnDestroy()
end

return Quest491