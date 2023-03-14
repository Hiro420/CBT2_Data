require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest20101 = class("Quest20101", questActorProxy)

Quest20101.defaultAlias = "Quest20101"

local q20101Cfg  
local NpcUtil = require('Actor/Npc/NPCUtil')
local subIDs
local ScaredNPC   
local GuardNPC  
local GuardNPC201  
local GuardNPC401  
local dilucData  
local NPC_Motion1 = 0
local NPC_Motion2 = 0
local NPC_Motion3 = 0

function Quest20101:OnDataLoaded()
    q20101Cfg = self.clientData
    subIDs = q20101Cfg.SubIDs
    ScaredNPC = q20101Cfg.ScaredNPC
    GuardNPC = q20101Cfg.GuardNPC
    GuardNPC201 = q20101Cfg.GuardNPC201
    GuardNPC401 = q20101Cfg.GuardNPC401
    dilucData = q20101Cfg.DilucData
end

-- Generated
function Quest20101:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	-- self.subStartHandlers["2010101"] = self.OnSubStart2010101
	self.subStartHandlers["2010102"] = self.OnSubStart2010102
    self.subStartHandlers["2010103"] = self.OnSubStart2010103
    self.subStartHandlers["2010104"] = self.OnSubStart2010104
    self.subStartHandlers["2010105"] = self.OnSubStart2010105
    self.subStartHandlers["2010111"] = self.OnSubStart2010111
    self.subStartHandlers["2010114"] = self.OnSubStart2010114
    self.subStartHandlers["2010115"] = self.OnSubStart2010115
    self.subStartHandlers["2010121"] = self.OnSubStart2010121
    self.subStartHandlers["2010124"] = self.OnSubStart2010124
    self.subStartHandlers["2010131"] = self.OnSubStart2010131
    self.subStartHandlers["2010134"] = self.OnSubStart2010134
    self.subStartHandlers["2010136"] = self.OnSubStart2010136
    self.subStartHandlers["2010138"] = self.OnSubStart2010138
    self.subStartHandlers["2010141"] = self.OnSubStart2010141
    self.subStartHandlers["2010142"] = self.OnSubStart2010142
    self.subStartHandlers["2010143"] = self.OnSubStart2010143
    self.subStartHandlers["2010152"] = self.OnSubStart2010152
    self.subStartHandlers["2010151"] = self.OnSubStart2010151
end

function Quest20101:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2010100"] = self.OnSubFinish2010100
	-- self.subFinishHandlers["2010101"] = self.OnSubFinish2010101
	-- self.subFinishHandlers["2010102"] = self.OnSubFinish2010102
    self.subFinishHandlers["2010103"] = self.OnSubFinish2010103
    self.subFinishHandlers["2010104"] = self.OnSubFinish2010104
    self.subFinishHandlers["2010105"] = self.OnSubFinish2010105
    self.subFinishHandlers["2010109"] = self.OnSubFinish2010109
    self.subFinishHandlers["2010111"] = self.OnSubFinish2010111
    self.subFinishHandlers["2010112"] = self.OnSubFinish2010112
    self.subFinishHandlers["2010113"] = self.OnSubFinish2010113

    self.subFinishHandlers["2010114"] = self.OnSubFinish2010114
    self.subFinishHandlers["2010115"] = self.OnSubFinish2010115
    self.subFinishHandlers["2010121"] = self.OnSubFinish2010121
    self.subFinishHandlers["2010119"] = self.OnSubFinish2010119
    self.subFinishHandlers["2010122"] = self.OnSubFinish2010122
    self.subFinishHandlers["2010123"] = self.OnSubFinish2010123

    self.subFinishHandlers["2010129"] = self.OnSubFinish2010129
    self.subFinishHandlers["2010132"] = self.OnSubFinish2010132
    self.subFinishHandlers["2010135"] = self.OnSubFinish2010135
    self.subFinishHandlers["2010139"] = self.OnSubFinish2010139

    self.subFinishHandlers["2010142"] = self.OnSubFinish2010142
    self.subFinishHandlers["2010151"] = self.OnSubFinish2010151
end

---sub start & finish 内调用的函数


--@region sub start & finish handlers
---按流程触发顺序

