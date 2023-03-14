require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest452 = class("Quest452", questActorProxy)

Quest452.defaultAlias = "Quest452"

local DailyNpcManager = require('Actor/DailyNPCManager')

local q452Cfg
local subIDs
local mainquestid = 452
local paimonData
local amborData
local farmerData

function Quest452:OnDataLoaded()
    q452Cfg = self.clientData
    subIDs = q452Cfg.SubIDs
    mainquestid = 452
    paimonData = q452Cfg.PaimonData
    amborData = q452Cfg.AmborData
    farmerData = q452Cfg.FarmerData
end

-- Generated
function Quest452:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["45201"] = self.OnSubStart45201
    self.subStartHandlers["45202"] = self.OnSubStart45202
    self.subStartHandlers["45203"] = self.OnSubStart45203
    self.subStartHandlers["45206"] = self.OnSubStart45206
    self.subStartHandlers["45204"] = self.OnSubStart45204
    self.subStartHandlers["45205"] = self.OnSubStart45205
end

function Quest452:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["45201"] = self.OnSubFinish45201
    self.subFinishHandlers["45202"] = self.OnSubFinish45202
    self.subFinishHandlers["45203"] = self.OnSubFinish45203
    self.subFinishHandlers["45206"] = self.OnSubFinish45206
    self.subFinishHandlers["45204"] = self.OnSubFinish45204
    self.subFinishHandlers["45205"] = self.OnSubFinish45205
end

-- local param begin
-- local param end

-- local method begin
--@region sub start handlers
function Quest452:PaimonDis()
   local paimon = self:GetQuestNpcActor(paimonData.Alias)
    if paimon ~= nil then
        paimon:DestroyWithDisappear(false)
    end
end

function Quest452:PaimonDelay()
    self:PaimonDis()
end

function Quest452:OnSubStart45201(quest)
    print("45201 start:...")
    self:CreateQuestNpc(quest, amborData.ID)
    local ambor = self:GetQuestNpcActor(amborData.Alias)
    ambor:DoFreeStyle(1190)
end

function Quest452:OnSubStart45202(quest)
    print("45202 start:...")
    actorMgr:CreateActorWithPos("Q45202Trigger", "Actor/Gadget/Q45202Trigger", 70900002, 0, sceneData:GetDummyPoint(3,"Q452AmborFight").pos, sceneData:GetDummyPoint(3,"Q452AmborFight").rot, true, false)
    self:ActionSafeCall(
        function(self)
            local ambor = self:GetQuestNpcActor(amborData.Alias)
            if ambor ~= nil then
                self:DestroyQuestNpcActorByAlias(amborData.Alias, false)
            end
            self:CallDelay(0.5,
            function(self)
                self:CreateQuestNpc(quest, amborData.ID)
                local ambor = self:GetQuestNpcActor(amborData.Alias)
                ambor:DoFreeStyle(1220)
            end
            )
        end
    )
end

function Quest452:OnSubStart45203(quest)
    print("45203 start:...")
    self:NotifyTo("Npc1631", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:CreateQuestNpc(quest, farmerData.ID)
    local farmerData = self:GetQuestNpcActor(farmerData.Alias)
    farmerData:DoFreeStyle(4190)
end

function Quest452:OnSubStart45206(quest)
    print("45206 start:...")

end

function Quest452:OnSubStart45204(quest)
    local farmerData = self:GetQuestNpcActor(farmerData.Alias)
    farmerData:DoFreeStyle(4190)
end

function Quest452:OnSubStart45205(quest)
    print("45205 start:...")
    self:NotifyTo("Npc1631", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:CreateQuestNpc(quest, farmerData.ID)
end



--@endregion

--@region sub finish handlers
function Quest452:OnSubFinish45201(quest)
    self:ActionSafeCall(self.PaimonDelay)
    --self:ShowBlackScreen(0.5, 1, 0.5)
end

function Quest452:OnSubFinish45202(quest)
end

function Quest452:OnSubFinish45203(quest)
    self:ActionSafeCall(self.PaimonDelay)

    local ambor = self:GetQuestNpcActor(amborData.Alias)
    if ambor ~= nil then
        self:ActionSafeCall(
            function(self)
                self:DestroyQuestNpcActorByAlias(amborData.Alias, false)
            end
        )
    end

end

function Quest452:OnSubFinish45206(quest)
    print("45206 finish:...")
    local task = curtainUtils.CreateEntityCreateTask({amborData.Alias})
    self:CallDelay(2,
        function (self)
            self:ActionSafeCall(
                function (self)
                    self:TransmitPlayer(3, sceneData:GetDummyPoint(3, "Q45203_PlayerPos").pos, sceneData:GetDummyPoint(3, "Q45203_PlayerPos").rot, nil ,                
                    function(self)
                        self:CreateQuestNpc(quest, amborData.ID)
                        local ambor = self:GetQuestNpcActor(amborData.Alias)
                        ambor:DoFreeStyle(1190)
                        self:RequestInteraction(farmerData.Alias)
                        print("SHOW BLACK SCREEN 452")
                    end ,task)
                    local farmerData = self:GetQuestNpcActor(farmerData.Alias)
                    if farmerData ~= nil then
                        farmerData:DoFreeStateTrigger()
                    end
                end
            )
        end
    )
end

function Quest452:OnSubFinish45204(quest)

end

function Quest452:OnSubFinish45205(quest)
    self:ActionSafeCall(self.PaimonDelay)    

    self:NotifyTo("Npc1631", DailyNpcManager.NpcEventType.STARTDAILY, true)

    local ambor = self:GetQuestNpcActor(amborData.Alias)
    if ambor ~= nil then
        self:ActionSafeCall(
            function(self)
                self:DestroyQuestNpcActorByAlias(amborData.Alias, false)
            end   
        )
    end
end


function Quest452:InvokeOnInteraction(param)
    if param == 1 then
        print("45201:*******Quest 45201")
        local ambor = self:GetQuestNpcActor(amborData.Alias)
        if ambor ~= nil then
            ambor:DoFreeStateTrigger()
            ambor:RunToTask(amborData.LeavePos201)
        end
    end

    if param == 2 then
        print("45203:*******Quest 45203")
        local ambor = self:GetQuestNpcActor(amborData.Alias)
        if ambor ~= nil then
            ambor:DoFreeStateTrigger()
            ambor:RunToTask(amborData.LeavePos203)
        end
    end

end

--@endregion

function Quest452:Start()
end

function Quest452:OnDestroy()
end

return Quest452