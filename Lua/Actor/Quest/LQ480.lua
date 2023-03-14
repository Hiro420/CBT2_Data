require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest480 = class("Quest480", questActorProxy)

Quest480.defaultAlias = "Quest480"

q480Cfg = require('Quest/Client/Q480ClientConfig')
local subIDs = q480Cfg.SubIDs
local amborData = q480Cfg.AmborData
local WindData = q480Cfg.WindData

-- Generated
function Quest480:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["48005"] = self.OnSubStart48005
    self.subStartHandlers["48001"] = self.OnSubStart48001
    self.subStartHandlers["48002"] = self.OnSubStart48002
    self.subStartHandlers["48003"] = self.OnSubStart48003
    self.subStartHandlers["48004"] = self.OnSubStart48004
end

function Quest480:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["48001"] = self.OnSubFinish48001
    self.subFinishHandlers["48002"] = self.OnSubFinish48002
    self.subFinishHandlers["48003"] = self.OnSubFinish48003
    self.subFinishHandlers["48004"] = self.OnSubFinish48004
end

function Quest480:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["48002"] = self.OnSubFailed48002
end

-- local param begin
-- local param end

-- local method begin
--@region sub start handlers

function Quest480:StartCount()
    -- if FailNum < 2 then
    --     EscapeTime = 50  
    -- else 
    local FlyingTime = 60 
    -- end
    self:CountDownUIStart(FlyingTime, 10, 3)
    self:CallDelay(FlyingTime+4, self.CountDown)
end

function Quest480:CountDown()
    local quest = actorMgr:GetActor(q480Cfg.ActorAlias)
    if quest ~= nil then
        print("FlyingTest fail")
        quest:FinishQuestID(true, 48002)
    end
end

function Quest480:OnSubStart48005(quest)
    print("48005 start:...")
    actorMgr:CreateActorWithPos("Q480Trigger", "Actor/Gadget/Q480Trigger", 70900002, 0, amborData.bornPos, amborData.bornDir, true, false)
end


function Quest480:OnSubStart48001(quest)
    print("48001 start:...")
    globalActor:ChangeWeather ("ClearSky")
    self:CreateQuestNpc(quest, amborData.AmborID)

end

