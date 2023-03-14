require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest20504 = class("Quest20504", questActorProxy)

Quest20504.defaultAlias = "Quest20504"

local q20504Cfg = require('Quest/Client/Q20504ClientConfig')
local narratorData = q20504Cfg.NarratorData

-- Generated
function Quest20504:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["2050401"] = self.OnSubStart2050401
	self.subStartHandlers["2050402"] = self.OnSubStart2050402
	self.subStartHandlers["2050403"] = self.OnSubStart2050403
end

function Quest20504:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["2050401"] = self.OnSubFinish2050401
	self.subFinishHandlers["2050402"] = self.OnSubFinish2050402
	self.subFinishHandlers["2050403"] = self.OnSubFinish2050403
end

---sub start & finish 内调用的函数


--@region sub start & finish handlers
---按流程触发顺序
function Quest20504:OnSubFinish2050401(quest)
	self:ActionSafeCall(
		function (self)
			self:RequestInteractionForceAlias("Npc1435")
		end
	)
end

function Quest20504:OnSubFinish2050402(quest)
	self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q20504_FocusPos").pos, 0, 3, true, true)
	self:NarratorOnlyTask(narratorData.story1, nil, "Story")
	globalActor:EnablePlayerInput(false)
	self:CallDelay(4,
		function (self)
            globalActor:EnablePlayerInput(true)
		end
	)
end

function Quest20504:OnSubStart2050403(quest)
	self:CallDelay(4,
		function (self)
            globalActor:EnablePlayerInput(true)
		end
	)
end
--@endregion

function Quest20504:Start()
end

function Quest20504:OnDestroy()
end

return Quest20504