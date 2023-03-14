require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest397 = class("Quest397", questActorProxy)

Quest397.defaultAlias = "Quest397"

local q397Cfg
local playerData
local wendyData
local dilucData
local qinData
local paimonData

function Quest397:OnDataLoaded()
    q397Cfg = self.clientData
    playerData = q397Cfg.PlayerData
    wendyData = q397Cfg.WendyData
    dilucData = q397Cfg.DilucData
    qinData = q397Cfg.QinData
    paimonData = q397Cfg.PaimonData
end

-- Generated
function Quest397:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["39701"] = self.OnSubStart39701
    self.subStartHandlers["39702"] = self.OnSubStart39702
    self.subStartHandlers["39703"] = self.OnSubStart39703
    self.subStartHandlers["39704"] = self.OnSubStart39704
end

function Quest397:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["39701"] = self.OnSubFinish39701
    self.subFinishHandlers["39702"] = self.OnSubFinish39702
    self.subFinishHandlers["39703"] = self.OnSubFinish39703
    self.subFinishHandlers["39704"] = self.OnSubFinish39704
end

-- local param begin

--@region sub start handlers
function Quest397:DestroyNPC()
    local wendy = self:GetQuestNpcActor(wendyData.Wendy)
    local qin = self:GetQuestNpcActor(qinData.Qin)
    local diluc = self:GetQuestNpcActor(dilucData.Diluc)
    local paimon = self:GetQuestNpcActor(paimonData.Paimon)

    if wendy ~= nil then
        wendy:Destroy(false)
    end

    if qin ~= nil then
        qin:Destroy(false)
    end

    if diluc ~= nil then
        diluc:Destroy(false)
    end

    if paimon ~= nil then
        paimon:DestroyWithDisappear(false)
    end
end
--@endregion

-- local param end

--@region sub start & finish 内调用的函数

--@endregion end

-- local method begin
--@region sub start handlers
function Quest397:OnSubStart39701(quest)
    print("39701 start ")
end

function Quest397:OnSubStart39702(quest)
    print("39702 start:...")
    self:CreateQuestNpc(quest, wendyData.WendyID)
    self:CreateQuestNpc(quest, dilucData.DilucID)
    self:CreateQuestNpc(quest, qinData.QinID)
end

function Quest397:OnSubStart39703(quest)
    print("39703 start:...")
end

function Quest397:OnSubStart39704(quest)
    print("39703 start:...")
    -- local task = curtainUtils.CreateEntityCreateTask({wendyData.Wendy, dilucData.Diluc, qinData.Qin, paimonData.Paimon})
    local task = self:CreateQuestNpcCreateTask({wendyData.Wendy, dilucData.Diluc, qinData.Qin, paimonData.Paimon})

    self:CallDelay(2,
        function()
            self:TransmitPlayer(3, playerData.bornPos2, playerData.bornDir2, nil,
            function(self)
                self:ShowBlackScreen(0.5, 2, 0.5)
                self:CreateQuestNpc(quest, wendyData.WendyID)
                self:CreateQuestNpc(quest, dilucData.DilucID)
                self:CreateQuestNpc(quest, qinData.QinID)
            end, task
            )
        end
    )
end
--@endregion

--@region sub finish handlers
function Quest397:OnSubFinish39701(quest)
    print("OnFinished 39701")
end

function Quest397:OnSubFinish39702(quest)
    print("OnFinished 39702")
    self:ActionSafeCall(self.DestroyNPC)
end

function Quest397:OnSubFinish39703(quest)
    print("OnFinished 39703")
end

function Quest397:OnSubFinish39704(quest)
    print("OnFinished 39704")
    self:ActionSafeCall(self.DestroyNPC)
end
--@endregion

function Quest397:Start()
end

function Quest397:OnDestroy()
end

return Quest397