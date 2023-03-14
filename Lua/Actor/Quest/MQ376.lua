require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest376 = class("Quest376", questActorProxy)

Quest376.defaultAlias = "Quest376"

local q376Cfg 
local subIDs
local wendyData 
local dilucData 
local soldier1Data 
local soldier2Data 
local FailNum = 0
local EscapeTime = 50
local DailyNpcManager = require('Actor/DailyNPCManager')
-- util.do_require('Quest/Share/Q376ShareConfig')
-- local quest_data37608 = quest_data["37608"]

function Quest376:OnDataLoaded()
    q376Cfg = self.clientData
    subIDs = q376Cfg.SubIDs
    wendyData = q376Cfg.WendyData
    dilucData = q376Cfg.DilucData
    soldier1Data = q376Cfg.Soldier1Data
    soldier2Data = q376Cfg.Soldier2Data
end


-- Generated
function Quest376:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["37601"] = self.OnSubStart37601
    self.subStartHandlers["37602"] = self.OnSubStart37602    
    self.subStartHandlers["37603"] = self.OnSubStart37603   
    self.subStartHandlers["37604"] = self.OnSubStart37604   
    self.subStartHandlers["37605"] = self.OnSubStart37605   
    self.subStartHandlers["37606"] = self.OnSubStart37606   
    self.subStartHandlers["37607"] = self.OnSubStart37607   
    self.subStartHandlers["37608"] = self.OnSubStart37608   
end

function Quest376:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["37601"] = self.OnSubFinish37601
    self.subFinishHandlers["37602"] = self.OnSubFinish37602
    self.subFinishHandlers["37603"] = self.OnSubFinish37603
    self.subFinishHandlers["37604"] = self.OnSubFinish37604
    self.subFinishHandlers["37605"] = self.OnSubFinish37605
    self.subFinishHandlers["37606"] = self.OnSubFinish37606
    self.subFinishHandlers["37607"] = self.OnSubFinish37607
    self.subFinishHandlers["37608"] = self.OnSubFinish37608
end

-- local param begin
-- local param end

-- local method begin
--@region sub start handlers

function Quest376:WendyDis()
    local wendy = self:GetQuestNpcActor(wendyData.Wendy)
    if wendy ~= nil then
        wendy:Destroy(false)
    end
end

function Quest376:WendyDelay()
    self:CallDelay(1, self.WendyDis)
end

function Quest376:EscapePrepare()
    for i=1, #q376Cfg.EscapeRoute1-1 do
        local AccDir = { x = q376Cfg.EscapeRoute1[i+1].x-q376Cfg.EscapeRoute1[i].x, y = q376Cfg.EscapeRoute1[i+1].y-q376Cfg.EscapeRoute1[i].y, z = q376Cfg.EscapeRoute1[i+1].z-q376Cfg.EscapeRoute1[i].z }  
        -- self:SpawnGadget(70690001, q376Cfg.EscapeRoute1[i], M.Dir2Euler(AccDir), "Acc1" .. tostring(i))
        self:SpawnGadgetByIdWithPos(37602,70690001,1,q376Cfg.EscapeRoute1[i], M.Dir2Euler(AccDir),"Acc1" .. tostring(i))
    end

    -- for i=1, #q376Cfg.EscapeRoute2-1 do
    --     local AccDir = { x = q376Cfg.EscapeRoute2[i+1].x-q376Cfg.EscapeRoute2[i].x, y = q376Cfg.EscapeRoute2[i+1].y-q376Cfg.EscapeRoute2[i].y, z = q376Cfg.EscapeRoute2[i+1].z-q376Cfg.EscapeRoute2[i].z }  
    --     self:SpawnGadget(70690001, q376Cfg.EscapeRoute2[i], M.Dir2Euler(AccDir), "Acc2" .. tostring(i))
    -- end
    -- for i=1, #q376Cfg.EscapeRoute3-1 do
    --     local AccDir = { x = q376Cfg.EscapeRoute3[i+1].x-q376Cfg.EscapeRoute3[i].x, y = q376Cfg.EscapeRoute3[i+1].y-q376Cfg.EscapeRoute3[i].y, z = q376Cfg.EscapeRoute3[i+1].z-q376Cfg.EscapeRoute3[i].z }  
    --     self:SpawnGadget(70690001, q376Cfg.EscapeRoute3[i], M.Dir2Euler(AccDir), "Acc3" .. tostring(i))
    -- end

    for i=1, #q376Cfg.EscapeRoute4-1 do
        local AccDir = { x = q376Cfg.EscapeRoute4[i+1].x-q376Cfg.EscapeRoute4[i].x, y = q376Cfg.EscapeRoute4[i+1].y-q376Cfg.EscapeRoute4[i].y, z = q376Cfg.EscapeRoute4[i+1].z-q376Cfg.EscapeRoute4[i].z }  
        -- self:SpawnGadget(70690001, q376Cfg.EscapeRoute4[i], M.Dir2Euler(AccDir), "Acc4" .. tostring(i))
        self:SpawnGadgetByIdWithPos(37602,70690001,1,q376Cfg.EscapeRoute4[i], M.Dir2Euler(AccDir),"Acc4" .. tostring(i))

    end

    for i=1, #q376Cfg.EscapeRoute5-1 do
        local AccDir = { x = q376Cfg.EscapeRoute5[i+1].x-q376Cfg.EscapeRoute5[i].x, y = q376Cfg.EscapeRoute5[i+1].y-q376Cfg.EscapeRoute5[i].y, z = q376Cfg.EscapeRoute5[i+1].z-q376Cfg.EscapeRoute5[i].z }  
        -- self:SpawnGadget(70690001, q376Cfg.EscapeRoute5[i], M.Dir2Euler(AccDir), "Acc5" .. tostring(i))
        self:SpawnGadgetByIdWithPos(37602,70690001,1,q376Cfg.EscapeRoute5[i], M.Dir2Euler(AccDir),"Acc5" .. tostring(i))

    end

    for i=1, #q376Cfg.EscapeRoute6-1 do
        local AccDir = { x = q376Cfg.EscapeRoute6[i+1].x-q376Cfg.EscapeRoute6[i].x, y = q376Cfg.EscapeRoute6[i+1].y-q376Cfg.EscapeRoute6[i].y, z = q376Cfg.EscapeRoute6[i+1].z-q376Cfg.EscapeRoute6[i].z }  
        -- self:SpawnGadget(70690001, q376Cfg.EscapeRoute6[i], M.Dir2Euler(AccDir), "Acc6" .. tostring(i))
        self:SpawnGadgetByIdWithPos(37602,70690001,1,q376Cfg.EscapeRoute6[i], M.Dir2Euler(AccDir),"Acc6" .. tostring(i))
    end

