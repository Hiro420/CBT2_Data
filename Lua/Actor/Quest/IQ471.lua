require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest471 = class("Quest471", questActorProxy)

Quest471.defaultAlias = "Quest471"

local q471Cfg
local PaimonData
local subIDs

function Quest471:OnDataLoaded()
    q471Cfg = self.clientData
    subIDs = q471Cfg.SubIDs
end

-- Generated
function Quest471:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["47101"] = self.OnSubStart47101
	self.subStartHandlers["47102"] = self.OnSubStart47102
end

function Quest471:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["47101"] = self.OnSubFinish47101
	self.subFinishHandlers["47102"] = self.OnSubFinish47102
end

---sub start & finish 内调用的函数

--@region sub start & finish handlers
---按流程触发顺序
function Quest471:OnSubStart47101(quest)
	print("47101 Start : Story1")
	self:CallDelay(20, self.Story1)
end
function Quest471:Story1()
	self:NarratorOnlyTask(self.clientData.NarratorData.Story1, self.OnNarrator1Finish, "StoryCut")
end
function Quest471:OnNarrator1Finish()
	local quest = actorMgr:GetActor(q471Cfg.ActorAlias)
	if quest ~= nil then
        quest:FinishQuestID(false, 47101)
	end
end

function Quest471:OnSubStart47102(quest)
	print("47102 Start : Story2")
	self:CallDelay(20, self.Story2)
end
function Quest471:Story2()
	self:NarratorOnlyTask(self.clientData.NarratorData.Story2, self.OnNarrator2Finish, "StoryCut")
end
function Quest471:OnNarrator2Finish()
	local quest = actorMgr:GetActor(q471Cfg.ActorAlias)
	if quest ~= nil then
        quest:FinishQuestID(false, 47102)
	end
end

--@endregion

function Quest471:Start()
end

function Quest471:OnDestroy()
end

return Quest471