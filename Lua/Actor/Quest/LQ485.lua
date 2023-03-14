require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest485 = class("Quest485", questActorProxy)

Quest485.defaultAlias = "Quest485"

local q485Cfg
local subIDs
local mainquestid
local amborData
local WindUpData 
local windCushionData
local windData
local initRisingWind 
local LowHFlag = false
local Flowi = 0
local FlagOnly = false
local FlagPre = false
-- util.do_require('Quest/Share/Q485ShareConfig')
-- local quest_data48503 = quest_data["48503"]
-- local quest_data48511 = quest_data["48511"]
-- local quest_data48506 = quest_data["48506"]

function Quest485:OnDataLoaded()
    q485Cfg = self.clientData
    subIDs = q485Cfg.SubIDs
    amborData = q485Cfg.AmborData
    WindUpData = q485Cfg.WindUpData
    windCushionData = q485Cfg.WindCushionData
    windData = q485Cfg.WindData
    initRisingWind = q485Cfg.InitRisingWind
end

-- Generated
function Quest485:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["48501"] = self.OnSubStart48501
    self.subStartHandlers["48511"] = self.OnSubStart48511
    self.subStartHandlers["48509"] = self.OnSubStart48509
    self.subStartHandlers["48512"] = self.OnSubStart48512
    self.subStartHandlers["48510"] = self.OnSubStart48510
    self.subStartHandlers["48502"] = self.OnSubStart48502
    self.subStartHandlers["48503"] = self.OnSubStart48503
    self.subStartHandlers["48504"] = self.OnSubStart48504
    self.subStartHandlers["48505"] = self.OnSubStart48505
    self.subStartHandlers["48506"] = self.OnSubStart48506
    self.subStartHandlers["48507"] = self.OnSubStart48507
    self.subStartHandlers["48508"] = self.OnSubStart48508
end

function Quest485:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["48501"] = self.OnSubFinish48501
    self.subFinishHandlers["48511"] = self.OnSubFinish48511
	self.subFinishHandlers["48502"] = self.OnSubFinish48502
    self.subFinishHandlers["48503"] = self.OnSubFinish48503
    self.subFinishHandlers["48504"] = self.OnSubFinish48504
    self.subFinishHandlers["48505"] = self.OnSubFinish48505
    self.subFinishHandlers["48506"] = self.OnSubFinish48506
    self.subFinishHandlers["48507"] = self.OnSubFinish48507
	self.subFinishHandlers["48508"] = self.OnSubFinish48508
end

-- local param begin
-- local param end

-- local method begin
--@region sub start handlers

function Quest485:CreateAmbor()
    -- local quest = actorMgr:GetActor(q485Cfg.ActorAlias)
    -- if quest ~= nil then
    self:CreateQuestNpcById(48503, amborData.AmborID)

    -- end
    print("Ambor Born")
    self:RequestInteraction(amborData.Ambor)
end

function Quest485:CreateAmbor1()
    -- local quest = actorMgr:GetActor(q485Cfg.ActorAlias)
    -- if quest ~= nil then
        self:CreateQuestNpcById(48511, amborData.AmborID)
        -- end
    print("Ambor Born")
    -- self:RequestInteraction(amborData.Ambor)
end

function Quest485:CreateAmbor2()
    -- local quest = actorMgr:GetActor(q485Cfg.ActorAlias)
    -- if quest ~= nil then
        self:CreateQuestNpcById(48506, amborData.AmborID)

    -- end
    print("Ambor Born")
    self:RequestInteraction(amborData.Ambor)
end

function Quest485:AmborVanish()
    self:ActionSafeCall(
        function(self)
            local ambor = self:GetQuestNpcActor(amborData.Ambor)
            if ambor ~= nil then
                ambor:Destroy(false)
            end
            local Thief = self:GetQuestNpcActor("1485")
            if Thief ~= nil then
                Thief:Destroy(false)
            end
            local paimon = self:GetQuestNpcActor("Paimon")
            if paimon ~= nil then
                paimon:DestroyWithDisappear(false)
            end  
        end
    )
end

