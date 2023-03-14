require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest10101 = class("Quest10101", questActorProxy)

Quest10101.defaultAlias = "Quest10101"

local q10101Cfg
local routeData
local TargetPos = nil
local lisaData
local playerData
local paimonData
local abyssData
local routeBookData
local lisaHitEffect
local lisaSkillEffect
local dungeonSealEffect
local dungeonSealBreak
local bookData
local compassQuestId = 0

function Quest10101:OnDataLoaded()
    q10101Cfg = self.clientData
    routeData = q10101Cfg.RouteData
    lisaData = q10101Cfg.LisaData
    playerData = q10101Cfg.PlayerData
    paimonData = q10101Cfg.PaimonData
    abyssData = q10101Cfg.AbyssData
    routeBookData = q10101Cfg.RouteBookData
    lisaHitEffect = q10101Cfg.LisaHitEffect
    lisaSkillEffect = q10101Cfg.LisaSkillEffect
    dungeonSealEffect = q10101Cfg.DungeonSealEffect
    dungeonSealBreak = q10101Cfg.DungeonSealBreak
    bookData = q10101Cfg.BookData
end


-- Generated
function Quest10101:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["1010101"] = self.OnSubStart1010101
    self.subStartHandlers["1010102"] = self.OnSubStart1010102
    self.subStartHandlers["1010103"] = self.OnSubStart1010103
    self.subStartHandlers["1010104"] = self.OnSubStart1010104
    self.subStartHandlers["1010105"] = self.OnSubStart1010105
    self.subStartHandlers["1010106"] = self.OnSubStart1010106
    self.subStartHandlers["1010107"] = self.OnSubStart1010107
    self.subStartHandlers["1010108"] = self.OnSubStart1010108
    self.subStartHandlers["1010109"] = self.OnSubStart1010109
    self.subStartHandlers["1010110"] = self.OnSubStart1010110
    self.subStartHandlers["1010111"] = self.OnSubStart1010111
    self.subStartHandlers["1010112"] = self.OnSubStart1010112
    self.subStartHandlers["1010113"] = self.OnSubStart1010113
    self.subStartHandlers["1010114"] = self.OnSubStart1010114
    self.subStartHandlers["1010117"] = self.OnSubStart1010117
    self.subStartHandlers["1010118"] = self.OnSubStart1010118
    self.subStartHandlers["1010119"] = self.OnSubStart1010119
    self.subStartHandlers["1010120"] = self.OnSubStart1010120
end

function Quest10101:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["1010101"] = self.OnSubFinish1010101
    self.subFinishHandlers["1010102"] = self.OnSubFinish1010102
    self.subFinishHandlers["1010103"] = self.OnSubFinish1010103
    self.subFinishHandlers["1010104"] = self.OnSubFinish1010104
    self.subFinishHandlers["1010105"] = self.OnSubFinish1010105
    self.subFinishHandlers["1010106"] = self.OnSubFinish1010106
    self.subFinishHandlers["1010107"] = self.OnSubFinish1010107
    self.subFinishHandlers["1010108"] = self.OnSubFinish1010108
    self.subFinishHandlers["1010109"] = self.OnSubFinish1010109
    self.subFinishHandlers["1010110"] = self.OnSubFinish1010110
    self.subFinishHandlers["1010111"] = self.OnSubFinish1010111
    self.subFinishHandlers["1010112"] = self.OnSubFinish1010112
    self.subFinishHandlers["1010113"] = self.OnSubFinish1010113
    self.subFinishHandlers["1010114"] = self.OnSubFinish1010114
    self.subFinishHandlers["1010117"] = self.OnSubFinish1010117
    self.subFinishHandlers["1010118"] = self.OnSubFinish1010118
    self.subFinishHandlers["1010119"] = self.OnSubFinish1010119
    self.subFinishHandlers["1010120"] = self.OnSubFinish1010120
end


