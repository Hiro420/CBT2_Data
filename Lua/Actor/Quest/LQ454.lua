require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest454 = class("Quest454", questActorProxy)

Quest454.defaultAlias = "Quest454"
local DailyNpcManager = require('Actor/DailyNPCManager')

local q454Cfg
local subIDs
local mainquestid = 454
local paimonData
local amborData
local razorData
local wolfWoundData
local wolfBossData
local farmer1Data
local farmer2Data
local herbData
local bloodHintData

function Quest454:OnDataLoaded()
    q454Cfg = self.clientData
    subIDs = q454Cfg.SubIDs
    mainquestid = 454
    paimonData = q454Cfg.PaimonData
    amborData = q454Cfg.AmborData
    razorData = q454Cfg.RazorData
    wolfWoundData = q454Cfg.WolfWoundData
    wolfBossData = q454Cfg.WolfBossData
    farmer1Data = q454Cfg.Farmer1Data
    farmer2Data = q454Cfg.Farmer2Data
    herbData = q454Cfg.HerbData
    bloodHintData = q454Cfg.BloodHintData
end

-- Generated
function Quest454:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["45407"] = self.OnSubStart45407
    self.subStartHandlers["45401"] = self.OnSubStart45401
    self.subStartHandlers["45410"] = self.OnSubStart45410
    self.subStartHandlers["45411"] = self.OnSubStart45411
    self.subStartHandlers["45412"] = self.OnSubStart45412
    self.subStartHandlers["45413"] = self.OnSubStart45413
    self.subStartHandlers["45414"] = self.OnSubStart45414
    self.subStartHandlers["45408"] = self.OnSubStart45408
    self.subStartHandlers["45409"] = self.OnSubStart45409
    self.subStartHandlers["45415"] = self.OnSubStart45415
    self.subStartHandlers["45402"] = self.OnSubStart45402
    self.subStartHandlers["45403"] = self.OnSubStart45403
    self.subStartHandlers["45404"] = self.OnSubStart45404
    self.subStartHandlers["45416"] = self.OnSubStart45416
    self.subStartHandlers["45417"] = self.OnSubStart45417
    self.subStartHandlers["45405"] = self.OnSubStart45405
    self.subStartHandlers["45406"] = self.OnSubStart45406
end

function Quest454:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["45407"] = self.OnSubFinish45407
    self.subFinishHandlers["45401"] = self.OnSubFinish45401
    self.subFinishHandlers["45410"] = self.OnSubFinish45410
    self.subFinishHandlers["45411"] = self.OnSubFinish45411
    self.subFinishHandlers["45412"] = self.OnSubFinish45412
    self.subFinishHandlers["45413"] = self.OnSubFinish45413
    self.subFinishHandlers["45414"] = self.OnSubFinish45414
    self.subFinishHandlers["45408"] = self.OnSubFinish45408
    self.subFinishHandlers["45409"] = self.OnSubFinish45409
    self.subFinishHandlers["45415"] = self.OnSubFinish45415
    self.subFinishHandlers["45402"] = self.OnSubFinish45402
    self.subFinishHandlers["45403"] = self.OnSubFinish45403
    self.subFinishHandlers["45404"] = self.OnSubFinish45404
    self.subFinishHandlers["45416"] = self.OnSubFinish45416
    self.subFinishHandlers["45417"] = self.OnSubFinish45417
    self.subFinishHandlers["45405"] = self.OnSubFinish45405
    self.subFinishHandlers["45406"] = self.OnSubFinish45406
end

-- local param begin
-- local param end

-- local method begin
--@region sub start handlers
function Quest454:PaimonDis()
    local paimon = self:GetQuestNpcActor(paimonData.Alias)
    if paimon ~= nil then
        paimon:DestroyWithDisappear(false)
    end
end

function Quest454:PaimonDelay()
    self:CallDelay(0.2,self.PaimonDis)
end

