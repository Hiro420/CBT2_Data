require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest10400 = class("Quest10400", questActorProxy)

Quest10400.defaultAlias = "Quest10400"

local q10400ClientCfg = require('Quest/Client/Q10400ClientConfig')
util.do_require('Quest/Share/Q10400ShareConfig')

local babaraData = BabaraData
local subIDs = sub_ids

-- Generated
function Quest10400:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
	self.subStartHandlers["1040001"] = self.OnSubStart1040001
end

function Quest10400:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
	self.subFinishHandlers["1040001"] = self.OnSubFinish1040001
end

-- local param begin
-- local param end

-- local method begin
--@region sub start handlers

function Quest10400:OnSubStart1040001(quest)    
    print("1040001 start:...")            
    self:CreateQuestNpc(quest, babaraData.BabaraID)
end


--@endregion

--@region sub finish handlers
function Quest10400:OnSubFinish1040001(quest)
	print("OnFinished 1040001")
	self:ActionSafeCall(
        function(self)
            local babara = actorMgr:GetActor(babaraData.Babara)
            if babara ~= nil then
                babara:Destroy(false)
            end 
        end
    )
end

--@endregion

function Quest10400:Start()
end

function Quest10400:OnDestroy()
end

return Quest10400