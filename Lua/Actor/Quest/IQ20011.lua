require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest20011 = class("Quest20011", questActorProxy)

Quest20011.defaultAlias = "Quest20011"

local q20011cfg
local NPCData
local MainID

function Quest20011:OnDataLoaded()
	q20011cfg = self.clientData
	MainID =  20011
	NPCData = q20011cfg.NPCData

end


-- Generated
function Quest20011:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["2001101"] = self.OnSubStart2001101
	self.subStartHandlers["2001102"] = self.OnSubStart2001102
	self.subStartHandlers["2001103"] = self.OnSubStart2001103
	self.subStartHandlers["2001104"] = self.OnSubStart2001104
end

function Quest20011:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["2001101"] = self.OnSubFinish2001101
	self.subFinishHandlers["2001102"] = self.OnSubFinish2001102
	self.subFinishHandlers["2001103"] = self.OnSubFinish2001103
	self.subFinishHandlers["2001104"] = self.OnSubFinish2001104
end

function Quest20011:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["2001101"] = self.OnSubFailed2001101
	self.subFailedHandlers["2001102"] = self.OnSubFailed2001102
	self.subFailedHandlers["2001103"] = self.OnSubFailed2001103
	self.subFailedHandlers["2001104"] = self.OnSubFailed2001105
end

---sub start & finish 内调用的函数
function Quest20011:PaimonVanish()
end

--@region sub start & finish handlers
---按流程触发顺序
function Quest20011:OnSubStart2001101(quest)

	--actorMgr:CreateActorWithPos(NPCData.Npc, NPCData.NPCScript, NPCData.NpcID, 0, NPCData.NPCBornPos, NPCData.NPCBornDir, true, false,3)
	self:CreateQuestNpc(quest, NPCData.NpcID)
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:Standby()
	---self:CallDelay(2,self.DoFreeStyle)
	EventNPC:DoFreeStyle(4190, true)
	EventNPC:EnableInteraction(false)
	self:CreateSpeechBubbleTask(NPCData.NpcID, 200080501,2,true,1,2)
	self:NotifyTo("Npc1408", NpcUtil.NpcEventType.HIDESELF, true)
	print("01 start")
end

---function Quest20011:DoFreeStyle(quest)
 --- print("delay start dofreestyle")
  ---local EventNPC = QuestActorProxy:GetQuestNpcActor(NPCData.Npc)
  ---EventNPC:DoFreeStyle(4190)
  ---EventNPC:EnableInteraction(false)

---end

function Quest20011:OnSubFinish2001101(quest)
    print("01 finish")
	
end

function Quest20011:OnSubFailed2001101(quest)
	

end

function Quest20011:OnSubStart2001102(quest)
	print("02 start")
	self:NotifyTo("Npc1408", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest20011:OnSubFinish2001102(quest)

    local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:EnableInteraction(true)
    EventNPC:DoFreeStateTrigger()
	EventNPC:DoFreeStyle(1300, true)
	self:ClearSpeechBubbleTask()
    print("02 finish")
end

function Quest20011:OnSubFailed2001102(quest)

	self:NotifyTo("Npc1408", NpcUtil.NpcEventType.STARTDAILY, true) 
end

function Quest20011:OnSubStart2001103(quest)
	print("03 start")
	self:NotifyTo("Npc1408", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest20011:OnSubFinish2001103(quest)

	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
    EventNPC:Standby(true)
    EventNPC:DoFreeStateTrigger()
	EventNPC:DoFreeStyle(1300)

		print("03 finish")
end

function Quest20011:OnSubFailed2001103(quest)
	self:NotifyTo("Npc1408", NpcUtil.NpcEventType.STARTDAILY, true) 
end

function Quest20011:OnSubStart2001104(quest)
	print("04 start")
	self:NotifyTo("Npc1408", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest20011:OnSubFinish2001104(quest)

    local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
    EventNPC:Standby(true)
	EventNPC:DoFreeStateTrigger()

	EventNPC:WalkToRouteTask(q20011cfg.RoutePoints1,
	function(actor, task)
		actor:DestroyWithDither(false, 1)
		self:NotifyTo("Npc1408", NpcUtil.NpcEventType.STARTDAILY, true) 
	end,function(actor, task)
		local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
		EventNPC:Standby(true)
	end
	)
		print("04 finish")
end

function Quest20011:OnSubFailed2001104(quest)
	self:NotifyTo("Npc1408", NpcUtil.NpcEventType.STARTDAILY, true) 
end

--@endregion

function Quest20011:Start()
end

function Quest20011:OnDestroy()
end

return Quest20011