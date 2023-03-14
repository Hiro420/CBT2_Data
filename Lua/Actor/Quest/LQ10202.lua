require('Actor/ActorCommon')

local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest10202 = class("Quest10202", questActorProxy)

Quest10202.defaultAlias = "Quest10202"

local q10202cfg
local subIDs
local DoorData
local QinData
local KleeData
local PaimonData

function Quest10202:OnDataLoaded(  )
	q10202cfg = self.clientData
	subIDs = q10202cfg.SubIDs
	DoorData = q10202cfg.DoorData
	QinData = q10202cfg.QinData
	KleeData = q10202cfg.KleeData
	PaimonData = q10202cfg.PaimonData
end
-- Generated
function Quest10202:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["1020201"] = self.OnSubStart1020201
	self.subStartHandlers["1020202"] = self.OnSubStart1020202
	self.subStartHandlers["1020203"] = self.OnSubStart1020203
	self.subStartHandlers["1020204"] = self.OnSubStart1020204

    
end

function Quest10202:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["1020201"] = self.OnSubFinish1020201
	self.subFinishHandlers["1020202"] = self.OnSubFinish1020202
	self.subFinishHandlers["1020203"] = self.OnSubFinish1020203
	self.subFinishHandlers["1020204"] = self.OnSubFinish1020204

	
end

function Quest10202:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["1020201"] = self.OnSubFailed1020201
	self.subFailedHandlers["1020202"] = self.OnSubFailed1020202
	self.subFailedHandlers["1020203"] = self.OnSubFailed1020203
	self.subFailedHandlers["1020204"] = self.OnSubFailed1020204


end

---sub start & finish 内调用的函数


--@region sub start & finish handlers
---按流程触发顺序
function Quest10202:OnSubStart1020201(quest)
	
end

function Quest10202:OnSubFinish1020201(quest)
	print("1020201 finish")

	self:DestroyQuestNpcActor(KleeData.Klee, 1004)
	local paimon = self:GetQuestNpcActor("Paimon")
	if paimon ~= nil then
		paimon:DestroyWithDisappear(false)
	end
end

function Quest10202:OnSubStart1020202(quest)
end

function Quest10202:OnSubFinish1020202(quest)
	print("1020202 finish")
	self:CreateQuestNpc(quest, QinData.QinID, 2)
	self:CreateQuestNpc(quest, KleeData.KleeID, 1)
end

function Quest10202:OnSubStart1020203(quest)
	
end

function Quest10202:OnSubFinish1020203(quest)
end

function Quest10202:OnSubStart1020204(quest)
	self:CreateQuestNpc(quest, DoorData.DoorID, 1)
end

function Quest10202:OnSubFinish1020204(quest)
	self:DestroyQuestNpcActor(DoorData.Door, 1004)
end
--@endregion


function Quest10202:Start()
end

function Quest10202:OnDestroy()
end

return Quest10202