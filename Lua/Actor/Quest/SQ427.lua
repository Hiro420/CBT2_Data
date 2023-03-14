require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest427 = class("Quest427", questActorProxy)

Quest427.defaultAlias = "Quest427"

q427Cfg = require('Quest/Client/Q427ClientConfig')
local subIDs = q427Cfg.SubIDs
local amborData = q427Cfg.AmborData
local soldier1Data = q427Cfg.Soldier1Data
local soldier2Data = q427Cfg.Soldier2Data
local WindData = q427Cfg.WindData
-- WindData.Pos1.y =  WindData.Pos1.y + 5
-- WindData.Pos2.y =  WindData.Pos2.y + 5
-- WindData.Pos3.y =  WindData.Pos3.y + 5
-- WindData.Pos4.y =  WindData.Pos4.y + 5
-- WindData.Pos5.y =  WindData.Pos5.y + 5
-- WindData.Pos6.y =  WindData.Pos6.y + 5
-- WindData.Pos7.y =  WindData.Pos7.y + 5
-- WindData.Pos8.y =  WindData.Pos8.y + 5

-- Generated
function Quest427:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["42709"] = self.OnSubStart42709
    self.subStartHandlers["42701"] = self.OnSubStart42701
    self.subStartHandlers["42702"] = self.OnSubStart42702
    self.subStartHandlers["42703"] = self.OnSubStart42703
    self.subStartHandlers["42704"] = self.OnSubStart42704
    self.subStartHandlers["42705"] = self.OnSubStart42705
    self.subStartHandlers["42706"] = self.OnSubStart42706
    self.subStartHandlers["42707"] = self.OnSubStart42707
    self.subStartHandlers["42708"] = self.OnSubStart42708
end

function Quest427:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["42701"] = self.OnSubFinish42701
    self.subFinishHandlers["42702"] = self.OnSubFinish42702
    self.subFinishHandlers["42703"] = self.OnSubFinish42703
    self.subFinishHandlers["42704"] = self.OnSubFinish42704
    self.subFinishHandlers["42705"] = self.OnSubFinish42705
    self.subFinishHandlers["42706"] = self.OnSubFinish42706
    self.subFinishHandlers["42707"] = self.OnSubFinish42707
    self.subFinishHandlers["42708"] = self.OnSubFinish42708
end

function Quest427:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
    self.subFailedHandlers["42702"] = self.OnSubFailed42702
    self.subFailedHandlers["42705"] = self.OnSubFailed42705
end

-- local param begin
-- local param end

-- local method begin
--@region sub start handlers

function Quest427:StartCount()
    -- if FailNum < 2 then
    --     EscapeTime = 50  
    -- else 
    local FlyingTime = 60 
    -- end
    self:CountDownUIStart(FlyingTime, 10, 3)
    self:CallDelay(FlyingTime+4, self.CountDown)
end

function Quest427:CountDown()
    local quest = actorMgr:GetActor(q427Cfg.ActorAlias)
    if quest ~= nil then
        print("FlyingTest fail")
        quest:FinishQuestID(true, 42702)
    end
end

function Quest427:StartCount2()
    -- if FailNum < 2 then
    --     EscapeTime = 50  
    -- else 
    local FlyingTime = 60 
    -- end
    self:CountDownUIStart(FlyingTime, 10, 3)
    self:CallDelay(FlyingTime+4, self.CountDown2)
end

function Quest427:CountDown2()
    local quest = actorMgr:GetActor(q427Cfg.ActorAlias)
    if quest ~= nil then
        print("FlyingTest fail02")
        quest:FinishQuestID(true, 42705)
    end
end

function Quest427:OnSubStart42709(quest)
    print("42709 start:...")
    actorMgr:CreateActorWithPos("Q42709Trigger", "Actor/Gadget/Q42709Trigger", 70900002, 0, amborData.bornPos, amborData.bornDir, true, false)
end

function Quest427:OnSubStart42701(quest)
    print("42701 start:...")
    self:CreateQuestNpc(quest, amborData.AmborID)
end