function Quest480:OnSubStart48002(quest)
    print("48002 start:...")
    globalActor:ChangeWeather ("ClearSky")
    local RiseDir = {x=0,y=0,z=0}
    -- WindData.Pos1.y =  WindData.Pos1.y + 5
    -- WindData.Pos2.y =  WindData.Pos2.y + 5
    -- WindData.Pos3.y =  WindData.Pos3.y + 5
    self:SpawnGadgetWithPos(quest , 70710005,1, WindData.Pos1,M.Dir2Euler(RiseDir),WindData.Wind1 )
    self:SpawnGadgetWithPos(quest , 70710005,2, WindData.Pos2,M.Dir2Euler(RiseDir),WindData.Wind2 )
    -- globalActor:SpawnGadget(WindData.WindID, WindData.Pos1,M.Dir2Euler(RiseDir),WindData.Wind1)
    -- globalActor:SpawnGadget(WindData.WindID, WindData.Pos2,M.Dir2Euler(RiseDir),WindData.Wind2)

    self:ActionSafeCall(self.StartCount)
    q480Cfg.TriggerNum = 0
    actorMgr:CreateActorWithPos("Q480Marks" .. tostring(1), "Actor/Gadget/Q480Marks", 70300064, 0, q480Cfg.FlyMarks[1].pos, q480Cfg.FlyMarks[1].rot, true, false)

    for i=1, #q480Cfg.Flyline1-1 do
        print("Now fengquan", i)
        local AccDir = { x = q480Cfg.Flyline1[i+1].x-q480Cfg.Flyline1[i].x, y = q480Cfg.Flyline1[i+1].y-q480Cfg.Flyline1[i].y, z = q480Cfg.Flyline1[i+1].z-q480Cfg.Flyline1[i].z }  
        -- self:SpawnGadget(70690001, q480Cfg.Flyline1[i], M.Dir2Euler(AccDir), "Acc1" .. tostring(i))
        self:SpawnGadgetByIdWithPos(48002,70690001,3,q480Cfg.Flyline1[i], M.Dir2Euler(AccDir), "Acc1" .. tostring(i))
        print(q480Cfg.Flyline1[i].x, q480Cfg.Flyline1[i].y, q480Cfg.Flyline1[i].z)
    end

    for i=1, #q480Cfg.Flyline2-1 do
        print("Now fengquan", i)
        local AccDir = { x = q480Cfg.Flyline2[i+1].x-q480Cfg.Flyline2[i].x, y = q480Cfg.Flyline2[i+1].y-q480Cfg.Flyline2[i].y, z = q480Cfg.Flyline2[i+1].z-q480Cfg.Flyline2[i].z }  
        -- self:SpawnGadget(70690001, q480Cfg.Flyline2[i], M.Dir2Euler(AccDir), "Acc2" .. tostring(i))
        self:SpawnGadgetByIdWithPos(48002,70690001,3,q480Cfg.Flyline2[i], M.Dir2Euler(AccDir), "Acc2" .. tostring(i))
        print(q480Cfg.Flyline2[i].x, q480Cfg.Flyline2[i].y, q480Cfg.Flyline2[i].z)
    end

    for i=1, #q480Cfg.Flyline3-1 do
        print("Now fengquan", i)
        local AccDir = { x = q480Cfg.Flyline3[i+1].x-q480Cfg.Flyline3[i].x, y = q480Cfg.Flyline3[i+1].y-q480Cfg.Flyline3[i].y, z = q480Cfg.Flyline3[i+1].z-q480Cfg.Flyline3[i].z }  
        -- self:SpawnGadget(70690001, q480Cfg.Flyline3[i], M.Dir2Euler(AccDir), "Acc3" .. tostring(i))
        self:SpawnGadgetByIdWithPos(48002,70690001,3,q480Cfg.Flyline3[i], M.Dir2Euler(AccDir), "Acc3" .. tostring(i))
        print(q480Cfg.Flyline3[i].x, q480Cfg.Flyline3[i].y, q480Cfg.Flyline3[i].z)
    end

    for i=1, #q480Cfg.Flyline4-1 do
        print("Now fengquan", i)
        local AccDir = { x = q480Cfg.Flyline4[i+1].x-q480Cfg.Flyline4[i].x, y = q480Cfg.Flyline4[i+1].y-q480Cfg.Flyline4[i].y, z = q480Cfg.Flyline4[i+1].z-q480Cfg.Flyline4[i].z }  
        -- self:SpawnGadget(70690001, q480Cfg.Flyline4[i], M.Dir2Euler(AccDir), "Acc4" .. tostring(i))
        self:SpawnGadgetByIdWithPos(48002,70690001,3,q480Cfg.Flyline4[i], M.Dir2Euler(AccDir), "Acc4" .. tostring(i))  
        print(q480Cfg.Flyline4[i].x, q480Cfg.Flyline4[i].y, q480Cfg.Flyline4[i].z)
    end

    for i=1, #q480Cfg.Flyline5-1 do
        print("Now fengquan", i)
        local AccDir = { x = q480Cfg.Flyline5[i+1].x-q480Cfg.Flyline5[i].x, y = q480Cfg.Flyline5[i+1].y-q480Cfg.Flyline5[i].y, z = q480Cfg.Flyline5[i+1].z-q480Cfg.Flyline5[i].z }  
        -- self:SpawnGadget(70690001, q480Cfg.Flyline5[i], M.Dir2Euler(AccDir), "Acc5" .. tostring(i))
        self:SpawnGadgetByIdWithPos(48002,70690001,3,q480Cfg.Flyline5[i], M.Dir2Euler(AccDir), "Acc5" .. tostring(i))  
        print(q480Cfg.Flyline5[i].x, q480Cfg.Flyline5[i].y, q480Cfg.Flyline5[i].z)
    end


    for i=1, #q480Cfg.Flyline7-1 do
        print("Now fengquan", i)
        local AccDir = { x = q480Cfg.Flyline7[i+1].x-q480Cfg.Flyline7[i].x, y = q480Cfg.Flyline7[i+1].y-q480Cfg.Flyline7[i].y, z = q480Cfg.Flyline7[i+1].z-q480Cfg.Flyline7[i].z }  
        -- self:SpawnGadget(70690001, q480Cfg.Flyline7[i], M.Dir2Euler(AccDir), "Acc7" .. tostring(i))
        self:SpawnGadgetByIdWithPos(48002,70690001,3,q480Cfg.Flyline7[i], M.Dir2Euler(AccDir), "Acc7" .. tostring(i))  
        print(q480Cfg.Flyline7[i].x, q480Cfg.Flyline7[i].y, q480Cfg.Flyline7[i].z)
    end

    for i=1, #q480Cfg.Flyline8 do
        print("Now fengquan", i)
        local AccDir = { x = q480Cfg.Flyline8[2].x-q480Cfg.Flyline8[1].x, y = q480Cfg.Flyline8[2].y-q480Cfg.Flyline8[1].y, z = q480Cfg.Flyline8[2].z-q480Cfg.Flyline8[1].z }  
        -- self:SpawnGadget(70690001, q480Cfg.Flyline8[i], M.Dir2Euler(AccDir), "Acc8" .. tostring(i))
        self:SpawnGadgetByIdWithPos(48002,70690001,3,q480Cfg.Flyline8[i], M.Dir2Euler(AccDir), "Acc8" .. tostring(i))  
        print(q480Cfg.Flyline8[i].x, q480Cfg.Flyline8[i].y, q480Cfg.Flyline8[i].z)
    end