--@region local param
-- local param begin
function Quest10101:OpenCompass()
    Quest10101:CallOnElemViewOpen(
        function()
            if TargetPos ~= nil then
                local PlayerPos = actorUtils.GetAvatarPos()
                local CompassVector = {
                    x = TargetPos.x - PlayerPos.x,
                    y = 0,
                    z = TargetPos.z - PlayerPos.z,
                }
                
                local playerVector = actorUtils.GetAvatarForward()
                local distance = 2
                local CompassPos = actorUtils.GetAvatarPos()
                CompassPos.x = CompassPos.x + playerVector.x * distance
                CompassPos.y = CompassPos.y + 0.4
                CompassPos.z = CompassPos.z + playerVector.z * distance
                --globalActor:SpawnGadget(70700006, CompassPos, M.Dir2Euler(CompassVector), "Q10101Compass")
                local quest = actorMgr:GetActor(q10101Cfg.ActorAlias)
                quest:SpawnGadgetByIdWithPos(1010102, 70700006, 1, CompassPos, M.Dir2Euler(CompassVector))
                
                Quest10101:CloseCompass()
            end
        end
    )
end

function Quest10101:CloseCompass()
    print("CloseCompass")
    Quest10101:CallOnElemViewClose(
        function()
            print("delete compass")
            globalActor:UnSpawn("Q10101Compass")
            Quest10101:OpenCompass()
        end
    )
end

function Quest10101:DestroyNPC()
    print("DestroyNPC")
    self:ActionSafeCall(
        function (self)
        local lisa = self:GetQuestNpcActor(lisaData.Lisa)
        local paimon = self:GetQuestNpcActor(paimonData.Paimon)
            if lisa ~= nil then
                lisa:Destroy(false)
            end

            if paimon ~= nil then
                paimon:DestroyWithDisappear(false)
            end
        end
    )
end
-- local param end
--@endregion

-- local method begin
--@region sub start handlers
function Quest10101:OnSubStart1010101(quest)
    print("1010101 start:Creat Lisa")
end

function Quest10101:OnSubStart1010102(quest)
    print("1010102 start:Set TargetPos")
    TargetPos = routeData.Route1
    compassQuestId = 1010102
    self:OpenCompass()
end

function Quest10101:OnSubStart1010103(quest)
    print("1010103 start:Set TargetPos")
    TargetPos = routeData.Route2
    compassQuestId = 1010103
    self:OpenCompass()
end

function Quest10101:OnSubStart1010104(quest)
    print("1010104 start:Set TargetPos")
    TargetPos = routeData.Route3
    compassQuestId = 1010104
    self:OpenCompass()
end

function Quest10101:OnSubStart1010105(quest)
    print("1010105 start:Set TargetPos")
    TargetPos = routeData.Route4
    compassQuestId = 1010105
    self:OpenCompass()
end

function Quest10101:OnSubStart1010106(quest)
    print("1010106 start:Set TargetPos")
    TargetPos = routeData.Route5
    compassQuestId = 1010106
    self:OpenCompass()
end

function Quest10101:OnSubStart1010107(quest)
    print("1010107 start:CloseCompass")
    self:UnCallFunc(self.OpenCompass)
end

function Quest10101:OnSubStart1010108(quest)
    print("Talk to lisa")
    local task = self.CreateQuestNpcCreateTask({lisaData.Lisa, paimonData.Paimon})

    self:TransmitPlayer(20010, playerData.DungBornPos2, playerData.DungBornDir2, nil,
    function(self)
        self:ShowBlackScreen(0.5, 1, 0.5)
        self:CreateQuestNpc(quest, lisaData.LisaID)
        self:CreateQuestNpc(quest, paimonData.PaimonID)
    end, task
    )
end

function Quest10101:OnSubStart1010110(quest)
    print("1010119 start:Spawn Book")
    --globalActor:SpawnGadget(bookData.BookID, bookData.BookPos, bookData.BookDir, bookData.Alias, 1004, nil, nil, 100401)
    --self:SpawnGadget(quest, bookData.BookID, 1)
end

function Quest10101:OnSubStart1010111(quest)
    print("1010111 start:Set Narrator")
    self:CallDelay(2,
        function (self)
            self:NarratorOnlyTask(self.clientData.NarratorData.Story4)
        end
    )
end

function Quest10101:OnSubStart1010112(quest)
    print("Talk to lisa")
    local task = self.CreateQuestNpcCreateTask({lisaData.Lisa, paimonData.Paimon, abyssData.Abyss})
    self:CallDelay(2,
        function()
            self:TransmitPlayer(20010, playerData.DungBornPos, playerData.DungBornDir, nil,
            function()
                self:CreateQuestNpc(quest, lisaData.LisaID)
                self:CreateQuestNpc(quest, paimonData.PaimonID)
                self:CreateQuestNpc(quest, abyssData.AbyssID) 

                self:RequestInteraction(lisaData.Lisa)
            end, task
            )
        end
    )