function Quest20101:OnSubStart2010102(quest)
    globalActor:SpawnAttach("Mask_Diluc", 10000016)
    globalActor:SpawnAttach("Mask_PlayerBoy", 10000005)
    globalActor:SpawnAttach("Mask_PlayerGirl", 10000007)
    actorMgr:CreateActorWithPos("Q20101Trigger01", "Actor/Gadget/Q20101Trigger01", 70900002, 0, sceneData:GetDummyPoint(20023,"NPC_Scared").pos, sceneData:GetDummyPoint(20023,"NPC_Scared").rot, true, false, 20023)  
end

function Quest20101:OnSubStart2010103(quest)
    NPC_Motion1 = 0
    NPC_Motion2 = 0
    NPC_Motion3 = 0
    -- self:RequestInteraction(ScaredNPC.ScaredNPC)
    self:CreateQuestNpc(quest, ScaredNPC.ScaredNPCID)
--  actorMgr:CreateActorWithPos(ScaredNPC.ScaredNPC, ScaredNPC.ScaredNPCScript, ScaredNPC.ScaredNPCID, 0, ScaredNPC.Pos, ScaredNPC.Dir, true, false,20023,true,0,2010101)
 self:CallDelay(1,
        function (self)
            local ScaredNPC1 = self:GetQuestNpcActor(ScaredNPC.ScaredNPC)
            ScaredNPC1:DoFreeStyle(4050)
        end
    )
end

function Quest20101:OnSubStart2010141(quest)
    print("2010141 Start : ")
    self:CreateQuestNpc(quest, GuardNPC.GuardNPCID)
    -- actorMgr:CreateActorWithPos(GuardNPC.GuardNPC, GuardNPC.GuardNPCScript, GuardNPC.GuardNPCID, 0, GuardNPC.Pos, GuardNPC.Dir, true, false,20023,true,0,2010101)
    self:CallDelay(1,
        function (self)
            local GuardNPC1 = self:GetQuestNpcActor(GuardNPC.GuardNPC)
            GuardNPC1:DoFreeStyle(1190)
            self:ShowBubble1()
        end
    )

    self:CreateQuestNpc(quest, GuardNPC201.GuardNPCID)
    -- actorMgr:CreateActorWithPos(GuardNPC201.GuardNPC, GuardNPC201.GuardNPCScript, GuardNPC201.GuardNPCID, 0, GuardNPC201.Pos, GuardNPC201.Dir, true, false,20023,true,0,2010101)
    self:CallDelay(1,
        function (self)
            local GuardNPC2 = self:GetQuestNpcActor(GuardNPC201.GuardNPC)
            GuardNPC2:DoFreeStyle(1050)
            self:ShowBubble2()
        end
    )

end

function Quest20101:OnSubStart2010104(quest)
    
end

function Quest20101:OnSubStart2010111(quest)
    print("2010111 Start : ")
end

function Quest20101:OnSubStart2010142(quest)
    print("2010142 Start : ")
end

function Quest20101:OnSubStart2010114(quest)

end

function Quest20101:OnSubStart2010121(quest)
    print("2010121 Start : ")
end

function Quest20101:OnSubStart2010124(quest)
end

function Quest20101:OnSubStart2010131(quest)
    print("2010131 Start : ")
end

function Quest20101:OnSubStart2010134(quest)
    actorMgr:CreateActorWithPos("Q20101Trigger03", "Actor/Gadget/Q20101Trigger03", 70900002, 0, sceneData:GetDummyPoint(20023,"Guard301").pos, sceneData:GetDummyPoint(20023,"Guard301").rot, true, false, 20023)  
end

function Quest20101:OnSubStart2010136(quest)
    actorMgr:CreateActorWithPos("Q20101Trigger05", "Actor/Gadget/Q20101Trigger05", 70900002, 0, sceneData:GetDummyPoint(20023,"Guard501").pos, sceneData:GetDummyPoint(20023,"Guard501").rot, true, false, 20023)  
end

function Quest20101:OnSubStart2010138(quest)
    actorMgr:CreateActorWithPos("Q20101Trigger06", "Actor/Gadget/Q20101Trigger06", 70900002, 0, sceneData:GetDummyPoint(20023,"Guard601").pos, sceneData:GetDummyPoint(20023,"Guard601").rot, true, false, 20023)  
end

function Quest20101:OnSubStart2010143(quest)
    self:SpawnGadget(quest , 70300040 )
end

