require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest464 = class("Quest464", questActorProxy)

Quest464.defaultAlias = "Quest464"

local q464Cfg
local subIDs
local dilucData
local hoffmanData 
local qq1Data
local qq2Data
local qq3Data 
local PaimonData
local DailyNpcManager = require('Actor/DailyNPCManager')

function Quest464:OnDataLoaded()
    q464Cfg = self.clientData
    subIDs = q464Cfg.SubIDs
    dilucData = q464Cfg.DilucData
    hoffmanData = q464Cfg.HoffmanData
    qq1Data = q464Cfg.QQ1Data
    qq2Data = q464Cfg.QQ2Data
    qq3Data = q464Cfg.QQ3Data
    PaimonData = q464Cfg.PaimonData
end

-- Generated
function Quest464:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
	self.subStartHandlers["46401"] = self.OnSubStart46401
    self.subStartHandlers["46402"] = self.OnSubStart46402
    self.subStartHandlers["46403"] = self.OnSubStart46403
    self.subStartHandlers["46404"] = self.OnSubStart46404
    self.subStartHandlers["46405"] = self.OnSubStart46405
    self.subStartHandlers["46406"] = self.OnSubStart46406
    self.subStartHandlers["46407"] = self.OnSubStart46407
    self.subStartHandlers["46408"] = self.OnSubStart46408
    self.subStartHandlers["46409"] = self.OnSubStart46409
end

function Quest464:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
	self.subFinishHandlers["46401"] = self.OnSubFinish46401
    self.subFinishHandlers["46402"] = self.OnSubFinish46402
    self.subFinishHandlers["46403"] = self.OnSubFinish46403
    self.subFinishHandlers["46404"] = self.OnSubFinish46404
    self.subFinishHandlers["46405"] = self.OnSubFinish46405
    self.subFinishHandlers["46406"] = self.OnSubFinish46406
    self.subFinishHandlers["46407"] = self.OnSubFinish46407
    self.subFinishHandlers["46408"] = self.OnSubFinish46408
    self.subFinishHandlers["46409"] = self.OnSubFinish46409
end

-- local param begin
-- local param end

-- local method begin
--@region sub start handlers
function Quest464:OnSubFinish46401(quest)
    print("46401 Finish:NPC Alltime")
    self:NotifyTo("Npc1431", DailyNpcManager.NpcEventType.BANDAILY, true)
    self:NotifyTo("Npc1439", DailyNpcManager.NpcEventType.BANDAILY, true)
    self:NotifyTo("Npc1427", DailyNpcManager.NpcEventType.BANDAILY, true)
    self:ActionSafeCall(self.Finish46401Do)
end
function Quest464:Finish46401Do(quest)
	local paimon = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
    if paimon ~= nil then
        paimon:DestroyWithDisappear(false)
    end
end

function Quest464:OnSubFinish46402(quest)
    print("46402 Finish:  Paimon Des")
    self:ActionSafeCall(self.Finish46402Do)
end
function Quest464:Finish46402Do(quest)
	local paimon = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
    if paimon ~= nil then
        paimon:DestroyWithDisappear(false)
    end
end

function Quest464:OnSubStart46403(quest)
    print("46403 Start:NPC Alltime")
    self:NotifyTo("Npc1431", DailyNpcManager.NpcEventType.BANDAILY, true)
    self:NotifyTo("Npc1439", DailyNpcManager.NpcEventType.BANDAILY, true)
    self:NotifyTo("Npc1427", DailyNpcManager.NpcEventType.BANDAILY, true)
end

function Quest464:OnSubFinish46403(quest)
    print("46403 Finish:  Paimon Des")
    self:ActionSafeCall(self.Finish46403Do)
end
function Quest464:Finish46403Do(quest)
	local paimon = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
    if paimon ~= nil then
        paimon:DestroyWithDisappear(false)
    end
end