end

function Quest10101:OnSubStart1010113(quest)
    print("1010111 start:Set Narrator")
    self:CallDelay(2,
        function (self)
            self:NarratorOnlyTask(self.clientData.NarratorData.Story5)
        end
    )
end

function Quest10101:OnSubStart1010117(quest)
    print("1010117 start:Spawn Gadget")
    TargetPos = routeBookData.BookCluePos1
    --globalActor:SpawnGadget(routeBookData.BookID, routeBookData.BookCluePos1, routeBookData.BookClueDir1, routeBookData.Alias)
    self:SpawnGadget(quest, routeBookData.BookID, 1)
end

function Quest10101:OnSubStart1010118(quest)
    print("1010118 start:Spawn Gadget")
    TargetPos = routeBookData.BookCluePos3
    --globalActor:SpawnGadget(routeBookData.BookID, routeBookData.BookCluePos3, routeBookData.BookClueDir3, routeBookData.Alias)
    self:SpawnGadget(quest, routeBookData.BookID, 1)
end

function Quest10101:OnSubStart1010119(quest)
    print("1010119 start:Spawn Gadget")
    TargetPos = routeBookData.BookCluePos4
    --globalActor:SpawnGadget(routeBookData.BookID, routeBookData.BookCluePos4, routeBookData.BookClueDir4, routeBookData.Alias)
    self:SpawnGadget(quest, routeBookData.BookID, 1)
end
--@endregion

--@region sub finish handlers
function Quest10101:OnSubFinish1010102(quest)
    print("1010102 finish:Lisa Narrator")
    -- self:NarratorOnlyTask(self.clientData.NarratorData.Story1)
end

function Quest10101:OnSubFinish1010105(quest)
    print("1010105 finish:Look Dungeon")
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3,"Q10101Target").pos, 0, 2, true) 
    --globalActor:SpawnGadget(dungeonSealEffect.EffectID, dungeonSealEffect.EffectPos1, dungeonSealEffect.EffectDir1, dungeonSealEffect.Alias)
    self:SpawnGadget(quest, dungeonSealEffect.EffectID, 2)

    local quest = actorMgr:GetActor(q10101Cfg.ActorAlias)
    if quest ~= nil then
        quest:FinishQuestID(false, 1010121)
    end
end

function Quest10101:OnSubFinish1010117(quest)
    print("1010102 finish:Lisa Narrator")
    self:NarratorOnlyTask(self.clientData.NarratorData.Story1)
end

function Quest10101:OnSubFinish1010118(quest)
    print("1010102 finish:Lisa Narrator")
    self:NarratorOnlyTask(self.clientData.NarratorData.Story2)
end

function Quest10101:OnSubFinish1010106(quest)
    print("1010101 finish:Lisa Talk")
    self:ShowBlackScreen(0.5, 1, 0.5,
    function(self)
        print("try to creat Lisa")
        --actorMgr:CreateActorWithPos(lisaData.Lisa, lisaData.LisaScript, lisaData.LisaID, 0, lisaData.BornPos, lisaData.BornDir, true)
        self:CreateQuestNpc(quest, lisaData.LisaID)
        local lisa = self:GetQuestNpcActor(lisaData.Lisa)
        self:RequestInteraction(lisaData.Lisa)
    end
    )

    TargetPos = nil
    local mainQuest = actorMgr:GetActor(q10101Cfg.ActorAlias)
    if mainQuest ~= nil then
        mainQuest:FinishQuestID(false, 1010101)
    end

    self:CallDelay(0.5,
    function (self)
        self:SpawnGadgetById(1010114, dungeonSealBreak.EffectID, 5)
    end
    )
end

function Quest10101:OnSubFinish1010107(quest)
    print("1010107 start:")
    self:UnSpawn("Q10101DungeonOpenEffect")
end

function Quest10101:OnSubFinish1010109(quest)
    print("1010109 finish:Lisa Talk")
    local task = self.CreateQuestNpcCreateTask({lisaData.Lisa})

    self:TransmitPlayer(1004, playerData.BornPos, playerData.BornDir,
    function(self)
        self:RequestInteraction(lisaData.Lisa)
    end,
    function(self)
        --actorMgr:CreateActorWithPos(lisaData.Lisa, lisaData.LisaScript, lisaData.LisaID, 0, lisaData.BornPos2, lisaData.BornDir2, true, false,1004,true,100401)
        self:CreateQuestNpc(quest, lisaData.LisaID)
    end, task
    )
