require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest20507 = class("Quest20507", questActorProxy)

Quest20507.defaultAlias = "Quest20507"

local q20507Cfg = require('Quest/Client/Q20507ClientConfig')

-- Generated
function Quest20507:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["2050701"] = self.OnSubStart2050701
	self.subStartHandlers["2050702"] = self.OnSubStart2050702
end

function Quest20507:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["2050701"] = self.OnSubFinish2050701
	self.subFinishHandlers["2050702"] = self.OnSubFinish2050702
end

---sub start & finish 内调用的函数


--@region sub start & finish handlers
---按流程触发顺序
-- function Quest20507:OnSubFinish2050701(quest)
-- 	self:CallDelay(4, self.AfterAni)
-- end
-- function Quest20507:AfterAni()
-- 	self:ShowTutorialDialog(232)
-- end

function Quest20507:OnSubStart2050702(quest)
	globalActor:StartGuide("GuideTransport")
end

--@endregion

function Quest20507:Start()
end

function Quest20507:OnDestroy()
end

return Quest20507