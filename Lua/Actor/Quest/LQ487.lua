require("Actor/ActorCommon")
local questActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest487 = class("Quest487", questActorProxy)

Quest487.defaultAlias = "Quest487"

local q487Cfg = require("Quest/Client/Q487ClientConfig")
local PaimonData = q487Cfg.PaimonData
local CatData = q487Cfg.CatData
local CatNpcData = q487Cfg.CatNpcData
local WindyData = q487Cfg.WindyData

Quest487.index = 0

-- Generated
function Quest487:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["48701"] = self.OnSubStart48701
    self.subStartHandlers["48702"] = self.OnSubStart48702
    self.subStartHandlers["48703"] = self.OnSubStart48703
    self.subStartHandlers["48704"] = self.OnSubStart48704
    self.subStartHandlers["48705"] = self.OnSubStart48705
    self.subStartHandlers["48706"] = self.OnSubStart48706
    self.subStartHandlers["48707"] = self.OnSubStart48707
    self.subStartHandlers["48708"] = self.OnSubStart48708
    self.subStartHandlers["48709"] = self.OnSubStart48709
    self.subStartHandlers["48710"] = self.OnSubStart48710
    self.subStartHandlers["48711"] = self.OnSubStart48711
    self.subStartHandlers["48712"] = self.OnSubStart48712
end

function Quest487:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["48701"] = self.OnSubFinish48701
    self.subFinishHandlers["48702"] = self.OnSubFinish48702
    self.subFinishHandlers["48703"] = self.OnSubFinish48703
    self.subFinishHandlers["48704"] = self.OnSubFinish48704
    self.subFinishHandlers["48705"] = self.OnSubFinish48705
    self.subFinishHandlers["48706"] = self.OnSubFinish48706
    self.subFinishHandlers["48707"] = self.OnSubFinish48707
    self.subFinishHandlers["48708"] = self.OnSubFinish48708
    self.subFinishHandlers["48709"] = self.OnSubFinish48709
    self.subFinishHandlers["48710"] = self.OnSubFinish48710
    self.subFinishHandlers["48711"] = self.OnSubFinish48711
    self.subFinishHandlers["48712"] = self.OnSubFinish48712
end

---sub start & finish 内调用的函数
function Quest487:PaimonVanish()
    print("paimon vanish")
    --local paimon = actorMgr:GetActor(PaimonData.Alias)
    local paimon = self:GetQuestNpcActor(PaimonData.Alias)
    paimon:AirModeOff()
    --paimon:VanishKeep()
    if paimon ~= nil then
        paimon:DestroyWithDisappear(false)
    end
end

--@region sub start & finish handlers
---按流程触发顺序

function Quest487:CatRun()
    --local Cat = actorMgr:GetActor(CatData.Alias)
    --Cat:PerformDither(false, 1,self.ChangePlace)
    --self:CallDelay(3,self.ChangePlace)
    self:CallDelay(2, self.FinishQuest)
end

function Quest487:FinishQuest()
    local quest = actorMgr:GetActor(q487Cfg.ActorAlias)
    if quest ~= nil then
        quest:FinishQuestID(false, 48705)
        quest:FinishQuestID(false, 48707)
        quest:FinishQuestID(false, 48708)
        quest:FinishQuestID(false, 48709)
    end
end