end

function Quest10101:OnSubFinish1010112(quest)
    self:ActionSafeCall(
        function (self)
            local lisa = self:GetQuestNpcActor(lisaData.Lisa)
            local paimon = self:GetQuestNpcActor(paimonData.Paimon)
            local abyss = self:GetQuestNpcActor(abyssData.Abyss)
            if lisa ~= nil then
                lisa:Destroy(false)
            end

            if paimon ~= nil then
                paimon:DestroyWithDisappear(false)
            end

            if abyss ~= nil then
                abyss:Destroy(false)
            end
        end
    )
end

function Quest10101:OnSubFinish1010108(quest)
    print("Talk to lisa")
    self:DestroyNPC()
end

function Quest10101:OnSubFinish1010110(quest)
    print("Talk to lisa")
    self:DestroyNPC()
end

function Quest10101:OnSubFinish1010114(quest)
    self:DestroyNPC()
end

function Quest10101:OnSubFinish1010119(quest)
    print("1010119 finish:Creat Lisa")
    local task = self.CreateQuestNpcCreateTask({lisaData.Lisa})

    self:TransmitPlayer(3, playerData.BornPos2, playerData.BornDir2, nil,
    function(self)
        self:CreateQuestNpc(quest, lisaData.LisaID)
    end, task
    )
end

function Quest10101:OnSubFinish1010120(quest)
    print("1010120 finish:DestroyNPC")
    self:ActionSafeCall(
        function (self)
        local lisa = self:GetQuestNpcActor(lisaData.Lisa)
        local paimon = self:GetQuestNpcActor(paimonData.Paimon)
            if lisa ~= nil then
                lisa:Destroy(false)
            end

            if paimon ~= nil then
                paimon:DestroyWithDisappear(false)
            end
        end
    )
end

function Quest10101:InvokeOnInteraction(param)
    if param == 2 then
        print("Lisa Open Dungeon")
        self:CallDelay(1,
            function (self)
                self:SpawnGadgetById(1010114, lisaHitEffect.EffectID, 1)
                --self:TryAddShake({x = 0.2, y = -1, z = 0}, 1, 1, 10)
            end
        )
        self:CallDelay(1.25,
        function (self)
            self:SpawnGadgetById(1010114, lisaHitEffect.EffectID, 2)
            self:TryAddShake({x = -0.5, y = -1, z = 0}, 1, 2, 10)
        end
        )
        self:CallDelay(1.5,
        function (self)
            self:SpawnGadgetById(1010114, lisaHitEffect.EffectID, 3)
            self:TryAddShake({x = 0.5, y = -1, z = 0}, 1, 2, 10)
        end
        )
        self:CallDelay(2.8,
        function (self)
            self:SpawnGadgetById(1010114, lisaHitEffect.EffectID, 1)
            self:TryAddShake({x = 0, y = -2, z = 0}, 1.8, 4, 10)
        end
        )
        self:CallDelay(3,
        function (self)
            self:UnSpawn(dungeonSealEffect.Alias)
            self:SpawnGadgetById(1010114, dungeonSealBreak.EffectID, 4)
        end
        )
        self:CallDelay(4.2,
        function (self)
            self:UnSpawn(dungeonSealBreak.Alias)
        end
        )

        -- self:CallDelay(3.5,
        --     function (self)
        --         local quest = actorMgr:GetActor(q10101Cfg.ActorAlias)
        --         if quest ~= nil then
        --             quest:FinishQuestID(false, 1010121)
        --         end
        --     end
        -- )
    end

    if param == 3 then
        --self:SpawnGadget(lisaSkillEffect.EffectID, lisaSkillEffect.EffectPos1, lisaSkillEffect.EffectDir1, lisaSkillEffect.Alias, 20010)
        self:SpawnGadgetById(1010112, lisaSkillEffect.EffectID, 1)
    end

    if param == 4 then
        globalActor:UnSpawn(lisaSkillEffect.Alias)
        self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "QUEST_Message_Q1010112")
    end
end
--@endregion

function Quest10101:Start()
end

function Quest10101:OnDestroy()
end

return Quest10101