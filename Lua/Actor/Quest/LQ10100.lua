require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest10100 = class("Quest10100", questActorProxy)

Quest10100.defaultAlias = "Quest10100"

local q10100Cfg
local subIDs
local lisaData
local paimonData
local playerData
local book1Data
local book2Data
local book3Data
local book4Data

function Quest10100:OnDataLoaded()
	q10100Cfg = self.clientData
    subIDs = q10100Cfg.SubIDs
    lisaData = q10100Cfg.LisaData
    paimonData = q10100Cfg.PaimonData
    playerData = q10100Cfg.PlayerData
    book1Data = q10100Cfg.Book1Data
    book2Data = q10100Cfg.Book2Data
    book3Data = q10100Cfg.Book3Data
    book4Data = q10100Cfg.Book4Data
end

-- Generated
function Quest10100:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["1010001"] = self.OnSubStart1010001
    self.subStartHandlers["1010002"] = self.OnSubStart1010002
    self.subStartHandlers["1010003"] = self.OnSubStart1010003
    self.subStartHandlers["1010004"] = self.OnSubStart1010004
    self.subStartHandlers["1010005"] = self.OnSubStart1010005
    self.subStartHandlers["1010006"] = self.OnSubStart1010006
    self.subStartHandlers["1010007"] = self.OnSubStart1010007
    self.subStartHandlers["1010008"] = self.OnSubStart1010008
    self.subStartHandlers["1010009"] = self.OnSubStart1010009
    self.subStartHandlers["1010010"] = self.OnSubStart1010010
    self.subStartHandlers["1010029"] = self.OnSubStart1010029
    self.subStartHandlers["1010044"] = self.OnSubStart1010044
end

function Quest10100:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["1010001"] = self.OnSubFinish1010001
    self.subFinishHandlers["1010002"] = self.OnSubFinish1010002
    self.subFinishHandlers["1010003"] = self.OnSubFinish1010003
    self.subFinishHandlers["1010004"] = self.OnSubFinish1010004
    self.subFinishHandlers["1010005"] = self.OnSubFinish1010005
    self.subFinishHandlers["1010006"] = self.OnSubFinish1010006
    self.subFinishHandlers["1010007"] = self.OnSubFinish1010007
    self.subFinishHandlers["1010008"] = self.OnSubFinish1010008
    self.subFinishHandlers["1010009"] = self.OnSubFinish1010009
    self.subFinishHandlers["1010010"] = self.OnSubFinish1010010
    self.subFinishHandlers["1010029"] = self.OnSubFinish1010029
    self.subFinishHandlers["1010044"] = self.OnSubFinish1010044
end

--@region local param
-- local param begin
function Quest10100:RepeatCheckSit()
    print("CheckSitPos")
    Quest10100:CallOnAvatarSit(Quest10100.CheckSitPos)
end

function Quest10100:CheckSitPos()
    local SitPos = sceneData:GetDummyPoint(3,"Q10100Target1").pos
    local PlayerPos = actorUtils.GetAvatarPos()
    print(SitPos.x - PlayerPos.x)
    print(SitPos.z - PlayerPos.z)
    if math.abs(SitPos.x - PlayerPos.x) < 2 and math.abs(SitPos.z - PlayerPos.z) < 2 then
        local quest = actorMgr:GetActor(q10100Cfg.ActorAlias)
        if quest ~= nil then
            quest:FinishQuestID(false, 1010006)
        end
    else
        Quest10100:CallOnAvatarStand(Quest10100.RepeatCheckSit)
    end
end

function Quest10100:LisaShowBubble()
    print("Lisa Bubble")
    if self:GetSubQuestState(1010005) ~= 3 then
        self:LisaBubbleTime()
        local x = math.random(1, 2)
        if x == 1 then
            self:TriggerNpcSpeechBubble(1007, 101008304)
        elseif x == 2 then
            self:TriggerNpcSpeechBubble(1007, 101008305)
            local quest = actorMgr:GetActor(q10100Cfg.ActorAlias)
            if quest ~= nil then
                quest:FinishQuestID(false, 1010028)
            end
        end
    end
end

function Quest10100:LisaBubbleTime( )
    print("Lisa Bubble Timer")
    self:CallDelay(5, self.LisaCloseBubble)
end

function Quest10100:LisaCloseBubble()
    print("Lisa Bubble Close")
    self:ClearNpcSpeechBubble(1007)
    self:LisaBubbleGap()
end

function Quest10100:LisaBubbleGap()
    local GapTime = math.random(8, 15)
    print("Lisa Bubble Gap:" .. GapTime)
    self:CallDelay(GapTime, self.LisaShowBubble)
end

function Quest10100:LisaFreeStyle( )
    print("Lisa Bubble Timer")
    local lisa = self:GetQuestNpcActor(lisaData.Lisa)
    if lisa ~= nil then
        lisa:DoFreeStyle(1190)	
    end