function Quest427:OnSubStart42702(quest)
    print("42702 start:...")
    -- self:TransmitPlayer(3, sceneData:GetDummyPoint(3,"Q375RunStart").pos, sceneData:GetDummyPoint(3,"Q375RunStart").rot )


    local RiseDir = {x=0,y=0,z=0}

    self:SpawnGadgetWithPos(quest , 70710005,1, WindData.Pos1,M.Dir2Euler(RiseDir),WindData.Wind1 )
    self:SpawnGadgetWithPos(quest , 70710005,1, WindData.Pos2,M.Dir2Euler(RiseDir),WindData.Wind2 )
    self:SpawnGadgetWithPos(quest , 70710005,1, WindData.Pos3,M.Dir2Euler(RiseDir),WindData.Wind3 )
    self:SpawnGadgetWithPos(quest , 70710005,1, WindData.Pos4,M.Dir2Euler(RiseDir),WindData.Wind4 )

    -- globalActor:SpawnGadget(WindData.WindID, WindData.Pos1,M.Dir2Euler(RiseDir),WindData.Wind1)
    -- globalActor:SpawnGadget(WindData.WindID, WindData.Pos2,M.Dir2Euler(RiseDir),WindData.Wind2)
    -- globalActor:SpawnGadget(WindData.WindID, WindData.Pos3,M.Dir2Euler(RiseDir),WindData.Wind3)
    -- globalActor:SpawnGadget(WindData.WindID, WindData.Pos4,M.Dir2Euler(RiseDir),WindData.Wind4)

    q427Cfg.EachGetNum = 0
    q427Cfg.TotalGetNum = 0
    q427Cfg.NowBatchNum = 1
    -- q427Cfg.FlyCoins[1][1].pos.y =  q427Cfg.FlyCoins[1][1].pos.y -5
    -- q427Cfg.FlyCoins[1][2].pos.y =  q427Cfg.FlyCoins[1][2].pos.y -5
    -- q427Cfg.FlyCoins[1][3].pos.y =  q427Cfg.FlyCoins[1][3].pos.y -5
    actorMgr:CreateActorWithPos("Q427FlyCoins" .. tostring(1), "Actor/Gadget/Q427FlyCoins", 70300064, 0, q427Cfg.FlyCoins[1][1].pos, q427Cfg.FlyCoins[1][1].rot, true, false)
    actorMgr:CreateActorWithPos("Q427FlyCoins" .. tostring(2), "Actor/Gadget/Q427FlyCoins", 70300064, 0, q427Cfg.FlyCoins[1][2].pos, q427Cfg.FlyCoins[1][2].rot, true, false)
    actorMgr:CreateActorWithPos("Q427FlyCoins" .. tostring(3), "Actor/Gadget/Q427FlyCoins", 70300064, 0, q427Cfg.FlyCoins[1][3].pos, q427Cfg.FlyCoins[1][3].rot, true, false)

    self:ActionSafeCall(self.StartCount)

    for i=1, #q427Cfg.Flyline1-2 do
        local AccDir = { x = q427Cfg.Flyline1[i+1].x-q427Cfg.Flyline1[i].x, y = q427Cfg.Flyline1[i+1].y-q427Cfg.Flyline1[i].y, z = q427Cfg.Flyline1[i+1].z-q427Cfg.Flyline1[i].z }  
        -- self:SpawnGadget(70690001, q427Cfg.Flyline1[i], M.Dir2Euler(AccDir), "Acc5" .. tostring(i))
        self:SpawnGadgetWithPos(quest , 70690001,2,q427Cfg.Flyline1[i], M.Dir2Euler(AccDir), "Acc5" .. tostring(i))
    end

    -- for i=1, #q427Cfg.Flyline2-1 do
    --     local AccDir = { x = q427Cfg.Flyline2[i+1].x-q427Cfg.Flyline2[i].x, y = q427Cfg.Flyline2[i+1].y-q427Cfg.Flyline2[i].y, z = q427Cfg.Flyline2[i+1].z-q427Cfg.Flyline2[i].z }  
    --     self:SpawnGadget(70690001, q427Cfg.Flyline2[i], M.Dir2Euler(AccDir), "Acc6" .. tostring(i))
    -- end
    -- self:TriggerLevelAbility("Avatar_FallingDamageImmune")

end