function Quest20101:OnSubStart2010152(quest)
    self:SpawnGadget(quest , 70700016 )
    -- self:SpawnGadget(70700016, q20101Cfg.KeyPos, q20101Cfg.KeyDir, "Harp0", 20023,0,0,1)
    self:SpawnGadget(quest , 70900201 )
    -- globalActor:SpawnGadget(70900201, sceneData:GetDummyPoint(20023,"ViolinTarget").pos, sceneData:GetDummyPoint(20023,"ViolinTarget").pos, "Goal01", 20023,0,0,0)

end

function Quest20101:OnSubStart2010151(quest)
    local task =  self:CreateQuestNpcCreateTask({dilucData.Diluc})
    self:CallDelay(
        1.5,
        function (self)
            self:ShowBlackScreen(0.5, 1.0, 0.1,
                function(self)
                    self:CreateQuestNpc(quest, dilucData.DilucID)
                    -- actorMgr:CreateActorWithPos(dilucData.Diluc, dilucData.DilucScript, dilucData.DilucID, 0, dilucData.bornPos, dilucData.bornDir, true, false,20023,true,0,2010101)
                    self:UnSpawn("Harp") 
                    self:UnSpawn("Harp0") 
                    self:UnSpawn("Goal01") 
                    self:RequestInteraction(dilucData.Diluc)
                end
                , nil , task
            )
        end
    )
end

function Quest20101:RequestDiluc(quest)
    self:RequestInteraction(dilucData.Diluc)
end

----------------------------

function Quest20101:OnSubFinish2010100(quest)
    print("2010100 Finish : show NPC")
    local MengdeNpcList = NpcUtil.GetMengdeNpcListSpecial()
    for i=1, #MengdeNpcList do
        self:NotifyTo(MengdeNpcList[i], NpcUtil.NpcEventType.STARTDAILY, true)
    end
end


function Quest20101:OnSubFinish2010103(quest)
    print("2010103 Finish : ")
    self:ActionSafeCall(
        self.DestroyScaredNPC
    )
    -- self:ActionSafeCall(
    --     self.TellStory
    -- )
end

function Quest20101:OnSubFinish2010142(quest)
    -- print("2010142 Finish : ")
    -- self:UnSpawn("Goal") 
    
end

function Quest20101:DestroyScaredNPC(quest)
    self:ShowBlackScreen(0.5, 1.5, 0.5, 
        function(self)
            local ScaredNPC1 = self:GetQuestNpcActor(ScaredNPC.ScaredNPC)
            if ScaredNPC1 ~= nil then
                ScaredNPC1:Destroy(false)
            end
        end,
        self.TellStory
    )
end

function Quest20101:TellStory(quest)
    self:CallDelay(1.0, 
        function(self)
            self:NarratorOnlyTask(q20101Cfg.NarratorFlow1, nil, "Story")
        end
    )
end

function Quest20101:OnSubFinish2010104(quest)
    print("2010104 Finish :")
    self:RequestInteraction(GuardNPC.GuardNPC)
end

function Quest20101:OnSubFinish2010109(quest)
    print("2010109 Finish :")
    local quest = actorMgr:GetActor(q20101Cfg.ActorAlias)
	if quest ~= nil and self:GetSubQuestState(2010140) == 3 then
		quest:FinishQuestID(false, 2010145)
	end
end

function Quest20101:OnSubFinish2010112(quest)
    print("2010112 Finish :")
    local quest = actorMgr:GetActor(q20101Cfg.ActorAlias)
	if quest ~= nil and self:GetSubQuestState(2010140) == 3 then
		quest:FinishQuestID(false, 2010146)
	end
end

function Quest20101:OnSubFinish2010119(quest)
    print("2010119 Finish :")
    local quest = actorMgr:GetActor(q20101Cfg.ActorAlias)
	if quest ~= nil and self:GetSubQuestState(2010140) == 3 then
		quest:FinishQuestID(false, 2010147)
	end
end

function Quest20101:OnSubFinish2010122(quest)
    print("2010122 Finish :")
    local quest = actorMgr:GetActor(q20101Cfg.ActorAlias)
	if quest ~= nil and self:GetSubQuestState(2010140) == 3 then
		quest:FinishQuestID(false, 2010148)
	end
end

function Quest20101:OnSubFinish2010129(quest)
    print("2010129 Finish :")
    local quest = actorMgr:GetActor(q20101Cfg.ActorAlias)
	if quest ~= nil and self:GetSubQuestState(2010140) == 3 then
		quest:FinishQuestID(false, 2010149)
	end