end

function Quest10100:FinalMood()
    -- 礼品店的丽莎心情评分
    local x = 0
    if self:GetSubQuestState(39003) == 3 then
    elseif self:GetSubQuestState(39004) == 3 then
        x = x + 1
    elseif self:GetSubQuestState(39005) == 3 then
        x = x - 1
    elseif self:GetSubQuestState(39006) == 3 then
    end

    -- 餐厅丽莎心情评分
    if self:GetSubQuestState(39021) == 3 then
    elseif self:GetSubQuestState(39022) == 3 then
    elseif self:GetSubQuestState(39023) == 3 then
        x = x - 1
    elseif self:GetSubQuestState(39024) == 3 then
        x = x + 1
    elseif self:GetSubQuestState(39025) == 3 then
        x = x + 1
    end

    -- 最终综合评分
    if x <= -2 then
        local quest = actorMgr:GetActor(q10100Cfg.ActorAlias)
        if quest ~= nil then
            quest:FinishQuestID(false, 1010033)
        end
    elseif x >= 2 then
        local quest = actorMgr:GetActor(q10100Cfg.ActorAlias)
        if quest ~= nil then
            quest:FinishQuestID(false, 1010031)
        end
    else
        local quest = actorMgr:GetActor(q10100Cfg.ActorAlias)
        if quest ~= nil then
            quest:FinishQuestID(false, 1010032)
        end
    end
end

