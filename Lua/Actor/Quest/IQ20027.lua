require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest20027 = class("Quest20027", questActorProxy)

Quest20027.defaultAlias = "Quest20027"

local q20027cfg
local NPCData
local MainID

function Quest20027:OnDataLoaded()
	q20027cfg = self.clientData
	MainID =  20027
	NPCData = q20027cfg.NPCData

end


-- Generated
function Quest20027:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["2002701"] = self.OnSubStart2002701
	self.subStartHandlers["2002702"] = self.OnSubStart2002702
	self.subStartHandlers["2002703"] = self.OnSubStart2002703
	self.subStartHandlers["2002704"] = self.OnSubStart2002704
	self.subStartHandlers["2002705"] = self.OnSubStart2002705
	self.subStartHandlers["2002706"] = self.OnSubStart2002706
end

function Quest20027:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["2002701"] = self.OnSubFinish2002701
	self.subFinishHandlers["2002702"] = self.OnSubFinish2002702
	self.subFinishHandlers["2002703"] = self.OnSubFinish2002703
	self.subFinishHandlers["2002704"] = self.OnSubFinish2002704
	self.subFinishHandlers["2002705"] = self.OnSubFinish2002705
	self.subFinishHandlers["2002706"] = self.OnSubFinish2002706
end

function Quest20027:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["2002701"] = self.OnSubFailed2002701
	self.subFailedHandlers["2002702"] = self.OnSubFailed2002702
	self.subFailedHandlers["2002703"] = self.OnSubFailed2002703
	self.subFailedHandlers["2002704"] = self.OnSubFailed2002704
	self.subFailedHandlers["2002705"] = self.OnSubFailed2002705
	self.subFinishHandlers["2002706"] = self.OnSubFinish2002706
end

---sub start & finish 内调用的函数
function Quest20027:PaimonVanish()
end

--@region sub start & finish handlers
---按流程触发顺序
function Quest20027:OnSubStart2002701(quest)

	--actorMgr:CreateActorWithPos(NPCData.Npc, NPCData.NPCScript, NPCData.NpcID, 0, NPCData.NPCBornPos, NPCData.NPCBornDir, true, false,3)
	self:CreateQuestNpc(quest, NPCData.NpcID)
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	
	EventNPC:Standby()
	
	EventNPC:DoFreeStyle(4190,true)
	self:CreateSpeechBubbleTask(NPCData.NpcID, 200080501,2,true,1,2)
	self:NotifyTo("Npc1533", NpcUtil.NpcEventType.HIDESELF, true)
	---self:CallDelay(2,self.DoFreeStyle)
	print("01 start")

end

---function Quest20027:DoFreeStyle(quest)
  --- print("delay start dofreestyle")
  ---local EventNPC = questActorProxy:GetQuestNpcActor(NPCData.Npc)
  ---self:TriggerNpcSpeechBubble(NPCData.NpcID, 200080501)
  ---EventNPC:DoFreeStyle(4190)

---end

function Quest20027:OnSubFinish2002701(quest)
	
    print("01 finish")
	
end

function Quest20027:OnSubFailed2002701(quest)
	self:NotifyTo("Npc1533", NpcUtil.NpcEventType.STARTDAILY, true) 

end

function Quest20027:OnSubStart2002702(quest)
	print("02 start")
	self:NotifyTo("Npc1533", NpcUtil.NpcEventType.HIDESELF, true)

end

function Quest20027:OnSubFinish2002702(quest)

	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
    EventNPC:DoFreeStateTrigger()
	EventNPC:DoFreeStyle(1300,true)
	self:ClearSpeechBubbleTask()
    print("02 finish")
end

function Quest20027:OnSubFailed2002702(quest)

	self:NotifyTo("Npc1533", NpcUtil.NpcEventType.STARTDAILY, true) 
end

function Quest20027:OnSubStart2002703(quest)
	print("03 start")
	self:NotifyTo("Npc1533", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest20027:OnSubFinish2002703(quest)

	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
    EventNPC:Standby(true)
    EventNPC:DoFreeStateTrigger()

	EventNPC:WalkToRouteTask(q20027cfg.RoutePoints1,
	function(actor, task)
		actor:DestroyWithDither(false, 1)
		self:NotifyTo("Npc1533", NpcUtil.NpcEventType.STARTDAILY, true) 
	end,function(actor, task)
		EventNPC:Standby(true)
	end
	)

		print("03 finish")
end

function Quest20027:OnSubFailed2002703(quest)
	print("03 fail")
	self:NotifyTo("Npc1533", NpcUtil.NpcEventType.STARTDAILY, true) 
end

function Quest20027:OnSubStart2002704(quest)
	print("04 start")

end

function Quest20027:OnSubFinish2002704(quest)
	self:NarratorOnlyTask(q20027cfg.NarratorData.Story1)
	self:NotifyTo("Npc1533", NpcUtil.NpcEventType.STARTDAILY, true) 
		print("04 finish")
end

function Quest20027:OnSubFailed2002704(quest)
	print("04 fail")
	self:NotifyTo("Npc1533", NpcUtil.NpcEventType.STARTDAILY, true) 
end


function Quest20027:OnSubStart2002705(quest)
	print("05 start")

end

function Quest20027:OnSubFinish2002705(quest)
	self:NarratorOnlyTask(q20027cfg.NarratorData.Story2)
		print("05 finish")
end

function Quest20027:OnSubFailed2002705(quest)
	print("05 fail")
	self:NotifyTo("Npc1533", NpcUtil.NpcEventType.STARTDAILY, true) 
end


function Quest20027:OnSubStart2002706(quest)
	print("06 start")

end

function Quest20027:OnSubFinish2002706(quest)
	self:NarratorOnlyTask(q20027cfg.NarratorData.Story3)
		print("06 finish")
end

function Quest20027:OnSubFailed2002706(quest)
	print("06 fail")
end

--@endregion

function Quest20027:Start()
end

function Quest20027:OnDestroy()
end

return Quest20027