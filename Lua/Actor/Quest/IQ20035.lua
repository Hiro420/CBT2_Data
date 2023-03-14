require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest20035 = class("Quest20035", questActorProxy)

Quest20035.defaultAlias = "Quest20035"

local DailyNpcManager = require('Actor/DailyNPCManager')
local q20035cfg
local subIDs
local NPCData


function Quest20035:OnDataLoaded(  )
	q20035cfg = self.clientData
	subIDs = q20035cfg.SubIDs
	NPCData = q20035cfg.NPCData
end

-- Generated
function Quest20035:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["2003501"] = self.OnSubStart2003501
	self.subStartHandlers["2003502"] = self.OnSubStart2003502
	self.subStartHandlers["2003503"] = self.OnSubStart2003503
	self.subStartHandlers["2003504"] = self.OnSubStart2003504
end

function Quest20035:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["2003501"] = self.OnSubFinish2003501
	self.subFinishHandlers["2003502"] = self.OnSubFinish2003502
	self.subFinishHandlers["2003503"] = self.OnSubFinish2003503
	self.subFinishHandlers["2003504"] = self.OnSubFinish2003504
end

function Quest20035:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["2003501"] = self.OnSubFailed2003501
	self.subFailedHandlers["2003502"] = self.OnSubFailed2003502
	self.subFailedHandlers["2003503"] = self.OnSubFailed2003503
	self.subFailedHandlers["2003504"] = self.OnSubFailed2003504
end

---sub start & finish 内调用的函数

--@region sub start & finish handlers
---按流程触发顺序
function Quest20035:OnSubStart2003501(quest)
	self:CreateQuestNpc(quest, NPCData.NpcID, 1)
	self:NotifyTo("Npc1551", NpcUtil.NpcEventType.HIDESELF, true)
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:Standby()
	self:CallDelay(2,self.DoFreeStyle)
	print("01 start")
end

function Quest20035:DestroySelf(quest)
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

function Quest20035:DoFreeStyle(quest)
	print("delay start dofreestyle")
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:DoFreeStyle(1240)
end

function Quest20035:OnSubFinish2003501(quest)
	print("01 finish")
end

function Quest20035:OnSubFailed2003501(quest)
	self:NotifyTo("Npc1551", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest20035:OnSubStart2003502(quest)
	print("02 start")
	self:NarratorOnlyTask(q20035cfg.NarratorData.Story1)
	self:NotifyTo("Npc1551", NpcUtil.NpcEventType.HIDESELF, true)
	self:CallDelay(
		1,
		function(self)
			globalActor:StartGuide("RandomTaskElementViewGuideIOS")
			print("elementview")
		end
	)
end

function Quest20035:OnSubFinish2003502(quest)
	if ison == 0 then
		self:NarratorOnlyTask(q20035cfg.NarratorData.Story2)
		ison = 1
	end
    print("02 finish")
end

function Quest20035:OnSubFailed2003502(quest)
	self:NotifyTo("Npc1551", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest20035:OnSubStart2003503(quest)
	print("03 start")
end

function Quest20035:OnSubFinish2003503(quest)
	print("03 finish")
end

function Quest20035:OnSubFailed2003503(quest)

end

function Quest20035:OnSubStart2003504(quest)
	self:NarratorOnlyTask(q20035cfg.NarratorData.Story3)
	self:NotifyTo("Npc1551", NpcUtil.NpcEventType.HIDESELF, true)
	print("04 start")
end

function Quest20035:OnSubFinish2003504(quest)
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:Standby(true)
    EventNPC:Standby()
	EventNPC:DoFreeStyle(1300)
	print("04 finish")
	self:CallDelay(2,self.DestroySelf)
end

function Quest20035:OnSubFailed2003504(quest)
	self:NotifyTo("Npc1551", NpcUtil.NpcEventType.STARTDAILY, true)
end

--@endregion

function Quest20035:Start()
end

function Quest20035:OnDestroy()
end

return Quest20035