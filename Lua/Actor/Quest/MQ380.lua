require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest380 = class("Quest380", questActorProxy)

Quest380.defaultAlias = "Quest380"

local q380Cfg 
local subIDs 
local qinData  
local dilucData  
local paimonData  
local treasureData  

function Quest380:OnDataLoaded()
    q380Cfg = self.clientData
    subIDs = q380Cfg.SubIDs
    qinData = q380Cfg.QinData
    dilucData = q380Cfg.DilucData
    paimonData = q380Cfg.PaimonData
    treasureData = q380Cfg.TreasureData
end

-- Generated
function Quest380:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["38001"] = self.OnSubStart38001
    self.subStartHandlers["38002"] = self.OnSubStart38002
    self.subStartHandlers["38003"] = self.OnSubStart38003
    self.subStartHandlers["38004"] = self.OnSubStart38004
end

function Quest380:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["38001"] = self.OnSubFinish38001
    self.subFinishHandlers["38002"] = self.OnSubFinish38002
    self.subFinishHandlers["38003"] = self.OnSubFinish38003
    self.subFinishHandlers["38004"] = self.OnSubFinish38004
end

-- local param begin
-- local param end

-- local method begin
--@region sub start handlers

function Quest380:OnSubStart38001(quest)
    print("38001 start:...")
    -- local quest = actorMgr:GetActor(q380Cfg.ActorAlias)
    -- if quest ~= nil then
    --     quest:FinishQuest(false, nil)
    -- end 
    actorMgr:CreateActorWithPos("Q380Trigger", "Actor/Gadget/Q380TriggerArea", 70900002, 0, sceneData:GetDummyPoint(3,"DUMMY_POS 3003390").pos, sceneData:GetDummyPoint(3,"DUMMY_POS 3003390").rot, true, false)
end

function Quest380:OnSubStart38002(quest)
    print("38002 start:...")
    -- TODO: Do sth on sub quest 38002 start
end

function Quest380:OnSubStart38003(quest)
    print("38003 start:...")
    -- TODO: Do sth on sub quest 38002 start
    -- self:SpawnChest(treasureData.GadgetID, treasureData.bornPos, treasureData.bornDir, "Chest380", 3, treasureData.DropId ,treasureData.ShowCutscene)
    self:SpawnChestWithPos(quest,70210041,1,treasureData.bornPos, treasureData.bornDir, "Chest380")
end

function Quest380:OnSubStart38004(quest)
    print("38004 start:...")
    -- TODO: Do sth on sub quest 38002 start
    self:CallDelay(1.5 , self.EnterDialog)  
end

function Quest380:CreateNPC()
    self:CreateQuestNpcById(38004, paimonData.PaimonID)
    self:CreateQuestNpcById(38004, dilucData.DilucID)
    self:CreateQuestNpcById(38004, qinData.QinID)
    self:RequestInteraction(qinData.Qin)
    -- actorMgr:CreateActorWithPos(paimonData.Paimon, paimonData.PaimonScript, paimonData.PaimonID, 0, paimonData.bornPos, paimonData.bornDir, true, false,3,true,0,38004)  
    -- actorMgr:CreateActorWithPos(dilucData.Diluc, dilucData.DilucScript, dilucData.DilucID, 0, dilucData.bornPos, dilucData.bornDir, true, false,3,true,0,38004)   
    -- actorMgr:CreateActorWithPos(qinData.Qin, qinData.QinScript, qinData.QinID, 0, qinData.bornPos, qinData.bornDir, true, false,3,true,0,38004)  
end


function Quest380:StartDialog()
    self:RequestInteraction(qinData.Qin)
end

function Quest380:EnterDialog()
    local task = self:CreateQuestNpcCreateTask({dilucData.Diluc, qinData.Qin})

    self:ShowBlackScreen(0.5, 1.0, 0.5, self.CreateNPC, nil , task)
end

--@endregion

--@region sub finish handlers
function Quest380:OnSubFinish38001(quest)
    print("OnFinished 38001")
end

function Quest380:OnSubFinish38002(quest)
    print("OnFinished 38002")
end

function Quest380:OnSubFinish38003(quest)
    print("OnFinished 38002")

end

function Quest380:OnSubFinish38004(quest)
    print("OnFinished 38004")
    self:ActionSafeCall(self.DestroyNPC)
    self:ActionSafeCall(self.TellStory)
end

function Quest380:DestroyNPC()
    self:ActionSafeCall(
        function(self)
            local paimon = self:GetQuestNpcActor(paimonData.Paimon)
            if paimon ~= nil then
                paimon:DestroyWithDisappear(false)
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

function Quest380:TellStory(quest)
    self:CallDelay(1.5, self.StartStory)
end

function Quest380:StartStory(quest)
    self:NarratorOnlyTask(q380Cfg.StoryNarrator, nil, "Story")
end

function Quest380:ExitDialog()
    -- self:ShowBlackScreen(0.5, 1.0, 0.5, self.DestroyNPC, self.TellStory)

end
--@endregion

function Quest380:Start()
end

function Quest380:OnDestroy()
end

return Quest380