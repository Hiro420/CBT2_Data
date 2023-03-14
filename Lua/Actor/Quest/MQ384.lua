require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest384 = class("Quest384", questActorProxy)

Quest384.defaultAlias = "Quest384"

local q384Cfg  
local subIDs
local wendyData 
local dilucData  
local qinData 
local DailyNpcManager = require('Actor/DailyNPCManager')

function Quest384:OnDataLoaded()
    q384Cfg = self.clientData
    subIDs = q384Cfg.SubIDs
    wendyData = q384Cfg.WendyData
    dilucData = q384Cfg.DilucData
    qinData = q384Cfg.QinData
end

-- Generated
function Quest384:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["38401"] = self.OnSubStart38401
    self.subStartHandlers["38402"] = self.OnSubStart38402    
    self.subStartHandlers["38403"] = self.OnSubStart38403    
    self.subStartHandlers["38404"] = self.OnSubStart38404    
    self.subStartHandlers["38405"] = self.OnSubStart38405    
    self.subStartHandlers["38406"] = self.OnSubStart38406    
end

function Quest384:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["38401"] = self.OnSubFinish38401
    self.subFinishHandlers["38402"] = self.OnSubFinish38402
    self.subFinishHandlers["38403"] = self.OnSubFinish38403
    self.subFinishHandlers["38404"] = self.OnSubFinish38404
    self.subFinishHandlers["38405"] = self.OnSubFinish38405
    self.subFinishHandlers["38406"] = self.OnSubFinish38406
end

-- local param begin
-- local param end

-- local method begin
--@region sub start handlers


