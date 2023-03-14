require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest20005 = class("Quest20005", questActorProxy)

Quest20005.defaultAlias = "Quest20005"

local DailyNpcManager = require('Actor/DailyNPCManager')
local q20005cfg
local subIDs
local NPCData


function Quest20005:OnDataLoaded(  )
	q20005cfg = self.clientData
	subIDs = q20005cfg.SubIDs
	NPCData = q20005cfg.NPCData
end

-- Generated
function Quest20005:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["2000501"] = self.OnSubStart2000501
	self.subStartHandlers["2000502"] = self.OnSubStart2000502
	self.subStartHandlers["2000503"] = self.OnSubStart2000503
	self.subStartHandlers["2000504"] = self.OnSubStart2000504
end

function Quest20005:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["2000501"] = self.OnSubFinish2000501
	self.subFinishHandlers["2000502"] = self.OnSubFinish2000502
	self.subFinishHandlers["2000503"] = self.OnSubFinish2000503
	self.subFinishHandlers["2000504"] = self.OnSubFinish2000504
end

function Quest20005:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["2000501"] = self.OnSubFailed2000501
	self.subFailedHandlers["2000502"] = self.OnSubFailed2000502
	self.subFailedHandlers["2000503"] = self.OnSubFailed2000503
	self.subFailedHandlers["2000504"] = self.OnSubFailed2000504
end

---sub start & finish 内调用的函数


--@region sub start & finish handlers
---按流程触发顺序
function Quest20005:OnSubStart2000501(quest)
	self:CreateQuestNpc(quest, NPCData.NpcID, 1)
	self:NotifyTo("Npc1551", NpcUtil.NpcEventType.HIDESELF, true)
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:Standby()
	self:CallDelay(2,self.DoFreeStyle)
	print("01 start")
end

function Quest20005:DestroySelf(quest)
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

function Quest20005:DoFreeStyle(quest)
  print("delay start dofreestyle")
  local EventNPC = self:GetQuestNpcActor(NPCData.Npc) 
  EventNPC:DoFreeStyle(1240)

end

function Quest20005:OnSubFinish2000501(quest)
    print("01 finish")
end

function Quest20005:OnSubFailed2000501(quest)
	

end

function Quest20005:OnSubStart2000502(quest)
	print("02 start")
	self:NarratorOnlyTask(q20005cfg.NarratorData.Story1)
	self:NotifyTo("Npc1551", NpcUtil.NpcEventType.HIDESELF, true)
	self:CallDelay(
		1,
		function(self)
			globalActor:StartGuide("RandomTaskElementViewGuideIOS")
			print("elementview")
		end
	)
end

function Quest20005:OnSubFinish2000502(quest)
    print("02 finish")
end

function Quest20005:OnSubFailed2000502(quest)
	self:NotifyTo("Npc1551", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest20005:OnSubStart2000503(quest)
	print("03 start")
end

function Quest20005:OnSubFinish2000503(quest)

end

function Quest20005:OnSubFailed2000503(quest)
end

function Quest20005:OnSubStart2000504(quest)
	self:NarratorOnlyTask(q20005cfg.NarratorData.Story3)
	self:NotifyTo("Npc1551", NpcUtil.NpcEventType.HIDESELF, true)
	print("04 start")

end

function Quest20005:OnSubFinish2000504(quest)
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:Standby(true)
    EventNPC:Standby()
	EventNPC:DoFreeStyle(1300)
	print("04 finish")
	self:CallDelay(2,self.DestroySelf)


end

function Quest20005:OnSubFailed2000504(quest)
	self:NotifyTo("Npc1551", NpcUtil.NpcEventType.STARTDAILY, true)
end

--@endregion

function Quest20005:Start()
end

function Quest20005:OnDestroy()
end

return Quest20005