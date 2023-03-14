require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest375 = class("Quest375", questActorProxy)

Quest375.defaultAlias = "Quest375"

local q375Cfg 
local subIDs  
local DailyNpcManager = require('Actor/DailyNPCManager')
local wendyData 
local guardData 
local sneakAIData 
local FailNum = 0 

function Quest375:OnDataLoaded()
    q375Cfg = self.clientData
    subIDs = q375Cfg.SubIDs
    wendyData = q375Cfg.WendyData
    guardData = q375Cfg.GuardData
    sneakAIData =
    {
        q375Cfg.SneakAI1Data,
        q375Cfg.SneakAI2Data,
        q375Cfg.SneakAI3Data,
        q375Cfg.SneakAI4Data,
        q375Cfg.SneakAI5Data,
        q375Cfg.SneakAI6Data,
        q375Cfg.SneakAI7Data,
        q375Cfg.SneakAI8Data,
        q375Cfg.SneakAI9Data,
        q375Cfg.SneakAI10Data,
        q375Cfg.SneakAI11Data,
        q375Cfg.SneakAI12Data,
        q375Cfg.SneakAI13Data,
        q375Cfg.SneakAI14Data,
    }
end

-- Generated
function Quest375:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["37501"] = self.OnSubStart37501
    self.subStartHandlers["37502"] = self.OnSubStart37502
    self.subStartHandlers["37503"] = self.OnSubStart37503    
    self.subStartHandlers["37504"] = self.OnSubStart37504        
    self.subStartHandlers["37505"] = self.OnSubStart37505 
    self.subStartHandlers["37506"] = self.OnSubStart37506   
    self.subStartHandlers["37507"] = self.OnSubStart37507      
end

function Quest375:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["37501"] = self.OnSubFinish37501
    self.subFinishHandlers["37502"] = self.OnSubFinish37502
    self.subFinishHandlers["37503"] = self.OnSubFinish37503
    self.subFinishHandlers["37504"] = self.OnSubFinish37504
    self.subFinishHandlers["37505"] = self.OnSubFinish37505
    self.subFinishHandlers["37506"] = self.OnSubFinish37506
    self.subFinishHandlers["37507"] = self.OnSubFinish37507
end

-- local param begin
function Quest375:FailMovePlayer()
    print("fail move player ")
    self:TransmitPlayer(1008,sceneData:GetDummyPoint(1008,"Q375Fail").pos, sceneData:GetDummyPoint(1008,"Q375Fail").rot, self.FinishSneak)
    self:ExitSneakMode()
    self:TriggerLevelAbility("Level_Remove_Switch_SneakBtn")
end

function Quest375:SuccessMovePlayer()
    print("success move player ")
    -- self:UnSpawn("Harp") 
    self:PlayFirstCutscene()
    self:ExitSneakMode()
    self:TriggerLevelAbility("Level_Remove_Switch_SneakBtn")
    -- local gurad = actorMgr:GetActor(guardData.Guard)
    -- if gurad ~= nil then
    --     gurad:Destroy(false)
    -- end
end

function Quest375:PlayFirstCutscene(quest)
    self:PlayCutsceneIndex(37501, self.FinishSneak)
    print("PlayFirstCutscene")
end

function Quest375:SuccTrans(quest)
    self:TransmitPlayer(3,sceneData:GetDummyPoint(3,"Q372Venti").pos, sceneData:GetDummyPoint(3,"Q372Venti").rot)
    print("SuccTrans")
    
end

function Quest375:FinishSneak()
    local quest = actorMgr:GetActor(q375Cfg.ActorAlias)
    if quest ~= nil then
        quest:FinishQuest(false, nil)
    end 
end

function Quest375:PlaySecondCutscene(quest)
    self:PlayCutsceneIndex(37502, self.FinishSneak)
    print("PlaySecondCutscene") 
end


