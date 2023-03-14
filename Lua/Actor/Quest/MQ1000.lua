require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest1000 = class("Quest1000", questActorProxy)
local q1000Cfg
local FailNum = 0

local DailyNpcManager = require('Actor/DailyNPCManager')

Quest1000.defaultAlias = "Quest1000"
local sneakAIData
local subIDs
local GuanhaiData
local YixianData
local YizhuData
local BolaiData
local AweiData
local XingxiData
local DeangongData
local ChaboshiData
local FaneryeData
local JifangData
local XiaoanData
local JiangzhouData
local paimonData
local HuihuiData
local LicaiData
local LinlangData
local XiuhuaData
local ChangchangData
local GongziData
local IvanData
local NingguangData
local ChangshunData
local Maid1Data
local Maid2Data
local bright01 = 0
local bright02 = 0

function Quest1000:OnDataLoaded()
    q1000Cfg = self.clientData
    subIDs = q1000Cfg.SubIDs
    sneakAIData =
    {
        q1000Cfg.SneakAI1Data,
        q1000Cfg.SneakAI2Data,
        q1000Cfg.SneakAI3Data,
        q1000Cfg.SneakAI4Data,
        -- q1000Cfg.SneakAI5Data,
        -- q1000Cfg.SneakAI6Data,
        q1000Cfg.SneakAI7Data,
        q1000Cfg.SneakAI8Data,
        -- q1000Cfg.SneakAI9Data,
        q1000Cfg.SneakAI10Data,
        q1000Cfg.SneakAI11Data,
        q1000Cfg.SneakAI12Data,
        q1000Cfg.SneakAI13Data,
        q1000Cfg.SneakAI14Data,
        q1000Cfg.SneakAI15Data,
        q1000Cfg.SneakAI16Data,
        q1000Cfg.SneakAI17Data,
        q1000Cfg.SneakAI31Data,
        q1000Cfg.SneakAI32Data,
        q1000Cfg.SneakAI33Data,
        q1000Cfg.SneakAI34Data,
        q1000Cfg.SneakAI35Data,
        q1000Cfg.SneakAI36Data,
    } 
    
    
    subIDs = q1000Cfg.SubIDs
    GuanhaiData = q1000Cfg.GuanhaiData
    YixianData = q1000Cfg.YixianData
    YizhuData = q1000Cfg.YizhuData
    BolaiData = q1000Cfg.BolaiData
    AweiData = q1000Cfg.AweiData
    XingxiData = q1000Cfg.XingxiData
    DeangongData = q1000Cfg.DeangongData
    ChaboshiData = q1000Cfg.ChaboshiData
    FaneryeData = q1000Cfg.FaneryeData
    JifangData = q1000Cfg.JifangData
    XiaoanData = q1000Cfg.XiaoanData
    JiangzhouData = q1000Cfg.JiangzhouData
    paimonData = q1000Cfg.PaimonData
    HuihuiData = q1000Cfg.HuihuiData
    LicaiData = q1000Cfg.LicaiData
    LinlangData = q1000Cfg.LinlangData
    XiuhuaData = q1000Cfg.XiuhuaData
    ChangchangData = q1000Cfg.ChangchangData
    GongziData = q1000Cfg.GongziData
    IvanData = q1000Cfg.IvanData
    NingguangData = q1000Cfg.NingguangData
    ChangshunData = q1000Cfg.ChangshunData
    Maid1Data = q1000Cfg.Maid1Data
    Maid2Data = q1000Cfg.Maid2Data
end


-- Generated
function Quest1000:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["100000"] = self.OnSubStart100000
    self.subStartHandlers["100001"] = self.OnSubStart100001
    self.subStartHandlers["100002"] = self.OnSubStart100002
    self.subStartHandlers["100003"] = self.OnSubStart100003
    self.subStartHandlers["100004"] = self.OnSubStart100004
    self.subStartHandlers["100005"] = self.OnSubStart100005
    self.subStartHandlers["100006"] = self.OnSubStart100006
    self.subStartHandlers["100007"] = self.OnSubStart100007
    self.subStartHandlers["100021"] = self.OnSubStart100021
    self.subStartHandlers["100022"] = self.OnSubStart100022
    self.subStartHandlers["100023"] = self.OnSubStart100023
    self.subStartHandlers["100024"] = self.OnSubStart100024
    self.subStartHandlers["100025"] = self.OnSubStart100025
    self.subStartHandlers["100026"] = self.OnSubStart100026

    self.subStartHandlers["100008"] = self.OnSubStart100008
    self.subStartHandlers["100015"] = self.OnSubStart100015
    self.subStartHandlers["100009"] = self.OnSubStart100009
    self.subStartHandlers["100010"] = self.OnSubStart100010
    self.subStartHandlers["100011"] = self.OnSubStart100011
    self.subStartHandlers["100012"] = self.OnSubStart100012
    self.subStartHandlers["100013"] = self.OnSubStart100013
    self.subStartHandlers["100014"] = self.OnSubStart100014
end

function Quest1000:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["100000"] = self.OnSubFinish100000
    self.subFinishHandlers["100001"] = self.OnSubFinish100001
	self.subFinishHandlers["100002"] = self.OnSubFinish100002
    self.subFinishHandlers["100003"] = self.OnSubFinish100003
    self.subFinishHandlers["100004"] = self.OnSubFinish100004
	self.subFinishHandlers["100005"] = self.OnSubFinish100005
    self.subFinishHandlers["100006"] = self.OnSubFinish100006
    self.subFinishHandlers["100007"] = self.OnSubFinish100007
    self.subFinishHandlers["100021"] = self.OnSubFinish100021
    self.subFinishHandlers["100022"] = self.OnSubFinish100022
    self.subFinishHandlers["100023"] = self.OnSubFinish100023
    self.subFinishHandlers["100024"] = self.OnSubFinish100024
    self.subFinishHandlers["100025"] = self.OnSubFinish100025
    self.subFinishHandlers["100026"] = self.OnSubFinish100026

    self.subFinishHandlers["100008"] = self.OnSubFinish100008
    self.subFinishHandlers["100015"] = self.OnSubFinish100015
    self.subFinishHandlers["100009"] = self.OnSubFinish100009
    self.subFinishHandlers["100010"] = self.OnSubFinish100010
    self.subFinishHandlers["100011"] = self.OnSubFinish100011
    self.subFinishHandlers["100012"] = self.OnSubFinish100012
    self.subFinishHandlers["100013"] = self.OnSubFinish100013
    self.subFinishHandlers["100014"] = self.OnSubFinish100014

