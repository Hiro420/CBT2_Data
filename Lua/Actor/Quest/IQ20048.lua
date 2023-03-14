require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest20048 = class("Quest20048", questActorProxy)

Quest20048.defaultAlias = "Quest20048"

local q20048cfg
local NPCData
local MainID

function Quest20048:OnDataLoaded()
	q20048cfg = self.clientData
	MainID =  20048
	NPCData = q20048cfg.NPCData

end
-- Generated
function Quest20048:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["2004801"] = self.OnSubStart2004801
	self.subStartHandlers["2004802"] = self.OnSubStart2004802
	self.subStartHandlers["2004803"] = self.OnSubStart2004803
	self.subStartHandlers["2004804"] = self.OnSubStart2004804
	self.subStartHandlers["2004805"] = self.OnSubStart2004805
	self.subStartHandlers["2004806"] = self.OnSubStart2004806
end

function Quest20048:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["2004801"] = self.OnSubFinish2004801
	self.subFinishHandlers["2004802"] = self.OnSubFinish2004802
	self.subFinishHandlers["2004803"] = self.OnSubFinish2004803
	self.subFinishHandlers["2004804"] = self.OnSubFinish2004804
	self.subFinishHandlers["2004805"] = self.OnSubFinish2004805
	self.subFinishHandlers["2004806"] = self.OnSubFinish2004806
end

function Quest20048:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["2004801"] = self.OnSubFailed2004801
	self.subFailedHandlers["2004802"] = self.OnSubFailed2004802
	self.subFailedHandlers["2004803"] = self.OnSubFailed2004803
	self.subFailedHandlers["2004804"] = self.OnSubFailed2004804
	self.subFailedHandlers["2004805"] = self.OnSubFailed2004805
	self.subFailedHandlers["2004806"] = self.OnSubFailed2004806
end

function Quest20048:CreateFoodRipples()
	self:SpawnGadgetByIdWithPos(2004804,70300112,2,NPCData.InteractionPointPos02, NPCData.InteractionPointDir02)
	self:PlayEffect("Eff_Quest_Food_Ripples", NPCData.InteractionPointPos02)
	self:PlayEffect("Eff_Quest_Food_Ripples", NPCData.InteractionPointPos02)
end

--@region sub start & finish handlers
---按流程触发顺序
function Quest20048:OnSubStart2004801(quest)
	self:NotifyTo("Npc1567", DailyNpcManager.NpcEventType.BANDAILY, true)
	globalActor:UnSpawn("InteractionPoint")
	globalActor:UnSpawn("InteractionPoint02")
	
	print("01 start")
end

function Quest20048:DoFreeStyle(quest)
  print("delay start dofreestyle")
  
end


function Quest20048:OnSubFinish2004801(quest)
	
    print("01 finish")
	
end


function Quest20048:OnSubFailed2004801(quest)

end

function Quest20048:OnSubStart2004802(quest)
	self:NotifyTo("Npc1567", DailyNpcManager.NpcEventType.BANDAILY, true)
	globalActor:UnSpawn("InteractionPoint")
	globalActor:UnSpawn("InteractionPoint02")
	print("02 start")	
end

function Quest20048:OnSubFinish2004802(quest) 
    print("02 finish")
end

function Quest20048:OnSubFailed2004802(quest)

end

function Quest20048:OnSubStart2004803(quest)
	print("03 start")
	local quest = actorMgr:GetActor(q20048cfg.ActorAlias)
		quest:FinishQuestID(false, 2004802)
		print("finish 2004803")
end



function Quest20048:OnSubFinish2004803(quest)
	self:SpawnGadgetWithPos(quest,70710009,1,NPCData.InteractionPointPos, NPCData.InteractionPointDir)

		print("03 finish")
end

function Quest20048:OnSubFailed2004803(quest)
	print("03 fail")
end

function Quest20048:OnSubStart2004804(quest)
	self:NotifyTo("Npc1567", DailyNpcManager.NpcEventType.BANDAILY, true)
	print("04 start")

end

function Quest20048:OnSubFinish2004804(quest)
	self:PlayEffect("Eff_Quest_Feed", NPCData.InteractionPointPos)
	self:PlayEffect("Eff_Quest_Feed", NPCData.InteractionPointPos)
	self:CallDelay(0.7, self.CreateFoodRipples)
	
		print("04 finish")
end

function Quest20048:OnSubFailed2004804(quest)
	print("04 fail")
end


function Quest20048:OnSubStart2004805(quest)
	self:NotifyTo("Npc1567", DailyNpcManager.NpcEventType.BANDAILY, true)
	print("05 start")
	globalActor:UnSpawn("InteractionPoint")

end

function Quest20048:OnSubFinish2004805(quest)
	self:NotifyTo("Npc1567", DailyNpcManager.NpcEventType.STARTDAILY, true)
		print("05 finish")
end

function Quest20048:OnSubFailed2004805(quest)
	print("05 fail")
end

function Quest20048:OnSubStart2004806(quest)
	self:NotifyTo("Npc1567", DailyNpcManager.NpcEventType.BANDAILY, true)
	print("06 start")
	globalActor:UnSpawn("InteractionPoint")

end

function Quest20048:OnSubFinish2004806(quest)
	self:NotifyTo("Npc1567", DailyNpcManager.NpcEventType.STARTDAILY, true)
		print("06 finish")
end

function Quest20048:OnSubFailed2004806(quest)
	print("06 fail")
end

--@endregion

function Quest20048:Start()
end

function Quest20048:OnDestroy()
end

return Quest20048