require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest20017 = class("Quest20017", questActorProxy)

Quest20017.defaultAlias = "Quest20017"

local NPCData

function Quest20017:OnDataLoaded(  )
	q20017Cfg = self.clientData
	NPCData = q20017Cfg.NPCData
end


-- Generated
function Quest20017:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["2001701"] = self.OnSubStart2001701
	self.subStartHandlers["2001702"] = self.OnSubStart2001702
	self.subStartHandlers["2001703"] = self.OnSubStart2001703
	self.subStartHandlers["2001704"] = self.OnSubStart2001704
	self.subStartHandlers["2001705"] = self.OnSubStart2001705
	self.subStartHandlers["2001706"] = self.OnSubStart2001706
	self.subStartHandlers["2001707"] = self.OnSubStart2001707
	self.subStartHandlers["2001708"] = self.OnSubStart2001708
	self.subStartHandlers["2001709"] = self.OnSubStart2001709

end

function Quest20017:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["2001701"] = self.OnSubFinish2001701
	self.subFinishHandlers["2001702"] = self.OnSubFinish2001702
	self.subFinishHandlers["2001703"] = self.OnSubFinish2001703
	self.subFinishHandlers["2001704"] = self.OnSubFinish2001704
	self.subFinishHandlers["2001705"] = self.OnSubFinish2001705
	self.subFinishHandlers["2001706"] = self.OnSubFinish2001706
	self.subFinishHandlers["2001707"] = self.OnSubFinish2001707
	self.subFinishHandlers["2001708"] = self.OnSubFinish2001708
	self.subFinishHandlers["2001709"] = self.OnSubFinish2001709

end

function Quest20017:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["2001701"] = self.OnSubFailed2001701
	self.subFailedHandlers["2001702"] = self.OnSubFailed2001702
	self.subFailedHandlers["2001703"] = self.OnSubFailed2001703
	self.subFailedHandlers["2001704"] = self.OnSubFailed2001704
	self.subFailedHandlers["2001705"] = self.OnSubFailed2001705
	self.subFailedHandlers["2001706"] = self.OnSubFailed2001706
	self.subFailedHandlers["2001707"] = self.OnSubFailed2001707
	self.subFailedHandlers["2001708"] = self.OnSubFailed2001708
	self.subFailedHandlers["2001709"] = self.OnSubFailed2001709

end

---sub start & finish 内调用的函数
function Quest20017:DoFreeStyle(quest)
  print("delay start dofreestyle")
  local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
  EventNPC:DoFreeStyle(4190)
  EventNPC:EnableInteraction(false)
	self:CreateSpeechBubbleTask(NPCData.NpcID, 200080501,2,true,1,2)
end

function Quest20017:NPCDisappear(quest)
end

--@region sub start & finish handlers
---按流程触发顺序
function Quest20017:OnSubStart2001709(quest)
	self:CreateQuestNpc(quest, NPCData.NpcID, 1)
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:Standby()
	EventNPC:DoFreeStateTrigger()
	self:ClearSpeechBubbleTask()

end

function Quest20017:OnSubFinish2001709(quest)
end

function Quest20017:OnSubFailed2001709(quest)
end

function Quest20017:OnSubStart2001701(quest)
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:Standby()
	self:CallDelay(2, self.DoFreeStyle)
	print("2001701 start")
end


function Quest20017:OnSubFinish2001701(quest)
end

function Quest20017:OnSubFailed2001701(quest)


end

function Quest20017:OnSubStart2001702(quest)
	print("2001702 start back to standby")
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:DoFreeStateTrigger()
	EventNPC:EnableInteraction(true)
	self:ClearSpeechBubbleTask()
end

function Quest20017:OnSubFinish2001702(quest)
end

function Quest20017:OnSubFailed2001702(quest)
end

function Quest20017:OnSubStart2001703(quest)

end


function Quest20017:OnSubFinish2001703(quest)

end

function Quest20017:OnSubFailed2001703(quest)

end


function Quest20017:OnSubStart2001704(quest)
end

function Quest20017:OnSubFinish2001704(quest)
end

function Quest20017:OnSubFailed2001704(quest)
end

function Quest20017:OnSubStart2001705(quest)
	self:ActionSafeCall(
			function(self)
				local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
				EventNPC:Standby()
			  EventNPC:DoFreeStyle(4190)
			  EventNPC:EnableInteraction(false)
				self:CreateSpeechBubbleTask(NPCData.NpcID, 200080501,2,true,1,2)
			end
	)
	print("2001705 start")
end

function Quest20017:OnSubFinish2001705(quest)
end

function Quest20017:OnSubStart2001706(quest)
	print("2001706 start back to standby")
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:DoFreeStateTrigger()
	EventNPC:EnableInteraction(true)
	self:ClearSpeechBubbleTask()
end


function Quest20017:OnSubStart2001707(quest)
end

function Quest20017:OnSubFinish2001707(quest)
end

function Quest20017:OnSubFailed2001707(quest)
end

function Quest20017:OnSubFinish2001708(quest)
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:WalkToRouteTask(q20017Cfg.RoutePoints,
	function(actor, task)
			actor:DestroyWithDither(false, 1)
	end
	)
	print("2001708 NPC leave")

end



--@endregion

function Quest20017:Start()
end

function Quest20017:OnDestroy()
end

return Quest20017