end

function Quest480:OnSubStart48003(quest)
    print("48003 start:...")
    -- TODO: Do sth on sub quest 48003 start
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:CreateQuestNpc(quest, amborData.AmborID)

    
    self:UnSpawn(WindData.Wind1)
    self:UnSpawn(WindData.Wind2)
    self:UnSpawn(WindData.Wind3)
    for i=1, #q480Cfg.Flyline1-1 do
        self:UnSpawn("Acc1" .. tostring(i))
    end

    for i=1, #q480Cfg.Flyline2-1 do
        self:UnSpawn("Acc2" .. tostring(i))
    end

    for i=1, #q480Cfg.Flyline3-1 do
        self:UnSpawn("Acc3" .. tostring(i))
    end

    for i=1, #q480Cfg.Flyline4-1 do
        self:UnSpawn("Acc4" .. tostring(i))
    end

    for i=1, #q480Cfg.Flyline5-1 do
        self:UnSpawn("Acc5" .. tostring(i))
    end

    for i=1, #q480Cfg.Flyline7-1 do
        self:UnSpawn("Acc7" .. tostring(i))
    end

    for i=1, #q480Cfg.Flyline8 do
        self:UnSpawn("Acc8" .. tostring(i))
    end

    for i=1, q480Cfg.TotalNum do
        local coin = actorMgr:GetActor("Q480Marks" .. tostring(i))
        if coin ~= nil then
            coin:DestroySelf()
        end
    end

end


function Quest480:OnSubStart48004(quest)
    print("48004 start:...")
    -- TODO: Do sth on sub quest 48003 start
    self:CountDownUITerminate()
    self:CreateQuestNpc(quest, amborData.AmborID)

    self:UnSpawn(WindData.Wind1)
    self:UnSpawn(WindData.Wind2)
    self:UnSpawn(WindData.Wind3)
    for i=1, #q480Cfg.Flyline1-1 do
        self:UnSpawn("Acc1" .. tostring(i))
    end

    for i=1, #q480Cfg.Flyline2-1 do
        self:UnSpawn("Acc2" .. tostring(i))
    end

    for i=1, #q480Cfg.Flyline3-1 do
        self:UnSpawn("Acc3" .. tostring(i))
    end

    for i=1, #q480Cfg.Flyline4-1 do
        self:UnSpawn("Acc4" .. tostring(i))
    end

    for i=1, #q480Cfg.Flyline5-1 do
        self:UnSpawn("Acc5" .. tostring(i))
    end

    for i=1, #q480Cfg.Flyline7-1 do
        self:UnSpawn("Acc7" .. tostring(i))
    end

    for i=1, q480Cfg.TotalNum do
        local coin = actorMgr:GetActor("Q480Marks" .. tostring(i))
        if coin ~= nil then
            coin:DestroySelf()
        end
    end

end

--@endregion

--@region sub finish handlers
function Quest480:OnSubFinish48001(quest)
    print("OnFinished 48001")
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
        end 
    )
end

function Quest480:OnSubFinish48002(quest)
    print("OnFinished 48002")
    -- self:ActionSafeCall(self.DestroyNPC)
end

function Quest480:OnSubFailed48002(quest)
    print("OnFailed 48002")
    -- self:ActionSafeCall(self.DestroyNPC)
    self:CallDelay(2,
        function(self)
            self:TransmitPlayer(3,sceneData:GetDummyPoint(3,"Q48001Player").pos, sceneData:GetDummyPoint(3,"Q48001Player").rot)
        end
    )
end


function Quest480:OnSubFinish48003(quest)
    print("OnFinished 48003")
    self:ActionSafeCall(self.DestroyNPC)
end


function Quest480:OnSubFinish48004(quest)
    print("OnFinished 48004")
    self:ActionSafeCall(self.DestroyNPC)

    self:ActionSafeCall(
        function (self)
            self:CallDelay(1.5,
                function (self)
                    self:NarratorOnlyTask(q480Cfg.FinishNarrator, nil, "Tag")
                end
            )
        end
    )
    
    for i=1, #q480Cfg.Flyline8 do
        self:UnSpawn("Acc8" .. tostring(i))
    end
end

function Quest480:DestroyNPC(quest)
    print("OnFinished 48004")
    self:ShowBlackScreen(0.5, 1.0, 0.5,
        function(self)
            local ambor = self:GetQuestNpcActor(amborData.Ambor)
            if ambor ~= nil then
                ambor:Destroy(false)
            end
            local paimon = self:GetQuestNpcActor("Paimon")
            if paimon ~= nil then
                paimon:DestroyWithDisappear(false)
            end  
        end
    )
end



--@endregion

function Quest480:Start()
end

function Quest480:OnDestroy()
end

return Quest480