end

function Quest20101:OnSubFinish2010132(quest)
    print("2010132 Finish :")
    local quest = actorMgr:GetActor(q20101Cfg.ActorAlias)
	if quest ~= nil and self:GetSubQuestState(2010140) == 3 then
		quest:FinishQuestID(false, 2010150)
	end
end

function Quest20101:OnSubFinish2010111(quest)
    print("2010111 Finish :")
    self:ActionSafeCall(
        self.DestroyGuardNPC1
    )
end

function Quest20101:DestroyGuardNPC1(quest)
    self:ShowBlackScreen(0.5, 1.5, 0.5, 
        function(self)
            local GuardNPC1 = self:GetQuestNpcActor(GuardNPC.GuardNPC)
            if GuardNPC1 ~= nil then
                GuardNPC1:Destroy(false)
            end
        end
    )
end

function Quest20101:OnSubFinish2010114(quest)
    print("2010104 Finish :")
    self:RequestInteraction(GuardNPC201.GuardNPC)
end

function Quest20101:OnSubFinish2010121(quest)
    print("2010111 Finish :")
    self:ActionSafeCall(
        self.DestroyGuardNPC2
    )
end

function Quest20101:DestroyGuardNPC2(quest)
    self:ShowBlackScreen(0.5, 1.5, 0.5, 
        function(self)
            local GuardNPC2 = self:GetQuestNpcActor(GuardNPC201.GuardNPC)
            if GuardNPC2 ~= nil then
                GuardNPC2:Destroy(false)
            end
        end
    )
end

function Quest20101:OnSubFinish2010151(quest)
    print("2010151 Finish :")
    self:ActionSafeCall(
        self.MoveDiluc
    )
end

function Quest20101:OnSubFinish2010113(quest)
    self:ActionSafeCall(
        function (self)       
            self:CallDelay(1.5,
                function (self)
                    local quest = actorMgr:GetActor(q20101Cfg.ActorAlias)
                    if quest ~= nil and self:GetSubQuestState(2010141) ~= 3 then
                        if self:GetSubQuestState(2010140) == 3 then
                            self:NarratorOnlyTask(q20101Cfg.NarratorNokey05, nil, "Tag")
                        else    
                            self:NarratorOnlyTask(q20101Cfg.NarratorNokey01, nil, "Tag")
                        end
                    end
                end
            )
        end
    )
end

function Quest20101:OnSubFinish2010123(quest)
    self:ActionSafeCall(
        function (self)
            self:CallDelay(1.5,
            function (self)
                local quest = actorMgr:GetActor(q20101Cfg.ActorAlias)
                if quest ~= nil and self:GetSubQuestState(2010141) ~= 3 then
                    if self:GetSubQuestState(2010140) == 3 then
                        self:NarratorOnlyTask(q20101Cfg.NarratorNokey05, nil, "Tag")
                    else    
                        self:NarratorOnlyTask(q20101Cfg.NarratorNokey02, nil, "Tag")
                    end
                end
            end
        )
    end
)
end

function Quest20101:OnSubFinish2010135(quest)
    self:CallDelay(1.5,
        function (self)
            local quest = actorMgr:GetActor(q20101Cfg.ActorAlias)
            if quest ~= nil and self:GetSubQuestState(2010141) ~= 3 then
                if self:GetSubQuestState(2010140) == 3 then
                    self:NarratorOnlyTask(q20101Cfg.NarratorNokey06, nil, "Tag")
                else    
                    self:NarratorOnlyTask(q20101Cfg.NarratorNokey03, nil, "Tag")
                end
            end
        end
    )
end

function Quest20101:OnSubFinish2010139(quest)
    self:CallDelay(1.5,
        function (self)
            local quest = actorMgr:GetActor(q20101Cfg.ActorAlias)
            if quest ~= nil and self:GetSubQuestState(2010141) ~= 3 then
                if self:GetSubQuestState(2010140) == 3 then
                    self:NarratorOnlyTask(q20101Cfg.NarratorNokey06, nil, "Tag")
                else    
                    self:NarratorOnlyTask(q20101Cfg.NarratorNokey04, nil, "Tag")
                end
            end
        end
    )
end

