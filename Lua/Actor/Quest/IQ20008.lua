require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest20008 = class("Quest20008", questActorProxy)

Quest20008.defaultAlias = "Quest20008"

local q20008cfg
local NPCData
local MainID

function Quest20008:OnDataLoaded()
	q20008cfg = self.clientData
	MainID =  20008
	NPCData = q20008cfg.NPCData

end

-- Generated
function Quest20008:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["2000801"] = self.OnSubStart2000801
	self.subStartHandlers["2000802"] = self.OnSubStart2000802
	self.subStartHandlers["2000803"] = self.OnSubStart2000803
	self.subStartHandlers["2000804"] = self.OnSubStart2000804
	self.subStartHandlers["2000805"] = self.OnSubStart2000805
	self.subStartHandlers["2000806"] = self.OnSubStart2000806
end

function Quest20008:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["2000801"] = self.OnSubFinish2000801
	self.subFinishHandlers["2000802"] = self.OnSubFinish2000802
	self.subFinishHandlers["2000803"] = self.OnSubFinish2000803
	self.subFinishHandlers["2000804"] = self.OnSubFinish2000804
	self.subFinishHandlers["2000805"] = self.OnSubFinish2000805
	self.subFinishHandlers["2000806"] = self.OnSubFinish2000806
end

function Quest20008:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["2000801"] = self.OnSubFailed2000801
	self.subFailedHandlers["2000802"] = self.OnSubFailed2000802
	self.subFailedHandlers["2000803"] = self.OnSubFailed2000803
	self.subFailedHandlers["2000804"] = self.OnSubFailed2000804
	self.subFailedHandlers["2000805"] = self.OnSubFailed2000805
	self.subFailedHandlers["2000806"] = self.OnSubFailed2000806
end

---sub start & finish 内调用的函数
function Quest20008:PaimonVanish()
end

--@region sub start & finish handlers
---按流程触发顺序
function Quest20008:OnSubStart2000801(quest)

	---actorMgr:CreateActorWithPos(NPCData.Npc, NPCData.NPCScript, NPCData.NpcID, 0, NPCData.NPCBornPos, NPCData.NPCBornDir, true, false,3)
	self:CreateQuestNpc(quest, NPCData.NpcID)
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	self:CreateSpeechBubbleTask(NPCData.NpcID, 200080501,2,true,1,2)
	EventNPC:Standby()
	self:CallDelay(2,self.DoFreeStyle)
	self:NotifyTo("Npc1569", NpcUtil.NpcEventType.HIDESELF, true)
	print("01 start")
	

end

function Quest20008:DoFreeStyle(quest)
  print("delay start dofreestyle")
  local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
  EventNPC:DoFreeStyle(1070)

end

function Quest20008:OnSubFinish2000801(quest)

    print("01 finish")
	
end

function Quest20008:OnSubFailed2000801(quest)
	self:NotifyTo("Npc1569", NpcUtil.NpcEventType.STARTDAILY, true) 

end

function Quest20008:OnSubStart2000802(quest)
	print("02 start")
	local EventNPC = questActorProxy:GetQuestNpcActor(NPCData.Npc)
	self:NotifyTo("Npc1569", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest20008:OnSubFinish2000802(quest)

	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:DoFreeStateTrigger()
	EventNPC:DoFreeStyle(5010)
	self:ClearSpeechBubbleTask()
    print("02 finish")
end

function Quest20008:OnSubFailed2000802(quest)
	self:NotifyTo("Npc1569", NpcUtil.NpcEventType.STARTDAILY, true) 

end

function Quest20008:OnSubStart2000803(quest)
	print("03 start")
	self:NotifyTo("Npc1569", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest20008:OnSubFinish2000803(quest)
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
    EventNPC:Standby(true)
	EventNPC:DoFreeStateTrigger()

	EventNPC:WalkToRouteTask(q20008cfg.RoutePoints1,
	function(actor, task)
		actor:DestroyWithDither(false, 1)
	end
	,function(actor, task)
		local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
		EventNPC:Standby(true)
	end)
		print("03 finish")
end

function Quest20008:OnSubFailed2000803(quest)
	print("03 fail")
	self:NotifyTo("Npc1569", NpcUtil.NpcEventType.STARTDAILY, true) 
end

function Quest20008:OnSubStart2000804(quest)
	print("04 start")
	self:NotifyTo("Npc1569", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest20008:OnSubFinish2000804(quest)
        self:NarratorOnlyTask(q20008cfg.NarratorData.Story1)
		print("04 finish")
end

function Quest20008:OnSubFailed2000804(quest)
	print("04 fail")
	self:NotifyTo("Npc1569", NpcUtil.NpcEventType.STARTDAILY, true) 
end


function Quest20008:OnSubStart2000805(quest)
	print("05 start")
	self:NotifyTo("Npc1569", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest20008:OnSubFinish2000805(quest)
	self:NarratorOnlyTask(q20008cfg.NarratorData.Story2)
		print("05 finish")
end

function Quest20008:OnSubFailed2000805(quest)
	print("05 fail")
	self:NotifyTo("Npc1569", NpcUtil.NpcEventType.STARTDAILY, true) 
end

function Quest20008:OnSubStart2000806(quest)
	print("05 start")
	self:NotifyTo("Npc1569", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest20008:OnSubFinish2000806(quest)
	self:NarratorOnlyTask(q20008cfg.NarratorData.Story3)
	self:NotifyTo("Npc1569", NpcUtil.NpcEventType.STARTDAILY, true) 
		print("05 finish")
end

function Quest20008:OnSubFailed2000806(quest)
	print("05 fail")
	self:NotifyTo("Npc1569", NpcUtil.NpcEventType.STARTDAILY, true) 
end
--@endregion

function Quest20008:Start()
end

function Quest20008:OnDestroy()
end

return Quest20008