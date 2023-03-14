require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest359 = class("Quest359", questActorProxy)

Quest359.defaultAlias = "Quest359"

local NpcUtil = require('Actor/Npc/NPCUtil')
local q359Cfg = require('Quest/Client/Q359ClientConfig')
local Q359NPC1Data = q359Cfg.Q359NPC1Data
local Q359NPC2Data = q359Cfg.Q359NPC2Data
local Q359NPC3Data = q359Cfg.Q359NPC3Data
local Q359NPC4Data = q359Cfg.Q359NPC4Data
local Q359NPC5Data = q359Cfg.Q359NPC5Data
local Q359NPC6Data = q359Cfg.Q359NPC6Data
local DungEffectData = q359Cfg.DungEffectData

-- Generated
function Quest359:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["35901"] = self.OnSubStart35901
    self.subStartHandlers["35902"] = self.OnSubStart35902
    self.subStartHandlers["35903"] = self.OnSubStart35903
    self.subStartHandlers["35904"] = self.OnSubStart35904
end

function Quest359:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["35901"] = self.OnSubFinish35901
    self.subFinishHandlers["35902"] = self.OnSubFinish35902
    self.subFinishHandlers["35903"] = self.OnSubFinish35903
    self.subFinishHandlers["35904"] = self.OnSubFinish35904
end

-- local param begin
-- local param end
---sub start & finish 内调用的函数
-- end

-- local method begin
--@region sub start handlers 
function Quest359:OnSubStart35901(quest)
    print("35901 start ")
    self:ActionSafeCall(
    function (self)
        --globalActor:SpawnGadget(70700004, sceneData:GetDummyPoint(3,"Q359MengdeWindDragon").pos, sceneData:GetDummyPoint(3,"Q359MengdeWindDragon").rot, "MengdeWindDragon")
        self:SpawnGadget(quest, 70700004, 1)
		self:CreateQuestNpc(quest, Q359NPC1Data.Q359NPC1ID)
        self:CreateQuestNpc(quest, Q359NPC2Data.Q359NPC2ID)
        self:CreateQuestNpc(quest, Q359NPC3Data.Q359NPC3ID)
        self:CreateQuestNpc(quest, Q359NPC4Data.Q359NPC4ID)
        self:CreateQuestNpc(quest, Q359NPC5Data.Q359NPC5ID)
        self:CreateQuestNpc(quest, Q359NPC6Data.Q359NPC6ID)
        print("-----------Notify NPC to Panic-----------")
        local MengdeNpcList = NpcUtil.GetMengdeNpcListSpecial()
        for i=1, #MengdeNpcList do
            self:NotifyTo(MengdeNpcList[i], NpcUtil.NpcEventType.HIDESELF, true)
        end
    end
    )
end

function Quest359:OnSubStart35902(quest)
    print("35902 start ")
    --globalActor:SpawnGadget(DungEffectData.EffectID, DungEffectData.BornPos1, DungEffectData.BornDir1, DungEffectData.AmborDungeon)
    self:SpawnGadget(quest, DungEffectData.EffectID, 1)
end

function Quest359:OnSubStart35903(quest)
    print("35903 start ")
    --globalActor:SpawnGadget(DungEffectData.EffectID, DungEffectData.BornPos2, DungEffectData.BornDir2, DungEffectData.GaiaDungeon)
    self:SpawnGadget(quest, DungEffectData.EffectID, 1)
end

function Quest359:OnSubStart35904(quest)
    print("35904 start ")
    --globalActor:SpawnGadget(DungEffectData.EffectID, DungEffectData.BornPos3, DungEffectData.BornDir3, DungEffectData.LisaDungeon)
    self:SpawnGadget(quest, DungEffectData.EffectID, 1)
end
--@endregion

--@region sub finish handlers
function Quest359:OnSubFinish35901(quest)
    print("OnFinished 35901")
    globalActor:UnSpawn("MengdeWindDragon")
    -- globalActor:LeaveWeather()
    self:DestroyQuestNpcActor("Q357NPC1", 3)
    self:DestroyQuestNpcActor("Q357NPC2", 3)
    self:DestroyQuestNpcActor("Q357NPC3", 3)
    self:DestroyQuestNpcActor("Q357NPC4", 3)
    self:DestroyQuestNpcActor("Q357NPC5", 3)
    self:DestroyQuestNpcActor("Q357NPC6", 3)
    --actorMgr:DestroyEntityActor("Q357NPC1")
    --actorMgr:DestroyEntityActor("Q357NPC2")
    --actorMgr:DestroyEntityActor("Q357NPC3")
    --actorMgr:DestroyEntityActor("Q357NPC4")
    --actorMgr:DestroyEntityActor("Q357NPC5")
    --actorMgr:DestroyEntityActor("Q357NPC6")
    
    print("-----------Notify NPC to Daily-----------")
    local MengdeNpcList=NpcUtil.GetMengdeNpcListSpecial()
    for i=1, #MengdeNpcList do
        self:NotifyTo(MengdeNpcList[i], NpcUtil.NpcEventType.STARTDAILY, true)
    end
end

function Quest359:OnSubFinish35902(quest)
    print("OnFinished 35902")
    globalActor:UnSpawn(DungEffectData.AmborDungeon)
end

function Quest359:OnSubFinish35903(quest)
    print("OnFinished 35903")
    globalActor:UnSpawn(DungEffectData.GaiaDungeon)
end

function Quest359:OnSubFinish35904(quest)
    print("OnFinished 35904")
    globalActor:UnSpawn(DungEffectData.LisaDungeon)
end
--@endregion

function Quest359:Start()
end

function Quest359:OnDestroy()
end

return Quest359