require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest20001 = class("Quest20001", questActorProxy)

Quest20001.defaultAlias = "Quest20001"

local q20001cfg
local NPCData
local MainID

function Quest20001:OnDataLoaded()
	q20001cfg = self.clientData
	MainID =  22112
	NPCData = q20001cfg.NPCData

end

function Quest20001:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["2000101"] = self.OnSubStart2000101
	self.subStartHandlers["2000102"] = self.OnSubStart2000102
	self.subStartHandlers["2000103"] = self.OnSubStart2000103
	self.subStartHandlers["2000104"] = self.OnSubStart2000104
end

function Quest20001:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["2000101"] = self.OnSubFinish2000101
	self.subFinishHandlers["2000102"] = self.OnSubFinish2000102
	self.subFinishHandlers["2000103"] = self.OnSubFinish2000103
	self.subFinishHandlers["2000104"] = self.OnSubFinish2000104
end

function Quest20001:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["2000101"] = self.OnSubFailed2000101
	self.subFailedHandlers["2000102"] = self.OnSubFailed2000102
	self.subFailedHandlers["2000103"] = self.OnSubFailed2000103
	self.subFailedHandlers["2000104"] = self.OnSubFailed2000105
end

---sub start & finish 内调用的函数
function Quest20001:PaimonVanish()
end

--@region sub start & finish handlers
---按流程触发顺序
function Quest20001:OnSubStart2000101(quest)

	--actorMgr:CreateActorWithPos(NPCData.Npc, NPCData.NPCScript, NPCData.NpcID, 0, NPCData.NPCBornPos, NPCData.NPCBornDir, true, false,3)
	self:CreateQuestNpc(quest, NPCData.NpcID)
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:Standby()
	EventNPC:DoFreeStyle(4190)
	EventNPC:EnableInteraction(false)
	self:CreateSpeechBubbleTask(NPCData.NpcID, 200080501,2,true,1,2)
	self:NotifyTo("Npc1403", NpcUtil.NpcEventType.HIDESELF, true)
	---self:CallDelay(2,self.DoFreeStyle)
	print("01 start")

end



function Quest20001:OnSubFinish2000101(quest)
    print("01 finish")
	
end

function Quest20001:OnSubFailed2000101(quest)
	self:NotifyTo("Npc1403", NpcUtil.NpcEventType.STARTDAILY, true) 
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:EnableInteraction(true)
	EventNPC:DoFreeStateTrigger()
	self:ClearSpeechBubbleTask()
end

function Quest20001:OnSubStart2000102(quest)
	print("02 start")


end

function Quest20001:OnSubFinish2000102(quest)
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:EnableInteraction(true)
    EventNPC:DoFreeStateTrigger()
	EventNPC:DoFreeStyle(1300)
	self:ClearSpeechBubbleTask()
    print("02 finish")
end

function Quest20001:OnSubFailed2000102(quest)
	self:NotifyTo("Npc1403", NpcUtil.NpcEventType.HIDESELF, true)
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:EnableInteraction(true)
	EventNPC:DoFreeStateTrigger()
	self:ClearSpeechBubbleTask()
	EventNPC:DestroyWithDither(false, 1)
end

function Quest20001:OnSubStart2000103(quest)
	print("03 start")

end

function Quest20001:OnSubFinish2000103(quest)
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
    EventNPC:Standby(true)
    EventNPC:DoFreeStateTrigger()
	EventNPC:DoFreeStyle(1300)

		print("03 finish")
end

function Quest20001:OnSubFailed2000103(quest)
	self:NotifyTo("Npc1403", NpcUtil.NpcEventType.HIDESELF, true)
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:EnableInteraction(true)
	EventNPC:DoFreeStateTrigger()
	self:ClearSpeechBubbleTask()
	EventNPC:DestroyWithDither(false, 1)
end

function Quest20001:OnSubStart2000104(quest)
	print("04 start")
	self:NotifyTo("Npc1403", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest20001:OnSubFinish2000104(quest)
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:Standby(true)
	
    EventNPC:DoFreeStateTrigger()

	EventNPC:WalkToRouteTask(q20001cfg.RoutePoints1,
	function(actor, task)
		actor:DestroyWithDither(false, 1)
		self:NotifyTo("Npc1403", NpcUtil.NpcEventType.STARTDAILY, true) 
	end
	,function(actor, task)
		EventNPC:Standby(true)
	end)
		print("04 finish")
end

function Quest20001:OnSubFailed2000104(quest)
	self:NotifyTo("Npc1403", NpcUtil.NpcEventType.HIDESELF, true)
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:EnableInteraction(true)
	EventNPC:DoFreeStateTrigger()
	self:ClearSpeechBubbleTask()
	EventNPC:DestroyWithDither(false, 1)
end

--@endregion

function Quest20001:Start()
end

function Quest20001:OnDestroy()
	print("原来这个时候到这个模块，20001destroy了")
end

return Quest20001