function Quest454:InvokeOnAbility(param)
    print("InvokeOnAbility*******")
    print("LupiBoreas_BattleFinished*******"..param.valueString)
    if param.valueString == "LupiBoreas_BattleFinished" then
        print("LupiBoreas_BattleFinished*******"..param.valueString)
        print("PlayCutscene454")
        self:PlayCutsceneIndex(45401,
        function(self)  
            local task = curtainUtils.CreateEntityCreateTask({wolfBossData.Alias, amborData.Alias, razorData.Alias})
            --self:TryPlayVideo("RZLQ004_SB_Preview.usm", nil, true)
            self:TransmitPlayer(3, sceneData:GetDummyPoint(3, "Q45406PlayerTalk").pos, sceneData:GetDummyPoint(3, "Q45406PlayerTalk").rot, nil,
                function(self)
                    local quest454 = actorMgr:GetActor(q454Cfg.ActorAlias)

                    quest454:CreateQuestNpcById(45406, wolfBossData.ID)
        
                    quest454:CreateQuestNpcById(45406, razorData.ID)
                    local razor = quest454:GetQuestNpcActor(razorData.Alias)
                    razor:DoFreeStyle(1180)
                
                    quest454:CreateQuestNpcById(45406, amborData.ID)
                    local ambor = quest454:GetQuestNpcActor(amborData.Alias)
                    ambor:DoFreeStyle(1120)
                    self:RequestInteraction(razorData.Alias)
                end
            )
        end
        )
        
        local quest = actorMgr:GetActor(q454Cfg.ActorAlias) --完成45417刷新狼group
        if quest ~= nil then
            quest:FinishQuestID(false, 45417)
        end

        self:CallDelay(2,       --完成45405解除雷泽试用
        function(self)
            local quest = actorMgr:GetActor(q454Cfg.ActorAlias)
            if quest ~= nil then
                quest:FinishQuestID(false, 45405)
            end
        end
        )
    end
end

function Quest454:OnSubStart45407(quest)
    self:CreateQuestNpc(quest, razorData.ID)
    local razor = self:GetQuestNpcActor(razorData.Alias)
    razor:DoFreeStyle(1120)

    --actorMgr:CreateActorWithPos(wolfWoundData.Alias, wolfWoundData.Script, wolfWoundData.ID, 0, wolfWoundData.BornPos, wolfWoundData.BornDir, true, false)
    self:CreateQuestNpc(quest, amborData.ID)
    local ambor = self:GetQuestNpcActor(amborData.Alias)
    ambor:DoFreeStyle(1170)
end

function Quest454:OnSubStart45401(quest)
end

function Quest454:OnSubStart45410(quest)
    print("45410 start:...")
    self:SpawnGadget(quest, bloodHintData.ID)
end

function Quest454:OnSubStart45411(quest)
    print("45411 start:...")
    local task = curtainUtils.CreateEntityCreateTask({amborData.Alias ,razorData.Alias})
    globalActor:UnSpawn("BloodHint")
    self:SpawnGadget(quest, bloodHintData.ID)
    self:ShowBlackScreen(0.5, 1, 0.5,
        function (self)
            self:CreateQuestNpc(quest, razorData.ID)
            local razor = self:GetQuestNpcActor(razorData.Alias)
            razor:DoFreeStyle(1190)
        
            self:CreateQuestNpc(quest, amborData.ID)
            local ambor = self:GetQuestNpcActor(amborData.Alias)
            ambor:DoFreeStyle(1190)

            self:TransmitPlayer(3, sceneData:GetDummyPoint(3, "Q45411PlayerPos").pos, sceneData:GetDummyPoint(3, "Q45411PlayerPos").rot)
        end,
        nil, task)
end

function Quest454:OnSubStart45412(quest)
    actorMgr:CreateActorWithPos("Q45412Trigger", "Actor/Gadget/Q45412Trigger", 70900002, 0, sceneData:GetDummyPoint(3,"Q45413PlayPos").pos, sceneData:GetDummyPoint(3,"Q45413PlayPos").rot, true, false)
end

function Quest454:OnSubStart45413(quest)
    
end

