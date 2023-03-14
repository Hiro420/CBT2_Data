require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest453 = class("Quest453", questActorProxy)

Quest453.defaultAlias = "Quest453"
local DailyNpcManager = require('Actor/DailyNPCManager')


local q453Cfg
local subIDs
local mainquestid = 453
local paimonData
local amborData
local farmerOldData
local farmerAngryData
local farmerWound1Data
local pawHintData
local toothHintData
local hairHintData

function Quest453:OnDataLoaded()
    q453Cfg = self.clientData
    subIDs = q453Cfg.SubIDs
    mainquestid = 453
    paimonData = q453Cfg.PaimonData
    amborData = q453Cfg.AmborData
    farmerOldData = q453Cfg.FarmerOldData
    farmerAngryData = q453Cfg.FarmerAngryData
    farmerWound1Data = q453Cfg.FarmerWound1Data
    pawHintData = q453Cfg.PawHintData
    toothHintData = q453Cfg.ToothHintData
    hairHintData = q453Cfg.HairHintData
end

-- Generated
function Quest453:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["45301"] = self.OnSubStart45301
    self.subStartHandlers["45302"] = self.OnSubStart45302

    self.subStartHandlers["45307"] = self.OnSubStart45307

    self.subStartHandlers["45303"] = self.OnSubStart45303

    self.subStartHandlers["45308"] = self.OnSubStart45308

    self.subStartHandlers["45304"] = self.OnSubStart45304
    self.subStartHandlers["45305"] = self.OnSubStart45305
    self.subStartHandlers["45306"] = self.OnSubStart45306
end

function Quest453:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["45301"] = self.OnSubFinish45301
    self.subFinishHandlers["45302"] = self.OnSubFinish45302

    self.subFinishHandlers["45307"] = self.OnSubFinish45307

    self.subFinishHandlers["45303"] = self.OnSubFinish45303

    self.subFinishHandlers["45308"] = self.OnSubFinish45308

    self.subFinishHandlers["45304"] = self.OnSubFinish45304
    self.subFinishHandlers["45305"] = self.OnSubFinish45305
    self.subFinishHandlers["45306"] = self.OnSubFinish45306
end

-- local param begin
-- local param end

-- local method begin
--@region sub start handlers
function Quest453:PaimonDis()
    local paimon = self:GetQuestNpcActor(paimonData.Alias)
    if paimon ~= nil then
        paimon:DestroyWithDisappear(false)
    end
end

function Quest453:PaimonDelay()
    self:PaimonDis()
end

function Quest453:OnSubStart45301(quest)
    self:ActionSafeCall(
    function(self)
        self:CreateQuestNpc(quest, amborData.ID)
        local ambor = self:GetQuestNpcActor(amborData.Alias)
        ambor:DoFreeStyle(1230)

        self:NotifyTo("Npc1537", DailyNpcManager.NpcEventType.HIDESELF, true)
        self:NotifyTo("Npc1632", DailyNpcManager.NpcEventType.HIDESELF, true)
        self:NotifyTo("Npc1543", DailyNpcManager.NpcEventType.HIDESELF, true)
        self:CreateQuestNpc(quest, farmerOldData.ID)
        self:CreateQuestNpc(quest, farmerAngryData.ID)
        self:CreateQuestNpc(quest, farmerWound1Data.ID)
        self:CallDelay(1,
            function (self)
                local farmerOld = self:GetQuestNpcActor(farmerOldData.Alias)
                farmerOld:DoFreeStyle(1120)
                local farmerAngry = self:GetQuestNpcActor(farmerAngryData.Alias)
                farmerAngry:DoFreeStyle(1190)
                local farmerWound1 = self:GetQuestNpcActor(farmerWound1Data.Alias)
                farmerWound1:DoFreeStyle(4120)
            end
        )
    end
)
    globalActor:UnSpawn("PawHint")
    globalActor:UnSpawn("ToothHint")
    globalActor:UnSpawn("HairHint")

end

