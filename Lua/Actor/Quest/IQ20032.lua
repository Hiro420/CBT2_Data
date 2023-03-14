require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest20032 = class("Quest20032", questActorProxy)

Quest20032.defaultAlias = "Quest20032"

local q20032Cfg = require('Quest/Client/Q20032ClientConfig')

-- Generated
function Quest20032:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["2003201"] = self.OnSubStart2003201
	self.subStartHandlers["2003202"] = self.OnSubStart2003202

end

function Quest20032:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["2003201"] = self.OnSubFinish2003201
	self.subFinishHandlers["2003202"] = self.OnSubFinish2003202

end

function Quest20032:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["2003201"] = self.OnSubFailed2003201
    self.subFailedHandlers["2003202"] = self.OnSubFailed2003202


end

---sub start & finish 内调用的函数

--@region sub start & finish handlers
---按流程触发顺序
function Quest20032:OnSubStart2003201(quest)
	local quest = actorMgr:GetActor(q20032Cfg.ActorAlias)
	if quest ~= nil then
        quest:FinishQuest(false, nil)
    end
end

function Quest20032:OnSubFailed2003201(quest)
	print("2003201 failed")
end

function Quest20032:OnSubStart2003202(quest)
	local quest = actorMgr:GetActor(q20032Cfg.ActorAlias)
	if quest ~= nil then
        quest:FinishQuest(false, nil)
    end
end
--@endregion

function Quest20032:Start()
end

function Quest20032:OnDestroy()
end

return Quest20032