function Quest464:OnSubStart46404(quest)
    print("46404 Start:NPC Alltime")
    self:NotifyTo("Npc1431", DailyNpcManager.NpcEventType.BANDAILY, true)
    self:NotifyTo("Npc1439", DailyNpcManager.NpcEventType.BANDAILY, true)
    self:NotifyTo("Npc1427", DailyNpcManager.NpcEventType.BANDAILY, true)
    self:NotifyTo("Npc1447", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1441", DailyNpcManager.NpcEventType.HIDESELF, true)
end

function Quest464:OnSubFinish46404(quest)
    print("46404 Finish:  Paimon Des")
    self:ActionSafeCall(self.Finish46404Do)
end
function Quest464:Finish46404Do(quest)
	local paimon = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
    if paimon ~= nil then
        paimon:DestroyWithDisappear(false)
    end
end

function Quest464:OnSubFinish46405(quest)
    print("46405 Finish:Story1")
    self:NarratorOnlyTask(self.clientData.NarratorData.Story1)
    self:NotifyTo("Npc1447", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1441", DailyNpcManager.NpcEventType.HIDESELF, true)
end

function Quest464:OnSubFinish46406(quest)
    print("46406 Finish:Cutscene & Creat NPC")
    self:NotifyTo("Npc1431", DailyNpcManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1439", DailyNpcManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1427", DailyNpcManager.NpcEventType.STARTDAILY, true)
    self:PlayCutsceneIndex(46401, self.AfterCSDo)
end
function Quest464:AfterCSDo(quest)
    local dilucData = self.clientData.DilucData
    self:CreateQuestNpcById(46406, dilucData.DilucID, 1)
    --actorMgr:CreateActorWithPos(dilucData.Diluc, dilucData.DilucScript, dilucData.DilucID, 0, dilucData.Pos1, dilucData.Dir1, true)
    self:RequestInteraction(self.clientData.DilucData.Diluc)
end

function Quest464:OnSubStart46407(quest)
    print("46407 Start:NPC Hide")
    self:NotifyTo("Npc1447", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1441", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1569", DailyNpcManager.NpcEventType.HIDESELF, true)
end

function Quest464:OnSubFinish46407(quest)
    print("46407 Finish:Cutscene & Creat NPC& Trigger1")
    self:ActionSafeCall(self.Finish46407Do)
end
function Quest464:Finish46407Do(quest)
    local dilucData = self.clientData.DilucData
    --self:CreateQuestNpcById(46407, dilucData.DilucID, 1)
    --self:RequestInteraction(self.clientData.DilucData.Diluc)
    --actorMgr:CreateActorWithPos(dilucData.Diluc, dilucData.DilucScript, dilucData.DilucID, 0, dilucData.hiddenPos, dilucData.hiddenDir, true)
    local diluc = self:GetQuestNpcActor(self.clientData.DilucData.Diluc)
    if diluc ~= nil then
        diluc:Destroy(false)
    end
	local paimon = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
    if paimon ~= nil then
        paimon:DestroyWithDisappear(false)
    end
    actorMgr:CreateActorWithPos("Q464Trigger1", "Actor/Gadget/Q464Trigger1", 70900002, 0, sceneData:GetDummyPoint(3,"Q464Hoffman1").pos, sceneData:GetDummyPoint(3,"Q464Hoffman1").rot, true, false)
end

function Quest464:OnSubStart46408(quest)
    print("46408 Start:NPC Hide")
    self:NotifyTo("Npc1447", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1441", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1433", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1569", DailyNpcManager.NpcEventType.HIDESELF, true)
end

function Quest464:OnSubFinish46408(quest)
    print("46408 Finish: Creat NPC")
    self:CallDelay(2,self.Delay1)
end
function Quest464:Delay1(quest)
    local hoffmanData = self.clientData.HoffmanData
    local task = self:CreateQuestNpcCreateTask({hoffmanData.Hoffman})
    self:ShowBlackScreen(0.5, 1.0, 0.5, self.OnBright2, nil, task)
end
function Quest464:OnBright2(quest)
    local hoffmanData = self.clientData.HoffmanData
    self:CreateQuestNpcById(46408, hoffmanData.HoffmanID, 1)
    --actorMgr:CreateActorWithPos(hoffmanData.Hoffman, hoffmanData.HoffmanScript, hoffmanData.HoffmanID, 0, hoffmanData.Pos2, hoffmanData.Dir2, true)
    self:RequestInteraction(self.clientData.HoffmanData.Hoffman)
end

function Quest464:OnSubStart46409(quest)
    print("46409 Start:NPC Hide")
    self:NotifyTo("Npc1447", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1441", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1433", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1569", DailyNpcManager.NpcEventType.HIDESELF, true)
end

function Quest464:OnSubFinish46409(quest)
    print("46409 Finish: Hide NPC & Questarea Des")
    self:ActionSafeCall(self.Finish46409Do)
    local hoffmanData = self.clientData.HoffmanData
    local hoffman = self:GetQuestNpcActor(self.clientData.HoffmanData.Hoffman)
    if hoffman ~= nil then
        hoffman:Destroy(false)
    end
end
function Quest464:Finish46409Do(quest)
    local hoffmanData = self.clientData.HoffmanData
    local task = self:CreateQuestNpcCreateTask({hoffmanData.Hoffman})
    self:ShowBlackScreen(0.5, 1.0, 0.5, self.OnBright1, nil, task)
end
function Quest464:OnBright1(quest)
    self:NarratorOnlyTask(self.clientData.NarratorData.Story2)
	local paimon = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
    if paimon ~= nil then
        paimon:DestroyWithDisappear(false)
    end
	globalActor:UnSpawn("Q464Trigger1")
	local Q464Trigger1 = actorMgr:GetActor("Q464Trigger1")
	Q464Trigger1:DestroySelf()
end

function Quest464:InvokeOnInteraction(param)
    print("464 Invoke : ")
    if param == 1 then
        print("Invoke 1")
        -- local q464Cfg = require('Quest/Client/Q464ClientConfig')
        -- local quest = actorMgr:GetActor(q464Cfg.ActorAlias)
        -- local diluc = quest:GetQuestNpcActor(self.clientData.DilucData.Diluc)
        -- if diluc ~= nil then
        --     diluc:ClearFollowTask()
        --     diluc:WalkToTask(dilucData.Pos2)
        -- end
        -- self:CallDelay(4,self.DilucVanish)
    elseif param == 2 then
        print("Invoke 2")
    elseif param == 3 then
        print("Invoke 3")
        --self:CreatPaimon()
    elseif param == 4 then
        print("Invoke 4")
        -- local q464Cfg = require('Quest/Client/Q464ClientConfig')
        -- local quest = actorMgr:GetActor(q464Cfg.ActorAlias)
        -- local hoffman = quest:GetQuestNpcActor(self.clientData.HoffmanData.Hoffman)
        -- if hoffman ~= nil then
        --     hoffman:ClearFollowTask()
        --     hoffman:WalkToTask(hoffmanData.Pos2)
        -- end
    elseif param == 5 then
        print("Invoke 5")
        --local q464Cfg = require('Quest/Client/Q464ClientConfig')
        --local quest = actorMgr:GetActor(q464Cfg.ActorAlias)
        self:CreateQuestNpcById(46407, qq1Data.QQ1, 2)
        --actorMgr:CreateActorWithPos(qq1Data.QQ1, qq1Data.QQ1Script, qq1Data.QQ1ID, 0, qq1Data.QQ1Pos1, qq1Data.QQ1Dir1, true)
        local qq1 = self:GetQuestNpcActor(self.clientData.QQ1Data.QQ1)
        if qq1 ~= nil then
            qq1:ClearFollowTask()
            qq1:RunToTask(qq1Data.QQ1Pos2)
        end
        self:CreateQuestNpcById(46407, qq2Data.QQ2, 3)
        --actorMgr:CreateActorWithPos(qq2Data.QQ2, qq2Data.QQ2Script, qq2Data.QQ2ID, 0, qq2Data.QQ2Pos1, qq2Data.QQ2Dir1, true)
        local qq2 = self:GetQuestNpcActor(self.clientData.QQ2Data.QQ2)
        if qq2 ~= nil then
            qq2:ClearFollowTask()
            qq2:RunToTask(qq2Data.QQ2Pos2)
        end
        self:CreateQuestNpcById(46407, qq3Data.QQ3, 4)
        --actorMgr:CreateActorWithPos(qq3Data.QQ3, qq3Data.QQ3Script, qq3Data.QQ3ID, 0, qq3Data.QQ3Pos1, qq3Data.QQ3Dir1, true)
        local qq3 = self:GetQuestNpcActor(self.clientData.QQ3Data.QQ3)
        if qq3 ~= nil then
            qq3:ClearFollowTask()
            qq3:RunToTask(qq3Data.QQ3Pos2)
        end
    elseif param == 6 then
        print("Invoke 6")
        local q464Cfg = require('Quest/Client/Q464ClientConfig')
        local quest = actorMgr:GetActor(q464Cfg.ActorAlias)
        local qq1Data = self.clientData.QQ1Data
        local qq1 = quest:GetQuestNpcActor(self.clientData.QQ1Data.QQ1)
        if qq1 ~= nil then
            qq1:Destroy(false)
        end
        local qq2Data = self.clientData.QQ2Data
        local qq2 = quest:GetQuestNpcActor(self.clientData.QQ2Data.QQ2)
        if qq2 ~= nil then
            qq2:Destroy(false)
        end
        local qq3Data = self.clientData.QQ1Data
        local qq3 = quest:GetQuestNpcActor(self.clientData.QQ3Data.QQ3)
        if qq3 ~= nil then
            qq3:Destroy(false)
        end
        --actorMgr:CreateActorWithPos(qq1Data.QQ1, qq1Data.QQ1Script, qq1Data.QQ1ID, 0, qq1Data.hiddenPos, qq1Data.hiddenDir, true)
        --actorMgr:CreateActorWithPos(qq2Data.QQ2, qq2Data.QQ2Script, qq2Data.QQ2ID, 0, qq2Data.hiddenPos, qq2Data.hiddenDir, true)
        --actorMgr:CreateActorWithPos(qq3Data.QQ3, qq3Data.QQ3Script, qq3Data.QQ3ID, 0, qq3Data.hiddenPos, qq3Data.hiddenDir, true)
    end    
end
function Quest464:DilucVanish()
    local q464Cfg = require('Quest/Client/Q464ClientConfig')
    local quest = actorMgr:GetActor(q464Cfg.ActorAlias)
    local diluc = quest:GetQuestNpcActor(self.clientData.DilucData.Diluc)
    if diluc ~= nil then
        diluc:SetVisible(false)
    end
end
function Quest464:CreatPaimon()
    -- local PaimonData = self.clientData.PaimonData
    -- local paimonPos = actorUtils.GetAvatarPos()
    -- paimonPos.z = paimonPos.z-0.5
    -- paimonPos.x = paimonPos.x+0.5
    -- local paimonRot = actorUtils.GetAvatarForward()
    -- actorMgr:CreateActorWithPos(PaimonData.Paimon, PaimonData.PaimonScript, PaimonData.PaimonID, 0, paimonPos, M.Dir2Euler(paimonRot), true)    
end
--@endregion

function Quest464:Start()
end

function Quest464:OnDestroy()
end

return Quest464