function Quest453:OnSubStart45302(quest)
    print("45302 start:...")
    local task = curtainUtils.CreateEntityCreateTask({farmerAngryData.Alias, farmerOldData.Alias, farmerWound1Data.Alias})
    self:ShowBlackScreen(0.5, 1, 0.5,
        function(self)
            local QG = actorMgr:GetActor("Npc163101_452")
            if QG  ~= nil then
                self:ActionSafeCall(
                    function(self)
                        QG:Destroy(false)
                    end
                )
            end

            local ambor = self:GetQuestNpcActor(amborData.Alias)
            if ambor ~= nil then
                self:ActionSafeCall(
                    function(self)
                        print("452开始删除安柏")
                        self:DestroyQuestNpcActorByAlias(amborData.Alias, false)
                    end
                )
            end
            self:ActionSafeCall(
            function(self)
                self:NotifyTo("Npc1537", DailyNpcManager.NpcEventType.HIDESELF, true)
                self:NotifyTo("Npc1632", DailyNpcManager.NpcEventType.HIDESELF, true)
                self:NotifyTo("Npc1543", DailyNpcManager.NpcEventType.HIDESELF, true)

                self:CreateQuestNpc(quest, farmerOldData.ID)
                local farmerOld = self:GetQuestNpcActor(farmerOldData.Alias)
                farmerOld:DoFreeStyle(1120)


                self:CreateQuestNpc(quest, farmerAngryData.ID)
                local farmerAngry = self:GetQuestNpcActor(farmerAngryData.Alias)
                farmerAngry:DoFreeStyle(1190)

                self:CreateQuestNpc(quest, farmerWound1Data.ID)
                local farmerWound1 = self:GetQuestNpcActor(farmerWound1Data.Alias)
                farmerWound1:DoFreeStyle(4120)
            end)
            self:SpawnGadget(quest, pawHintData.ID)
            print("SHOW BLACK SCREEN 453")
        end,
        nil ,task)
    
end

function Quest453:OnSubStart45307(quest)
    print("45307 start:...")
    self:SpawnGadget(quest, pawHintData.ID)
    self:ShowBlackScreen(0.5,2,0.5,
        function (self)
            self:CreateQuestNpc(quest, paimonData.ID)
        end
    )
end

function Quest453:OnSubStart45303(quest)
    print("45303 start:...")
    self:SpawnGadget(quest, toothHintData.ID)
end

function Quest453:OnSubStart45308(quest)
    print("45308 start:...")
    self:SpawnGadget(quest, toothHintData.ID)
    self:ShowBlackScreen(0.5,2,0.5,
    function (self)
        self:CreateQuestNpc(quest, paimonData.ID)
    end
    )
end

function Quest453:OnSubStart45304(quest)
    self:ActionSafeCall(            
    function(self)
        self:CreateQuestNpc(quest, amborData.ID)
        local ambor = self:GetQuestNpcActor(amborData.Alias)
        ambor:DoFreeStyle(1280)
    
        self:SpawnGadget(quest, hairHintData.ID)

        self:NotifyTo("Npc1537", DailyNpcManager.NpcEventType.HIDESELF, true)
        self:NotifyTo("Npc1632", DailyNpcManager.NpcEventType.HIDESELF, true)
        self:NotifyTo("Npc1543", DailyNpcManager.NpcEventType.HIDESELF, true)

        self:CreateQuestNpc(quest, farmerOldData.ID)
        local farmerOld = self:GetQuestNpcActor(farmerOldData.Alias)
        farmerOld:DoFreeStyle(1120)


        self:CreateQuestNpc(quest, farmerAngryData.ID)
        local farmerAngry = self:GetQuestNpcActor(farmerAngryData.Alias)
        farmerAngry:DoFreeStyle(1190)

        self:CreateQuestNpc(quest, farmerWound1Data.ID)
        local farmerWound1 = self:GetQuestNpcActor(farmerWound1Data.Alias)
        farmerWound1:DoFreeStyle(4120)
    end)
end