function Quest10100:DestroyNPC()
    print("DestroyNPC")
    self:ActionSafeCall(
        function(self)
            self:ShowBlackScreen(0.5, 1, 0.5,
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
    )
end
-- local param end
--@endregion

-- local method begin
--@region sub start handlers
function Quest10100:OnSubStart1010002(quest)
    print("1010002 start:Creat Lisa")
    --actorMgr:CreateActorWithPos(lisaData.Lisa, lisaData.LisaScript, lisaData.LisaID, 0, lisaData.BornPos, lisaData.BornDir, true, false,1004,true,100401)
    self:CreateQuestNpc(quest, lisaData.LisaID)
    self:LisaFreeStyle()
end

function Quest10100:OnSubStart1010003(quest)
    self:UnCallFunc(self.LisaFreeStyle)
    local lisa = self:GetQuestNpcActor(lisaData.Lisa)
    if lisa ~= nil then
        lisa:DoFreeStyle(1120)
    end
end

function Quest10100:OnSubStart1010010(quest)
    local lisa = self:GetQuestNpcActor(lisaData.Lisa)
    if lisa ~= nil then
        lisa:DoFreeStyle(1120)
    end
end

function Quest10100:OnSubStart1010005(quest)
    self:LisaBubbleGap()
end

function Quest10100:OnSubStart1010006(quest)
    print("1010006 start:Player sit")
    self:RepeatCheckSit()
end

function Quest10100:OnSubStart1010007(quest)
    print("1010007 start:Player sit")
end

function Quest10100:OnSubStart1010009(quest)
    print("1010009 start:Player sit")
    self:TransmitPlayer(3, playerData.BornPos2, playerData.BornDir2,
    function(self)
        self:RequestInteraction(lisaData.Lisa)
    end,
    function(self)
        --actorMgr:CreateActorWithPos(lisaData.Lisa, lisaData.LisaScript, lisaData.LisaID, 0, lisaData.BornPos3, lisaData.BornDir3, true)
        self:CreateQuestNpc(quest, lisaData.LisaID)
    end
    )
end

function Quest10100:OnSubStart1010044(quest)
    print("1010044 start:Creat Book4")
    --globalActor:SpawnGadget(book4Data.BookID, book4Data.BornPos, book4Data.BornDir, book4Data.Alias)
    self:SpawnGadget(quest, book4Data.BookID, 1)
end

--@endregion

--@region sub finish handlers
function Quest10100:OnSubFinish1010002(quest)
    print("1010002 finish:Lisa disappear")
    self:ActionSafeCall(
        function()
            --actorMgr:CreateActorWithPos(lisaData.Lisa, lisaData.LisaScript, lisaData.LisaID, 0, lisaData.BornPos5, lisaData.BornDir5, true)
            self:CreateQuestNpc(quest, lisaData.LisaID, 2)
            local paimon = self:GetQuestNpcActor(paimonData.Paimon)
            if paimon ~= nil then
                paimon:DestroyWithDisappear(false)
            end
        end
    )
end

function Quest10100:OnSubFinish1010010(quest)
    self:ActionSafeCall(
        function(self)  
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

function Quest10100:OnSubFinish1010004(quest)
    print("1010004 finish:Lisa sit")
    
    self:ActionSafeCall(
        function (self)
            actorMgr:CreateActorWithPos("Q10100Trigger", "Actor/Gadget/Q10100Trigger", 70900002, 0, lisaData.BornPos2, lisaData.BornDir2, true)
            local lisa = self:GetQuestNpcActor(lisaData.Lisa)
            local paimon = self:GetQuestNpcActor(paimonData.Paimon)
            if lisa ~= nil then
                -- lisa:WalkToTask(lisaData.BornPos2,
                --     function (self)
                --         -- lisa:SitOnChair()
                --         actorMgr:CreateActorWithPos("Q10100Trigger", "Actor/Gadget/Q10100Trigger", 70900002, 0, lisaData.BornPos2, lisaData.BornDir2, true)
                --     end
                -- )
            end

            if paimon ~= nil then
                paimon:DestroyWithDisappear(false)
            end
        end
    )
end

function Quest10100:OnSubFinish1010006(quest)
    print("1010006 finish:Blackscreen & talk")
    self:ShowBlackScreen(0.5, 1, 0.5,
        function (self)
            self:RequestInteraction(lisaData.Lisa)
        end,
        nil, nil, "QUEST_Message_Q1010006"
    )
end

function Quest10100:OnSubFinish1010007(quest)
    self:FinalMood()
    self:ActionSafeCall(
        function(self)  
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

function Quest10100:OnSubFinish1010008(quest)
    self:ActionSafeCall(
        function(self)  
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

function Quest10100:OnSubFinish1010009(quest)
    self:ActionSafeCall(
        function(self)  
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

function Quest10100:OnSubFinish1010029(quest)
    print("1010029 finish:Blackscreen & talk")
    self:ActionSafeCall(
        function(self)
            local trigger = actorMgr:GetActor("Q10100Trigger")
            if trigger ~= nil then
                trigger:Destroy(false)
            end

            self:ShowBlackScreen(0.5, 1.5, 0.5,
                function (self)
                    local lisa = self:GetQuestNpcActor(lisaData.Lisa)
                    local paimon = self:GetQuestNpcActor(paimonData.Paimon)
                    if lisa ~= nil then
                        lisa:StandFromChair()
                        lisa:DoFreeStateTrigger()
                        lisa:Standby()
                        self:CallDelay(0.5,
                            function (self)
                                self:RequestInteraction("Npc1419")
                            end
                        )
                    end
                end
            )
        end
    )
end

function Quest10100:OnSubFinish1010044(quest)
    globalActor:UnSpawn(book4Data.Book4)
end
--@endregion

function Quest10100:InvokeOnInteraction(param)
	if param == 1 then
        print("Lisa happy1")
        local lisa = self:GetQuestNpcActor(lisaData.Lisa)
        lisa:PlayEmojiBubble("EmojiBubble_Emoji_Worry")
        lisa:PlayAudio("Play_quest_lineDiluc_emotion_sad")
        

    elseif param == 2 then
        print("Lisa happy2")
        local lisa = self:GetQuestNpcActor(lisaData.Lisa)
        lisa:PlayEmojiBubble("EmojiBubble_Emoji_Sweat")
        lisa:PlayAudio("Play_quest_lineDiluc_emotion_common")

    elseif param == 3 then
        print("Lisa happy3")
        local lisa = self:GetQuestNpcActor(lisaData.Lisa)
        lisa:PlayEmojiBubble("EmojiBubble_Emoji_Star")
        lisa:PlayAudio("Play_quest_lineDiluc_emotion_shine")

    elseif param == 4 then
        print("Destroy Paimon")
        local paimon = self:GetQuestNpcActor(paimonData.Paimon)
        if paimon ~= nil then
            paimon:DestroyWithDisappear(false)
        end

    elseif param == 5 then
        print("Lisa happy1")
        local lisa = self:GetQuestNpcActor(lisaData.Lisa)
        lisa:PlayEmojiBubble("EmojiBubble_Emoji_Worry")
        lisa:PlayAudio("Play_quest_lineDiluc_emotion_sad")

    elseif param == 6 then
        print("Lisa happy2")
        local lisa = self:GetQuestNpcActor(lisaData.Lisa)
        lisa:PlayEmojiBubble("EmojiBubble_Emoji_Sweat")
        lisa:PlayAudio("Play_quest_lineDiluc_emotion_common")

    elseif param == 7 then
        print("Lisa happy3")
        local lisa = self:GetQuestNpcActor(lisaData.Lisa)
        lisa:PlayEmojiBubble("EmojiBubble_Emoji_Star")  
        lisa:PlayAudio("Play_quest_lineDiluc_emotion_shine")   

    elseif param == 8 then
        print("BlackScreen")
        self:ShowBlackScreen(0.5,3,0.5)
    end
end


function Quest10100:Start()
end

function Quest10100:OnDestroy()
end

return Quest10100