function Quest454:OnSubStart45414(quest)
    print("45414 start:...")
    self:ActionSafeCall(
    function(self)
        local wolfWound = self:GetQuestNpcActor(wolfWoundData.Alias)
        if wolfWound ~= nil then
            self:DestroyQuestNpcActorByAlias(wolfWoundData.Alias, false)
        end
        self:CallDelay(0.5,
        function(self)
            self:CreateQuestNpc(quest, wolfWoundData.ID)
        end
        )
        
        
        local razor = self:GetQuestNpcActor(razorData.Alias)
        if razor ~= nil then
            self:DestroyQuestNpcActorByAlias(razorData.Alias, false)
        end
        self:CallDelay(0.5,
        function(self)
            self:CreateQuestNpc(quest, razorData.ID)
            local razor = self:GetQuestNpcActor(razorData.Alias)
            razor:DoFreeStyle(1190)
        end
        )

        local ambor = self:GetQuestNpcActor(amborData.Alias)
        if ambor ~= nil then
            self:DestroyQuestNpcActorByAlias(amborData.Alias, false)
        end
        self:CallDelay(0.5,
        function(self)
            self:CreateQuestNpc(quest, amborData.ID)
            local ambor = self:GetQuestNpcActor(amborData.Alias)
            ambor:DoFreeStyle(1190)
        end
        )
    end
    )
end

function Quest454:OnSubStart45408(quest)
end

function Quest454:OnSubStart45409(quest)
end

function Quest454:OnSubStart45415(quest)
end

function Quest454:OnSubStart45402(quest)
    print("45402 start:...")
    -- self:SpawnItem(herbData.ID, herbData.BornPos, nil, herbData.Alias, 3)
end

function Quest454:OnSubStart45403(quest)
    print("45403 start:...")
    
end

function Quest454:OnSubStart45404(quest)

end

function Quest454:OnSubStart45416(quest)
    print("45416 start:...")
    print("————————45416:Finishi Quest 45403————————————")
    local quest = actorMgr:GetActor(q454Cfg.ActorAlias)
    if quest ~= nil then
        quest:FinishQuestID(false, 45403)
    end

    actorMgr:CreateActorWithPos("Q45416Trigger", "Actor/Gadget/Q45416Trigger", 70900002, 0, sceneData:GetDummyPoint(3,"Q454BossFight").pos, sceneData:GetDummyPoint(3,"Q454BossFight").rot, true, false)
end

function Quest454:OnSubStart45417(quest)
    
end

function Quest454:OnSubStart45405(quest)
    print("45405 start:...")
    actorMgr:CreateActorWithPos("Q45405Trigger", "Actor/Gadget/Q45405Trigger", 70900002, 0, sceneData:GetDummyPoint(3,"Q454BossFight").pos, sceneData:GetDummyPoint(3,"Q454BossFight").rot, true, false)
end



function Quest454:OnSubStart45406(quest)

end



--@endregion

--@region sub finish handlers
function Quest454:OnSubFinish45407(quest)
end

function Quest454:OnSubFinish45401(quest)
    self:ActionSafeCall(self.PaimonDelay)
    local razor = self:GetQuestNpcActor(razorData.Alias)
    if razor ~= nil then
        self:ActionSafeCall(
            function(self)
                self:DestroyQuestNpcActorByAlias(razorData.Alias, false)
            end
        )
    end

    local ambor = self:GetQuestNpcActor(amborData.Alias)
    if ambor ~= nil then
        self:ActionSafeCall(
            function(self)
                self:DestroyQuestNpcActorByAlias(amborData.Alias, false)
            end
        )
    end
end

function Quest454:OnSubFinish45410(quest)

end

function Quest454:OnSubFinish45411(quest)
    globalActor:UnSpawn("BloodHint")
    local razor = self:GetQuestNpcActor(razorData.Alias)
    if razor ~= nil then
        self:ActionSafeCall(
            function(self)
                self:DestroyQuestNpcActorByAlias(razorData.Alias, false)
            end
        )
    end
    local ambor = self:GetQuestNpcActor(amborData.Alias)
    if ambor ~= nil then
        self:ActionSafeCall(
            function(self)
                self:DestroyQuestNpcActorByAlias(amborData.Alias, false)
            end
        )
    end
    self:ActionSafeCall(self.PaimonDelay)

end

function Quest454:OnSubFinish45412(quest)
end

function Quest454:OnSubFinish45413(quest)
    self:ActionSafeCall(self.PaimonDelay)
end

function Quest454:OnSubFinish45414(quest)
end

function Quest454:OnSubFinish45408(quest)
    print("OnFinished 45408")
    self:NarratorOnlyTask(q454Cfg.NarratorFlow1)
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3,"Q454PawPrint").pos, 2, 2, true)
end