end

function Quest376:EscapeDestroy()
    print("OnFinished 37602")
    for i=1, #q376Cfg.EscapeRoute1-1 do
        self:UnSpawn("Acc1" .. tostring(i))
    end
    -- for i=1, #q376Cfg.EscapeRoute2-1 do
    --     self:UnSpawn("Acc2" .. tostring(i))
    -- end
    -- for i=1, #q376Cfg.EscapeRoute3-1 do
    --     self:UnSpawn("Acc3" .. tostring(i))
    -- end
    for i=1, #q376Cfg.EscapeRoute4-1 do
        self:UnSpawn("Acc4" .. tostring(i))
    end
    for i=1, #q376Cfg.EscapeRoute5-1 do
        self:UnSpawn("Acc5" .. tostring(i))
    end
    for i=1, #q376Cfg.EscapeRoute6 do
        self:UnSpawn("Acc6" .. tostring(i))
    end
end

function Quest376:StartCount()
    if FailNum < 2 then
        EscapeTime = 50  
    else 
        EscapeTime = 60 
    end
    self:CountDownUIStart(EscapeTime, 10, 3)
    self:CallDelay(EscapeTime+4,self.CountDown)
end

function Quest376:CountDown()
    print("CountDown Finished")
    if q376Cfg.EscapeFlag == false then
        FailNum = FailNum + 1
        print("escape fail time is ",FailNum )
        if FailNum < 3 then
            local quest = actorMgr:GetActor(q376Cfg.ActorAlias)
            if quest ~= nil then
                print("escape fail")
                quest:FinishQuest(true, nil)
            end
        else
            local quest = actorMgr:GetActor(q376Cfg.ActorAlias)
            if quest ~= nil then
                print("escape fail omg")
                quest:FinishQuest(true, nil)
            end
        end
    end
end

function Quest376:AdvanceQuest()
    local quest = actorMgr:GetActor(q376Cfg.ActorAlias)
    if quest ~= nil then
        quest:FinishQuest(false, nil)
    end 
end


function Quest376:OnSubStart37601(quest)  
    print("37601 start ")
    local quest = actorMgr:GetActor(q376Cfg.ActorAlias)
    if quest ~= nil then
        quest:FinishQuest(false, nil)
    end 
end

function Quest376:OnSubStart37602(quest)
    q376Cfg.EscapeFlag = false
    self:EscapeDestroy()
    self:EscapePrepare()
    self:ActionSafeCall(self.StartCount)
    self:SpawnGadget(quest , 70900201,2 )

    -- globalActor:SpawnGadget(70900201, sceneData:GetDummyPoint(3,"QuestBarUI").pos, sceneData:GetDummyPoint(3,"QuestBarUI").rot , "Goal1", 3)

end

function Quest376:OnSubStart37603(quest)
    print("37603 start:...")
    self:EscapeDestroy()
    self:CountDownUITerminate()
    self:UnCallFunc(self.CountDown)
    self:UnSpawn("Goal1")
    -- local quest = actorMgr:GetActor(q376Cfg.ActorAlias)
    -- if quest ~= nil then
    --     quest:FinishQuest(false, nil)
    -- end 
    -- self:TransmitPlayer(3, sceneData:GetDummyPoint(3,"Q375RunStart").pos, sceneData:GetDummyPoint(3,"Q375RunStart").rot, self.AdvanceQuest)     
    self:AdvanceQuest()