function Quest487:ChangePlace()
    --local Cat = actorMgr:GetActor(CatData.Alias)
    --Cat:Destroy(false)
    local pointID = math.random(1, #CatData.RandomPos)
    while (pointID == self.nowPoint) do
        local pointID = math.random(1, CatData.RandomPos.Count)
    end
    self.nowPoint = pointID
    local point = CatData.RandomPos[pointID]
    local pos = point.pos
    local dir = point.dir
    actorMgr:CreateActorWithPos(CatData.Alias, CatData.Script, CatData.ID, 0, pos, dir, true, true, 3)
    self:NarratorOnlyTask(q487Cfg.NarratorData.Story1)
end

function Quest487:GetCat(quest)
    print("get cat")
    local Cat = actorMgr:GetActor(CatData.Alias)
    Cat:Destroy(false)
end

function Quest487:InvokeOnInteraction(param)
    print("461 Invoke : ")
    if param == 0 then
        print("Invoke 0")
        self:GetCat()
    elseif param == 1 then
        --self:CallDelay(1,self.NPCTask)
        print("Invoke 1")
    elseif param == 2 then
        print("Invoke 1")
    end
end


function Quest487:CloseCompass()
    print("delete compass")
    globalActor:UnSpawn("Q487Compass")
    --Quest487.OpenCompass()
    Quest487:CallOnElemViewOpen(Quest487.OpenCompass)
end

function Quest487:OnSubStart48701(quest)
    --actorMgr:CreateActorWithPos(CatNpcData.Alias, CatNpcData.Script, CatNpcData.ID, 0, CatNpcData.NPCPos1, CatNpcData.NPCDir1, true, false, 3)
    --actorMgr:CreateActorWithPos(WindyData.Alias, WindyData.Script, WindyData.ID, 0, WindyData.bornPos, WindyData.bornDir, true, true, 3)
    self:CreateQuestNpc(quest, CatNpcData.ID)
    self:CreateQuestNpc(quest, WindyData.ID)
    self:NotifyTo("Npc1431", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest487:OnSubFinish48701(quest)
    print("48701 Finish : Story")
    self:PaimonVanish()
    
    globalActor:StartGuide("RandomTaskElementViewGuideIOS")
    self:CallDelay(
        1,
        function()
            local quest = actorMgr:GetActor(q487Cfg.ActorAlias)
            if quest ~= nil then
                quest:FinishQuestID(false, 48711)
            end
        end
    )
end

function Quest487:OnSubStart48711(quest)
    self:NotifyTo("Npc1431", NpcUtil.NpcEventType.HIDESELF, true)
    --actorMgr:CreateActorWithPos(CatNpcData.Alias, CatNpcData.Script, CatNpcData.ID, 0, CatNpcData.NPCPos1, CatNpcData.NPCDir1, true, false, 3)
    --actorMgr:CreateActorWithPos(WindyData.Alias, WindyData.Script, WindyData.ID, 0, WindyData.bornPos, WindyData.bornDir, true, true, 3)
    self:CreateQuestNpc(quest, CatNpcData.ID)
    self:CreateQuestNpc(quest, WindyData.ID)
    self:ExitFindCatMode()
    self:TriggerLevelAbility("Level_Remove_Switch_FindCatBtn")
end

function Quest487:OnSubStart48702(quest)
    self:NotifyTo("Npc1431", NpcUtil.NpcEventType.HIDESELF, true)
    --self:ShowBlackScreen(0.5, 1, 0.5)
    self:EnterFindCatMode()
    self:TriggerLevelAbility("Level_Apply_Switch_FindCatBtn")
    actorMgr:CreateActorWithPos("Q487Trigger", "Actor/Gadget/Q487Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q487Trigger").pos, sceneData:GetDummyPoint(3, "Q487Trigger").rot, true, false)
    actorMgr:CreateActorWithPos("Q487Trigger1", "Actor/Gadget/Q487Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q487Trigger").pos, sceneData:GetDummyPoint(3, "Q487Trigger").rot, true, false)
    --actorMgr:CreateActorWithPos(CatData.Alias, CatData.Script, CatData.ID, 0, CatData.Pos, CatData.Dir, true, true, 3)
    --self:CallOnElemViewOpen(self.OpenCompass)
end

function Quest487:OnSubStart48703(quest)
    self:NotifyTo("Npc1431", NpcUtil.NpcEventType.HIDESELF, true)
    --actorMgr:CreateActorWithPos(CatNpcData.Alias, CatNpcData.Script, CatNpcData.ID, 0, CatNpcData.NPCPos1, CatNpcData.NPCDir1, true, false, 3)
    self:CreateQuestNpc(quest, CatNpcData.ID)
    self:ExitFindCatMode()
    self:TriggerLevelAbility("Level_Remove_Switch_FindCatBtn")
end