end

-- local param begin
-- local param end

-- local method begin
--@region sub start handlers

function Quest1000:ShowBubble(NPC,Dialog)
    print("NOW Bubble",NPC)
    self:CreateSpeechBubbleTask(NPC, Dialog, 5, true, 1, 2)
	-- self:TriggerNpcSpeechBubble(NPC,Dialog)
	-- self:BubbleTime(NPC,Dialog)
end

-- function Quest1000:BubbleTime(NPC,Dialog)
--     self:CallDelay(5, 
--         function(self)
--             self:CloseBubble(NPC,Dialog)
--             print("NOW CloseBubble",NPC)
--         end
--     )
-- end

-- function Quest1000:CloseBubble(NPC,Dialog)
-- 	self:ClearNpcSpeechBubble(NPC)
-- 	self:BubbleGap(NPC,Dialog)
-- end

-- function Quest1000:BubbleGap(NPC,Dialog)
--     self:CallDelay(1, 
--         function(self)
--             self:ShowBubble(NPC,Dialog)
--         end
--     )
-- end

function Quest1000:GetDistance()
    local avatarPos = actorUtils.GetAvatarPos()
	local centerpos = sceneData:GetDummyPoint(3,"Q1000Runaway01").pos
    local currLen = M.Dist(centerpos, avatarPos)
    print("NOW Distance is", currLen)
    if currLen > 73
        -- then self:NarratorOnlyTask(q1000Cfg.SneakWarning, nil, "Tag")
        --     self:CallDelay(2, self.CheckDistance)
        then     
            local quest = actorMgr:GetActor(q1000Cfg.ActorAlias)
            if quest ~= nil then
                quest:FinishQuestID(true, 100010)
            end
        else self:CheckDistance()
    end

end

function Quest1000:CheckDistance()
    local quest = actorMgr:GetActor(q1000Cfg.ActorAlias)
	if quest ~= nil and self:GetSubQuestState(100010) == 2 then
        self:CallDelay(1.5, self.GetDistance)	
    end
end

function Quest1000:SneakAIPrepare100010()
    print("FailNum is", FailNum)
    if FailNum < 2 then 
    sneakAIData =
        {
            q1000Cfg.SneakAI1Data,
            q1000Cfg.SneakAI2Data,
            q1000Cfg.SneakAI3Data,
            q1000Cfg.SneakAI4Data,
            -- q1000Cfg.SneakAI5Data,
            -- q1000Cfg.SneakAI6Data,
            q1000Cfg.SneakAI7Data,
            q1000Cfg.SneakAI8Data,
            -- q1000Cfg.SneakAI9Data,
            q1000Cfg.SneakAI10Data,
            q1000Cfg.SneakAI11Data,
            q1000Cfg.SneakAI12Data,
            q1000Cfg.SneakAI13Data,
            q1000Cfg.SneakAI14Data,
            q1000Cfg.SneakAI15Data,
            q1000Cfg.SneakAI16Data,
            q1000Cfg.SneakAI17Data,
            q1000Cfg.SneakAI31Data,
            q1000Cfg.SneakAI32Data,
            q1000Cfg.SneakAI33Data,
            q1000Cfg.SneakAI34Data,
            q1000Cfg.SneakAI35Data,
            q1000Cfg.SneakAI36Data,
        } 
        q1000Cfg.SneakAINum = 20
        print("SneakAINum is", q1000Cfg.SneakAINum)
    else 
        sneakAIData =
        {
            -- q1000Cfg.SneakAI1Data,
            q1000Cfg.SneakAI2Data,
            q1000Cfg.SneakAI3Data,
            -- q1000Cfg.SneakAI4Data,
            -- q1000Cfg.SneakAI5Data,
            -- q1000Cfg.SneakAI6Data,
            -- q1000Cfg.SneakAI7Data,
            q1000Cfg.SneakAI8Data,
            -- q1000Cfg.SneakAI9Data,
            q1000Cfg.SneakAI10Data,
            q1000Cfg.SneakAI11Data,
            q1000Cfg.SneakAI12Data,
            q1000Cfg.SneakAI13Data,
            q1000Cfg.SneakAI14Data,
            q1000Cfg.SneakAI15Data,
            q1000Cfg.SneakAI16Data,
            -- q1000Cfg.SneakAI17Data,
            q1000Cfg.SneakAI31Data,
            q1000Cfg.SneakAI32Data,
            q1000Cfg.SneakAI33Data,
            q1000Cfg.SneakAI34Data,
            q1000Cfg.SneakAI35Data,
            q1000Cfg.SneakAI36Data,
        } 
        q1000Cfg.SneakAINum = 16
        print("SneakAINum is", q1000Cfg.SneakAINum)
    end

    for i=1, q1000Cfg.SneakAINum do
        local SneakAI = self:CreateQuestNpcById(100010, sneakAIData[i].configID)
        SneakAI:CallOnStart(
            function(self)
                self.PatrolPosNum = sneakAIData[i].PatrolPosNum
                self.PatrolPos = sneakAIData[i].PatrolPos
                self.PatrolDir = sneakAIData[i].PatrolDir
                self.PatrolNext = 1
                self.AIDict = i

                self:ThreatTask(self.Discover, self.Aware, self.ReturnToPatrol, self.OnLure)
                self:StartPatrol()
            end
        )
    end
    -- for i=1, #q1000Cfg.TreasurePos do
        -- self:SpawnItem(q1000Cfg.TreasureID, q1000Cfg.TreasurePos[i], nil, "Treasure" .. tostring(i), 1005)
    -- end
end