end

function Quest376:OnSubStart37604(quest)
    print("37604 start:...")  
    -- self:ActionSafeCall(self.WendyDelay)
    self:UnSpawn("Goal1")
    q376Cfg.EscapeFlag = true
    self:CountDownUITerminate()
    self:UnCallFunc(self.CountDown)
    self:NotifyTo("Npc1404", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1410", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1414", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1475", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1477", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1523", DailyNpcManager.NpcEventType.HIDESELF, true)
    
    self:TransmitPlayer(1009, sceneData:GetDummyPoint(1009,"Q376SoldierDes").pos, sceneData:GetDummyPoint(1009,"Q376SoldierDes").rot)     
end

function Quest376:OnSubStart37605(quest)
    print("37605 start:...")
    self:NotifyTo("Npc1404", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1410", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1414", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1475", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1477", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1523", DailyNpcManager.NpcEventType.HIDESELF, true)

    self:CreateQuestNpc(quest, dilucData.DilucID)
    self:RequestInteraction(dilucData.Diluc)    
end

function Quest376:OnSubStart37606(quest)
    print("37606 start:...")  
    -- globalActor:SpawnGadget(70900201, sceneData:GetDummyPoint(1009,"Q376Hide").pos, sceneData:GetDummyPoint(1009,"Q376Hide").rot , "Goal2", 1009)
    self:NotifyTo("Npc1404", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1410", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1414", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1475", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1477", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1523", DailyNpcManager.NpcEventType.HIDESELF, true)
end

function Quest376:OnSubStart37607(quest)
    print("37607 start:...")  
    self:CreateQuestNpc(quest, dilucData.DilucID)
    self:CreateQuestNpc(quest, soldier1Data.SoldierID)
    self:CreateQuestNpc(quest, soldier2Data.SoldierID)
    self:NotifyTo("Npc1404", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1410", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1414", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1475", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1477", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1523", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:RequestInteraction(dilucData.Diluc)
end

function Quest376:OnSubStart37608(quest)
    print("37608 start:...")  
    self:NotifyTo("Npc1404", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1410", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1414", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1475", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1477", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1523", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1465", DailyNpcManager.NpcEventType.HIDESELF, true)

end

--@endregion

--@region sub finish handlers
function Quest376:OnSubFinish37601(quest)
    print("OnFinished 37601")
end

function Quest376:OnSubFinish37602(quest)
    print("OnFinished 37602")
    self:EscapeDestroy()
end

function Quest376:OnSubFinish37603(quest)
    print("OnFinished 37603")
end

function Quest376:OnSubFinish37604(quest)
    print("OnFinished 37604")
end

function Quest376:OnSubFinish37605(quest)
    print("OnFinished 37605")
    self:ActionSafeCall(
        function(self)
            local wendy = self:GetQuestNpcActor("Wendy")
            if wendy ~= nil then
                wendy:Destroy(false)
            end
        end
    )
    self:ActionSafeCall(
        function(self)
            local paimon = self:GetQuestNpcActor("Paimon")
            if paimon ~= nil then
                paimon:Destroy(false)
            end
        end
    )

end

function Quest376:OnSubFinish37606(quest)
    print("OnFinished 37606")
    -- self:UnSpawn("Goal2")

end

function Quest376:OnSubFinish37607(quest)
    print("OnFinished 37607")
    self:ActionSafeCall(
        function(self)
            local soldier1 = self:GetQuestNpcActor(soldier1Data.Soldier)
            if soldier1 ~= nil then
                -- soldier1:ClearFollowTask()
                -- soldier1:WalkToTask(soldier1Data.desPos,
                --     function(soldier1, task)
                        soldier1:Destroy(false)
                --     end
                -- )
            end
        end
    )
    self:ActionSafeCall(
        function(self)
            self:CreateQuestNpcById(37608, dilucData.DilucID)
            self:CreateQuestNpcById(37608, wendyData.WendyID)
            local soldier2 = self:GetQuestNpcActor(soldier2Data.Soldier)
            if soldier2 ~= nil then
                -- soldier2:ClearFollowTask()
                -- soldier2:WalkToTask(soldier1Data.desPos,
                --     function(soldier2, task)
                        soldier2:Destroy(false)
                --     end
                -- )
            end 
        end
    )
end

function Quest376:OnSubFinish37608(quest)
    print("OnFinished 37608")
    self:ActionSafeCall(
        function(self)
            local paimon = self:GetQuestNpcActor("Paimon")
            if paimon ~= nil then
                paimon:DestroyWithDisappear(false)
            end
        end
    )
end

function Quest376:InvokeOnInteraction(param)
    if param == 101 then
        print("Now Stop Talking")
        -- BubbleCtrl_NpcMengdeInsomniaStand[13] = -1
    elseif  param == 102 then
        print("Now Start Talking")
        -- BubbleCtrl_NpcMengdeInsomniaStand[13] = 1
    end
end

--@endregion

function Quest376:Start()
end

function Quest376:OnDestroy()
end

return Quest376