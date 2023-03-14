require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest20019 = class("Quest20019", questActorProxy)

Quest20019.defaultAlias = "Quest20019"

local DailyNpcManager = require('Actor/DailyNPCManager')
local q20019cfg
local subIDs
local NPCData


function Quest20019:OnDataLoaded(  )
	q20019cfg = self.clientData
	subIDs = q20019cfg.SubIDs
	NPCData = q20019cfg.NPCData
end

-- Generated
function Quest20019:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["2001901"] = self.OnSubStart2001901
	self.subStartHandlers["2001902"] = self.OnSubStart2001902
	self.subStartHandlers["2001903"] = self.OnSubStart2001903
	self.subStartHandlers["2001904"] = self.OnSubStart2001904
end

function Quest20019:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["2001901"] = self.OnSubFinish2001901
	self.subFinishHandlers["2001902"] = self.OnSubFinish2001902
	self.subFinishHandlers["2001903"] = self.OnSubFinish2001903
	self.subFinishHandlers["2001904"] = self.OnSubFinish2001904
end

function Quest20019:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["2001901"] = self.OnSubFailed2001901
	self.subFailedHandlers["2001902"] = self.OnSubFailed2001902
	self.subFailedHandlers["2001903"] = self.OnSubFailed2001903
	self.subFailedHandlers["2001904"] = self.OnSubFailed2001904
end

---sub start & finish 内调用的函数


--@region sub start & finish handlers
---按流程触发顺序
function Quest20019:OnSubStart2001901(quest)
	self:CreateQuestNpc(quest, NPCData.NpcID, 1)
	self:NotifyTo("Npc1551", NpcUtil.NpcEventType.HIDESELF, true)
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:Standby()
	self:CallDelay(2,self.DoFreeStyle)
	print("01 start")
end

function Quest20019:DestroySelf(quest)
	print("delay destroyself")
	self:ShowBlackScreen(0.5, 1, 0.5,
	function(self)
		local EventNPC = self:GetQuestNpcActor(NPCData.Npc)

		if EventNPC ~= nil then
			EventNPC:Destroy(false)
			self:NotifyTo("Npc1551", NpcUtil.NpcEventType.STARTDAILY, true) 
		end
	end
)
  
  end

function Quest20019:DoFreeStyle(quest)
  print("delay start dofreestyle")
  local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
  EventNPC:DoFreeStyle(1240)

end

function Quest20019:OnSubFinish2001901(quest)
    print("01 finish")
end

function Quest20019:OnSubFailed2001901(quest)
end

function Quest20019:OnSubStart2001902(quest)
	print("02 start")
end

function Quest20019:OnSubFinish2001902(quest)

end

function Quest20019:OnSubFailed2001902(quest)

end

function Quest20019:OnSubStart2001903(quest)
	print("03 start")
	self:NarratorOnlyTask(q20019cfg.NarratorData.Story1)
	self:NotifyTo("Npc1551", NpcUtil.NpcEventType.HIDESELF, true)
	self:CallDelay(
		1,
		function(self)
			globalActor:StartGuide("RandomTaskElementViewGuideIOS")
			print("elementview")
		end
	)
end

function Quest20019:OnSubFinish2001903(quest)
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:Standby(true)
	EventNPC:DoFreeStateTrigger()
		print("03 finish")
end

function Quest20019:OnSubFailed2001903(quest)

	self:NotifyTo("Npc1551", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest20019:OnSubStart2001904(quest)
	self:NarratorOnlyTask(q20019cfg.NarratorData.Story3)
	self:NotifyTo("Npc1551", NpcUtil.NpcEventType.HIDESELF, true)
	print("04 start")

end

function Quest20019:OnSubFinish2001904(quest)

	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:Standby(true)
    EventNPC:Standby()
	EventNPC:DoFreeStyle(1300)
	print("04 finish")
	self:CallDelay(2,self.DestroySelf)


end

function Quest20019:OnSubFailed2001904(quest)
	self:NotifyTo("Npc1551", NpcUtil.NpcEventType.STARTDAILY, true)
end

--@endregion

function Quest20019:Start()
end

function Quest20019:OnDestroy()
end

return Quest20019