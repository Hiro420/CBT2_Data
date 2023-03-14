require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest388 = class("Quest388", questActorProxy)

Quest388.defaultAlias = "Quest388"

local q388Cfg
local wendyData
local qinData
local dilucData
local narratorData

function Quest388:OnDataLoaded()
    q388Cfg = self.clientData
    wendyData = q388Cfg.WendyData
    qinData = q388Cfg.QinData
    dilucData = q388Cfg.DilucData
    narratorData = q388Cfg.NarratorData
end

-- Generated
function Quest388:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["38801"] = self.OnSubStart38801
    self.subStartHandlers["38802"] = self.OnSubStart38802    
    self.subStartHandlers["38803"] = self.OnSubStart38803    
    self.subStartHandlers["38804"] = self.OnSubStart38804  
    self.subStartHandlers["38805"] = self.OnSubStart38805  
    self.subStartHandlers["38806"] = self.OnSubStart38806          
end

function Quest388:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["38801"] = self.OnSubFinish38801
    self.subFinishHandlers["38802"] = self.OnSubFinish38802
    self.subFinishHandlers["38803"] = self.OnSubFinish38803
    self.subFinishHandlers["38804"] = self.OnSubFinish38804
    self.subFinishHandlers["38805"] = self.OnSubFinish38805
    self.subFinishHandlers["38806"] = self.OnSubFinish38806
end

-- local param begin
-- local param end

-- local method begin
--@region sub start handlers

function Quest388:Narrator38802()
    self:NarratorOnlyTask(narratorData.Story1)
end

function Quest388:NPCdis38802()
    local qin = self:GetQuestNpcActor(qinData.Qin)
    local diluc = self:GetQuestNpcActor(dilucData.Diluc)
    local wendy = self:GetQuestNpcActor(wendyData.Wendy)
    local paimon = self:GetQuestNpcActor("Paimon")
    
    if qin ~= nil then
        qin:Destroy(false)
    end

    if diluc ~= nil then
        diluc:Destroy(false)
    end

    if wendy ~= nil then
        wendy:Destroy(false)
    end

    if paimon ~= nil then
        paimon:DestroyWithDisappear(false)
    end
end

function Quest388:OnSubStart38801(quest)  
    print("38801 start:...")
end

function Quest388:OnSubStart38802(quest)
    print("38802 start: BlackScreen & Destroy NPC & Narrator")
    self:ActionSafeCall(
        function(self)
            self:Narrator38802()
            self:NPCdis38802()
        end
    )
end

function Quest388:OnSubStart38803(quest)
    print("38803 start:...")
    -- local task = curtainUtils.CreateEntityCreateTask({wendyData.Wendy, dilucData.Diluc, qinData.Qin})
    local task = self:CreateQuestNpcCreateTask({wendyData.Wendy, dilucData.Diluc, qinData.Qin})

    self:CallDelay(2,
        function()
            self:TransmitPlayer(3, sceneData:GetDummyPoint(3,"Q38802Player").pos, sceneData:GetDummyPoint(3,"Q38802Player").rot, nil, 
                function (self)
                    self:CreateQuestNpc(quest, wendyData.WendyID) 
                    self:CreateQuestNpc(quest, dilucData.DilucID) 
                    self:CreateQuestNpc(quest, qinData.QinID)
                    
                    self:RequestInteraction(wendyData.Wendy)
                end, task
            )
        end
    )
end

function Quest388:OnSubStart38804(quest)
    print("38804 start:...")
    self:ActionSafeCall(
    function (self)
        self:RequestInteraction(wendyData.Wendy)
    end
    )
end

function Quest388:OnSubStart38805(quest)
    print("38804 start:...")
    local quest = actorMgr:GetActor(q388Cfg.ActorAlias)
    if quest ~= nil then
        quest:FinishQuest(false, nil)
    end
end

function Quest388:OnSubStart38806(quest)
    print("38806 start:...")
end


--@endregion

--@region sub finish handlers
function Quest388:OnSubFinish38801(quest)
    print("38801 finish:...")
end


function Quest388:OnSubFinish38802(quest)
    print("38802 finish: stop narrator")
    self:ClearNarratorTask()
end

function Quest388:OnSubFinish38803(quest)
    print("OnFinished 38803")
end

function Quest388:OnSubFinish38804(quest)
    print("OnFinished 38804")
    self:ActionSafeCall(
        function (self)
            local paimon = self:GetQuestNpcActor("Paimon")
            local wendy = self:GetQuestNpcActor(wendyData.Wendy)
            local diluc = self:GetQuestNpcActor(dilucData.Diluc)
            local qin = self:GetQuestNpcActor(qinData.Qin)

            if paimon ~= nil then
                paimon:DestroyWithDisappear(false)
            end

            if wendy ~= nil then
                wendy:Destroy(false)
            end  

            if diluc ~= nil then
                diluc:Destroy(false)
            end  

            if qin ~= nil then
                qin:Destroy(false)
            end  
        end
    )
end

function Quest388:OnSubFinish38805(quest)
    print("OnFinished 38805")
end

function Quest388:OnSubFinish38806(quest)
    print("OnFinished 38806:Creat NPC")
    -- local task = curtainUtils.CreateEntityCreateTask({wendyData.Wendy, dilucData.Diluc, qinData.Qin})
    local task = self:CreateQuestNpcCreateTask({wendyData.Wendy, dilucData.Diluc, qinData.Qin})

    self:TransmitPlayer(3, sceneData:GetDummyPoint(3,"Q38804Player").pos, sceneData:GetDummyPoint(3,"Q38804Player").rot, nil, 
        function (self)
            self:CreateQuestNpc(quest, wendyData.WendyID) 
            self:CreateQuestNpc(quest, dilucData.DilucID) 
            self:CreateQuestNpc(quest, qinData.QinID)

            self:CallDelay(1,
                function (self)
                self:RequestInteraction(wendyData.Wendy)
                end
            )
        end, task
    )
end

function Quest388:InvokeOnInteraction(param)
    if param == 1 then
        print("Talk38801:Finishi Quest 38801")
        local quest = actorMgr:GetActor(q388Cfg.ActorAlias)
        if quest ~= nil then
            quest:FinishQuest(false, nil)
        end
    elseif param == 2 then
        print("Talk38803:Finishi Quest 38803")
        local quest = actorMgr:GetActor(q388Cfg.ActorAlias)
        if quest ~= nil then
            self:CallDelay(5.5,
            function (self)
                quest:FinishQuest(false, nil)
            end
            )
        end
    elseif param == 3 then
        print("Talk38803 Finish2:NPC walk & dis")
        local quest = actorMgr:GetActor(q388Cfg.ActorAlias)
        local wendy = self:GetQuestNpcActor(wendyData.Wendy)
        local diluc = self:GetQuestNpcActor(dilucData.Diluc)
        local qin = self:GetQuestNpcActor(qinData.Qin)

        if qin ~= nil then
            qin:WalkTo(qinData.dis1Pos)
            self:CallDelay(2.0,
            function (self)
                qin:SetVisible(false)
            end
            )
        end

        if wendy ~= nil then
            wendy:WalkTo(wendyData.dis1Pos)
            self:CallDelay(2.0,
            function (self)
                wendy:SetVisible(false)
            end
            )
        end

        if diluc ~= nil then
            diluc:WalkTo(dilucData.dis1Pos)
            self:CallDelay(2.0,
            function (self)
                diluc:SetVisible(false)
            end
            )
        end

        if quest ~= nil then
            quest:FinishQuest(false, nil)
        end
    end
end
--@endregion

function Quest388:Start()
end

function Quest388:OnDestroy()
end

return Quest388




