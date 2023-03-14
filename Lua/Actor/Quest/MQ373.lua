require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest373 = class("Quest373", questActorProxy)

Quest373.defaultAlias = "Quest373"

local q373Cfg
local subIDs
local mainquestid = 373
local wendyData
-- util.do_require('Quest/Share/Q373ShareConfig')
-- local quest_data37304 = quest_data["37304"]

function Quest373:OnDataLoaded()
    q373Cfg = self.clientData
    subIDs = q373Cfg.SubIDs
    wendyData = q373Cfg.WendyData
end


-- Generated
function Quest373:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["37301"] = self.OnSubStart37301
    self.subStartHandlers["37302"] = self.OnSubStart37302
    self.subStartHandlers["37303"] = self.OnSubStart37303    
    self.subStartHandlers["37304"] = self.OnSubStart37304    
end

function Quest373:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["37301"] = self.OnSubFinish37301
    self.subFinishHandlers["37302"] = self.OnSubFinish37302
    self.subFinishHandlers["37303"] = self.OnSubFinish37303
    self.subFinishHandlers["37304"] = self.OnSubFinish37304
end

-- local param begin
-- local param end

-- local method begin
--@region sub start handlers


function Quest373:OnSubStart37301(quest)  
    print("37301 start ")
    actorMgr:CreateActorWithPos("Q373Trigger", "Actor/Gadget/Q373Trigger", 70900002, 0, wendyData.bornPos, wendyData.bornDir, true, false)
    self:CreateQuestNpc(quest, wendyData.WendyID)

    self:CallDelay(3, 
    function(self)
        local wendy = self:GetQuestNpcActor(wendyData.Wendy)
        if wendy ~= nil then
            wendy:LookAt(sceneData:GetDummyPoint(3,"Q373Look").pos)
            print("look at me")
        end
    end)
end

function Quest373:OnSubStart37302(quest)
    print("37302 start:...")
    -- self:RequestInteraction(wendyData.Wendy)
end

function Quest373:InvokeOnInteraction(param)
    if param == 3 then
        print("Now Spawn Monster")
        local quest = actorMgr:GetActor(q373Cfg.ActorAlias)
        if quest ~= nil then
            quest:FinishQuest(false, nil)
        end
    end
end

function Quest373:OnSubStart37303(quest)
    print("37303 start:...BATTLE HERE")
    -- self:SpawnMonster(20020101, 5, sceneData:GetDummyPoint(3,"Q37303Monster").pos)
end

function Quest373:OnSubStart37304(quest)
    print("37304 start:...")
    local task = self:CreateQuestNpcCreateTask({wendyData.Wendy})
    self:CallDelay(
        1.5 ,
        function (self)
            self:ShowBlackScreen(0.5, 1.5, 0.5, self.CreateNPC, nil, task)
        end
    )
end

--@endregion

--@region sub finish handlers
function Quest373:OnSubFinish37301(quest)
    print("OnFinished 37301")
    self:ShowBlackScreen(0.5, 1.5, 0.5, self.RequestWendy)
end

function Quest373:OnSubFinish37302(quest)
    print("OnFinished 37302")
    self:ActionSafeCall(self.TellStory)
end

function Quest373:OnSubFinish37303(quest)
    print("OnFinished 37303")
end

function Quest373:OnSubFinish37304(quest)
    print("OnFinished 37304")
    self:ActionSafeCall(
        self.CleanNPC
    )
end

function Quest373:CleanNPC(quest)
    local paimon = self:GetQuestNpcActor("Paimon")
    if paimon ~= nil then
        paimon:DestroyWithDisappear(false)
    end
end


function Quest373:TellStory(quest)
    self:DestroyNPC()
    self:CallDelay(0.5, 
        function(self)

            self:NarratorOnlyTask(q373Cfg.NarratorFlow, nil, "Fight")
        end
    )
end

function Quest373:RequestWendy(quest)
    self:RequestInteraction(wendyData.Wendy)
end

function Quest373:DestroyNPC(quest)
    self:ActionSafeCall(
        function(self)
            local wendy = self:GetQuestNpcActor(wendyData.Wendy)
            if wendy ~= nil then
                wendy:Destroy(false)
            end
        end
    )
    self:ActionSafeCall(
        function(self)
            local paimon = self:GetQuestNpcActor("Paimon")
            if paimon ~= nil then
                paimon:DestroyWithDisappear(false)
            end
        end
    )
end

function Quest373:CreateNPC(quest)
    self:CreateQuestNpcById(37304, wendyData.WendyID,1)

    self:RequestInteraction(wendyData.Wendy)
end

--@endregion

function Quest373:Start()
end

function Quest373:OnDestroy()
end

return Quest373