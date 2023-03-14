require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest20028 = class("Quest20028", questActorProxy)

Quest20028.defaultAlias = "Quest20028"

local q20028cfg
local NPCData
local MainID

function Quest20028:OnDataLoaded()
	q20028cfg = self.clientData
	MainID =  20028
	NPCData = q20028cfg.NPCData

end


-- Generated
function Quest20028:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["2002801"] = self.OnSubStart2002801
	self.subStartHandlers["2002802"] = self.OnSubStart2002802
	self.subStartHandlers["2002803"] = self.OnSubStart2002803
	self.subStartHandlers["2002804"] = self.OnSubStart2002804
	self.subStartHandlers["2002805"] = self.OnSubStart2002805
	self.subStartHandlers["2002806"] = self.OnSubStart2002806
end

function Quest20028:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["2002801"] = self.OnSubFinish2002801
	self.subFinishHandlers["2002802"] = self.OnSubFinish2002802
	self.subFinishHandlers["2002803"] = self.OnSubFinish2002803
	self.subFinishHandlers["2002804"] = self.OnSubFinish2002804
	self.subFinishHandlers["2002805"] = self.OnSubFinish2002805
	self.subFinishHandlers["2002806"] = self.OnSubFinish2002806
end

function Quest20028:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["2002801"] = self.OnSubFailed2002801
	self.subFailedHandlers["2002802"] = self.OnSubFailed2002802
	self.subFailedHandlers["2002803"] = self.OnSubFailed2002803
	self.subFailedHandlers["2002804"] = self.OnSubFailed2002804
	self.subFailedHandlers["2002805"] = self.OnSubFailed2002805
	self.subFailedHandlers["2002806"] = self.OnSubFailed2002806
end

---sub start & finish 内调用的函数
function Quest20028:PaimonVanish()
end

--@region sub start & finish handlers
---按流程触发顺序
function Quest20028:OnSubStart2002801(quest)

	---actorMgr:CreateActorWithPos(NPCData.Npc, NPCData.NPCScript, NPCData.NpcID, 0, NPCData.NPCBornPos, NPCData.NPCBornDir, true, false,3)
	self:CreateQuestNpc(quest, NPCData.NpcID)
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:Standby()
	EventNPC:DoFreeStyle(4190,true)
	self:CreateSpeechBubbleTask(NPCData.NpcID, 200080501,2,true,1,2)
	----self:CallDelay(2,self.DoFreeStyle)
	print("01 start")

end

----function Quest20028:DoFreeStyle(quest)
 --- print("delay start dofreestyle")
  ---local EventNPC = questActorProxy:GetQuestNpcActor(NPCData.Npc)
  
  ---EventNPC:DoFreeStyle(4190)

---end

function Quest20028:OnSubFinish2002801(quest)
    print("01 finish")
	
end

function Quest20028:OnSubFailed2002801(quest)
	

end

function Quest20028:OnSubStart2002802(quest)
	print("02 start")


end

function Quest20028:OnSubFinish2002802(quest)

	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
    EventNPC:DoFreeStateTrigger()
	EventNPC:DoFreeStyle(1300)
	self:ClearSpeechBubbleTask()
    print("02 finish")
end

function Quest20028:OnSubFailed2002802(quest)


end

function Quest20028:OnSubStart2002803(quest)
	print("03 start")

end

function Quest20028:OnSubFinish2002803(quest)


	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
    EventNPC:Standby(true)
	EventNPC:DoFreeStateTrigger()

	EventNPC:WalkToRouteTask(q20028cfg.RoutePoints1,
	function(actor, task)
		actor:DestroyWithDither(false, 1)
	end,function(actor, task)
		EventNPC:Standby(true)
	end
	)

		print("03 finish")
end

function Quest20028:OnSubFailed2002803(quest)
	print("03 fail")
end

function Quest20028:OnSubStart2002804(quest)
	print("04 start")

end

function Quest20028:OnSubFinish2002804(quest)
	self:NarratorOnlyTask(q20028cfg.NarratorData.Story1)
		print("04 finish")
end

function Quest20028:OnSubFailed2002804(quest)
	print("04 fail")
end


function Quest20028:OnSubStart2002805(quest)
	print("05 start")

end

function Quest20028:OnSubFinish2002805(quest)
	self:NarratorOnlyTask(q20028cfg.NarratorData.Story2)
		print("05 finish")
end

function Quest20028:OnSubFailed2002805(quest)
	print("05 fail")
end

function Quest20028:OnSubStart2002806(quest)
	print("06 start")

end

function Quest20028:OnSubFinish2002806(quest)
	self:NarratorOnlyTask(q20028cfg.NarratorData.Story3)
		print("06 finish")
end

function Quest20028:OnSubFailed2002806(quest)
	print("06 fail")
end


--@endregion

function Quest20028:Start()
end

function Quest20028:OnDestroy()
end

return Quest20028