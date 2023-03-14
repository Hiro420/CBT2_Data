require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest20036 = class("Quest20036", questActorProxy)

Quest20036.defaultAlias = "Quest20036"

local q20036cfg
local NPCData
local MainID

function Quest20036:OnDataLoaded()
	q20036cfg = self.clientData
	MainID =  20036
	NPCData = q20036cfg.NPCData

end


-- Generated
function Quest20036:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["2003601"] = self.OnSubStart2003601
	self.subStartHandlers["2003602"] = self.OnSubStart2003602
	self.subStartHandlers["2003603"] = self.OnSubStart2003603
	self.subStartHandlers["2003604"] = self.OnSubStart2003604
	self.subStartHandlers["2003605"] = self.OnSubStart2003605
	self.subStartHandlers["2003606"] = self.OnSubStart2003606
end

function Quest20036:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["2003601"] = self.OnSubFinish2003601
	self.subFinishHandlers["2003602"] = self.OnSubFinish2003602
	self.subFinishHandlers["2003603"] = self.OnSubFinish2003603
	self.subFinishHandlers["2003604"] = self.OnSubFinish2003604
	self.subFinishHandlers["2003605"] = self.OnSubFinish2003605
	self.subFinishHandlers["2003606"] = self.OnSubFinish2003606
end

function Quest20036:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["2003601"] = self.OnSubFailed2003601
	self.subFailedHandlers["2003602"] = self.OnSubFailed2003602
	self.subFailedHandlers["2003603"] = self.OnSubFailed2003603
	self.subFailedHandlers["2003604"] = self.OnSubFailed2003604
	self.subFailedHandlers["2003605"] = self.OnSubFailed2003605
	self.subFinishHandlers["2003606"] = self.OnSubFinish2003606
end

---sub start & finish 内调用的函数
function Quest20036:PaimonVanish()
end

--@region sub start & finish handlers
---按流程触发顺序
function Quest20036:OnSubStart2003601(quest)
	self:NotifyTo("Npc1521", DailyNpcManager.NpcEventType.BANDAILY, true)
	
	print("01 start")

end

function Quest20036:DoFreeStyle(quest)
  print("delay start dofreestyle")
  
end

function Quest20036:OnSubFinish2003601(quest)
	
    print("01 finish")
	
end

function Quest20036:OnSubFailed2003601(quest)
	self:NotifyTo("Npc1521", DailyNpcManager.NpcEventType.STARTDAILY, true)

end

function Quest20036:OnSubStart2003602(quest)
	globalActor:UnSpawn("InteractionPoint")
	self:NotifyTo("Npc1521", DailyNpcManager.NpcEventType.BANDAILY, true)
	print("02 start")
	

end

function Quest20036:OnSubFinish2003602(quest)

  
    print("02 finish")
end

function Quest20036:OnSubFailed2003602(quest)
	self:NotifyTo("Npc1521", DailyNpcManager.NpcEventType.STARTDAILY, true)

end

function Quest20036:OnSubStart2003603(quest)
	self:NotifyTo("Npc1521", DailyNpcManager.NpcEventType.BANDAILY, true)
	print("03 start")

end

function Quest20036:OnSubFinish2003603(quest)

		print("03 finish")
end

function Quest20036:OnSubFailed2003603(quest)
	print("03 fail")
	self:NotifyTo("Npc1521", DailyNpcManager.NpcEventType.STARTDAILY, true)
end

function Quest20036:OnSubStart2003604(quest)
	self:NotifyTo("Npc1521", DailyNpcManager.NpcEventType.BANDAILY, true)
	local quest = actorMgr:GetActor(q20036cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuestID(false, 2003603)
		print("finish 2003603")
	end
	print("04 start")

end

function Quest20036:OnSubFinish2003604(quest)

	self:SpawnGadgetWithPos(quest,70710009,1,NPCData.InteractionPointPos, NPCData.InteractionPointDir)

		print("04 finish")
end

function Quest20036:OnSubFailed2003604(quest)
	print("04 fail")
	self:NotifyTo("Npc1521", DailyNpcManager.NpcEventType.STARTDAILY, true)
end


function Quest20036:OnSubStart2003605(quest)
	self:NotifyTo("Npc1521", DailyNpcManager.NpcEventType.BANDAILY, true)
	print("05 start")

end

function Quest20036:OnSubFinish2003605(quest)
local effpos1 = NPCData.InteractionPointPos
effpos1.z = NPCData.InteractionPointPos.z + 0.4
effpos1.x = NPCData.InteractionPointPos.x + 0.4
local effpos2 = NPCData.InteractionPointPos
effpos2.z = NPCData.InteractionPointPos.z - 0.4
effpos2.x = NPCData.InteractionPointPos.x - 0.4
	self:PlayEffect("Eff_Plant_Dandelion_Flora", NPCData.InteractionPointPos)
	self:PlayEffect("Eff_Plant_Dandelion_Flora", effpos1)
	self:PlayEffect("Eff_Plant_Dandelion_Flora", effpos2)
		print("05 finish")
end

function Quest20036:OnSubFailed2003605(quest)
	print("05 fail")
end


function Quest20036:OnSubStart2003606(quest)
	self:NotifyTo("Npc1521", DailyNpcManager.NpcEventType.BANDAILY, true)
	globalActor:UnSpawn("InteractionPoint")
	print("06 start")

end

function Quest20036:OnSubFinish2003606(quest)
	self:NotifyTo("Npc1521", DailyNpcManager.NpcEventType.STARTDAILY, true)
		print("06 finish")
end

function Quest20036:OnSubFailed2003606(quest)
	print("06 fail")
end

--@endregion

function Quest20036:Start()
end

function Quest20036:OnDestroy()
end

return Quest20036