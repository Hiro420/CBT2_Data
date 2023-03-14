require('Actor/ActorCommon')

local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest10203 = class("Quest10203", questActorProxy)

Quest10203.defaultAlias = "Quest10203"

local q10203cfg
local subIDs
local DoorData
local QinData


function Quest10203:OnDataLoaded(  )
	q10203cfg = self.clientData
	subIDs = q10203cfg.SubIDs
	QinData = q10203cfg.QinData
	DoorData = q10203cfg.DoorData
end

-- Generated
function Quest10203:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["1020301"] = self.OnSubStart1020301
	self.subStartHandlers["1020302"] = self.OnSubStart1020302
    
end

function Quest10203:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["1020301"] = self.OnSubFinish1020301
	self.subFinishHandlers["1020302"] = self.OnSubFinish1020302
	
end

function Quest10203:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["1020301"] = self.OnSubFailed1020301
	self.subFailedHandlers["1020302"] = self.OnSubFailed1020302

end

---sub start & finish 内调用的函数


--@region sub start & finish handlers
---按流程触发顺序
function Quest10203:OnSubStart1020301(quest)
	self:CreateQuestNpc(quest, QinData.QinID, 1)
end

function Quest10203:OnSubFinish1020301(quest)
	print("1020301 finish")
end

function Quest10203:OnSubStart1020302(quest)
	self:CreateQuestNpc(quest, DoorData.DoorID, 1)
end

function Quest10203:OnSubFinish1020302(quest)
    print("1020302 finish")
	
	self:DestroyQuestNpcActor(DoorData.Door, 1004)
	self:DestroyQuestNpcActor(QinData.Qin, 1004)
end

--@endregion


function Quest10203:Start()
end

function Quest10203:OnDestroy()
end

return Quest10203