function Quest427:OnSubStart42703(quest)
    print("42703 start:...")
    self:CountDownUITerminate()
    self:UnCallFunc(self.CountDown)
    self:CountNumUITerminate()

    for i=1, #q427Cfg.Flyline1-2 do
        self:UnSpawn("Acc5" .. tostring(i))
    end

    local WindData = q427Cfg.WindData
    self:UnSpawn(WindData.Wind1)
    self:UnSpawn(WindData.Wind2)
    self:UnSpawn(WindData.Wind3)
    self:UnSpawn(WindData.Wind4)

    for i=1, q427Cfg.CoinNum do
        local coin = actorMgr:GetActor("Q427FlyCoins" .. tostring(i))
        if coin ~= nil then
            coin:DestroySelf()
        end
    end
    -- self:AdvanceQuest()
    self:CreateQuestNpc(quest, amborData.AmborID)
end

function Quest427:AdvanceQuest()
    local quest = actorMgr:GetActor(q427Cfg.ActorAlias)
    if quest ~= nil then
        quest:FinishQuest(false, nil)
    end 
end

function Quest427:OnSubStart42704(quest)
    print("42704 start:...")
    self:CreateQuestNpc(quest, amborData.AmborID)
end

function Quest427:OnSubStart42705(quest)
    print("42705 start:...")
    -- self:TransmitPlayer(3, sceneData:GetDummyPoint(3,"Knight_Roof").pos, sceneData:GetDummyPoint(3,"Knight_Roof").rot )
    local RiseDir = {x=0,y=0,z=0}

    self:SpawnGadgetWithPos(quest , 70710005,1, WindData.Pos5,M.Dir2Euler(RiseDir),WindData.Wind5 )
    self:SpawnGadgetWithPos(quest , 70710005,1, WindData.Pos6,M.Dir2Euler(RiseDir),WindData.Wind6 )
    self:SpawnGadgetWithPos(quest , 70710005,1, WindData.Pos7,M.Dir2Euler(RiseDir),WindData.Wind7 )
    self:SpawnGadgetWithPos(quest , 70710005,1, WindData.Pos8,M.Dir2Euler(RiseDir),WindData.Wind8 )
    -- globalActor:SpawnGadget(WindData.WindID, WindData.Pos5,M.Dir2Euler(RiseDir),WindData.Wind5)
    -- globalActor:SpawnGadget(WindData.WindID, WindData.Pos6,M.Dir2Euler(RiseDir),WindData.Wind6)
    -- globalActor:SpawnGadget(WindData.WindID, WindData.Pos7,M.Dir2Euler(RiseDir),WindData.Wind7)
    -- globalActor:SpawnGadget(WindData.WindID, WindData.Pos8,M.Dir2Euler(RiseDir),WindData.Wind8)

    q427Cfg.EachGetNum2 = 0
    q427Cfg.TotalGetNum2 = 0
    q427Cfg.NowBatchNum2 = 1
    actorMgr:CreateActorWithPos("Q427FlyCoins2" .. tostring(1), "Actor/Gadget/Q427FlyCoins2", 70300064, 0, q427Cfg.FlyCoins2[1][1].pos, q427Cfg.FlyCoins2[1][1].rot, true, false)
    actorMgr:CreateActorWithPos("Q427FlyCoins2" .. tostring(2), "Actor/Gadget/Q427FlyCoins2", 70300064, 0, q427Cfg.FlyCoins2[1][2].pos, q427Cfg.FlyCoins2[1][2].rot, true, false)
    actorMgr:CreateActorWithPos("Q427FlyCoins2" .. tostring(3), "Actor/Gadget/Q427FlyCoins2", 70300064, 0, q427Cfg.FlyCoins2[1][3].pos, q427Cfg.FlyCoins2[1][3].rot, true, false)

    self:ActionSafeCall(self.StartCount2)

    for i=1, #q427Cfg.Flyline3-2 do
        local AccDir = { x = q427Cfg.Flyline3[i+1].x-q427Cfg.Flyline3[i].x, y = q427Cfg.Flyline3[i+1].y-q427Cfg.Flyline3[i].y, z = q427Cfg.Flyline3[i+1].z-q427Cfg.Flyline3[i].z }  
        -- self:SpawnGadget(70690001, q427Cfg.Flyline3[i], M.Dir2Euler(AccDir), "Acc5" .. tostring(i))
        self:SpawnGadgetWithPos(quest , 70690001,2,q427Cfg.Flyline3[i], M.Dir2Euler(AccDir), "Acc5" .. tostring(i))
    end

end