function Quest1000:SneakAIPrepare100015()
    print("FailNum is", FailNum)
    if FailNum < 2 then 
    sneakAIData =
        {
            q1000Cfg.SneakAI1Data,
            q1000Cfg.SneakAI2Data,
            q1000Cfg.SneakAI3Data,
            q1000Cfg.SneakAI4Data,
            -- q1000Cfg.SneakAI5Data,
            -- q1000Cfg.SneakAI6Data,
            q1000Cfg.SneakAI7Data,
            q1000Cfg.SneakAI8Data,
            -- q1000Cfg.SneakAI9Data,
            q1000Cfg.SneakAI10Data,
            q1000Cfg.SneakAI11Data,
            q1000Cfg.SneakAI12Data,
            q1000Cfg.SneakAI13Data,
            q1000Cfg.SneakAI14Data,
            q1000Cfg.SneakAI15Data,
            q1000Cfg.SneakAI16Data,
            q1000Cfg.SneakAI17Data,
            q1000Cfg.SneakAI31Data,
            q1000Cfg.SneakAI32Data,
            q1000Cfg.SneakAI33Data,
            q1000Cfg.SneakAI34Data,
            q1000Cfg.SneakAI35Data,
            q1000Cfg.SneakAI36Data,
        } 
        q1000Cfg.SneakAINum = 20
        print("SneakAINum is", q1000Cfg.SneakAINum)
    else 
        sneakAIData =
        {
            -- q1000Cfg.SneakAI1Data,
            q1000Cfg.SneakAI2Data,
            q1000Cfg.SneakAI3Data,
            -- q1000Cfg.SneakAI4Data,
            -- q1000Cfg.SneakAI5Data,
            -- q1000Cfg.SneakAI6Data,
            -- q1000Cfg.SneakAI7Data,
            q1000Cfg.SneakAI8Data,
            -- q1000Cfg.SneakAI9Data,
            q1000Cfg.SneakAI10Data,
            q1000Cfg.SneakAI11Data,
            q1000Cfg.SneakAI12Data,
            q1000Cfg.SneakAI13Data,
            q1000Cfg.SneakAI14Data,
            q1000Cfg.SneakAI15Data,
            q1000Cfg.SneakAI16Data,
            -- q1000Cfg.SneakAI17Data,
            q1000Cfg.SneakAI31Data,
            q1000Cfg.SneakAI32Data,
            q1000Cfg.SneakAI33Data,
            q1000Cfg.SneakAI34Data,
            q1000Cfg.SneakAI35Data,
            q1000Cfg.SneakAI36Data,
        } 
        q1000Cfg.SneakAINum = 16
        print("SneakAINum is", q1000Cfg.SneakAINum)
    end

    for i=1, q1000Cfg.SneakAINum do
        local SneakAI = self:CreateQuestNpcById(100015, sneakAIData[i].configID)
        SneakAI:CallOnStart(
            function(self)
                self.PatrolPosNum = sneakAIData[i].PatrolPosNum
                self.PatrolPos = sneakAIData[i].PatrolPos
                self.PatrolDir = sneakAIData[i].PatrolDir
                self.PatrolNext = 1
                self.AIDict = i

                self:ThreatTask(self.Discover, self.Aware, self.ReturnToPatrol, self.OnLure)
                self:StartPatrol()
            end
        )
    end
    -- for i=1, #q1000Cfg.TreasurePos do
        -- self:SpawnItem(q1000Cfg.TreasureID, q1000Cfg.TreasurePos[i], nil, "Treasure" .. tostring(i), 1005)
    -- end
end

function Quest1000:SneakAIDestroy()
    sneakAIData =
    {
        q1000Cfg.SneakAI1Data,
        q1000Cfg.SneakAI2Data,
        q1000Cfg.SneakAI3Data,
        q1000Cfg.SneakAI4Data,
        -- q1000Cfg.SneakAI5Data,
        -- q1000Cfg.SneakAI6Data,
        q1000Cfg.SneakAI7Data,
        q1000Cfg.SneakAI8Data,
        -- q1000Cfg.SneakAI9Data,
        q1000Cfg.SneakAI10Data,
        q1000Cfg.SneakAI11Data,
        q1000Cfg.SneakAI12Data,
        q1000Cfg.SneakAI13Data,
        q1000Cfg.SneakAI14Data,
        q1000Cfg.SneakAI15Data,
        q1000Cfg.SneakAI16Data,
        q1000Cfg.SneakAI17Data,
        q1000Cfg.SneakAI31Data,
        q1000Cfg.SneakAI32Data,
        q1000Cfg.SneakAI33Data,
        q1000Cfg.SneakAI34Data,
        q1000Cfg.SneakAI35Data,
        q1000Cfg.SneakAI36Data,

    } 
    q1000Cfg.SneakAINum = 20
    for i=1, q1000Cfg.SneakAINum do
        local SneakAItemp = self:GetQuestNpcActor(sneakAIData[i].alias)
        if SneakAItemp ~= nil then
            SneakAItemp:Destroy(false)
        end
    end



end

function Quest1000:NPCDestroy()
    local NPCIvanData = self:GetQuestNpcActor(IvanData.Alias)
    if NPCIvanData ~= nil then
        NPCIvanData:Destroy(false)
    end 
    local NPCChangshun = self:GetQuestNpcActor(ChangshunData.Alias)
    if NPCChangshun ~= nil then
        NPCChangshun:Destroy(false)
    end 

    local NPCLinlang = self:GetQuestNpcActor(LinlangData.Alias)
    if NPCLinlang ~= nil then
        NPCLinlang:Destroy(false)
    end 

    local NPCChaboshi = self:GetQuestNpcActor(ChaboshiData.Alias)
    if NPCChaboshi ~= nil then
        NPCChaboshi:Destroy(false)
    end 

    local NPCFanerye = self:GetQuestNpcActor(FaneryeData.Alias)
    if NPCFanerye ~= nil then
        NPCFanerye:Destroy(false)
    end 

    local NPCJifang = self:GetQuestNpcActor(JifangData.Alias)
    if NPCJifang ~= nil then
        NPCJifang:Destroy(false)
    end 

    local NPCXiaoan = self:GetQuestNpcActor(XiaoanData.Alias)
    if NPCXiaoan ~= nil then
        NPCXiaoan:Destroy(false)
    end 

    local NPCJiangzhou = self:GetQuestNpcActor(JiangzhouData.Alias)
    if NPCJiangzhou ~= nil then
        NPCJiangzhou:Destroy(false)
    end 
