require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest20018 = class("Quest20018", questActorProxy)

Quest20018.defaultAlias = "Quest20018"

local NPCData

function Quest20018:OnDataLoaded(  )
	q20018Cfg = self.clientData
	NPCData = q20018Cfg.NPCData
end


-- Generated
function Quest20018:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["2001801"] = self.OnSubStart2001801
	self.subStartHandlers["2001802"] = self.OnSubStart2001802
	self.subStartHandlers["2001803"] = self.OnSubStart2001803
	self.subStartHandlers["2001804"] = self.OnSubStart2001804
	self.subStartHandlers["2001805"] = self.OnSubStart2001805
	self.subStartHandlers["2001806"] = self.OnSubStart2001806
	self.subStartHandlers["2001807"] = self.OnSubStart2001807
	self.subStartHandlers["2001808"] = self.OnSubStart2001808
	self.subStartHandlers["2001809"] = self.OnSubStart2001809

end

function Quest20018:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["2001801"] = self.OnSubFinish2001801
	self.subFinishHandlers["2001802"] = self.OnSubFinish2001802
	self.subFinishHandlers["2001803"] = self.OnSubFinish2001803
	self.subFinishHandlers["2001804"] = self.OnSubFinish2001804
	self.subFinishHandlers["2001805"] = self.OnSubFinish2001805
	self.subFinishHandlers["2001806"] = self.OnSubFinish2001806
	self.subFinishHandlers["2001807"] = self.OnSubFinish2001807
	self.subFinishHandlers["2001808"] = self.OnSubFinish2001808
	self.subFinishHandlers["2001809"] = self.OnSubFinish2001809

end

function Quest20018:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["2001801"] = self.OnSubFailed2001801
	self.subFailedHandlers["2001802"] = self.OnSubFailed2001802
	self.subFailedHandlers["2001803"] = self.OnSubFailed2001803
	self.subFailedHandlers["2001804"] = self.OnSubFailed2001804
	self.subFailedHandlers["2001805"] = self.OnSubFailed2001805
	self.subFailedHandlers["2001806"] = self.OnSubFailed2001806
	self.subFailedHandlers["2001807"] = self.OnSubFailed2001807
	self.subFailedHandlers["2001808"] = self.OnSubFailed2001808
	self.subFailedHandlers["2001809"] = self.OnSubFailed2001809

end

---sub start & finish 内调用的函数
function Quest20018:DoFreeStyle(quest)
  print("delay start dofreestyle")
  local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
  EventNPC:DoFreeStyle(4190)
  EventNPC:EnableInteraction(false)
	self:CreateSpeechBubbleTask(NPCData.NpcID, 200080501,2,true,1,2)
end

function Quest20018:NPCDisappear(quest)
end

--@region sub start & finish handlers
---按流程触发顺序
function Quest20018:OnSubStart2001809(quest)
	self:CreateQuestNpc(quest, NPCData.NpcID, 1)
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:Standby()
	EventNPC:DoFreeStateTrigger()
	self:ClearSpeechBubbleTask()

end

function Quest20018:OnSubFinish2001809(quest)
end

function Quest20018:OnSubFailed2001809(quest)
end

function Quest20018:OnSubStart2001801(quest)
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:Standby()
	self:CallDelay(2, self.DoFreeStyle)
	print("2001801 start")
end


function Quest20018:OnSubFinish2001801(quest)
end

function Quest20018:OnSubFailed2001801(quest)


end

function Quest20018:OnSubStart2001802(quest)
	print("2001802 start back to standby")
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:DoFreeStateTrigger()
	EventNPC:EnableInteraction(true)
	self:ClearSpeechBubbleTask()
end

function Quest20018:OnSubFinish2001802(quest)
end

function Quest20018:OnSubFailed2001802(quest)
end

function Quest20018:OnSubStart2001803(quest)

end


function Quest20018:OnSubFinish2001803(quest)

end

function Quest20018:OnSubFailed2001803(quest)

end


function Quest20018:OnSubStart2001804(quest)
end

function Quest20018:OnSubFinish2001804(quest)
end

function Quest20018:OnSubFailed2001804(quest)
end

function Quest20018:OnSubStart2001805(quest)
	self:ActionSafeCall(
			function(self)
				local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
				EventNPC:Standby()
			  EventNPC:DoFreeStyle(4190)
			  EventNPC:EnableInteraction(false)
				self:CreateSpeechBubbleTask(NPCData.NpcID, 200080501,2,true,1,2)
			end
	)
	print("2001805 start")
end

function Quest20018:OnSubFinish2001805(quest)
end

function Quest20018:OnSubStart2001806(quest)
	print("2001806 start back to standby")
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:DoFreeStateTrigger()
	EventNPC:EnableInteraction(true)
	self:ClearSpeechBubbleTask()
end


function Quest20018:OnSubStart2001807(quest)
end

function Quest20018:OnSubFinish2001807(quest)
end

function Quest20018:OnSubFailed2001807(quest)
end

function Quest20018:OnSubFinish2001808(quest)
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:WalkToRouteTask(q20018Cfg.RoutePoints,
	function(actor, task)
			actor:DestroyWithDither(false, 1)
	end
	)
	print("2001808 NPC leave")

end



--@endregion

function Quest20018:Start()
end

function Quest20018:OnDestroy()
end

return Quest20018