function Quest20101:MoveDiluc(quest)
    print("2010151 Finish :")
    -- self:ActionSafeCall(
    --     function(self)
    local paimon = self:GetQuestNpcActor("Paimon")
    if paimon ~= nil then
        paimon:DestroyWithDisappear(false)
    end
    self:UnSpawn("Harp") 
    local diluc = self:GetQuestNpcActor(dilucData.Diluc)
    if diluc ~= nil then
        diluc:Destroy(false)
    end

    --     end
    -- )
end

function Quest20101:ShowBubble1()
    self:CreateSpeechBubbleTask(1503, 201015111, 5, true, 1, 2)
	-- self:TriggerNpcSpeechBubble(1503, 201015111)
	-- self:BubbleTime1()
end

function Quest20101:BubbleTime1()
	self:CallDelay(5, self.CloseBubble1)
end

function Quest20101:CloseBubble1()
	self:ClearNpcSpeechBubble(1503)
	self:BubbleGap1()
end

function Quest20101:BubbleGap1()
	self:CallDelay(2.5, self.ShowBubble1)
end

function Quest20101:ShowBubble2()
    self:CreateSpeechBubbleTask(1504, 201015112, 5, true, 1, 2)
	-- self:TriggerNpcSpeechBubble(1504, 201015112)
	-- self:BubbleTime2()
end

function Quest20101:BubbleTime2()
	self:CallDelay(5, self.CloseBubble2)
end

function Quest20101:CloseBubble2()
	self:ClearNpcSpeechBubble(1504)
	self:BubbleGap2()
end

function Quest20101:BubbleGap2()
	self:CallDelay(2.5, self.ShowBubble2)
end

function Quest20101:InvokeOnInteraction(param)
    print("Now Talk! ")  
    if param == 11 then
        print("Now THREAT 3 heart")
        NPC_Motion1 = NPC_Motion1 + 3
        local GuardNPC1 = self:GetQuestNpcActor(GuardNPC.GuardNPC)
        if GuardNPC1 ~= nil then
            GuardNPC1:PlayEmojiBubble("EmojiBubble_Emoji_Shock")
            GuardNPC1:PlayAudio("Play_quest_lineDiluc_emotion_shine")
            GuardNPC1:DoFreeStateTrigger()
            GuardNPC1:DoFreeStyle(1120)
        end
    elseif param == 12 then
        print("Now THREAT 2 heart")
        NPC_Motion1 = NPC_Motion1 + 2
        local GuardNPC1 = self:GetQuestNpcActor(GuardNPC.GuardNPC)
        if GuardNPC1 ~= nil then
            GuardNPC1:PlayEmojiBubble("EmojiBubble_Emoji_Sweat")
            GuardNPC1:PlayAudio("Play_quest_lineDiluc_emotion_common")
            GuardNPC1:DoFreeStateTrigger()
            GuardNPC1:DoFreeStyle(4040)
        end
    elseif param == 13 then
        print("Now THREAT 1 heart")
        NPC_Motion1 = NPC_Motion1 + 1
        local GuardNPC1 = self:GetQuestNpcActor(GuardNPC.GuardNPC)
        if GuardNPC1 ~= nil then
            GuardNPC1:PlayEmojiBubble("EmojiBubble_Emoji_Worry")
            GuardNPC1:PlayAudio("Play_quest_lineDiluc_emotion_sad")
            GuardNPC1:DoFreeStateTrigger()
            GuardNPC1:DoFreeStyle(1150)
        end 
    elseif param == 19 then
        print("Now Check", NPC_Motion1)
        if NPC_Motion1 >= 5 then
            local quest = actorMgr:GetActor(q20101Cfg.ActorAlias)
            if quest ~= nil then
                quest:FinishQuestID(false, 2010109)
                quest:FinishQuestID(true, 2010110)     
                print("Now Check Succ")        
            end
        else
            local quest = actorMgr:GetActor(q20101Cfg.ActorAlias)
            if quest ~= nil then
                quest:FinishQuestID(true, 2010109)
                quest:FinishQuestID(false, 2010110)   
                print("Now Check Fail")               
            end
        end
        -- local i = math.random(1,100) 
        -- if i < 60 then  -- 胆小NPC 威胁概率成功
        --     local quest = actorMgr:GetActor(q20101Cfg.ActorAlias)
        --     if quest ~= nil then
        --         quest:FinishQuestID(false, 2010109)
        --         quest:FinishQuestID(true, 2010110)             
        --     end
        -- else -- 胆小NPC 威胁概率失败
        --     local quest = actorMgr:GetActor(q20101Cfg.ActorAlias)
        --     if quest ~= nil then
        --         quest:FinishQuestID(true, 2010109)
        --         quest:FinishQuestID(false, 2010110)             
        --     end
        -- end
    elseif param == 2 then
        print("Now BRIBE") -- 胆小NPC 贿赂必然失败
        local quest = actorMgr:GetActor(q20101Cfg.ActorAlias)
        if quest ~= nil then
            quest:FinishQuestID(true, 2010109)
            quest:FinishQuestID(false, 2010110)             
        end
        local GuardNPC1 = self:GetQuestNpcActor(GuardNPC.GuardNPC)
        if GuardNPC1 ~= nil then
            GuardNPC1:PlayEmojiBubble("EmojiBubble_Emoji_Angry")
            GuardNPC1:PlayAudio("Play_quest_lineDiluc_emotion_sad")
        end 
    elseif param == 3 then
        print("Now DECLARE")  -- 胆小NPC 直接宣战
        local quest = actorMgr:GetActor(q20101Cfg.ActorAlias)
        if quest ~= nil then
            quest:FinishQuestID(true, 2010109)
            quest:FinishQuestID(false, 2010110)             
        end
        local GuardNPC1 = self:GetQuestNpcActor(GuardNPC.GuardNPC)
        if GuardNPC1 ~= nil then
            GuardNPC1:PlayEmojiBubble("EmojiBubble_Emoji_Angry")
            GuardNPC1:PlayAudio("Play_quest_lineDiluc_emotion_sad")
        end 
    elseif param == 99 then
        print("Now FIGHT")  -- 胆小NPC 交涉破裂
        local quest = actorMgr:GetActor(q20101Cfg.ActorAlias)
        if quest ~= nil then
            quest:FinishQuestID(false, 2010111)             
        end
        local GuardNPC1 = self:GetQuestNpcActor(GuardNPC.GuardNPC)
        if GuardNPC1 ~= nil then
            GuardNPC1:PlayEmojiBubble("EmojiBubble_Emoji_Angry")
            GuardNPC1:PlayAudio("Play_quest_lineDiluc_emotion_sad")
        end 
