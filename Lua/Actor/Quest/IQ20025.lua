require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest20025 = class("Quest20025", questActorProxy)

Quest20025.defaultAlias = "Quest20025"

local DailyNpcManager = require('Actor/DailyNPCManager')
local q20025cfg
local subIDs
local NPCData


function Quest20025:OnDataLoaded(  )
	q20025cfg = self.clientData
	subIDs = q20025cfg.SubIDs
	NPCData = q20025cfg.NPCData
end

-- Generated
function Quest20025:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["2002501"] = self.OnSubStart2002501
	self.subStartHandlers["2002502"] = self.OnSubStart2002502
	self.subStartHandlers["2002503"] = self.OnSubStart2002503
	self.subStartHandlers["2002504"] = self.OnSubStart2002504
end

function Quest20025:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["2002501"] = self.OnSubFinish2002501
	self.subFinishHandlers["2002502"] = self.OnSubFinish2002502
	self.subFinishHandlers["2002503"] = self.OnSubFinish2002503
	self.subFinishHandlers["2002504"] = self.OnSubFinish2002504
end

function Quest20025:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["2002501"] = self.OnSubFailed2002501
	self.subFailedHandlers["2002502"] = self.OnSubFailed2002502
	self.subFailedHandlers["2002503"] = self.OnSubFailed2002503
	self.subFailedHandlers["2002504"] = self.OnSubFailed2002504
end

---sub start & finish 内调用的函数

--@region sub start & finish handlers
---按流程触发顺序
function Quest20025:OnSubStart2002501(quest)
	self:CreateQuestNpc(quest, NPCData.NpcID, 1)
	self:NotifyTo("Npc1551", NpcUtil.NpcEventType.HIDESELF, true)
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:Standby()
	self:CallDelay(2,self.DoFreeStyle)
	print("01 start")
end

function Quest20025:DestroySelf(quest)
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

function Quest20025:DoFreeStyle(quest)
	print("delay start dofreestyle")
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:DoFreeStyle(1240)
end

function Quest20025:OnSubFinish2002501(quest)
	print("01 finish")
end

function Quest20025:OnSubFailed2002501(quest)
	self:NotifyTo("Npc1551", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest20025:OnSubStart2002502(quest)
	print("02 start")
end

function Quest20025:OnSubFinish2002502(quest)
    print("02 finish")
end

function Quest20025:OnSubFailed2002502(quest)

end

function Quest20025:OnSubStart2002503(quest)
	self:NarratorOnlyTask(q20025cfg.NarratorData.Story1)
	self:NotifyTo("Npc1551", NpcUtil.NpcEventType.HIDESELF, true)
	self:CallDelay(
		1,
		function(self)
			globalActor:StartGuide("RandomTaskElementViewGuideIOS")
			print("elementview")
		end
	)
	print("03 start")
end

function Quest20025:OnSubFinish2002503(quest)
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:Standby(true)
    EventNPC:Standby()
	EventNPC:DoFreeStyle(1300)
		print("03 finish")
end

function Quest20025:OnSubFailed2002503(quest)
	self:NotifyTo("Npc1551", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest20025:OnSubStart2002504(quest)
	self:NarratorOnlyTask(q20025cfg.NarratorData.Story3)
	self:NotifyTo("Npc1551", NpcUtil.NpcEventType.HIDESELF, true)
	print("04 start")
end

function Quest20025:OnSubFinish2002504(quest)

	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:Standby(true)
    EventNPC:Standby()
	EventNPC:DoFreeStyle(1300)
	print("04 finish")
	self:CallDelay(2,self.DestroySelf)
end

function Quest20025:OnSubFailed2002504(quest)
	self:NotifyTo("Npc1551", NpcUtil.NpcEventType.STARTDAILY, true)
end

--@endregion

function Quest20025:Start()
end

function Quest20025:OnDestroy()
end

return Quest20025