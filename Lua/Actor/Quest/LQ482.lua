require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest482 = class("Quest482", questActorProxy)

Quest482.defaultAlias = "Quest482"

local q482Cfg = require('Quest/Client/Q482ClientConfig')
local subIDs = q482Cfg.SubIDs
local amborData = q482Cfg.AmborData
local windCushionData = q482Cfg.WindCushionData
local windData = q482Cfg.WindData
local initRisingWind = q482Cfg.InitRisingWind


-- Generated
function Quest482:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["48201"] = self.OnSubStart48201
    self.subStartHandlers["48202"] = self.OnSubStart48202
    self.subStartHandlers["48203"] = self.OnSubStart48203
    self.subStartHandlers["48209"] = self.OnSubStart48209
    self.subStartHandlers["48207"] = self.OnSubStart48207
    self.subStartHandlers["48204"] = self.OnSubStart48204
    self.subStartHandlers["48208"] = self.OnSubStart48208
    self.subStartHandlers["48205"] = self.OnSubStart48205
end

function Quest482:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["48201"] = self.OnSubFinish48201
	self.subFinishHandlers["48202"] = self.OnSubFinish48202
    self.subFinishHandlers["48203"] = self.OnSubFinish48203
    self.subFinishHandlers["48204"] = self.OnSubFinish48204
	self.subFinishHandlers["48205"] = self.OnSubFinish48205
end

-- local param begin
-- local param end

-- local method begin
--@region sub start handlers

function Quest482:StartCount()
    -- if FailNum < 2 then
    --     EscapeTime = 50  
    -- else 
    local FlyingTime = 999 
    -- end
    self:CountDownUIStart(FlyingTime, 10, 3)
    self:CallDelay(FlyingTime+4, self.CountDown)
end

function Quest482:CountDown()
    local quest = actorMgr:GetActor(q482Cfg.ActorAlias)
    if quest ~= nil then
        print("FlyingTest fail")
        quest:FinishQuestID(true, 48209)
    end
end

function Quest482:CreateAmbor()
    actorMgr:CreateActorWithPos(amborData.Ambor, amborData.AmborScript, amborData.AmborID, 0, amborData.bornPos, amborData.bornDir, true)  
    print("Ambor Born")
end

function Quest482:AmborVanish()
    self:ActionSafeCall(
        function(self)
            local ambor = actorMgr:GetActor(amborData.Ambor)
            if ambor ~= nil then
                ambor:Destroy(false)
            end
        end
    )
end

function Quest482:Interaction()
    self:RequestInteraction(amborData.Ambor)
    print("Black Callback NOW")
end

function Quest482:AdvanceQuest()
    local quest = actorMgr:GetActor(q482Cfg.ActorAlias)
    if quest ~= nil then
        quest:FinishQuest(false, nil)
    end 
end

function Quest482:FailQuest()
    local quest = actorMgr:GetActor(q482Cfg.ActorAlias)
    if quest ~= nil then
        quest:FinishQuest(true, nil)
    end 
end

function Quest482:OnSubStart48201(quest)
    print("48201 start:...")
    actorMgr:CreateActorWithPos(amborData.Ambor, amborData.AmborScript, amborData.AmborID, 0, amborData.bornPos, amborData.bornDir, true)  
    actorMgr:CreateActorWithPos("Q482Trigger", "Actor/Gadget/Q482Trigger", 70900002, 0, sceneData:GetDummyPoint(3,"Q48202Ambor").pos, sceneData:GetDummyPoint(3,"Q48202Ambor").rot, true, false) 
end

function Quest482:OnSubStart48202(quest)
    print("48202 start:...")
    -- TODO: Do sth on sub quest 48202 start
end

function Quest482:OnSubStart48203(quest)
    print("48203 start:...")
    -- TODO: Transmitting into Dungeon
    self:TransmitPlayer(1015,sceneData:GetDummyPoint(1015,"QuestNpc").pos, sceneData:GetDummyPoint(1015,"QuestNpc").rot, self.AdvanceQuest)
end

