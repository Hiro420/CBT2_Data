require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest20506 = class("Quest20506", questActorProxy)

Quest20506.defaultAlias = "Quest20506"

local q20506Cfg = require('Quest/Client/Q20506ClientConfig')
local narratorData = q20506Cfg.NarratorData

-- Generated
function Quest20506:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["2050601"] = self.OnSubStart2050601
	self.subStartHandlers["2050602"] = self.OnSubStart2050602
end

function Quest20506:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["2050601"] = self.OnSubFinish2050601
	self.subFinishHandlers["2050602"] = self.OnSubFinish2050602
end

---sub start & finish 内调用的函数


--@region sub start & finish handlers
---按流程触发顺序
function Quest20506:OnSubFinish2050601(quest)
	self:ActionSafeCall(
		function (self)
			self:RequestInteractionForceAlias("Npc1587")
		end
	)
end
--@endregion

function Quest20506:Start()
end

function Quest20506:OnDestroy()
end

return Quest20506