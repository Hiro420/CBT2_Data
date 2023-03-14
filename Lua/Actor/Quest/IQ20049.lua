require('Actor/ActorCommon')

local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest20049 = class("Quest20049", questActorProxy)

Quest20049.defaultAlias = "Quest20049"

local q20049cfg
local subIDs
local NPC1Data
local NPC2Data

function Quest20049:OnDataLoaded(  )
	q20049cfg = self.clientData
	subIDs = q20049cfg.SubIDs
	NPC1Data = q20049cfg.NPC1Data
	NPC2Data = q20049cfg.NPC2Data
end

-- Generated
function Quest20049:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["2004901"] = self.OnSubStart2004901
	self.subStartHandlers["2004902"] = self.OnSubStart2004902
	self.subStartHandlers["2004903"] = self.OnSubStart2004903
	self.subStartHandlers["2004904"] = self.OnSubStart2004904
	self.subStartHandlers["2004905"] = self.OnSubStart2004905
    
end

function Quest20049:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["2004901"] = self.OnSubFinish2004901
	self.subFinishHandlers["2004902"] = self.OnSubFinish2004902
	self.subFinishHandlers["2004903"] = self.OnSubFinish2004903
	self.subFinishHandlers["2004904"] = self.OnSubFinish2004904
	self.subFinishHandlers["2004905"] = self.OnSubFinish2004905
	
end

function Quest20049:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["2004901"] = self.OnSubFailed2004901
	self.subFailedHandlers["2004902"] = self.OnSubFailed2004902
	self.subFailedHandlers["2004903"] = self.OnSubFailed2004903
	self.subFailedHandlers["2004904"] = self.OnSubFailed2004904
	self.subFailedHandlers["2004905"] = self.OnSubFailed2004905

end

---sub start & finish 内调用的函数


--@region sub start & finish handlers
---按流程触发顺序

function Quest20049:OnSubStart2004901(quest)
	self:CreateQuestNpc(quest, NPC1Data.NpcID, 1)
	local EventNPC1 = self:GetQuestNpcActor(NPC1Data.Npc)
	EventNPC1:SitOnChair(8010)
	self:NotifyTo("Npc1461", NpcUtil.NpcEventType.HIDESELF, true)
    print("2004901 start")
end
   
function Quest20049:OnSubFinish2004901(quest)
	print("2004901 finish")
end
   
function Quest20049:OnSubFailed2004901(quest)
	self:NotifyTo("Npc1461", NpcUtil.NpcEventType.STARTDAILY, true) 
end

function Quest20049:OnSubStart2004902(quest)
	self:CreateQuestNpc(quest, NPC2Data.NpcID, 1)
	local EventNPC2 = self:GetQuestNpcActor(NPC2Data.Npc)
	EventNPC2:Standby()
	print("2004902 start")
	self:NotifyTo("Npc1461", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc1463", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc1403", DailyNpcManager.NpcEventType.BANDAILY, true)
end

function Quest20049:OnSubFinish2004902(quest)
	print("2004902 finish")
	self:CallDelay(5,
		function (self)
			self:NarratorOnlyTask(q20049cfg.NarratorData.Story1)
		end
	)
end

function Quest20049:OnSubFailed2004902(quest)
	self:NotifyTo("Npc1461", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1463", NpcUtil.NpcEventType.STARTDAILY, true) 
end

function Quest20049:OnSubStart2004903(quest)
	self:NotifyTo("Npc1461", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc1463", NpcUtil.NpcEventType.HIDESELF, true)
	print("2004903 start")
end

function Quest20049:OnSubFinish2004903(quest)
    print("2004903 finished")
end

function Quest20049:OnSubFailed2004903(quest)
	self:NotifyTo("Npc1461", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1463", NpcUtil.NpcEventType.STARTDAILY, true) 
	print("2004903 fail")
end

function Quest20049:OnSubStart2004904(quest)
	self:NotifyTo("Npc1461", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc1463", NpcUtil.NpcEventType.HIDESELF, true)
	print("2004904 start")
end

function Quest20049:OnSubFinish2004904(quest)
	print("2004904 finish")
	self:CallDelay(5,
	function (self)
		self:NarratorOnlyTask(q20049cfg.NarratorData.Story2)
	end
	)
end
	
function Quest20049:OnSubFailed2004904(quest)
	self:NotifyTo("Npc1461", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1463", NpcUtil.NpcEventType.STARTDAILY, true) 
	print("2004905 failed")
end

function Quest20049:OnSubStart2004905(quest)
	self:NotifyTo("Npc1461", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc1463", NpcUtil.NpcEventType.HIDESELF, true)
	print("2004904 start")
end

function Quest20049:OnSubFinish2004905(quest)
	print("2004905 finish")
	self:NotifyTo("Npc1403", DailyNpcManager.NpcEventType.STARTDAILY, true)
	self:CallDelay(2,
	function(self)
		self:ShowBlackScreen(0.5, 1, 0.5,
			function (self)
				self:DestroyQuestNpcActor(NPC1Data.Npc, 1009)
				self:DestroyQuestNpcActor(NPC2Data.Npc, 3)
				self:NotifyTo("Npc1461", NpcUtil.NpcEventType.STARTDAILY, true) 
				self:NotifyTo("Npc1463", NpcUtil.NpcEventType.STARTDAILY, true) 
			end
			)
	end
	)
end
	
function Quest20049:OnSubFailed2004905(quest)
	self:NotifyTo("Npc1461", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1463", NpcUtil.NpcEventType.STARTDAILY, true) 
	print("2004905 failed")
end

--@endregion


function Quest20049:Start()
end

function Quest20049:OnDestroy()
end

return Quest20049