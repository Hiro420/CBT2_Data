require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest379 = class("Quest379", questActorProxy)

Quest379.defaultAlias = "Quest379"

local q379Cfg  
local subIDs
local wendyData  
local dilucData  
local qinData  

function Quest379:OnDataLoaded()
    q379Cfg = self.clientData
    subIDs = q379Cfg.SubIDs
    wendyData = q379Cfg.WendyData
    dilucData = q379Cfg.DilucData
    qinData = q379Cfg.QinData
end

-- Generated
function Quest379:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["37901"] = self.OnSubStart37901
    self.subStartHandlers["37902"] = self.OnSubStart37902    
    self.subStartHandlers["37903"] = self.OnSubStart37903    
    self.subStartHandlers["37904"] = self.OnSubStart37904    
end

function Quest379:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["37901"] = self.OnSubFinish37901
    self.subFinishHandlers["37902"] = self.OnSubFinish37902
    self.subFinishHandlers["37903"] = self.OnSubFinish37903
    self.subFinishHandlers["37904"] = self.OnSubFinish37904
end

-- local param begin
-- local param end

-- local method begin
--@region sub start handlers


function Quest379:OnSubStart37901(quest)  
    print("37901 start ")
    self:CreateQuestNpc(quest,  wendyData.WendyID)
    self:CreateQuestNpc(quest,  dilucData.DilucID)

end

function Quest379:OnSubStart37902(quest)
    print("37902 start:...")
    self:CreateQuestNpc(quest, qinData.QinID)
    self:RequestInteraction(wendyData.Wendy)    
end

function Quest379:OnSubStart37903(quest)
    print("37903 start:...")
    -- local quest = actorMgr:GetActor(q379Cfg.ActorAlias)
    -- if quest ~= nil then
    --     quest:FinishQuest(false, nil)
    -- end 
    self:RequestInteraction(wendyData.Wendy)
end

function Quest379:OnSubStart37904(quest)
    print("37904 start:...")
    self:RequestInteraction(qinData.Qin)
end


function Quest379:InvokeOnInteraction(param)
    if param == 3 then
        print("Test!!!!!!!!!!!!!!!!")
        self.uActor:AvatarPaimonAppear()
    elseif param == 4 then
        self.uActor:AvatarPaimonDisappear(nil, true)
    elseif param == 101 then
        print("Now Stop Talking")
        self:SpawnGadgetById(37902 , 70300200 )
        -- self:SpawnGadget(70300200, sceneData:GetDummyPoint(1009,"Q37702Himmel").pos, sceneData:GetDummyPoint(1009,"Q37702Himmel").rot, "Harp01", 1009,0,0,1)
    elseif param == 102 then
        print("Now Start Talking")
        self:UnSpawn("Harp01")
    elseif param == 103 then
        print("Now Stop Talking")
        self:SpawnGadgetById(37904 , 70300201 )
        -- self:SpawnGadget(70300201, sceneData:GetDummyPoint(1009,"Q37702HimmelRepair").pos, sceneData:GetDummyPoint(1009,"Q37702HimmelRepair").rot, "Harp02", 1009,0,0,1)
    elseif param == 104 then
        print("Now upspawn 02")
        self:UnSpawn("Harp02")
    end
end
--@endregion

--@region sub finish handlers
function Quest379:OnSubFinish37901(quest)
    print("OnFinished 37901")
end

function Quest379:OnSubFinish37902(quest)
    print("OnFinished 37902")
end

function Quest379:OnSubFinish37903(quest)
    print("OnFinished 37903")
end

function Quest379:OnSubFinish37904(quest)
    print("OnFinished 37904")
    self:ActionSafeCall(
        function(self)
            local paimon = self:GetQuestNpcActor("Paimon")
            if paimon ~= nil then
                paimon:DestroyWithDisappear(false)
            end
        end
    )
    self:ActionSafeCall(self.DestroyNPC)
    self:ActionSafeCall(self.TellStory)
    -- self:ShowBlackScreen(0.5, 1.5, 0.5, self.DestroyNPC, self.TellStory)
end

function Quest379:DestroyNPC(quest)
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
            local qin = self:GetQuestNpcActor(qinData.Qin)
            if qin ~= nil then
                qin:Destroy(false)
            end
        end
    )
    self:ActionSafeCall(
        function(self)
            local diluc = self:GetQuestNpcActor(dilucData.Diluc)
            if diluc ~= nil then
                diluc:Destroy(false)
            end
        end
    )
end

function Quest379:TellStory(quest)
    self:CallDelay(1.5, self.StartStory)
end

function Quest379:StartStory(quest)
    self:NarratorOnlyTask(q379Cfg.StoryNarrator, nil, "Story")
end

--@endregion

function Quest379:Start()
end

function Quest379:OnDestroy()
end

return Quest379