function Quest384:OnSubStart38401(quest)  
    print("38401 start ")
    self:NotifyTo("Npc1609", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1610", DailyNpcManager.NpcEventType.HIDESELF, true)
end

function Quest384:OnSubStart38402(quest)  
    print("38402 start ")
    self:NotifyTo("Npc1609", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1610", DailyNpcManager.NpcEventType.HIDESELF, true)
    actorMgr:CreateActorWithPos("Q384TriggerSP", "Actor/Gadget/Q384TriggerSP", 70900002, 0, sceneData:GetDummyPoint(3,"Q384Trigger").pos, sceneData:GetDummyPoint(3,"Q384Trigger").rot, true, false)
end

function Quest384:OnSubStart38403(quest)
    print("38403 start:...")
    self:NotifyTo("Npc1609", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1610", DailyNpcManager.NpcEventType.HIDESELF, true)
end

function Quest384:OnSubStart38404(quest)
    print("38404 start:...")
    self:NotifyTo("Npc1609", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1610", DailyNpcManager.NpcEventType.HIDESELF, true)
    local quest = actorMgr:GetActor(q384Cfg.ActorAlias)
    if quest ~= nil then
        quest:FinishQuest(false, nil)
        print("CS finish")
    end 
end

function Quest384:Play384Cutscene(quest)
    self:PlayCutsceneIndex(38401, self.FinishCS)
end

function Quest384:Play384Cutscene02(quest)
    self:PlayCutsceneIndex(38402, self.FinishCS)
end

function Quest384:OnSubStart38405(quest)
    print("38405 start:...")
    self:InteractionWendy()
    self:NotifyTo("Npc1609", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1610", DailyNpcManager.NpcEventType.HIDESELF, true)
end

function Quest384:OnSubStart38406(quest)
    print("38406 start:...")
    self:NotifyTo("Npc1609", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1610", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:ActionSafeCall(self.Play384Cutscene02)
end


--@endregion

--@region sub finish handlers
function Quest384:OnSubFinish38401(quest)
    print("OnFinished 38401")
end

function Quest384:OnSubFinish38402(quest)
    print("OnFinished 38402")
    local task = self:CreateQuestNpcCreateTask({wendyData.Wendy, dilucData.Diluc, qinData.Qin})

    self:ShowBlackScreen(0.5, 1.0, 0.5, 
        function(self)
            self:CreateQuestNpcById(38402, wendyData.WendyID)
            self:CreateQuestNpcById(38402, dilucData.DilucID)
            self:CreateQuestNpcById(38402, qinData.QinID)

            -- actorMgr:CreateActorWithPos(wendyData.Wendy, wendyData.WendyScript, wendyData.WendyID, 0, wendyData.bornPos1, wendyData.bornDir1, true, false,3,true,0,38403)  
            -- actorMgr:CreateActorWithPos(dilucData.Diluc, dilucData.DilucScript, dilucData.DilucID, 0, dilucData.bornPos1, dilucData.bornDir1, true, false,3,true,0,38403)  
            -- actorMgr:CreateActorWithPos(qinData.Qin, qinData.QinScript, qinData.QinID, 0, qinData.bornPos1, qinData.bornDir1, true, false,3,true,0,38403)  
            self:RequestInteraction(wendyData.Wendy)
        end
        ,nil ,task
        -- , self.InteractionWendy
    )

    local q384Trigger = actorMgr:GetActor("Q384TriggerSP")
    if q384Trigger ~= nil then
        q384Trigger:Destroy(false)
    end

end

function Quest384:OnSubFinish38403(quest)
    print("OnFinished 38403")
end

function Quest384:OnSubFinish38404(quest)
    print("OnFinished 38404")
end

function Quest384:OnSubFinish38405(quest)
    print("OnFinished 38405")
    self:ActionSafeCall(
        function(self)
            local paimon = self:GetQuestNpcActor("Paimon")
            if paimon ~= nil then
                paimon:DestroyWithDisappear(false)
            end
        end
    )

    self:ActionSafeCall(
        function(self)
            local abyss = self:GetQuestNpcActor("AbyssWater")
            if abyss ~= nil then
                abyss:DestroyWithDisappear(false)
            end
        end
    )

end

function Quest384:OnSubFinish38406(quest)
    print("OnFinished 38406")
    self:ActionSafeCall(
        function(self)
            local qin = self:GetQuestNpcActor(qinData.Qin)
            if qin ~= nil then
                qin:Destroy(false)
            end  
        end
    )
    self:ActionSafeCall(
        function(self)
            local diluc = self:GetQuestNpcActor(dilucData.Diluc)
            if diluc ~= nil then
                diluc:Destroy(false)
            end  
        end
    )
    self:ActionSafeCall(
        function(self)
            local wendy = self:GetQuestNpcActor(wendyData.Wendy)
            if wendy ~= nil then
                wendy:Destroy(false)
            end  
        end
    )
end

-- function Quest384:OnSubFinish38410(quest)
--     print("OnFinished 38410")
--     self:ActionSafeCall(
--         function(self)
--             local paimon = actorMgr:GetActor("Paimon")
--             if paimon ~= nil then
--                 paimon:DestroyWithDisappear(false)
--             end
--         end
--     )
-- end

function Quest384:Interaction()
    self:RequestInteraction(dilucData.Diluc)
    print("Before CS Talk")
end

function Quest384:InteractionWendy()
    self:RequestInteraction(wendyData.Wendy)
    print("After CS Talk")
end

function Quest384:Trans()
    self:TransmitPlayer(3, sceneData:GetDummyPoint(3,"Q384Wizard").pos, sceneData:GetDummyPoint(3,"Q384Wizard").rot, self.DeleteNPC)
end

function Quest384:FinishCS()
    local quest = actorMgr:GetActor(q384Cfg.ActorAlias)
    if quest ~= nil then
        quest:FinishQuest(false, nil)
        print("CS finish")
    end 
end



function Quest384:DeleteNPC()
    self:ActionSafeCall(
        function(self)
            local qin = self:GetQuestNpcActor(qinData.Qin)
            if qin ~= nil then
                qin:Destroy(false)
            end  
        end
    )
    self:ActionSafeCall(
        function(self)
            local diluc = self:GetQuestNpcActor(dilucData.Diluc)
            if diluc ~= nil then
                diluc:Destroy(false)
            end  
        end
    )
    self:ActionSafeCall(
        function(self)
            local wendy = self:GetQuestNpcActor(wendyData.Wendy)
            if wendy ~= nil then
                wendy:Destroy(false)
            end  
        end
    )
    local quest = actorMgr:GetActor(q384Cfg.ActorAlias)
    if quest ~= nil then
        quest:FinishQuest(false, nil)
    end 
end

function Quest384:BeginNarrator()
    self:NarratorOnlyTask(q384Cfg.FightNarrator, nil, "Story")
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3,"Q384WizardMark").pos, 3.5, 3, true)
end


function Quest384:InvokeOnInteraction(param)
    if param == 4 then
        print("Now Wizard Leave")
        self:PlayBSEffect()
        self:CallDelay(0.5,self.PlayEffect)
        self:CallDelay(2,self.PlayASEffect)
        self:CallDelay(2.1,self.AbyssHide)
    end
end

function Quest384:PlayBSEffect()
    -- self:SpawnGadget(70300060, sceneData:GetDummyPoint(3,"Q38404CasterEffect").pos, sceneData:GetDummyPoint(3,"Q38404CasterEffect").rot, "BS")
end

function Quest384:PlayEffect()
    -- self:SpawnGadget(70300061, sceneData:GetDummyPoint(3,"Q38404Cater").pos, sceneData:GetDummyPoint(3,"Q38404Cater").rot, "Self")
end

function Quest384:PlayASEffect()
    -- self:SpawnGadget(70300062, sceneData:GetDummyPoint(3,"Q38404Cater").pos, sceneData:GetDummyPoint(3,"Q38404Cater").rot, "AS")
end

function Quest384:AbyssHide()
    local abyss = self:GetQuestNpcActor("AbyssWater")
    if abyss ~= nil then
        abyss:SetVisible(false)
    end
end

--@endregion

function Quest384:Start()
end

function Quest384:OnDestroy()
end

return Quest384