function Quest487:OnSubStart48710(quest)
    self:NotifyTo("Npc1431", NpcUtil.NpcEventType.HIDESELF, true)    
    --actorMgr:CreateActorWithPos(CatNpcData.Alias, CatNpcData.Script, CatNpcData.ID, 0, CatNpcData.NPCPos1, CatNpcData.NPCDir1, true, false, 3)
    self:CreateQuestNpc(quest, CatNpcData.ID)
    self:ExitFindCatMode()
    self:TriggerLevelAbility("Level_Remove_Switch_FindCatBtn")
end

function Quest487:OnSubFinish48710(quest)    
    self:PaimonVanish()
    --local npc = actorMgr:GetActor(CatNpcData.Alias)
    local npc = self:GetQuestNpcActor(CatNpcData.Alias)
    if npc ~= nil then
        --npc:Destroy(false)
        npc:PerformDither(
            false,
            1,
            function()
                npc:Destroy(false)
            end
        )
    end
    --local windy = actorMgr:GetActor(WindyData.Alias)
    local windy = self:GetQuestNpcActor(WindyData.Alias)
    windy:EnableInteraction(false)
    windy:WalkToTask(
        WindyData.bornPos1,
        function(actor, task)
            actor:ClearFollowTask()
            actor:EnableInteraction(true)
            actor:PerformDither(false, 1, actor.HideSelf)
        end
    )
end

function Quest487:ExitCat(quest)
    Quest487:ExitFindCatMode()
    Quest487:TriggerLevelAbility("Level_Remove_Switch_FindCatBtn")
    local trigger = actorMgr:GetActor("Q487Trigger")
    local trigger1 = actorMgr:GetActor("Q487Trigger1")
    trigger:Destroy()
    trigger1:Destroy()
end

function Quest487:OnSubFinish48702(quest)
    print("48702 Finish : Creat Paimon")
    -- self:CallDelay(
    --     1,
    --     -- function()
    --     --     self:ShowBlackScreen(0.5, 0.5, 0.5, self.ExitCat)
    --     -- end
    --     self.ExitCat()
    -- )

    self:ExitFindCatMode()
    self:TriggerLevelAbility("Level_Remove_Switch_FindCatBtn")
    local trigger = actorMgr:GetActor("Q487Trigger")
    local trigger1 = actorMgr:GetActor("Q487Trigger1")
    trigger:Destroy()
    trigger1:Destroy()
end

function Quest487:OnSubFinish48703(quest)
    print("48703 Finish : Paimon Vanish")
    self:NotifyTo("Npc1431", NpcUtil.NpcEventType.STARTDAILY, true)
    self:PaimonVanish()
    --local npc = actorMgr:GetActor(CatNpcData.Alias)
    local npc = self:GetQuestNpcActor(CatNpcData.Alias)
    if npc ~= nil then
        --npc:Destroy(false)
        npc:PerformDither(
            false,
            1,
            function()
                npc:Destroy(false)
            end
        )
    end
    --local windy = actorMgr:GetActor(WindyData.Alias)
    local windy = self:GetQuestNpcActor(WindyData.Alias)
    windy:EnableInteraction(false)
    windy:WalkToTask(
        WindyData.bornPos1,
        function(actor, task)
            actor:ClearFollowTask()
            actor:EnableInteraction(true)
            actor:PerformDither(false, 1, actor.HideSelf)
        end
    )
end

function Quest487:OnSubStart48704(quest)
end

function Quest487:OnSubFinish48704(quest)
    self:SceneLookCamera()
    self:NarratorOnlyTask(q487Cfg.NarratorData.Story3)
    self:CallDelay(4, self.PlayerInputOn)
end

function Quest487:PlayerInputOn()
    print("PaimonNarrator Start : ")
    self:EnablePlayerInput(true)
end

function Quest487:SceneLookCamera()
    print("PaimonNarrator Start : ")
    self:EnablePlayerInput(false)
    self:EnterSceneLookCamera(CatData.Pos, 0, 3, true, true)
    --self:NarratorOnlyTask(q462Cfg.NarratorData.Story4)
    --self:EnablePlayerInput(true)