function Quest485:Interaction()
    self:RequestInteraction(amborData.Ambor)
    print("Black Callback NOW")
end

function Quest485:CheckHight()
    print("check start:...")
    local AvatarPos = actorUtils.GetAvatarPos()
    if AvatarPos.y < 12 and AvatarPos.x > -45 and AvatarPos.x < 14 and AvatarPos.z > -40 and AvatarPos.z < 10 and FlagPre == false then 
        self:NarratorOnlyTask(q485Cfg.NarratorPre, nil, "Tag")
        FlagPre = true 
    end

    if AvatarPos.y < 5 and AvatarPos.y > -10 and AvatarPos.x > -45 and AvatarPos.x < 14 and AvatarPos.z > -40 and AvatarPos.z < 10
        then
        LowHFlag = true
        local RiseDir = {x=0,y=0,z=0}
        local windpos = AvatarPos
        windpos.y = windpos.y - 10
        Flowi = Flowi + 1
        self:SpawnGadgetByIdWithPos(48504,40200020,2, windpos, M.Dir2Euler(RiseDir),"Flow" .. tostring(Flowi))
        -- globalActor:SpawnGadget(WindUpData.WindID, windpos, M.Dir2Euler(RiseDir),"Flow" .. tostring(Flowi), 1016)
        globalActor:EnablePlayerInput(false)
        self:CallDelay(2,
            function()
                globalActor:EnablePlayerInput(true)
            end
        )
        if FlagOnly == false then
            self:NarratorOnlyTask(q485Cfg.Narrator, nil, "Tag")
            local Campos = windpos
            Campos.x = Campos.x - 5
            self:EnterSceneLookCamera(Campos, 3, 1.5, true)
            FlagOnly = true
        end
        self:CallDelay(2.1,self.DestroyFlow) 

        -- self:PlayEffect("Eff_Diluc_FireCross_01", Campos)
        print("Low Low:...")
    else LowHFlag = false
        print("High High:...")
    end

    if AvatarPos.y < -10 and AvatarPos.x > -45 and AvatarPos.x < 14 and AvatarPos.z > -40 and AvatarPos.z < 10
    then local quest = actorMgr:GetActor(q485Cfg.ActorAlias)
        quest:ClearNarratorTask()
		quest:StopNarrator()
    end


    if LowHFlag == true then
        self:CallDelay(2.5,self.CheckHightOut)    
    else self:CallDelay(1,self.CheckHightOut)    
    end
end

function Quest485:CheckHightOut()
    local quest = actorMgr:GetActor(q485Cfg.ActorAlias)
	if quest ~= nil and self:GetSubQuestState(48506) ~= 3 and self:GetSubQuestState(48510) == 3 then
        self:CheckHight()	
    end
end

function Quest485:DestroyFlow()
    self:UnSpawn("Flow" .. tostring(Flowi))
end

function Quest485:OnSubStart48501(quest)
    print("48501 start:...")
end

function Quest485:OnSubStart48511(quest)
    print("48511 start:...")
    local task = self:CreateQuestNpcCreateTask({amborData.Ambor})

    self:ShowBlackScreen(0.5, 1.0, 0, self.CreateAmbor1, self.RequestAmbor, task
    )
end

function Quest485:RequestAmbor()
    print("RequestAmbor")
    self:RequestInteraction(amborData.Ambor)
end


function Quest485:OnSubStart48509(quest)
    print("48209 start:...")
    local RiseDir = {x=0,y=0,z=0}

    windCushionData.bornPos.y = windCushionData.bornPos.y -- - 67
    
    




   
    self:TriggerLevelAbility("Avatar_Test_FlyingBomber")
    self:TriggerLevelAbility("Avatar_Player_StaminaReduced")
    -- self:TriggerAbility("Avatar_Player_CamCtrl")


    self:EnterBomberMode()
    -- self:SetFlyStateParams(5.5, 6.0, 90, -0.75, 8 )
end

