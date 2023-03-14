require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest20505 = class("Quest20505", questActorProxy)

Quest20505.defaultAlias = "Quest20505"

local q20505Cfg = require('Quest/Client/Q20505ClientConfig')
local narratorData = q20505Cfg.NarratorData

-- Generated
function Quest20505:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["2050501"] = self.OnSubStart2050501
	self.subStartHandlers["2050502"] = self.OnSubStart2050502
end

function Quest20505:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["2050501"] = self.OnSubFinish2050501
	self.subFinishHandlers["2050502"] = self.OnSubFinish2050502
end

---sub start & finish 内调用的函数


--@region sub start & finish handlers
---按流程触发顺序
function Quest20505:OnSubFinish2050501(quest)
	self:ActionSafeCall(
		function (self)
			self:RequestInteractionForceAlias("NPC1512")
		end
	)
end
--@endregion

function Quest20505:Start()
end

function Quest20505:OnDestroy()
end

return Quest20505