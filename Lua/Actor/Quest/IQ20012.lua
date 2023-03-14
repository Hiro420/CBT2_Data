require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest20012 = class("Quest20012", questActorProxy)

Quest20012.defaultAlias = "Quest20012"

local q20012cfg
local NPCData
local MainID

function Quest20012:OnDataLoaded()
	q20012cfg = self.clientData
	MainID =  20012
	NPCData = q20012cfg.NPCData

end


-- Generated
function Quest20012:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["2001201"] = self.OnSubStart2001201
	self.subStartHandlers["2001202"] = self.OnSubStart2001202
	self.subStartHandlers["2001203"] = self.OnSubStart2001203
	self.subStartHandlers["2001204"] = self.OnSubStart2001204
end

function Quest20012:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["2001201"] = self.OnSubFinish2001201
	self.subFinishHandlers["2001202"] = self.OnSubFinish2001202
	self.subFinishHandlers["2001203"] = self.OnSubFinish2001203
	self.subFinishHandlers["2001204"] = self.OnSubFinish2001204
end

function Quest20012:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["2001201"] = self.OnSubFailed2001201
	self.subFailedHandlers["2001202"] = self.OnSubFailed2001202
	self.subFailedHandlers["2001203"] = self.OnSubFailed2001203
	self.subFailedHandlers["2001204"] = self.OnSubFailed2001205
end

---sub start & finish 内调用的函数
function Quest20012:PaimonVanish()
end

--@region sub start & finish handlers
---按流程触发顺序
function Quest20012:OnSubStart2001201(quest)

	--actorMgr:CreateActorWithPos(NPCData.Npc, NPCData.NPCScript, NPCData.NpcID, 0, NPCData.NPCBornPos, NPCData.NPCBornDir, true, false,3)
	self:CreateQuestNpc(quest, NPCData.NpcID)
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:Standby()
	EventNPC:DoFreeStyle(4190)
	EventNPC:EnableInteraction(false)
	self:CreateSpeechBubbleTask(NPCData.NpcID, 200080501,2,true,1,2)
	self:NotifyTo("Npc1570", NpcUtil.NpcEventType.HIDESELF, true)
	---self:CallDelay(2,self.DoFreeStyle)
	print("01 start")

end

---function Quest20012:DoFreeStyle(quest)
 --- print("delay start dofreestyle")
 --- local EventNPC = actorMgr:GetActor(NPCData.Npc)
 
 --- EventNPC:DoFreeStyle(4190)
  ---EventNPC:EnableInteraction(false)

---end

function Quest20012:OnSubFinish2001201(quest)
    print("01 finish")
	
end

function Quest20012:OnSubFailed2001201(quest)
	self:NotifyTo("Npc1570", NpcUtil.NpcEventType.STARTDAILY, true) 

end

function Quest20012:OnSubStart2001202(quest)
	print("02 start")
	self:NotifyTo("Npc1570", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest20012:OnSubFinish2001202(quest)

	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	self:ClearSpeechBubbleTask()
	EventNPC:EnableInteraction(true)
	EventNPC:DoFreeStateTrigger()
	EventNPC:DoFreeStyle(1300)
    print("02 finish")
end

function Quest20012:OnSubFailed2001202(quest)

	self:NotifyTo("Npc1570", NpcUtil.NpcEventType.STARTDAILY, true) 
end

function Quest20012:OnSubStart2001203(quest)
	print("03 start")
	self:NotifyTo("Npc1570", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest20012:OnSubFinish2001203(quest)

	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
    EventNPC:Standby(true)
    EventNPC:DoFreeStateTrigger()
	EventNPC:DoFreeStyle(1300)

		print("03 finish")
end

function Quest20012:OnSubFailed2001203(quest)
	self:NotifyTo("Npc1570", NpcUtil.NpcEventType.STARTDAILY, true) 
end

function Quest20012:OnSubStart2001204(quest)
	print("04 start")
	self:NotifyTo("Npc1570", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest20012:OnSubFinish2001204(quest)

	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
    EventNPC:Standby(true)
    EventNPC:DoFreeStateTrigger()

	EventNPC:WalkToRouteTask(q20012cfg.RoutePoints1,
	function(actor, task)
		actor:DestroyWithDither(false, 1)
		self:NotifyTo("Npc1570", NpcUtil.NpcEventType.STARTDAILY, true) 
	end,function(actor, task)
		local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
		EventNPC:Standby(true)
	end
	)
		print("04 finish")
end

function Quest20012:OnSubFailed2001204(quest)
	self:NotifyTo("Npc1570", NpcUtil.NpcEventType.STARTDAILY, true) 
end

--@endregion

function Quest20012:Start()
end

function Quest20012:OnDestroy()
end

return Quest20012