function Quest427:OnSubStart42706(quest)
    print("42706 start:...")
    self:CountDownUITerminate()
    self:UnCallFunc(self.CountDown)
    self:CountNumUITerminate()

    for i=1, #q427Cfg.Flyline3-2 do
        self:UnSpawn("Acc5" .. tostring(i))
    end

    local WindData = q427Cfg.WindData
    self:UnSpawn(WindData.Wind5)
    self:UnSpawn(WindData.Wind6)
    self:UnSpawn(WindData.Wind7)
    self:UnSpawn(WindData.Wind8)

    for i=1, q427Cfg.CoinNum2 do
        local coin = actorMgr:GetActor("Q427FlyCoins2" .. tostring(i))
        if coin ~= nil then
            coin:DestroySelf()
        end
    end
    -- self:AdvanceQuest()
    self:CreateQuestNpc(quest, amborData.AmborID)

end

function Quest427:OnSubStart42707(quest)
    print("42707 start:...")
    self:CountDownUITerminate()
    self:UnCallFunc(self.CountDown)

    for i=1, #q427Cfg.Flyline3-2 do
        self:UnSpawn("Acc5" .. tostring(i))
    end

    local WindData = q427Cfg.WindData
    self:UnSpawn(WindData.Wind5)
    self:UnSpawn(WindData.Wind6)
    self:UnSpawn(WindData.Wind7)
    self:UnSpawn(WindData.Wind8)

    for i=1, q427Cfg.MAXCoinsNum do
        local coin = actorMgr:GetActor("Q427FlyCoins2" .. tostring(i))
        if coin ~= nil then
            coin:DestroySelf()
        end
    end
    
    actorMgr:CreateActorWithPos("Q427Trigger", "Actor/Gadget/Q427Trigger", 70900002, 0, sceneData:GetDummyPoint(3,"Q427Land").pos, sceneData:GetDummyPoint(3,"Q427Land").rot, true, false)
end

function Quest427:OnSubStart42708(quest)
    print("42708 start:...")
    self:ShowBlackScreen(0.5, 1.0, 0.5, self.CreateSoldier) 
end

function Quest427:CreateSoldier()
    self:CreateQuestNpcById(42708, soldier2Data.SoldierID)
    -- actorMgr:CreateActorWithPos(soldier2Data.Soldier, soldier2Data.SoldierScript, soldier2Data.SoldierID, 0, soldier2Data.bornPos, soldier2Data.bornDir, true, false )     
    local quest = actorMgr:GetActor(q427Cfg.ActorAlias)
    self:CreateQuestNpc(quest, amborData.AmborID)
    print("Soldier Born")
    self:RequestInteraction(soldier2Data.Soldier) 
end

function Quest427:Interaction()
    self:RequestInteraction(soldier2Data.Soldier)
    print("Black Callback NOW")
end

--@endregion

--@region sub finish handlers
function Quest427:OnSubFinish42701(quest)
    print("OnFinished 42701")
    self:ActionSafeCall(
        function(self)
            local ambor = self:GetQuestNpcActor(amborData.Ambor)
            if ambor ~= nil then
                self:CallDelay(1,
                function(self)
                    ambor:Destroy(false)
                end)
            end
            self:EnterSceneLookCamera(sceneData:GetDummyPoint(3,"Q42701Look").pos, 1, 1.5, true)
            globalActor:StartGuide("GuideDisableInput")
        end
    )
end

function Quest427:OnSubFinish42702(quest)
    print("OnFinished 42702")
    self:UnCallFunc(self.CountDown)
    self:CountDownUITerminate()
    for i=1, #q427Cfg.Flyline2-1 do
        local AccDir = { x = q427Cfg.Flyline2[i+1].x-q427Cfg.Flyline2[i].x, y = q427Cfg.Flyline2[i+1].y-q427Cfg.Flyline2[i].y, z = q427Cfg.Flyline2[i+1].z-q427Cfg.Flyline2[i].z }  
        -- self:SpawnGadget(70690001, q427Cfg.Flyline2[i], M.Dir2Euler(AccDir), "Acc6" .. tostring(i))
        self:SpawnGadgetByIdWithPos(42702,70690001,2,q427Cfg.Flyline2[i], M.Dir2Euler(AccDir), "Acc6" .. tostring(i))
    end
end