end

function Quest487:OnSubFinish48705(quest)
    --actorMgr:CreateActorWithPos(CatData.Alias, CatData.Script, CatData.ID, 0, CatData.CatPos1, CatData.CatDir1, true, true, 3)
    self:CreateQuestNpc(quest, CatNpcData.ID)
    self:CallDelay(
        3,
        function(self)
            self:ShowBlackScreen(0.5, 0.5, 0.5, self.StartTalk48705)
        end
    )
end

function Quest487:StartTalk48705()
    --actorMgr:CreateActorWithPos(PaimonData.Alias, PaimonData.Script, PaimonData.ID, 0, PaimonData.Pos, PaimonData.Dir, true, false, 3)
    self:CreateQuestNpcById(48705, PaimonData.ID)
    self:CallDelay(
        0.2,
        function(self)
            self:RequestInteraction(PaimonData.Alias)
        end
    )
end

function Quest487:OnSubStart48706(quest)
    self:CallDelay(
        3,
        function(self)
            self:ShowBlackScreen(0.5, 0.5, 0.5, self.StartTalk48705)
        end
    )
end

function Quest487:OnSubFinish48706(quest)
    self:PaimonVanish()
end

function Quest487:OnSubFinish48707(quest)
    --actorMgr:CreateActorWithPos(CatData.Alias, CatData.Script, CatData.ID, 0, CatData.CatPos2, CatData.CatDir2, true, true, 3)
    self:NarratorOnlyTask(q487Cfg.NarratorData.Story1)
end

function Quest487:OnSubFinish48708(quest)
    --actorMgr:CreateActorWithPos(CatData.Alias, CatData.Script, CatData.ID, 0, CatData.CatPos3, CatData.CatDir3, true, true, 3)
    self:NarratorOnlyTask(q487Cfg.NarratorData.Story1)
end

function Quest487:OnSubFinish48712(quest)
    self:PaimonVanish()
    local quest = actorMgr:GetActor(q487Cfg.ActorAlias)
    if quest ~= nil then
        quest:FinishQuestID(false, 48702)
    end
end


function Quest487:OnSubStart48712(quest)
    self:CallDelay(
        2,
        function(self)
            self:ShowBlackScreen(0.5, 0.5, 0.5, self.StartTalk48705)
        end
    )
end

function Quest487:StartTalk48709()
    --actorMgr:CreateActorWithPos(PaimonData.Alias, PaimonData.Script, PaimonData.ID, 0, PaimonData.Pos, PaimonData.Dir, true, false, 3)
    --actorMgr:CreateQuestNpc(48705, PaimonData.ID)
    self:CreateQuestNpcById(48705, PaimonData.ID)
    self:CallDelay(
        1,
        function(self)
            self:RequestInteraction(PaimonData.Alias)
        end
    )
end

function Quest487:OnSubFinish48709(quest)
    -- self:CallDelay(
    --     2,
    --     function(self)
    --         self:ShowBlackScreen(0.5, 0.5, 0.5, self.StartTalk48709)
    --     end
    -- )
    -- local quest = actorMgr:GetActor(q487Cfg.ActorAlias)
    -- if quest ~= nil then
    --     quest:FinishQuestID(false, 48702)
    -- end

    --actorMgr:CreateActorWithPos(CatData.Alias, CatData.Script, CatData.ID, 0, CatData.CatPos4, CatData.CatDir4, true, true, 3)
    -- self:NarratorOnlyTask(q487Cfg.NarratorData.Story1)
    -- self:ShowBlackScreen(0.5, 0.5, 0.5)
    -- self:ExitFindCatMode()
    -- self:TriggerLevelAbility("Level_Remove_Switch_FindCatBtn")
    -- local trigger = actorMgr:GetActor("Q487Trigger")
    -- local trigger1 = actorMgr:GetActor("Q487Trigger1")
    -- trigger:Destroy()
    -- trigger1:Destroy()
end

--@endregion

function Quest487:Start()
end

function Quest487:OnDestroy()
end

return Quest487
