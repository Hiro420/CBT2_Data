require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest20042 = class("Quest20042", questActorProxy)

Quest20042.defaultAlias = "Quest20042"

local q20042Cfg
local NunData
local AlbertData
local DailyNpcManager = require('Actor/DailyNPCManager')

function Quest20042:OnDataLoaded()
	q20042Cfg = self.clientData
	NunData = q20042Cfg.NunData
	AlbertData = q20042Cfg.AlbertData
end



-- Generated
function Quest20042:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["2004201"] = self.OnSubStart2004201
	self.subStartHandlers["2004202"] = self.OnSubStart2004202
	self.subStartHandlers["2004203"] = self.OnSubStart2004203
	self.subStartHandlers["2004204"] = self.OnSubStart2004204
	self.subStartHandlers["2004205"] = self.OnSubStart2004205



end

function Quest20042:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["2004201"] = self.OnSubFinish2004201
	self.subFinishHandlers["2004202"] = self.OnSubFinish2004202
	self.subFinishHandlers["2004203"] = self.OnSubFinish2004203
	self.subFinishHandlers["2004204"] = self.OnSubFinish2004204
	self.subFinishHandlers["2004205"] = self.OnSubFinish2004205


end

function Quest20042:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["2004201"] = self.OnSubFailed2004201
	self.subFailedHandlers["2004202"] = self.OnSubFailed2004202
	self.subFailedHandlers["2004203"] = self.OnSubFailed2004203
	self.subFailedHandlers["2004204"] = self.OnSubFailed2004204
	self.subFailedHandlers["2004205"] = self.OnSubFailed2004205



end

---sub start & finish 内调用的函数



--@region sub start & finish handlers
---按流程触发顺序

function Quest20042:OnSubStart2004201(quest)
	self:CreateQuestNpc(quest, AlbertData.NpcID, 1)
	self:CreateQuestNpc(quest, NunData.NpcID, 2)
	self:NotifyTo("Npc1602", DailyNpcManager.NpcEventType.HIDESELF, true)
  self:NotifyTo("Npc1471", DailyNpcManager.NpcEventType.HIDESELF, true)


  local Nun = self:GetQuestNpcActor(NunData.Npc)
  local Albert = self:GetQuestNpcActor(AlbertData.Npc)

  Nun:Standby()
	Nun:DoFreeStateTrigger()
  Albert:Standby()
	Albert:DoFreeStateTrigger()

end


function Quest20042:OnSubFinish2004201(quest)
  local Nun = self:GetQuestNpcActor(NunData.Npc)
	self:ShowBlackScreen(0.5, 1.5, 0.5,
		function()
			local Nun = self:GetQuestNpcActor(NunData.Npc)
			Nun:Destroy(false)
		end
		)
--  Nun:WalkToTask(NunData.NPCLeavePos,
--    function(actor, task)
--		    actor:DestroyWithDither(false, 1)
--	  end,
	--	function(actor, task)
	--	Nun:Standby(true)
	--end
--  )
  self:NotifyTo("Npc1471", DailyNpcManager.NpcEventType.STARTDAILY, true)
end

function Quest20042:OnSubFailed2004201(quest)
	self:NotifyTo("Npc1471", DailyNpcManager.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1602", DailyNpcManager.NpcEventType.STARTDAILY, true)
end

function Quest20042:OnSubStart2004202(quest)
	self:NotifyTo("Npc1602", DailyNpcManager.NpcEventType.HIDESELF, true)
end

function Quest20042:OnSubFinish2004202(quest)
end

function Quest20042:OnSubFailed2004202(quest)
	self:NotifyTo("Npc1471", DailyNpcManager.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1602", DailyNpcManager.NpcEventType.STARTDAILY, true)
end

function Quest20042:OnSubStart2004203(quest)
	self:NotifyTo("Npc1602", DailyNpcManager.NpcEventType.HIDESELF, true)
end


function Quest20042:OnSubFinish2004203(quest)
end

function Quest20042:OnSubFailed2004203(quest)
	self:NotifyTo("Npc1471", DailyNpcManager.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1602", DailyNpcManager.NpcEventType.STARTDAILY, true)
end



function Quest20042:OnSubStart2004204(quest)
	self:NotifyTo("Npc1602", DailyNpcManager.NpcEventType.HIDESELF, true)
end

function Quest20042:OnSubFinish2004204(quest)
  local Albert = self:GetQuestNpcActor(AlbertData.Npc)
  Albert:WalkToTask(AlbertData.NPCLeavePos,
  function(actor, task)
    actor:DestroyWithDither(false, 1)
  end,function(actor, task)
	Albert:Standby(true)
end
  )

end

function Quest20042:OnSubFailed2004204(quest)
	self:NotifyTo("Npc1471", DailyNpcManager.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1602", DailyNpcManager.NpcEventType.STARTDAILY, true)
end

function Quest20042:OnSubStart2004205(quest)
	self:NotifyTo("Npc1602", DailyNpcManager.NpcEventType.HIDESELF, true)
end

function Quest20042:OnSubFinish2004205(quest)
	local Albert = self:GetQuestNpcActor(AlbertData.Npc)
	Albert:DestroyWithDither(false, 1)
  self:NotifyTo("Npc1602", DailyNpcManager.NpcEventType.STARTDAILY, true)
end

function Quest20042:OnSubFailed2004205(quest)
	self:NotifyTo("Npc1471", DailyNpcManager.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1602", DailyNpcManager.NpcEventType.STARTDAILY, true)
end


--@endregion

function Quest20042:Start()
end

function Quest20042:OnDestroy()
end

return Quest20042