function Quest427:OnSubFinish42703(quest)
    print("OnFinished 42703")
    self:ActionSafeCall(
        function(self)
            local ambor = self:GetQuestNpcActor(amborData.Ambor)
            if ambor ~= nil then
                self:CallDelay(1,
                    function(self)
                        ambor:Destroy(false)
                    end
                )
            end
            self:EnterSceneLookCamera(sceneData:GetDummyPoint(3,"Q42701Look").pos, 1, 1.5, true)
            globalActor:StartGuide("GuideDisableInput")
        end
    )
end

function Quest427:OnSubFinish42704(quest)
    print("OnFinished 42704")
    local WindData = q427Cfg.WindData
    self:UnSpawn(WindData.Wind1)
    self:UnSpawn(WindData.Wind2)
    self:UnSpawn(WindData.Wind3)
    self:UnSpawn(WindData.Wind4)
    
    for i=1, #q427Cfg.Flyline1-2 do
        self:UnSpawn("Acc5" .. tostring(i))
    end

    for i=1, #q427Cfg.Flyline2-1 do
        self:UnSpawn("Acc6" .. tostring(i))
    end
    self:ActionSafeCall(
        function(self)
            local ambor = self:GetQuestNpcActor(amborData.Ambor)
            if ambor ~= nil then
                self:CallDelay(1,
                function(self)
                    ambor:Destroy(false)
                end)
            end
            self:EnterSceneLookCamera(sceneData:GetDummyPoint(3,"Md_Fly_301").pos, 4.5, 3, true, true)
        end
    )
end

function Quest427:OnSubFinish42705(quest)
    print("OnFinished 42705")
    self:UnCallFunc(self.CountDown)
    self:CountDownUITerminate()
    self:CallDelay(0.5 ,
        function(self)
            self:NarratorOnlyTask(q427Cfg.ArrNarrator, nil, "Tag")
        end
    )

    -- globalActor:SpawnGadget(70900201, sceneData:GetDummyPoint(3,"Q427inMark").pos, sceneData:GetDummyPoint(3,"Q427inMark").rot , "Goal1", 3)
end

function Quest427:OnSubFinish42706(quest)
    print("OnFinished 42706")
    self:ActionSafeCall(
        function(self)
            local ambor = self:GetQuestNpcActor(amborData.Ambor)
            if ambor ~= nil then
                self:CallDelay(1,
                function(self)
                    ambor:Destroy(false)
                end)
            end
            self:EnterSceneLookCamera(sceneData:GetDummyPoint(3,"Md_Fly_301").pos, 4.5, 3, true, true)
        end
    )
end

function Quest427:OnSubFinish42707(quest)
    print("OnFinished 42707")
end

function Quest427:OnSubFinish42708(quest)
    print("OnFinished 42708")
    self:ActionSafeCall(
        function(self)
            local ambor = self:GetQuestNpcActor(amborData.Ambor)
            if ambor ~= nil then
                ambor:Destroy(false)
            end
            local paimon = self:GetQuestNpcActor("Paimon")
            if paimon ~= nil then
                paimon:DestroyWithDisappear(false)
            end  
            local soldier2 = self:GetQuestNpcActor(soldier2Data.Soldier)
            if soldier2 ~= nil then
                soldier2:Destroy(false)
            end
        end
    )
end

function Quest427:InvokeOnInteraction(param)
    if param == 1 then
        local ambor = self:GetQuestNpcActor(amborData.Ambor)
        if ambor ~= nil then
            ambor:ClearFollowTask()
            ambor:WalkToTask(amborData.appearPos, 
            function(ambor, task)
                ambor:Standby()
                ambor:TurnTo(M.Euler2DirXZ(amborData.appearDir))
            end
        )
        end    
    end
end

function Quest427:OnSubFailed42702(quest)
    print("OnFailed 42702")
    -- self:ActionSafeCall(self.DestroyNPC)
    self:CallDelay(2,
        function(self)
            self:TransmitPlayer(3,sceneData:GetDummyPoint(3,"Q375RunStart").pos, sceneData:GetDummyPoint(3,"Q375RunStart").rot)
        end
    )
end

function Quest427:OnSubFailed42705(quest)
    print("OnFailed 42705")
    -- self:ActionSafeCall(self.DestroyNPC)
    self:CallDelay(2,
        function(self)
            self:TransmitPlayer(3,sceneData:GetDummyPoint(3,"Knight_Roof").pos, sceneData:GetDummyPoint(3,"Knight_Roof").rot)
        end
    )
end

--@endregion

function Quest427:Start()
end

function Quest427:OnDestroy()
end

return Quest427