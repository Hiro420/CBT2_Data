require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest1001 = class("Quest1001", questActorProxy)

Quest1001.defaultAlias = "Quest1001"

local q1001Cfg = require('Quest/Client/Q1001ClientConfig')
local subIDs = q1001Cfg.SubIDs

local DailyNpcManager = require('Actor/DailyNPCManager')


-- Generated
function Quest1001:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["100101"] = self.OnSubStart100101
    self.subStartHandlers["100102"] = self.OnSubStart100102
    self.subStartHandlers["100103"] = self.OnSubStart100103
end

function Quest1001:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["100101"] = self.OnSubFinish100101
    self.subFinishHandlers["100102"] = self.OnSubFinish100102
	self.subFinishHandlers["100103"] = self.OnSubFinish100103
end

-- local param begin
-- local param end

-- local method begin
--@region sub start handlers

function Quest1001:OnSubStart100101(quest)
    print("100101 start:...")
    -- actorMgr:CreateActorWithPos("Q100101Trigger", "Actor/Gadget/Q100101Trigger", 70900002, 0, sceneData:GetDummyPoint(3,"Q1000Zone2").pos, sceneData:GetDummyPoint(3,"Q1000Zone2").rot, true, false)
end

function Quest1001:OnSubStart100102(quest)
    print("100102 start:...")
    self:TransmitPlayer(3, sceneData:GetDummyPoint(3,"Q1001Trans01").pos, sceneData:GetDummyPoint(3,"Q1001Trans01").rot, 
        function (self)
            local quest = actorMgr:GetActor(q1001Cfg.ActorAlias)
            if quest ~= nil then
                quest:FinishQuestID(false, 100102)
            end
        end
    )
end

function Quest1001:OnSubStart100103(quest)
    print("100103 start:...")
    -- TODO: Do sth on sub quest 100102 start
    local quest = actorMgr:GetActor(q1001Cfg.ActorAlias)
    if quest ~= nil then
        quest:FinishQuestID(false, 100103)
    end
end

--@endregion

--@region sub finish handlers
function Quest1001:OnSubFinish100101(quest)
    print("OnFinished 100101")
end

function Quest1001:OnSubFinish100102(quest)
    print("OnFinished 100102")

end

function Quest1001:OnSubFinish100103(quest)
    print("OnFinished 100103")

end


--@endregion

function Quest1001:Start()
end

function Quest1001:OnDestroy()
end

return Quest1001