---------------------------------------------------
    elseif param == 31 then
            print("Now BRIBE 3 heart")
            NPC_Motion2 = NPC_Motion2 + 3
            local GuardNPC2 = self:GetQuestNpcActor(GuardNPC201.GuardNPC)
            if GuardNPC2 ~= nil then
                GuardNPC2:PlayEmojiBubble("EmojiBubble_Emoji_Shock")
                GuardNPC2:PlayAudio("Play_quest_lineDiluc_emotion_shine")
                GuardNPC2:DoFreeStateTrigger()
                GuardNPC2:DoFreeStyle(1120)
            end
    elseif param == 32 then
        print("Now BRIBE 2 heart")
        NPC_Motion2 = NPC_Motion2 + 2
        local GuardNPC2 = self:GetQuestNpcActor(GuardNPC201.GuardNPC)
        if GuardNPC2 ~= nil then
            GuardNPC2:PlayEmojiBubble("EmojiBubble_Emoji_Sweat")
            GuardNPC2:PlayAudio("Play_quest_lineDiluc_emotion_common")
            GuardNPC2:DoFreeStateTrigger()
            GuardNPC2:DoFreeStyle(4040)
        end
    elseif param == 33 then
        print("Now BRIBE 1 heart")
        NPC_Motion2 = NPC_Motion2 + 1
        local GuardNPC2 = self:GetQuestNpcActor(GuardNPC201.GuardNPC)
        if GuardNPC2 ~= nil then
            GuardNPC2:PlayEmojiBubble("EmojiBubble_Emoji_Worry")
            GuardNPC2:PlayAudio("Play_quest_lineDiluc_emotion_sad")
            GuardNPC2:DoFreeStateTrigger()
            GuardNPC2:DoFreeStyle(1150)
        end
    elseif param == 39 then
        print("Now Check", NPC_Motion2)
        if NPC_Motion2 >= 5 then
            local quest = actorMgr:GetActor(q20101Cfg.ActorAlias)
            if quest ~= nil then
                quest:FinishQuestID(false, 2010119)
                quest:FinishQuestID(true, 2010120)     
                print("Now Check Succ")        
            end
        else
            local quest = actorMgr:GetActor(q20101Cfg.ActorAlias)
            if quest ~= nil then
                quest:FinishQuestID(true, 2010119)
                quest:FinishQuestID(false, 2010120)   
                print("Now Check Fail")               
            end
        end
    elseif param == 21 then
        print("Now THREAT") -- 贪婪NPC 威胁必然失败
        local quest = actorMgr:GetActor(q20101Cfg.ActorAlias)
        if quest ~= nil then
            quest:FinishQuestID(true, 2010119)
            quest:FinishQuestID(false, 2010120)             
        end
        local GuardNPC2 = self:GetQuestNpcActor(GuardNPC201.GuardNPC)
        if GuardNPC2 ~= nil then
            GuardNPC2:PlayEmojiBubble("EmojiBubble_Emoji_Angry")
            GuardNPC2:PlayAudio("Play_quest_lineDiluc_emotion_sad")
        end
    elseif param == 23 then
        print("Now DECLARE")  -- 贪婪NPC 直接宣战
        local quest = actorMgr:GetActor(q20101Cfg.ActorAlias)
        if quest ~= nil then
            quest:FinishQuestID(true, 2010119)
            quest:FinishQuestID(false, 2010120)             
        end
        local GuardNPC2 = self:GetQuestNpcActor(GuardNPC201.GuardNPC)
        if GuardNPC2 ~= nil then
            GuardNPC2:PlayEmojiBubble("EmojiBubble_Emoji_Angry")
            GuardNPC2:PlayAudio("Play_quest_lineDiluc_emotion_sad")
        end
    elseif param == 109 then
        print("Now FIGHT")  -- 贪婪NPC 交涉破裂
        local quest = actorMgr:GetActor(q20101Cfg.ActorAlias)
        if quest ~= nil then
            quest:FinishQuestID(false, 2010121)             
        end
        local GuardNPC2 = self:GetQuestNpcActor(GuardNPC201.GuardNPC)
        if GuardNPC2 ~= nil then
            GuardNPC2:PlayEmojiBubble("EmojiBubble_Emoji_Angry")
            GuardNPC2:PlayAudio("Play_quest_lineDiluc_emotion_sad")
        end
