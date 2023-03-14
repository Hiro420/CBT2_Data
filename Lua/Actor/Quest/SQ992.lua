require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest992 = class("Quest992", questActorProxy)

Quest992.defaultAlias = "Quest992"

local q992ClientCfg = require('Quest/Client/Q992ClientConfig')
util.do_require('Quest/Share/Q992ShareConfig')

local amborData = AmborData
local subIDs = q992ClientCfg.SubIDs

-- Generated
function Quest992:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
	self.subStartHandlers["99201"] = self.OnSubStart99201
	self.subStartHandlers["99202"] = self.OnSubStart99202
	self.subStartHandlers["99203"] = self.OnSubStart99203	
end

function Quest992:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
	self.subFinishHandlers["99201"] = self.OnSubFinish99201
	self.subFinishHandlers["99202"] = self.OnSubFinish99202
	self.subFinishHandlers["99203"] = self.OnSubFinish99203
end

-- local param begin
-- local param end

-- local method begin
--@region sub start handlers

function Quest992:OnSubStart99201(quest)
    print("99201 start:...")
    self:CreateQuestNpc(quest, amborData.AmborID)
    --actorMgr:CreateActorWithPos(amborData.Ambor, amborData.AmborScript, amborData.AmborID, 0, amborData.bornPos1, amborData.bornDir1, true, false)  
end

function Quest992:OnSubStart99202(quest)
    print("99202 start:...")
    self:ActionSafeCall(
        function(self)
            self:CreateQuestNpc(quest, amborData.AmborID)
            --actorMgr:CreateActorWithPos(amborData.Ambor, amborData.AmborScript, amborData.AmborID, 0, amborData.bornPos2, amborData.bornDir2, true, false)
        end
    )
end

function Quest992:OnSubStart99203(quest)
    print("99203 start:...")
    self:ActionSafeCall(
        function(self)
            self:CreateQuestNpc(quest, amborData.AmborID)
            --actorMgr:CreateActorWithPos(amborData.Ambor, amborData.AmborScript, amborData.AmborID, 0, amborData.bornPos3, amborData.bornDir3, true, false)
        end
    )
end

--@endregion

--@region sub finish handlers
function Quest992:OnSubFinish99203(quest)
	print("OnFinished 99203")
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

function Quest992:Start()
end

function Quest992:OnDestroy()
end

return Quest992