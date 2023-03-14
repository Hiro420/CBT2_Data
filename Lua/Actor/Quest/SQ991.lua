require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest991 = class("Quest991", questActorProxy)

Quest991.defaultAlias = "Quest991"

local q991ClientCfg = require('Quest/Client/Q991ClientConfig')
util.do_require('Quest/Share/Q991ShareConfig')

local amborData = AmborData
local subIDs = q991ClientCfg.SubIDs

-- Generated
function Quest991:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
	self.subStartHandlers["99101"] = self.OnSubStart99101
	self.subStartHandlers["99102"] = self.OnSubStart99102
	self.subStartHandlers["99103"] = self.OnSubStart99103	
end

function Quest991:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
	self.subFinishHandlers["99101"] = self.OnSubFinish99101
	self.subFinishHandlers["99102"] = self.OnSubFinish99102
	self.subFinishHandlers["99103"] = self.OnSubFinish99103
end

-- local param begin
-- local param end

-- local method begin
--@region sub start handlers

function Quest991:OnSubStart99101(quest)    
    print("99101 start:...")            
    self:CreateQuestNpc(quest, amborData.AmborID)    
    local questVar = self:GetQuestVar(quest.QuestConfigId, 2)
    self:SetQuestVar(quest.QuestConfigId, 2,100)
    self:SetQuestVarWithInterval(quest.QuestConfigId, 1, 5, 15)
    --actorMgr:CreateActorWithPos(amborData.Ambor, amborData.AmborScript, amborData.AmborID, 0, amborData.bornPos1, amborData.bornDir1, true, false)  
end

function Quest991:OnSubStart99102(quest)
    print("99102 start:...")
    local questVar = self:GetQuestVar(quest.QuestConfigId, 2)
    self:ActionSafeCall(
        function(self)
            self:CreateQuestNpc(quest, amborData.AmborID)
            --actorMgr:CreateActorWithPos(amborData.Ambor, amborData.AmborScript, amborData.AmborID, 0, amborData.bornPos2, amborData.bornDir2, true, false)
        end
    )
end

function Quest991:OnSubStart99103(quest)
    print("99103 start:...")
    self:ActionSafeCall(
        function(self)
            self:CreateQuestNpc(quest, amborData.AmborID)
            --actorMgr:CreateActorWithPos(amborData.Ambor, amborData.AmborScript, amborData.AmborID, 0, amborData.bornPos3, amborData.bornDir3, true, false)
        end
    )
end


--@endregion

--@region sub finish handlers
function Quest991:OnSubFinish99103(quest)
	print("OnFinished 99103")
	self:ActionSafeCall(
        function(self)
            local ambor = self:GetQuestNpcActor(amborData.Ambor)
            if ambor ~= nil then
                ambor:Destroy(false)
            end 
        end
    )
end

--@endregion

function Quest991:Start()
end

function Quest991:OnDestroy()
end

return Quest991