function Quest482:OnSubStart48209(quest)
    print("48209 start:...")
    local RiseDir = {x=0,y=0,z=0}

    self:ActionSafeCall(self.StartCount)
    windCushionData.bornPos.y = windCushionData.bornPos.y -- - 67
    -- globalActor:SpawnGadget(initRisingWind.WindID, initRisingWind.Pos1,M.Dir2Euler(RiseDir),initRisingWind.Wind1, 1015)
    -- globalActor:SpawnGadget(initRisingWind.WindID, initRisingWind.Pos2,M.Dir2Euler(RiseDir),initRisingWind.Wind2, 1015)
    -- globalActor:SpawnGadget(initRisingWind.WindID, initRisingWind.Pos3,M.Dir2Euler(RiseDir),initRisingWind.Wind3, 1015)
    -- globalActor:SpawnGadget(initRisingWind.WindID, initRisingWind.Pos4,M.Dir2Euler(RiseDir),initRisingWind.Wind4, 1015)
    -- globalActor:SpawnGadget(initRisingWind.WindID, initRisingWind.Pos5,M.Dir2Euler(RiseDir),initRisingWind.Wind5, 1015)
    -- globalActor:SpawnGadget(initRisingWind.WindID, initRisingWind.Pos6,M.Dir2Euler(RiseDir),initRisingWind.Wind6, 1015)
    -- globalActor:SpawnGadget(initRisingWind.WindID, initRisingWind.Pos7,M.Dir2Euler(RiseDir),initRisingWind.Wind7, 1015)
    -- globalActor:SpawnGadget(initRisingWind.WindID, initRisingWind.Pos8,M.Dir2Euler(RiseDir),initRisingWind.Wind8, 1015)
    -- globalActor:SpawnGadget(initRisingWind.WindID, initRisingWind.Pos9,M.Dir2Euler(RiseDir),initRisingWind.Wind9, 1015)
    -- globalActor:SpawnGadget(windCushionData.WindCushionID, windCushionData.bornPos, windCushionData.bornDir, windCushionData.WindCushion, 1015)
    -- globalActor:SpawnGadget(windCushionData.WindCushionID2, windCushionData.bornPos2, windCushionData.bornDir2, windCushionData.WindCushion2, 1015)
    -- globalActor:SpawnGadget(windCushionData.WindCushionID3, windCushionData.bornPos3, windCushionData.bornDir3, windCushionData.WindCushion3, 1015)
    
    for i=1, #q482Cfg.Flyline1-1 do
        local AccDir = { x = q482Cfg.Flyline1[i+1].x-q482Cfg.Flyline1[i].x, y = q482Cfg.Flyline1[i+1].y-q482Cfg.Flyline1[i].y, z = q482Cfg.Flyline1[i+1].z-q482Cfg.Flyline1[i].z }  
        -- self:SpawnGadget(70690001, q482Cfg.Flyline1[i], M.Dir2Euler(AccDir), "Acc1" .. tostring(i), 1015)
    end



    -- globalActor:SpawnGadget(windData.WindID, windData.Pos1,M.Dir2Euler(RiseDir),windData.Wind1, 1015)
    -- globalActor:SpawnGadget(windData.WindID, windData.Pos2,M.Dir2Euler(RiseDir),windData.Wind2, 1015)
    -- globalActor:SpawnGadget(windFlowData.WindFlowID, windFlowData.bornPos, windFlowData.bornDir, windFlowData.WindFlow, 1015)
    self:TriggerLevelAbility("Avatar_Test_FlyingBomber")
    self:TriggerLevelAbility("Avatar_Player_StaminaReduced")
    -- self:TriggerAbility("Avatar_Player_CamCtrl")


    self:EnterBomberMode()
    -- self:SetFlyStateParams(5.5, 6.0, 90, -0.75, 8 )
end

function Quest482:OnSubStart48207(quest)
    print("48207 start:...")
    self:UnCallFunc(self.CountDown)
    self:CountDownUITerminate()
    self:TransmitPlayer(3,sceneData:GetDummyPoint(3,"Q482Player").pos, sceneData:GetDummyPoint(3,"Q482Player").rot, self.AdvanceQuest)
    -- self:ResetFlyStateParams()
    self:ExitBomberMode()
    self:TriggerLevelAbility("Level_Remove_Avatar_Test_FlyingBomber")
end

function Quest482:OnSubStart48204(quest)
    print("48204 start:...")
    self:CallDelay(2, self.CreateAmbor)
end

function Quest482:OnSubStart48208(quest)
    print("48208 start:...")
    -- TODO: Do sth on sub quest 48202 start
    self:UnCallFunc(self.CountDown)
    self:CountDownUITerminate()
    self:CallDelay(3, 
        function(self)
            self:TransmitPlayer(3,sceneData:GetDummyPoint(3,"Q482Player").pos, sceneData:GetDummyPoint(3,"Q482Player").rot, self.AdvanceQuest)
        end
    )
    -- self:ResetFlyStateParams()
    self:ExitBomberMode()
    self:TriggerLevelAbility("Level_Remove_Avatar_Test_FlyingBomber")
    -- self:TransmitPlayer(3,sceneData:GetDummyPoint(3,"Q482Player").pos, sceneData:GetDummyPoint(3,"Q482Player").rot, self.AdvanceQuest)
end

function Quest482:OnSubStart48205(quest)
    print("48205 start:...")
    self:CallDelay(2, self.CreateAmbor)
end

--@endregion

--@region sub finish handlers
function Quest482:OnSubFinish48201(quest)
    print("OnFinished 48201")
    local task = curtainUtils.CreateEntityCreateTask({amborData.Ambor})

    self:ShowBlackScreen(1.0, 0.5, 0.0, self.CreateAmbor, self.Interaction,task) 
end

function Quest482:OnSubFinish48202(quest)
    print("OnFinished 48202")
    self:AmborVanish()
end

function Quest482:OnSubFinish48203(quest)
    print("OnFinished 48203")
end

function Quest482:OnSubFinish48204(quest)
    print("OnFinished 48204")
    self:AmborVanish()
end

function Quest482:OnSubFinish48205(quest)
    print("OnFinished 48205")
    self:ActionSafeCall(
        function(self)
            local ambor = actorMgr:GetActor(amborData.Ambor)
            if ambor ~= nil then
                ambor:Destroy(false)
            end
            actorMgr:CreateActorWithPos(amborData.Ambor, amborData.AmborScript, amborData.AmborID, 0, sceneData:GetDummyPoint(3,"Ambor_FlyBegin").pos, sceneData:GetDummyPoint(3,"Ambor_FlyBegin").pos, true, false)
        end
    )
end

--@endregion

function Quest482:Start()
end

function Quest482:OnDestroy()
end

return Quest482