function Quest485:OnSubStart48512(quest)
    print("48512 start:...")
    self:NarratorOnlyTask(q485Cfg.FirstNarrator, nil, "Cut")
        self:CallDelay(6,
        function()
            local quest = actorMgr:GetActor(q485Cfg.ActorAlias)
            if quest ~= nil then
                quest:FinishQuestID(false, 48512)
            end
        end
    )
end


function Quest485:OnSubStart48510(quest)
    print("48510 start:...")
    -- self:ResetFlyStateParams()
    self:ExitBomberMode()
    self:TriggerLevelAbility("Level_Remove_Avatar_Test_FlyingBomber")
end

function Quest485:OnSubStart48502(quest)
    print("48502 start:...")
    actorMgr:CreateActorWithPos("Q485Trigger", "Actor/Gadget/Q485Trigger", 70900002, 0, sceneData:GetDummyPoint(1016,"Q48503Ambor").pos, sceneData:GetDummyPoint(1016,"Q48503Ambor").rot, true, false,1016)
end

function Quest485:OnSubStart48503(quest)
    print("48503 start:...")
    local task = self:CreateQuestNpcCreateTask({amborData.Ambor})

    self:ShowBlackScreen(1.0, 0.5, 0.0, self.CreateAmbor, nil ,task) 
end

function Quest485:OnSubStart48504(quest)
    print("48504 start:...")
    self:CheckHightOut()
    self:SpawnGadget(quest , 70900201 )
    -- globalActor:SpawnGadget(70900201, sceneData:GetDummyPoint(1016,"Q48503Chief").pos, sceneData:GetDummyPoint(1016,"Q48503Chief").pos, "Goal", 1016,0,0,1)
    actorMgr:CreateActorWithPos("Q485Trigger", "Actor/Gadget/Q485Trigger", 70900002, 0, sceneData:GetDummyPoint(1016,"Q48504Area").pos, sceneData:GetDummyPoint(1016,"Q48504Area").rot, true, false,1016)
end

function Quest485:OnSubStart48505(quest)
    print("48505 start:...")
end

function Quest485:OnSubStart48506(quest)
    print("48506 start:...")
    self:CallDelay(
        1.5,
        function ( self )
            local task = self:CreateQuestNpcCreateTask({amborData.Ambor})
            self:ShowBlackScreen(1.0, 0.5, 0.0, self.CreateAmbor2, nil, task) 

        end
    )

end

function Quest485:OnSubStart48507(quest)
    print("48507 start:...")
end

function Quest485:OnSubStart48508(quest)
    print("48508 start:...")
    self:CreateQuestNpc(quest, amborData.AmborID)

end

--@endregion

--@region sub finish handlers
function Quest485:OnSubFinish48501(quest)
    print("OnFinished 48501")
end

function Quest485:OnSubFinish48511(quest)
    print("OnFinished 48511")
    self:AmborVanish()
    self:ActionSafeCall(
        function ( self )
            self:CallDelay(
                1,
                function ( self )
                    self:ShowTutorialDialog(235)
                end
            )
        end
    )
end

function Quest485:OnSubFinish48502(quest)
    print("OnFinished 48502")
end

function Quest485:OnSubFinish48503(quest)
    print("OnFinished 48503")
    self:AmborVanish()
    local bird485 = self:GetQuestNpcActor("Npc1485")
    if bird485 ~= nil then
        bird485:Destroy(false)
    end
end

function Quest485:OnSubFinish48504(quest)
    print("OnFinished 48504")
    self:UnSpawn("Goal") 
end

function Quest485:OnSubFinish48505(quest)
    print("OnFinished 48505")
end

function Quest485:OnSubFinish48506(quest)
    print("OnFinished 48506")
    self:AmborVanish()
    self:ActionSafeCall(
        function (self)
            self:CallDelay(2,
                function (self)
                    self:NarratorOnlyTask(q485Cfg.FinishNarrator, nil, "StoryCut")
                end
            )
        end
    )
end

function Quest485:OnSubFinish48507(quest)
    print("OnFinished 48507")
end

function Quest485:OnSubFinish48508(quest)
    print("OnFinished 48508")
    self:AmborVanish()
end

--@endregion

function Quest485:Start()
end

function Quest485:OnDestroy()
end

return Quest485