function Quest375:SneakAIPrepare()
    print("FailNum is", FailNum)
    if FailNum < 2 then 
        sneakAIData =
        {
            -- q375Cfg.SneakAI1Data,
            q375Cfg.SneakAI2Data,
            q375Cfg.SneakAI3Data,
            q375Cfg.SneakAI4Data,
            q375Cfg.SneakAI5Data,
            q375Cfg.SneakAI6Data,
            q375Cfg.SneakAI7Data,
            q375Cfg.SneakAI8Data,
            q375Cfg.SneakAI9Data,
            q375Cfg.SneakAI10Data,
            q375Cfg.SneakAI11Data,
            q375Cfg.SneakAI12Data,
            q375Cfg.SneakAI13Data,
            q375Cfg.SneakAI14Data,
        }
        q375Cfg.SneakAINum = 13
        print("SneakAINum is", q375Cfg.SneakAINum)
    else sneakAIData =
        {
            q375Cfg.SneakAI2Data,
            q375Cfg.SneakAI3Data,
            q375Cfg.SneakAI4Data,
            q375Cfg.SneakAI6Data,
            q375Cfg.SneakAI8Data,
            q375Cfg.SneakAI9Data,
            q375Cfg.SneakAI10Data,
            q375Cfg.SneakAI12Data,
            q375Cfg.SneakAI14Data,
        } 
        q375Cfg.SneakAINum = 9
        print("SneakAINum is", q375Cfg.SneakAINum)
    end

    for i=1, q375Cfg.SneakAINum do
        local SneakAI = self:CreateQuestNpcById(37503, sneakAIData[i].configID)
        -- local SneakAI = actorMgr:CreateActorWithPos(sneakAIData[i].alias, sneakAIData[i].metaPath, sneakAIData[i].configID, sneakAIData[i].dataIndex, sneakAIData[i].bornPos, sneakAIData[i].bornDir, true, true, 1005)
        SneakAI.PatrolPosNum = sneakAIData[i].PatrolPosNum
        SneakAI.PatrolPos = sneakAIData[i].PatrolPos
        SneakAI.PatrolDir = sneakAIData[i].PatrolDir
        SneakAI.PatrolNext = 1
        SneakAI:Start()
        -- SneakAI:ThreatTask(SneakAI.Discover, SneakAI.Aware, SneakAI.ReturnToPatrol)
    end
    -- for i=1, #q375Cfg.TreasurePos do
        -- self:SpawnItem(q375Cfg.TreasureID, q375Cfg.TreasurePos[i], nil, "Treasure" .. tostring(i), 1005)
    -- end
end

function Quest375:SneakAIDestroy()
    for i=1, q375Cfg.SneakAINum do
        local SneakAI = self:GetQuestNpcActor(sneakAIData[i].alias)
        if SneakAI ~= nil then
            SneakAI:Destroy(false)
        end
    end
    for i=1, #q375Cfg.TreasurePos do
        self:UnSpawn("Treasure" .. tostring(i))
    end
end

-- local param end

-- local method begin
--@region sub start handlers