function Quest453:OnSubStart45305(quest)
    self:SpawnGadget(quest, hairHintData.ID)
    self:ActionSafeCall(
    function(self)
        self:NotifyTo("Npc1537", DailyNpcManager.NpcEventType.HIDESELF, true)
        self:NotifyTo("Npc1632", DailyNpcManager.NpcEventType.HIDESELF, true)
        self:NotifyTo("Npc1543", DailyNpcManager.NpcEventType.HIDESELF, true)
        self:RequestInteraction(amborData.Alias)

        self:CreateQuestNpc(quest, farmerOldData.ID)
        local farmerOld = self:GetQuestNpcActor(farmerOldData.Alias)
        -- farmerOld:DoFreeStateTrigger()
        farmerOld:DoFreeStyle(1240)
    
        self:CreateQuestNpc(quest, farmerAngryData.ID)
        local farmerAngry = self:GetQuestNpcActor(farmerAngryData.Alias)
        farmerAngry:DoFreeStyle(1120)
    
        self:CreateQuestNpc(quest, farmerWound1Data.ID)
        local farmerWound1 = self:GetQuestNpcActor(farmerWound1Data.Alias)
        -- farmerOld:DoFreeStateTrigger()
        farmerWound1:DoFreeStyle(1230)
    end
    )
end

function Quest453:OnSubStart45306(quest)
    --这里可以考虑开个车
    --self:NarratorOnlyTask(q453Cfg.NarratorFlow1)
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



--@endregion

--@region sub finish handlers
function Quest453:OnSubFinish45301(quest)
    self:ActionSafeCall(self.PaimonDelay)

end

function Quest453:OnSubFinish45302(quest)
    -- self:NarratorOnlyTask(q453Cfg.NarratorFlow1)
    self:TransmitPlayer(3, sceneData:GetDummyPoint(3, "Q453PlayerPaw").pos, sceneData:GetDummyPoint(3, "Q453PlayerPaw").rot)
end

function Quest453:OnSubFinish45307(quest)
    self:ActionSafeCall(self.PaimonDelay)
    globalActor:UnSpawn("PawHint")
end

function Quest453:OnSubFinish45303(quest)
    -- self:NarratorOnlyTask(q453Cfg.NarratorFlow2)
    self:TransmitPlayer(3, sceneData:GetDummyPoint(3, "Q453PlayerTooth").pos, sceneData:GetDummyPoint(3, "Q453PlayerTooth").rot)

end

function Quest453:OnSubFinish45308(quest)
    self:ActionSafeCall(self.PaimonDelay)
    globalActor:UnSpawn("ToothHint")
end

function Quest453:OnSubFinish45304(quest)
end

function Quest453:OnSubFinish45305(quest)
    self:ActionSafeCall(self.PaimonDelay)
    globalActor:UnSpawn("HairHint")
end

function Quest453:OnSubFinish45306(quest)
    self:NotifyTo("Npc1537", DailyNpcManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1632", DailyNpcManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1543", DailyNpcManager.NpcEventType.STARTDAILY, true)
    self:ActionSafeCall(self.PaimonDelay)
    self:ActionSafeCall(
        function (self)
            local farmerAngry = self:GetQuestNpcActor(farmerAngryData.Alias)
            local farmerWound1 = self:GetQuestNpcActor(farmerWound1Data.Alias)
            local farmerOld = self:GetQuestNpcActor(farmerOldData.Alias)
            local ambor = self:GetQuestNpcActor(amborData.Alias)
            if farmerAngry ~= nil then
                self:DestroyQuestNpcActorByAlias(farmerAngryData.Alias, false)
            end

            if farmerWound1 ~= nil then
                self:DestroyQuestNpcActorByAlias(farmerWound1Data.Alias, false)
            end

            if farmerOld ~= nil then
                self:DestroyQuestNpcActorByAlias(farmerOldData.Alias, false)
            end

            if ambor ~= nil then
                self:DestroyQuestNpcActorByAlias(amborData.Alias, false)
            end

        end
    )
end

function Quest453:InvokeOnInteraction(param)
    if param == 1 then
        print("45307:DIALOG 45307")
        globalActor:UnSpawn("PawHint")
    end

    if param == 2 then
        print("45308:DIALOG 45308")
        globalActor:UnSpawn("ToothHint")
    end

    if param == 3 then
        print("45305:DIALOG 45305")
        globalActor:UnSpawn("HairHint")
    end
end


--@endregion

function Quest453:Start()
end

function Quest453:OnDestroy()
end

return Quest453