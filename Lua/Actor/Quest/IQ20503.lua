require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest20503 = class("Quest20503", questActorProxy)

Quest20503.defaultAlias = "Quest20503"

local q20503Cfg = require('Quest/Client/Q20503ClientConfig')
local narratorData = q20503Cfg.NarratorData

-- Generated
function Quest20503:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["2050301"] = self.OnSubStart2050301
	self.subStartHandlers["2050302"] = self.OnSubStart2050302
	self.subStartHandlers["2050303"] = self.OnSubStart2050303
	self.subStartHandlers["2050304"] = self.OnSubStart2050304
	self.subStartHandlers["2050305"] = self.OnSubStart2050305
	self.subStartHandlers["2050306"] = self.OnSubStart2050306
end

function Quest20503:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["2050301"] = self.OnSubFinish2050301
	self.subFinishHandlers["2050302"] = self.OnSubFinish2050302
	self.subFinishHandlers["2050303"] = self.OnSubFinish2050303
	self.subFinishHandlers["2050304"] = self.OnSubFinish2050304
	self.subFinishHandlers["2050305"] = self.OnSubFinish2050305
	self.subFinishHandlers["2050306"] = self.OnSubFinish2050306
end

---sub start & finish 内调用的函数


--@region sub start & finish handlers
---按流程触发顺序
function Quest20503:OnSubFinish2050301(quest)
	self:CallDelay(2,
		function (self)
			self:NarratorOnlyTask(narratorData.story1, nil, "Story")
		end
	)
end

function Quest20503:OnSubFinish2050302(quest)
	self:CallDelay(2,
		function (self)
			self:NarratorOnlyTask(narratorData.story3, nil, "Story")
		end
	)
end

function Quest20503:OnSubFinish2050303(quest)
	self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q20503_FocusPos").pos, 0, 3, true, true)
	self:NarratorOnlyTask(narratorData.story2, nil, "Story")
	globalActor:EnablePlayerInput(false)
	self:CallDelay(4,
		function (self)
            globalActor:EnablePlayerInput(true)
		end
	)
end

function Quest20503:OnSubStart2050304(quest)
	self:CallDelay(4,
		function (self)
            globalActor:EnablePlayerInput(true)
		end
	)
end

function Quest20503:OnSubFinish2050305(quest)
	print("2050305 finish:Talk to NPC")
	self:ActionSafeCall(
		function (self)
			self:RequestInteractionForceAlias("Npc1417")
		end
	)
end

function Quest20503:OnSubFinish2050306(quest)
	self:CallDelay(2,
		function (self)
			self:NarratorOnlyTask(narratorData.story4, nil, "Story")
		end
	)
end
--@endregion

function Quest20503:Start()
end

function Quest20503:OnDestroy()
end

return Quest20503