function Quest375:OnSubStart37501(quest)  
    print("37501 start xxx ")
    self:NotifyTo("Npc1430", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1443", DailyNpcManager.NpcEventType.HIDESELF, true)

    self:CreateQuestNpc(quest, wendyData.WendyID)
    self:CreateQuestNpc(quest, 1164)
end

function Quest375:OnSubStart37502(quest)
    print("37502 start:...")
    globalActor:EnablePlayerInput(true)
    self:NotifyTo("Npc1430", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1443", DailyNpcManager.NpcEventType.HIDESELF, true)

    local q374Cfg = require('Quest/Client/Q374ClientConfig')
    local maidData = q374Cfg.MaidData
    local maid = actorMgr:GetActor(maidData.Maid .. tostring(374))
    if maid ~= nil then
        print("maid start:...")
        -- maid:PerformDither(false, 2)
        maid:Destroy(false)
    end
end

function Quest375:OnSubStart37503(quest)
    print("37503 start:...")
    self:SneakAIDestroy()
    self:UnSpawn("Harp") 
    self:UnSpawn("Goal")
    q375Cfg.gotKey = false
    self:SneakAIPrepare()
    -- self:SpawnItem(q375Cfg.KeyID, q375Cfg.KeyPos, nil, "Harp", 1005)
    self:SpawnGadget(quest , 70300040 )
    -- self:SpawnGadget(70300040, q375Cfg.KeyPos, q375Cfg.KeyDir, "Harp", 1005,0,0,1)
    self:CallDelay(2.5,self.SneakStart)
    self:EnterSneakMode(11)
    self:TriggerLevelAbility("Level_Apply_Switch_SneakBtn")
    -- self:EnterSceneLookCamera(q375Cfg.KeyPos, 1.5, 2, true)
end

function Quest375:OnSubStart37504(quest)
    print("37504 start:...")
    FailNum = FailNum + 1
    globalActor:EnablePlayerInput(false)
    self:CallDelay(
        2.4 ,
        function ( self )
            globalActor:EnablePlayerInput(true)
        end
    )
    self:CallDelay(2.5,self.FailMovePlayer)
    self:CallDelay(2.5,self.SneakAIDestroy)
    self:UnSpawn("Harp") 
    self:UnSpawn("Goal")
    -- local quest = actorMgr:GetActor(q375Cfg.ActorAlias)
    -- if quest ~= nil then
    --     quest:FinishQuest(false, nil)
    -- end    
end

function Quest375:OnSubStart37505(quest)
    print("37505 start:...")
    self:CallDelay(0.5,self.SuccessMovePlayer)
    self:CallDelay(0.5,self.SneakAIDestroy)
    self:NotifyTo("Npc1430", DailyNpcManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1443", DailyNpcManager.NpcEventType.STARTDAILY, true)

end

function Quest375:OnSubStart37506(quest)
    print("37506 start:...")
    self:SuccTrans()
end

function Quest375:OnSubStart37507(quest)
    print("37507 start:...")
    self:PlaySecondCutscene()
end

function Quest375:SneakStart()
    -- self:EnterSneakMode(11)
    -- self:TriggerLevelAbility("Level_Apply_Switch_SneakBtn")
    self:EnterSceneLookCamera(q375Cfg.KeyPos, 1.5, 2, true)
    -- globalActor:SpawnGadget(70900201, q375Cfg.KeyPos, q375Cfg.KeyDir, "Goal", 1005)
end

function Quest375:ShowTutorial(quest)
    self:ShowTutorialDialog(160,
    function ()
        globalActor:StartGuide("ChangeTimeGuidePC") 
    end
)
end

-- function Quest375:OnSubStart37507(quest)
--     print("37507 start:...")
-- end

-- function Quest375:OnSubStart37507(quest)
--     print("37507 start:...")
--     self:ActionSafeCall(self.Trans)
-- end

-- function Quest375:Trans()
--     self:TransmitPlayer(0, M.Pos(-0.4, 0.025, -3), M.Euler(0, 0, 0),
--     function(self)
--         local quest = actorMgr:GetActor(q375Cfg.ActorAlias)
--         if quest ~= nil then
--             quest:FinishQuest(false, nil)
--         end
--     end
-- ) 
-- end
--@endregion

--@region sub finish handlers
function Quest375:OnSubFinish37501(quest)
    print("OnFinished 37501")
    self:ActionSafeCall(
        function(self)
            local paimon = self:GetQuestNpcActor("Paimon")
            if paimon ~= nil then
                paimon:DestroyWithDisappear(false)
            end
        end
    )
    self:ActionSafeCall(self.ShowTutorial)
end

function Quest375:OnSubFinish37502(quest)
    print("OnFinished 37502")
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
            local maid = actorMgr:GetActor("Maid".. tostring(374))
            if maid ~= nil then
                maid:Destroy(false)
            end
        end
    )
end

function Quest375:OnSubFinish37503(quest)
    print("OnFinished 37503")
end

function Quest375:OnSubFinish37504(quest)
    print("OnFinished 37504")
end

function Quest375:OnSubFinish37505(quest)
    print("OnFinished 37505")
end

function Quest375:OnSubFinish37506(quest)
    print("OnFinished 37506")
end

function Quest375:OnSubFinish37507(quest)
    print("OnFinished 37507")
end


--@endregion

function Quest375:Start()
end

function Quest375:OnDestroy()
end

return Quest375