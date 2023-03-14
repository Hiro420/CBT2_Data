require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest20013 = class("Quest20013", questActorProxy)

Quest20013.defaultAlias = "Quest20013"

local q20013cfg
local NPCData
local MainID

function Quest20013:OnDataLoaded()
	q20013cfg = self.clientData
	MainID =  20013
	NPCData = q20013cfg.NPCData

end

-- Generated
function Quest20013:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["2001301"] = self.OnSubStart2001301
	self.subStartHandlers["2001302"] = self.OnSubStart2001302
	self.subStartHandlers["2001303"] = self.OnSubStart2001303
	self.subStartHandlers["2001304"] = self.OnSubStart2001304
end

function Quest20013:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["2001301"] = self.OnSubFinish2001301
	self.subFinishHandlers["2001302"] = self.OnSubFinish2001302
	self.subFinishHandlers["2001303"] = self.OnSubFinish2001303
	self.subFinishHandlers["2001304"] = self.OnSubFinish2001304
end

function Quest20013:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["2001301"] = self.OnSubFailed2001301
	self.subFailedHandlers["2001302"] = self.OnSubFailed2001302
	self.subFailedHandlers["2001303"] = self.OnSubFailed2001303
	self.subFailedHandlers["2001304"] = self.OnSubFailed2001305
end

---sub start & finish 内调用的函数
function Quest20013:PaimonVanish()
end

--@region sub start & finish handlers
---按流程触发顺序
function Quest20013:OnSubStart2001301(quest)

	---actorMgr:CreateActorWithPos(NPCData.Npc, NPCData.NPCScript, NPCData.NpcID, 0, NPCData.NPCBornPos, NPCData.NPCBornDir, true, false,3)
	self:CreateQuestNpc(quest, NPCData.NpcID)
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:Standby()
	self:CallDelay(2,self.DoFreeStyle)
	self:CreateSpeechBubbleTask(NPCData.NpcID, 200080501,2,true,1,2)
	self:NotifyTo("Npc1413", NpcUtil.NpcEventType.HIDESELF, true)
	print("01 start")

end

function Quest20013:DoFreeStyle(quest)
  print("delay start dofreestyle")
  local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
  EventNPC:DoFreeStyle(4190)
  EventNPC:EnableInteraction(false)

end

function Quest20013:OnSubFinish2001301(quest)
    print("01 finish")
	
end

function Quest20013:OnSubFailed2001301(quest)
	self:NotifyTo("Npc1413", NpcUtil.NpcEventType.STARTDAILY, true) 

end

function Quest20013:OnSubStart2001302(quest)
	print("02 start")
	self:NotifyTo("Npc1413", NpcUtil.NpcEventType.HIDESELF, true)

end

function Quest20013:OnSubFinish2001302(quest)

	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:EnableInteraction(true)
    EventNPC:Standby()
	EventNPC:DoFreeStyle(1300)
	self:ClearSpeechBubbleTask()
    print("02 finish")
end

function Quest20013:OnSubFailed2001302(quest)
	self:NotifyTo("Npc1413", NpcUtil.NpcEventType.STARTDAILY, true) 

end

function Quest20013:OnSubStart2001303(quest)
	print("03 start")
	self:NotifyTo("Npc1413", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest20013:OnSubFinish2001303(quest)

	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
    EventNPC:Standby(true)
    EventNPC:Standby()
	EventNPC:DoFreeStyle(1300)

		print("03 finish")
end

function Quest20013:OnSubFailed2001303(quest)
	self:NotifyTo("Npc1413", NpcUtil.NpcEventType.STARTDAILY, true) 
end

function Quest20013:OnSubStart2001304(quest)
	print("04 start")
	self:NotifyTo("Npc1413", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest20013:OnSubFinish2001304(quest)
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
    EventNPC:Standby(true)
    EventNPC:Standby()

	EventNPC:WalkToRouteTask(q20013cfg.RoutePoints1,
	function(actor, task)
		actor:DestroyWithDither(false, 1)
		self:NotifyTo("Npc1413", NpcUtil.NpcEventType.STARTDAILY, true) 
	end,function(actor, task)
		local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
		EventNPC:Standby(true)
	end
	)
		print("04 finish")
end

function Quest20013:OnSubFailed2001304(quest)
	self:NotifyTo("Npc1413", NpcUtil.NpcEventType.STARTDAILY, true) 
end

--@endregion

function Quest20013:Start()
end

function Quest20013:OnDestroy()
end

return Quest20013