function Quest454:OnSubFinish45409(quest)
    print("OnFinished 45409")
    self:NarratorOnlyTask(q454Cfg.NarratorFlow2)
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3,"Q454FootPrint").pos, 2, 2, true)
end

function Quest454:OnSubFinish45415(quest)
    self:ActionSafeCall(self.PaimonDis)
end


function Quest454:OnSubFinish45402(quest)
end

function Quest454:OnSubFinish45403(quest)
    self:ActionSafeCall(
    function(self)
        local farmer1 = self:GetQuestNpcActor(farmer1Data.Alias)
        if farmer1 ~= nil then
            farmer1:RunToTask(farmer1Data.BornPos,
                function(farmer1, task)
                    self:DestroyQuestNpcActorByAlias(farmer1Data.Alias, false)
                end
            )
        end
        local farmer2 = self:GetQuestNpcActor(farmer2Data.Alias)
        if farmer2 ~= nil then
            farmer2:RunToTask(farmer2Data.BornPos,
                function(farmer2, task)
                    self:DestroyQuestNpcActorByAlias(farmer2Data.Alias, false)
                end
            )
        end

        local razor = self:GetQuestNpcActor(razorData.Alias)
        razor:EnableHeadCtrl(true)
        if razor ~= nil then
            self:DestroyQuestNpcActorByAlias(razorData.Alias, false)
        end

        local ambor = self:GetQuestNpcActor(amborData.Alias)
        if ambor ~= nil then
            self:DestroyQuestNpcActorByAlias(amborData.Alias, false)
        end

        local wolfwound = self:GetQuestNpcActor(wolfWoundData.Alias)
        if wolfwound ~= nil then
            self:DestroyQuestNpcActorByAlias(wolfWoundData.Alias, false)
        end
    end
    )
    self:ActionSafeCall(self.PaimonDelay)
end

function Quest454:OnSubFinish45416(quest)
end

function Quest454:OnSubFinish45417(quest)
end

function Quest454:OnSubFinish45404(quest)

end


function Quest454:OnSubFinish45405(quest)
    print("OnFinished 45405")
    
end

function Quest454:OnSubFinish45406(quest)
    local wolfBoss = self:GetQuestNpcActor(wolfBossData.Alias)
    if wolfBoss ~= nil then
        self:ActionSafeCall(
            function(self)
                self:DestroyQuestNpcActorByAlias(wolfBossData.Alias, false)
            end
        )
    end
    local razor = self:GetQuestNpcActor(razorData.Alias)
    if razor ~= nil then
        self:ActionSafeCall(
            function(self)
                self:DestroyQuestNpcActorByAlias(razorData.Alias, false)
            end
        )
    end
    local ambor = self:GetQuestNpcActor(amborData.Alias)
    if ambor ~= nil then
        self:ActionSafeCall(
            function(self)
                self:DestroyQuestNpcActorByAlias(amborData.Alias, false)
            end
        )
    end
    self:ActionSafeCall(self.PaimonDelay)
end

function Quest454:InvokeOnInteraction(param)
    
    if param == 1 then
        print("45411:DIALOG 45411")
        globalActor:UnSpawn("BloodHint")
    end


    if param == 2 then
        print("45403:**********Quest 45403")
    end


    if param == 3 then
        print("45406:**********Quest 45406")
    end


    if param == 4 then
        print("45401:**********Quest 45401")
    end


    -- if param == 5 then
    --     print("45411:**********Quest 45411")
    --     local ambor = actorMgr:GetActor(amborData.Alias, 454)
    --     if ambor ~= nil then
    --         ambor:DoFreeStateTrigger()
    --         ambor:RunToTask(amborData.LeavePos11)
    --     end
    -- end

    if param == 6 then
        print("————————45404:Finishi Quest 45404————————————")
        local quest = actorMgr:GetActor(q454Cfg.ActorAlias)
	    if quest ~= nil then
            quest:FinishQuestID(false, 45404)
        end

        print("————————INVOKE:Finishi Quest 45403————————————")
        local quest = actorMgr:GetActor(q454Cfg.ActorAlias)
        if quest ~= nil then
            quest:FinishQuestID(false, 45403)
        end
    end

end


--@endregion

function Quest454:Start()
end

function Quest454:OnDestroy()
end

return Quest454