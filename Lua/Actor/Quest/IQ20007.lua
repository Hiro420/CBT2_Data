require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest20007 = class("Quest20007", questActorProxy)

Quest20007.defaultAlias = "Quest20007"

local NPCData

function Quest20007:OnDataLoaded(  )
	q20007Cfg = self.clientData
	NPCData = q20007Cfg.NPCData
end


-- Generated
function Quest20007:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["2000701"] = self.OnSubStart2000701
	self.subStartHandlers["2000702"] = self.OnSubStart2000702
	self.subStartHandlers["2000703"] = self.OnSubStart2000703
	self.subStartHandlers["2000704"] = self.OnSubStart2000704
	self.subStartHandlers["2000705"] = self.OnSubStart2000705
	self.subStartHandlers["2000706"] = self.OnSubStart2000706
	self.subStartHandlers["2000707"] = self.OnSubStart2000707
	self.subStartHandlers["2000708"] = self.OnSubStart2000708
	self.subStartHandlers["2000709"] = self.OnSubStart2000709

end

function Quest20007:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["2000701"] = self.OnSubFinish2000701
	self.subFinishHandlers["2000702"] = self.OnSubFinish2000702
	self.subFinishHandlers["2000703"] = self.OnSubFinish2000703
	self.subFinishHandlers["2000704"] = self.OnSubFinish2000704
	self.subFinishHandlers["2000705"] = self.OnSubFinish2000705
	self.subFinishHandlers["2000706"] = self.OnSubFinish2000706
	self.subFinishHandlers["2000707"] = self.OnSubFinish2000707
	self.subFinishHandlers["2000708"] = self.OnSubFinish2000708
	self.subFinishHandlers["2000709"] = self.OnSubFinish2000709

end

function Quest20007:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["2000701"] = self.OnSubFailed2000701
	self.subFailedHandlers["2000702"] = self.OnSubFailed2000702
	self.subFailedHandlers["2000703"] = self.OnSubFailed2000703
	self.subFailedHandlers["2000704"] = self.OnSubFailed2000704
	self.subFailedHandlers["2000705"] = self.OnSubFailed2000705
	self.subFailedHandlers["2000706"] = self.OnSubFailed2000706
	self.subFailedHandlers["2000707"] = self.OnSubFailed2000707
	self.subFailedHandlers["2000708"] = self.OnSubFailed2000708
	self.subFailedHandlers["2000709"] = self.OnSubFailed2000709

end

---sub start & finish 内调用的函数
function Quest20007:DoFreeStyle(quest)
  print("delay start dofreestyle")
  local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
  EventNPC:DoFreeStyle(4190)
  EventNPC:EnableInteraction(false)
	self:CreateSpeechBubbleTask(NPCData.NpcID, 200080501,2,true,1,2)
end

function Quest20007:NPCDisappear(quest)
end

--@region sub start & finish handlers
---按流程触发顺序
function Quest20007:OnSubStart2000709(quest)
	self:CreateQuestNpc(quest, NPCData.NpcID, 1)
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:Standby()
	EventNPC:DoFreeStateTrigger()
	self:ClearSpeechBubbleTask()

end

function Quest20007:OnSubFinish2000709(quest)
end

function Quest20007:OnSubFailed2000709(quest)
end

function Quest20007:OnSubStart2000701(quest)
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:Standby()
	self:CallDelay(2, self.DoFreeStyle)
	print("2000701 start")
end


function Quest20007:OnSubFinish2000701(quest)
end

function Quest20007:OnSubFailed2000701(quest)


end

function Quest20007:OnSubStart2000702(quest)
	print("2000702 start back to standby")
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:DoFreeStateTrigger()
	EventNPC:EnableInteraction(true)
	self:ClearSpeechBubbleTask()
end

function Quest20007:OnSubFinish2000702(quest)
end

function Quest20007:OnSubFailed2000702(quest)
end

function Quest20007:OnSubStart2000703(quest)

end


function Quest20007:OnSubFinish2000703(quest)

end

function Quest20007:OnSubFailed2000703(quest)

end


function Quest20007:OnSubStart2000704(quest)
end

function Quest20007:OnSubFinish2000704(quest)
end

function Quest20007:OnSubFailed2000704(quest)
end

function Quest20007:OnSubStart2000705(quest)
	self:ActionSafeCall(
			function(self)
				local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
				EventNPC:Standby()
			  EventNPC:DoFreeStyle(4190)
			  EventNPC:EnableInteraction(false)
				self:CreateSpeechBubbleTask(NPCData.NpcID, 200080501,2,true,1,2)
			end
	)
	print("2000705 start")
end

function Quest20007:OnSubFinish2000705(quest)
end

function Quest20007:OnSubStart2000706(quest)
	print("2000706 start back to standby")
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:DoFreeStateTrigger()
	EventNPC:EnableInteraction(true)
	self:ClearSpeechBubbleTask()
end


function Quest20007:OnSubStart2000707(quest)
end

function Quest20007:OnSubFinish2000707(quest)
end

function Quest20007:OnSubFailed2000707(quest)
end

function Quest20007:OnSubFinish2000708(quest)
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:WalkToRouteTask(q20007Cfg.RoutePoints,
	function(actor, task)
			actor:DestroyWithDither(false, 1)
	end
	)
	print("2000708 NPC leave")

end



--@endregion

function Quest20007:Start()
end

function Quest20007:OnDestroy()
end

return Quest20007
