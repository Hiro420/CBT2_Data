require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest20509 = class("Quest20509", questActorProxy)

Quest20509.defaultAlias = "Quest20509"

local q20509Cfg = require('Quest/Client/Q20509ClientConfig')

-- Generated
function Quest20509:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["2050901"] = self.OnSubStart2050901
	self.subStartHandlers["2050902"] = self.OnSubStart2050902
end

function Quest20509:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["2050901"] = self.OnSubFinish2050901
	self.subFinishHandlers["2050902"] = self.OnSubFinish2050902
end

---sub start & finish 内调用的函数

--@region sub start & finish handlers
---按流程触发顺序
function Quest20509:OnSubStart2050902(quest)
    print("2050902 Start: GuideMousePC")
    globalActor:StartGuide("GuideMousePC")
end

--@endregion

function Quest20509:Start()
end

function Quest20509:OnDestroy()
end

return Quest20509