end

function Quest1000:OnSubStart100000(quest)
    print("100001 start:...")
    self:NotifyTo("Npc2025", DailyNpcManager.NpcEventType.HIDESELF, true)

    -- self:CreateQuestNpc(quest, YixianData.ID)
    -- self:CreateQuestNpc(quest, YizhuData.ID)
    self:CreateQuestNpc(quest, BolaiData.ID)
    self:CreateQuestNpc(quest, AweiData.ID)
    self:CreateQuestNpc(quest, XingxiData.ID)
    self:CreateQuestNpc(quest, DeangongData.ID)
    self:CreateQuestNpc(quest, ChaboshiData.ID)
    self:CreateQuestNpc(quest, FaneryeData.ID)
    self:CreateQuestNpc(quest, JifangData.ID)
    self:CreateQuestNpc(quest, LinlangData.ID)
    self:CreateQuestNpc(quest, GuanhaiData.ID)
    self:CallDelay(1,
        function (self)
            local NPCGuanhai = self:GetQuestNpcActor(GuanhaiData.Alias)
            NPCGuanhai:DoFreeStyle(1120)
            self:ShowBubble(GuanhaiData.ID,10000002)
        end
    )

    self:CallDelay(1,
        function (self)
            local NPCBolai = self:GetQuestNpcActor(BolaiData.Alias)
            NPCBolai:DoFreeStyle(1180)
            self:ShowBubble(BolaiData.ID,10000003)
        end
    )

    self:CallDelay(1,
        function (self)
            local NPCLinlang =self:GetQuestNpcActor(LinlangData.Alias)
            NPCLinlang:DoFreeStyle(1180)
            self:ShowBubble(LinlangData.ID,10000001)
        end
    )

    actorMgr:CreateActorWithPos("Q100000Trigger", "Actor/Gadget/Q100000Trigger", 70900002, 0, sceneData:GetDummyPoint(3,"Q100001Player").pos, sceneData:GetDummyPoint(3,"Q100001Player").rot, true, false)

end

function Quest1000:OnSubStart100001(quest)
    print("100001 start:...")
    self:ShowBlackScreen(0.5, 1.5, 0.5, 
        function (self)
            local paimonPos = actorUtils.GetAvatarPos()
            print("playerpos,".. paimonPos.x.. "," .. paimonPos.y .. "," .. paimonPos.z)
            local playerVector = actorUtils.GetAvatarForward()
            local distance = 1.5
            print(playerVector.x .. "," .. playerVector.y .. "," .. playerVector.z)
            paimonPos.x = paimonPos.x + playerVector.x * distance
            paimonPos.z = paimonPos.z + playerVector.z * distance
            print("paimon pos,"..paimonPos.x .. "," .. paimonPos.y .. "," .. paimonPos.z)

            local paimonVector = playerVector
            paimonVector.x = paimonVector.x * -1
            paimonVector.z = paimonVector.z * -1
            self:CreateQuestNpcByIdWithPos(100001,1005,0,paimonPos, M.Dir2Euler(paimonVector))
            -- actorMgr:CreateActorWithPos(paimonData.Paimon, paimonData.PaimonScript, paimonData.PaimonID, 0, paimonPos, M.Dir2Euler(paimonVector), true, false,3,true,0,100001)
            self:RequestInteraction(paimonData.Paimon)
        end
    )

end

function Quest1000:OnSubStart100002(quest)
    print("100002 start:...")
    -- TODO: Do sth on sub quest 100002 start
end

function Quest1000:OnSubStart100003(quest)
    print("100003 start:...")

end

function Quest1000:OnSubStart100004(quest)
    print("100004 start:...")

end



function Quest1000:OnSubStart100005(quest)
    print("100005 start:...")

end