-----------------------------------
    elseif param == 51 then
        print("Now BRIBE 3 heart")
        NPC_Motion3 = NPC_Motion3 + 3
    elseif param == 52 then
        print("Now BRIBE 2 heart")
        NPC_Motion3 = NPC_Motion3 + 2
    elseif param == 53 then
        print("Now BRIBE 1 heart")
        NPC_Motion3 = NPC_Motion3 + 1
    elseif param == 59 then
        print("Now Check", NPC_Motion2)
        if NPC_Motion3 >= 5 then
            local quest = actorMgr:GetActor(q20101Cfg.ActorAlias)
            if quest ~= nil then
                quest:FinishQuestID(false, 2010129)
                quest:FinishQuestID(true, 2010130)     
                print("Now Check Succ")        
            end
        else
            local quest = actorMgr:GetActor(q20101Cfg.ActorAlias)
            if quest ~= nil then
                quest:FinishQuestID(true, 2010129)
                quest:FinishQuestID(false, 2010130)   
                print("Now Check Fail")               
            end
        end
    elseif param == 41 then
        print("Now THREAT") -- 贪婪NPC 威胁必然失败
        local quest = actorMgr:GetActor(q20101Cfg.ActorAlias)
        if quest ~= nil then
            quest:FinishQuestID(true, 2010129)
            quest:FinishQuestID(false, 2010130)             
        end
    elseif param == 43 then
        print("Now DECLARE")  -- 贪婪NPC 直接宣战
        local quest = actorMgr:GetActor(q20101Cfg.ActorAlias)
        if quest ~= nil then
            quest:FinishQuestID(true, 2010129)
            quest:FinishQuestID(false, 2010130)             
        end
    elseif param == 119 then
        print("Now FIGHT")  -- 贪婪NPC 交涉破裂
        local quest = actorMgr:GetActor(q20101Cfg.ActorAlias)
        if quest ~= nil then
            quest:FinishQuestID(false, 2010131)             
        end


    end
end


--@endregion

function Quest20101:Start()
end

function Quest20101:OnDestroy()
end

return Quest20101