function Quest1000:OnSubStart100006(quest)
    print("100006 start:...")
    self:NotifyTo("Npc2064", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:CallDelay(1,
        function (self)
            local NPCJiangzhou = self:GetQuestNpcActor(JiangzhouData.Alias)
            NPCJiangzhou:DoFreeStyle(1180)
            self:ShowBubble(202601,10000001)
        end
    )

    self:CallDelay(1,
        function (self)
            local NPCBolai = self:GetQuestNpcActor(BolaiData.Alias)
            NPCBolai:DoFreeStyle(1180)
            self:ShowBubble(BolaiData.ID,10000003)
        end
    )

    self:CallDelay(1,
        function (self)
            local NPCXiaoan = self:GetQuestNpcActor(XiaoanData.Alias)
            NPCXiaoan:DoFreeStyle(1120)
            self:ShowBubble(XiaoanData.ID,10000002)
        end
    )
end

function Quest1000:OnSubStart100007(quest)
    print("100007 start:...")
    self:NotifyTo("Npc2014", DailyNpcManager.NpcEventType.HIDESELF, true)

    actorMgr:CreateActorWithPos("Q100007Trigger", "Actor/Gadget/Q100007Trigger", 70900002, 0, sceneData:GetDummyPoint(3,"Q1000Zone2").pos, sceneData:GetDummyPoint(3,"Q1000Zone2").rot, true, false)
    -- self:CreateQuestNpc(quest, HuihuiData.ID)
    -- self:CreateQuestNpc(quest, LicaiData.ID)
    -- self:CreateQuestNpc(quest, LinlangData.ID)
    -- self:CreateQuestNpc(quest, XiuhuaData.ID)
    -- self:CreateQuestNpc(quest, ChangchangData.ID)
    self:CreateQuestNpc(quest, IvanData.ID)
    self:CreateQuestNpc(quest, ChangshunData.ID)
    self:CreateQuestNpc(quest, NingguangData.ID)
    self:CreateQuestNpc(quest, Maid1Data.ID)
    self:CreateQuestNpc(quest, Maid2Data.ID)
end

function Quest1000:OnSubStart100024(quest)
    print("100024 start:...")
    self:NotifyTo("Npc2014", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2073", DailyNpcManager.NpcEventType.HIDESELF, true)
    -- self:NotifyTo("Npc2029", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2071", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2069", DailyNpcManager.NpcEventType.HIDESELF, true)

    self:CreateQuestNpc(quest, 2003002)
    self:CreateQuestNpc(quest, 2003003)

    self:CreateQuestNpc(quest, IvanData.ID)
    self:CreateQuestNpc(quest, ChangshunData.ID)
    self:CreateQuestNpc(quest, NingguangData.ID)
    self:CreateQuestNpc(quest, Maid1Data.ID)
    self:CreateQuestNpc(quest, Maid2Data.ID)
    self:CallDelay(1,
        function (self)
            local NPCIvan = self:GetQuestNpcActor(IvanData.Alias)
            NPCIvan:DoFreeStyle(4000)
        end
    )
    self:CallDelay(1,
        function (self)
            local NPCChangshun = self:GetQuestNpcActor(ChangshunData.Alias)
            NPCChangshun:DoFreeStyle(4000)
        end
    )
    self:SpawnGadget(quest , 70710044,1 )
    self:SpawnGadget(quest , 70710044,2 )
    -- globalActor:SpawnGadget(70710044, sceneData:GetDummyPoint(3,"Q1000Xianglu1").pos, sceneData:GetDummyPoint(3,"Q1000Xianglu1").rot, "Xianglu1")
    -- globalActor:SpawnGadget(70710044, sceneData:GetDummyPoint(3,"Q1000Xianglu2").pos, sceneData:GetDummyPoint(3,"Q1000Xianglu2").rot, "Xianglu2")
	local runtimeID = actorMgr:GetEntityHandler("Xianglu1")
    self:SetEntityMaterialPropValue(runtimeID, 2, 0)
    	local runtimeID = actorMgr:GetEntityHandler("Xianglu2")
    self:SetEntityMaterialPropValue(runtimeID, 2, 0)

end

function Quest1000:OnSubStart100026(quest)
    print("100026 start:...")
    actorMgr:CreateActorWithPos("Q100026Trigger", "Actor/Gadget/Q100026Trigger", 70900002, 0, sceneData:GetDummyPoint(3,"Q1000Zone2").pos, sceneData:GetDummyPoint(3,"Q1000Zone2").rot, true, false)

end

function Quest1000:OnSubStart100008(quest)
    print("100008 start:...")
    self:NotifyTo("Npc2014", DailyNpcManager.NpcEventType.HIDESELF, true)
    local NPCIvan = self:GetQuestNpcActor(IvanData.Alias)
    if NPCIvan ~= nil then
        NPCIvan:Destroy(false)
    end  
    local NPCChangshun = self:GetQuestNpcActor(ChangshunData.Alias)
    if NPCChangshun ~= nil then
        NPCChangshun:Destroy(false)
    end  
    local NPCNingguang = self:GetQuestNpcActor(NingguangData.Alias)
    if NPCNingguang ~= nil then
        NPCNingguang:Destroy(false)
    end  
    local NPCHuihui = self:GetQuestNpcActor(HuihuiData.Alias)
    if NPCHuihui ~= nil then
        NPCHuihui:Destroy(false)
    end  
    local NPCLicai = self:GetQuestNpcActor(LicaiData.Alias)
    if NPCLicai ~= nil then
        NPCLicai:Destroy(false)
    end  
    local NPCLinlang = self:GetQuestNpcActor(LinlangData.Alias)
    if NPCLinlang ~= nil then
        NPCLinlang:Destroy(false)
    end  
    local NPCXiuhua = self:GetQuestNpcActor(XiuhuaData.Alias)
    if NPCXiuhua ~= nil then
        NPCXiuhua:Destroy(false)
    end  
    local NPCChangchang = self:GetQuestNpcActor(ChangchangData.Alias)
    if NPCChangchang ~= nil then
        NPCChangchang:Destroy(false)
    end  
    -- local NPCMaid1 = self:GetQuestNpcActor(Maid1Data.Alias)
    -- if NPCMaid1 ~= nil then
    --     NPCMaid1:Destroy(false)
    -- end 
    -- local NPCMaid2 = self:GetQuestNpcActor(Maid2Data.Alias)
    -- if NPCMaid2 ~= nil then
    --     NPCMaid2:Destroy(false)
    -- end 
    -- self:PlayCutscene(q1000Cfg.QingXianCfg, 
    self:PlayCutsceneIndex(100001, 
    function (self)
		local quest = actorMgr:GetActor(q1000Cfg.ActorAlias)
		if quest ~= nil then
			quest:FinishQuest(false, nil)
		end 
	end
	)
    -- self:TransmitPlayerWithText(3, sceneData:GetDummyPoint(3,"Q100015Player").pos, sceneData:GetDummyPoint(3,"Q100015Player").rot,{"QUEST_Message_Q100008"}, 3, self.FinishSneak)
 
end

function Quest1000:OnSubStart100015(quest)
    print("100015 start:...")
    local NPCMaid1 = self:GetQuestNpcActor(Maid1Data.Alias)
    if NPCMaid1 ~= nil then
        NPCMaid1:Destroy(false)
    end 
    local NPCMaid2 = self:GetQuestNpcActor(Maid2Data.Alias)
    if NPCMaid2 ~= nil then
        NPCMaid2:Destroy(false)
    end 
    self:CreateQuestNpc(quest, 1005)
    self:NotifyTo("Npc2014", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2073", DailyNpcManager.NpcEventType.HIDESELF, true)
    -- self:NotifyTo("Npc2029", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2071", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2069", DailyNpcManager.NpcEventType.HIDESELF, true)
    -- actorMgr:CreateActorWithPos(paimonData.Paimon, paimonData.PaimonScript, paimonData.PaimonID, 0, sceneData:GetDummyPoint(3,"Q100015Paimon").pos, sceneData:GetDummyPoint(3,"Q100015Paimon").rot, true, false,3,true,0,100015)
    self:RequestInteraction(paimonData.Paimon)
    self:CallDelay(0.2,self.SneakAIPrepare100015)

    self:CreateQuestNpc(quest, IvanData.ID)
    self:CreateQuestNpc(quest, ChangshunData.ID)
    self:CreateQuestNpc(quest, LinlangData.ID)
    self:CreateQuestNpc(quest, ChaboshiData.ID)
    self:CreateQuestNpc(quest, FaneryeData.ID)
    self:CreateQuestNpc(quest, JifangData.ID)
    self:CreateQuestNpc(quest, XiaoanData.ID)
    self:CreateQuestNpc(quest, JiangzhouData.ID)
    self:CreateQuestNpc(quest, 2003004)
    self:CreateQuestNpc(quest, 2003005)
    
    self:CallDelay(1,
        function (self)
            local NPCIvan = self:GetQuestNpcActor(IvanData.Alias)
            NPCIvan:DoFreeStyle(1180)
            self:ShowBubble(IvanData.ID,10001021)
        end
    )
    self:CallDelay(1,
        function (self)
            local NPCChangshun = self:GetQuestNpcActor(ChangshunData.Alias)
            NPCChangshun:DoFreeStyle(1120)
            self:ShowBubble(ChangshunData.ID,10001022)
        end
    )
    self:CallDelay(1,
        function (self)
            local NPCLinlang = self:GetQuestNpcActor(LinlangData.Alias)
            NPCLinlang:DoFreeStyle(1120)
            self:ShowBubble(LinlangData.ID,10001023)
        end
    )
    self:CallDelay(1,
        function (self)
            local NPCChaboshi = self:GetQuestNpcActor(ChaboshiData.Alias)
            NPCChaboshi:DoFreeStyle(1030)
            self:ShowBubble(ChaboshiData.ID,10001024)
        end
    )
    self:CallDelay(1,
        function (self)
            local NPCFanerye = self:GetQuestNpcActor(FaneryeData.Alias)
            NPCFanerye:DoFreeStyle(1050)
            self:ShowBubble(FaneryeData.ID,10001021)
        end
    )
    self:CallDelay(1,
        function (self)
            local NPCJifang = self:GetQuestNpcActor(JifangData.Alias)
            NPCJifang:DoFreeStyle(1110)
            self:ShowBubble(JifangData.ID,10001022)
        end
    )
    self:CallDelay(1,
        function (self)
            local NPCXiaoan = self:GetQuestNpcActor(XiaoanData.Alias)
            NPCXiaoan:DoFreeStyle(1180)
            self:ShowBubble(XiaoanData.ID,10001023)
        end
    )
    self:CallDelay(1,
        function (self)
            local NPCJiangzhou = self:GetQuestNpcActor(JiangzhouData.Alias)
            NPCJiangzhou:DoFreeStyle(1160)
            self:ShowBubble(JiangzhouData.ID,10001024)
        end
    )

end

function Quest1000:OnSubStart100009(quest)
    print("100009 start:...")
    actorMgr:CreateActorWithPos("Q100009Trigger", "Actor/Gadget/Q100009Trigger", 70900002, 0, sceneData:GetDummyPoint(3,"Q1000Zone3").pos, sceneData:GetDummyPoint(3,"Q1000Zone3").rot, true, false)
    self:NotifyTo("Npc2014", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2073", DailyNpcManager.NpcEventType.HIDESELF, true)
    -- self:NotifyTo("Npc2029", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2071", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2069", DailyNpcManager.NpcEventType.HIDESELF, true)
end

function Quest1000:OnSubStart100010(quest)
    print("100010 start:...")
    self:NotifyTo("Npc2014", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2073", DailyNpcManager.NpcEventType.HIDESELF, true)
    -- self:NotifyTo("Npc2029", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2071", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2069", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:SneakAIDestroy()
    self:CallDelay(0.1,self.SneakAIPrepare100010)
    self:TriggerLevelAbility("Level_Apply_Switch_SneakBtn")
    -- self:NotifyTo("Npc2069", DailyNpcManager.NpcEventType.HIDESELF, true)
    -- self:NotifyTo("Npc2071", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:ClearNarratorTask()
    self:StopNarrator()
    -- self:CheckDistance()
    self:EnterWildSneakMode(11)
    actorMgr:CreateActorWithPos("Q100010Trigger", "Actor/Gadget/Q100010Trigger", 70900002, 0, sceneData:GetDummyPoint(3,"Q1000Target").pos, sceneData:GetDummyPoint(3,"Q1000Target").rot, true, false)
    actorMgr:CreateActorWithPos("Q1000SneakArea", "Actor/Gadget/Q1000SneakArea", 70900002, 0, sceneData:GetDummyPoint(3,"Q1000Runaway01").pos, sceneData:GetDummyPoint(3,"Q1000Runaway01").rot, true, false)

    -- globalActor:SpawnGadget(70900201, sceneData:GetDummyPoint(3,"Q1000TargetUp").pos, sceneData:GetDummyPoint(3,"Q1000TargetUp").rot , "Goal1", 3)
    -- globalActor:SpawnGadget(70300203, sceneData:GetDummyPoint(3,"Q1000Target").pos, sceneData:GetDummyPoint(3,"Q1000Target").rot , "Goal2", 3)


    self:CallDelay(1,
        function (self)
            local NPCIvan = self:GetQuestNpcActor(IvanData.Alias)
            NPCIvan:DoFreeStyle(1180)
            self:ShowBubble(IvanData.ID,10001021)
        end
    )
    self:CallDelay(1,
        function (self)
            local NPCChangshun = self:GetQuestNpcActor(ChangshunData.Alias)
            NPCChangshun:DoFreeStyle(1120)
            self:ShowBubble(ChangshunData.ID,10001022)
        end
    )
    self:CallDelay(1,
        function (self)
            local NPCLinlang = self:GetQuestNpcActor(LinlangData.Alias)
            NPCLinlang:DoFreeStyle(1120)
            self:ShowBubble(LinlangData.ID,10001023)
        end
    )
    self:CallDelay(1,
        function (self)
            local NPCChaboshi = self:GetQuestNpcActor(ChaboshiData.Alias)
            NPCChaboshi:DoFreeStyle(1030)
            self:ShowBubble(ChaboshiData.ID,10001024)
        end
    )
    self:CallDelay(1,
        function (self)
            local NPCFanerye = self:GetQuestNpcActor(FaneryeData.Alias)
            NPCFanerye:DoFreeStyle(1050)
            self:ShowBubble(FaneryeData.ID,10001021)
        end
    )
    self:CallDelay(1,
        function (self)
            local NPCJifang = self:GetQuestNpcActor(JifangData.Alias)
            NPCJifang:DoFreeStyle(1110)
            self:ShowBubble(JifangData.ID,10001022)
        end
    )
    self:CallDelay(1,
        function (self)
            local NPCXiaoan = self:GetQuestNpcActor(XiaoanData.Alias)
            NPCXiaoan:DoFreeStyle(1180)
            self:ShowBubble(XiaoanData.ID,10001023)
        end
    )
    self:CallDelay(1,
        function (self)
            local NPCJiangzhou = self:GetQuestNpcActor(JiangzhouData.Alias)
            NPCJiangzhou:DoFreeStyle(1160)
            self:ShowBubble(JiangzhouData.ID,10001024)
        end
    )
end

function Quest1000:OnSubStart100011(quest)
    print("100011 start:...")
    FailNum = FailNum + 1
    self:CallDelay(2.5,
        function (self)
            self:UnSpawn("Goal1") 
            self:UnSpawn("Goal2") 
            self:SneakAIDestroy()
            self:ExitWildSneakMode()
            self:TriggerLevelAbility("Level_Remove_Switch_SneakBtn")
            self:TransmitPlayer(3,sceneData:GetDummyPoint(3,"Q1001Trans").pos, sceneData:GetDummyPoint(3,"Q1001Trans").rot, self.FinishSneak)
        end
    )
    -- self:SneakAIDestroy()
    -- self:ExitSneakMode()
    -- self:TransmitPlayer(3,sceneData:GetDummyPoint(3,"Q1000Zone3").pos, sceneData:GetDummyPoint(3,"Q1000Zone3").rot )
    -- local quest = actorMgr:GetActor(q1000Cfg.ActorAlias)
    -- if quest ~= nil then
    --     quest:FinishQuest(false, nil)
    -- end 
end


function Quest1000:FinishSneak()
    local quest = actorMgr:GetActor(q1000Cfg.ActorAlias)
    if quest ~= nil then
        quest:FinishQuest(false, nil)
    end
end

function Quest1000:OnSubStart100012(quest)
    print("100012 start:...")
    -- self:TransmitPlayerWithText(3, sceneData:GetDummyPoint(3,"Q100013Player").pos, sceneData:GetDummyPoint(3,"Q100013Player").rot,{"QUEST_Message_Q100012"},3,self.FinishSneak)
    -- self:PlayCutscene(q1000Cfg.GongziDebutCfg, 
    self:PlayCutsceneIndex(100002, 
    function (self)
        -- self:TransmitPlayer(3, sceneData:GetDummyPoint(3,"Q100013Player").pos, sceneData:GetDummyPoint(3,"Q100013Player").rot,self.FinishSneak)
		local quest = actorMgr:GetActor(q1000Cfg.ActorAlias)
		if quest ~= nil then
			quest:FinishQuest(false, nil)
		end 
	end
	)
end

function Quest1000:OnSubStart100013(quest)
    print("100013 start:...")
    self:CreateQuestNpc(quest, GongziData.ID)
    self:NotifyTo("Npc2091", DailyNpcManager.NpcEventType.HIDESELF, true)

    self:NotifyTo("Npc2014", DailyNpcManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2073",  DailyNpcManager.NpcEventType.STARTDAILY, true)
    -- self:NotifyTo("Npc2029", DailyNpcManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2071",  DailyNpcManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2069", DailyNpcManager.NpcEventType.STARTDAILY, true)
    -- self:RequestInteraction(GongziData.Alias .. tostring(1000))
end

function Quest1000:OnSubStart100014(quest)
    print("100014 start:...")
    -- self:CreateQuestNpc(quest, GongziData.ID)
    -- local Gongzi = self:GetQuestNpcActor(GongziData.Alias)
    -- if Gongzi ~= nil then
    --     Gongzi:SetVisible(true)
    -- end  
    actorMgr:CreateActorWithPos("Q100014Trigger", "Actor/Gadget/Q100014Trigger", 70900002, 0, sceneData:GetDummyPoint(3,"Q100014Gongzi").pos, sceneData:GetDummyPoint(3,"Q100014Gongzi").rot, true, false)

    self:NotifyTo("Npc2056", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2057", DailyNpcManager.NpcEventType.HIDESELF, true)
end

--@endregion

--@region sub finish handlers
function Quest1000:OnSubFinish100001(quest)
    print("OnFinished 100001")
    self:NotifyTo("Npc2025", DailyNpcManager.NpcEventType.STARTDAILY, true)
    self:ActionSafeCall(
        function(self)
            local paimon = self:GetQuestNpcActor("Paimon")
            if paimon ~= nil then
                paimon:DestroyWithDisappear(false)
            end   
        end
    )
end

function Quest1000:OnSubFinish100002(quest)
    print("OnFinished 100002")
    self:ActionSafeCall(
        function(self)
            local paimon = self:GetQuestNpcActor("Paimon")
            if paimon ~= nil then
                paimon:DestroyWithDisappear(false)
            end   
        end
    )
end

function Quest1000:OnSubFinish100003(quest)
    print("OnFinished 100003")
    self:ActionSafeCall(
        function(self)
            local paimon = self:GetQuestNpcActor("Paimon")
            if paimon ~= nil then
                paimon:DestroyWithDisappear(false)
            end   
        end
    )
end

function Quest1000:OnSubFinish100004(quest)
    print("OnFinished 100004")
    self:ActionSafeCall(
        function(self)
            local paimon = self:GetQuestNpcActor("Paimon")
            if paimon ~= nil then
                paimon:DestroyWithDisappear(false)
            end   
        end
    )
end

function Quest1000:OnSubFinish100005(quest)
    print("OnFinished 100005")
end

function Quest1000:OnSubFinish100006(quest)
    print("OnFinished 100006")

end

function Quest1000:OnSubFinish100007(quest)
    print("OnFinished 100007")
    self:NotifyTo("Npc2064", DailyNpcManager.NpcEventType.STARTDAILY, true)
    self:CallDelay(1,
        function (self)
            self:NarratorOnlyTask(q1000Cfg.NarratorFlow01, nil, "Tag")
        end
    )
    local NPCBolaiData = self:GetQuestNpcActor(BolaiData.Alias)
    if NPCBolaiData ~= nil then
        NPCBolaiData:Destroy(false)
    end 
end


function Quest1000:OnSubFinish100021(quest)
    print("OnFinished 100021")
    self:ActionSafeCall(
        function(self)
            local paimon = self:GetQuestNpcActor("Paimon")
            if paimon ~= nil then
                paimon:DestroyWithDisappear(false)
            end   
        end
    )
    -- self:PlayEffect("Eff_Item_CenserLight_Temp", sceneData:GetDummyPoint(3,"Q1000Xianglu2Mid").pos)
	-- local runtimeID = actorMgr:GetEntityHandler("Xianglu2")
    -- self:SetEntityMaterialPropValue(runtimeID, 2, 4)


end

function Quest1000:CheckLight2(quest)
    if bright01 < 10 then
        self:ShowLight2()
    end
end

function Quest1000:ShowLight2(quest)
    bright01 = bright01 + 0.9
    local runtimeID = actorMgr:GetEntityHandler("Xianglu2")
    self:SetEntityMaterialPropValue(runtimeID, 2, bright01)
    self:CallDelay(0.2,self.CheckLight2)
end

function Quest1000:OnSubFinish100022(quest)
    print("OnFinished 100022")
    self:ActionSafeCall(
        function(self)
            local paimon = self:GetQuestNpcActor("Paimon")
            if paimon ~= nil then
                paimon:DestroyWithDisappear(false)
            end   
        end
    )
    -- self:PlayEffect("Eff_Item_CenserLight_Temp", sceneData:GetDummyPoint(3,"Q1000Xianglu1Mid").pos)
	-- local runtimeID = actorMgr:GetEntityHandler("Xianglu1")
    -- self:SetEntityMaterialPropValue(runtimeID, 2, 4)
    self:ShowLight1()
end

function Quest1000:CheckLight1(quest)
    if bright02 < 10 then
        self:ShowLight1()
    end
end

function Quest1000:ShowLight1(quest)
    bright02 = bright02 + 0.9
    local runtimeID = actorMgr:GetEntityHandler("Xianglu1")
    self:SetEntityMaterialPropValue(runtimeID, 2, bright02)
    self:CallDelay(0.2,self.CheckLight1)
end


function Quest1000:OnSubFinish100015(quest)
    print("OnFinished 100015")
    self:ActionSafeCall(
        function(self)
            local paimon = self:GetQuestNpcActor("Paimon")
            if paimon ~= nil then
                paimon:DestroyWithDisappear(false)
            end   
        end
    )
    self:CallDelay(4,
        function (self)
            self:NarratorOnlyTask(q1000Cfg.NarratorFlow, nil, "Tag")
        end
    )
    self:CallDelay(2,
        function (self)
            self:EnterSceneLookCamera(sceneData:GetDummyPoint(3,"Q1000Guard0101").pos, 2.5, 2, true, true)
        end
    )
    globalActor:EnablePlayerInput(false)
    self:CallDelay(4,
        function()
            globalActor:EnablePlayerInput(true)
        end
    )
end


function Quest1000:OnSubFinish100010(quest)
    print("OnFinished 100010")
    self:SneakAIDestroy()
    self:NPCDestroy()
    self:ExitWildSneakMode()
    self:TriggerLevelAbility("Level_Remove_Switch_SneakBtn")
    self:UnSpawn("Goal1") 
    self:UnSpawn("Goal2") 
end

function Quest1000:OnSubFinish100013(quest)
    print("OnFinished 100013")
    self:ActionSafeCall(
        function(self)
            self:ShowBlackScreen(0.5, 1, 0.5,
            function(self)
                -- self:CreateQuestNpcById(100014, GongziData.ID)
                local Gongzi = self:GetQuestNpcActor(GongziData.Alias)
                if Gongzi ~= nil then
                    Gongzi:Destroy(false)
                end  
                local paimon = self:GetQuestNpcActor("Paimon")
                if paimon ~= nil then
                    paimon:DestroyWithDisappear(false)
                end   
            end
        ) 
        end
    )
end

function Quest1000:OnSubFinish100014(quest)
    print("OnFinished 100014")
    self:NotifyTo("Npc2091", DailyNpcManager.NpcEventType.STARTDAILY, true)

    self:ActionSafeCall(
        function(self)
            -- self:ShowBlackScreen(0.5, 1, 0.5,
            -- function(self)
                -- local Gongzi = self:GetQuestNpcActor(GongziData.Alias)
                -- if Gongzi ~= nil then
                --     Gongzi:Destroy(false)
                -- end  
                local paimon = self:GetQuestNpcActor("Paimon")
                if paimon ~= nil then
                    paimon:DestroyWithDisappear(false)
                end   
            end
        -- ) 
        -- end
    )
end

function Quest1000:InvokeOnInteraction(param)
    if param == 31 then
        print("Now Xianglu1")
        self:ShowLight1()
    elseif param == 21 then
        print("Now Xianglu2")
        self:ShowLight2()
    end
end

--@endregion

function Quest1000:Start()
end

function Quest1000:OnDestroy()
end

return Quest1000