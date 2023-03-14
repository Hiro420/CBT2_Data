require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest357 = class("Quest357", questActorProxy)

Quest357.defaultAlias = "Quest357"
local NpcUtil = require('Actor/Npc/NPCUtil')
local q357Cfg = require('Quest/Client/Q357ClientConfig')

local AmborData = q357Cfg.AmborData
local GaiaData = q357Cfg.GaiaData
local Q357NPC1Data = q357Cfg.Q357NPC1Data
local Q357NPC2Data = q357Cfg.Q357NPC2Data
local Q357NPC3Data = q357Cfg.Q357NPC3Data
local Q357NPC4Data = q357Cfg.Q357NPC4Data
local Q357NPC5Data = q357Cfg.Q357NPC5Data
local Q357NPC6Data = q357Cfg.Q357NPC6Data

-- Generated
function Quest357:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
    -- self.subStartHandlers["35720"] = self.OnSubStart35720
    self.subStartHandlers["35721"] = self.OnSubStart35721
    self.subStartHandlers["35722"] = self.OnSubStart35722
    self.subStartHandlers["35723"] = self.OnSubStart35723
    self.subStartHandlers["35724"] = self.OnSubStart35724
    self.subStartHandlers["35725"] = self.OnSubStart35725
end

function Quest357:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
    -- self.subFinishHandlers["35720"] = self.OnSubFinish35720
    self.subFinishHandlers["35721"] = self.OnSubFinish35721
    self.subFinishHandlers["35722"] = self.OnSubFinish35722
    self.subFinishHandlers["35723"] = self.OnSubFinish35723
    self.subFinishHandlers["35724"] = self.OnSubFinish35724
    self.subFinishHandlers["35725"] = self.OnSubFinish35725
end

---sub start & finish 内调用的函数
--@region sub start & finish

--@endregion

--老的一阶段脚本
--@region old quest sub start & finish handlers

---按流程触发顺序

--@endregion

function Quest357:OnSubStart35721(quest)
    print("35721 Start : Cutscene")
    self:ActionSafeCall(
        function (self)
            local MengdeNpcList=NpcUtil.GetMengdeNpcListSpecial()
            for i=1, #MengdeNpcList do
                self:NotifyTo(MengdeNpcList[i], NpcUtil.NpcEventType.HIDESELF, true)
            end

            self:PlayCutsceneIndex(35701,
            function (self)
                globalActor:PlayerEnterDungeon(67, 2004)
            end
            )
        end
    )
end

function Quest357:OnSubStart35722(quest)
    print("35722 Start : ...")
end

function Quest357:OnSubStart35723(quest)
    print("35723 Start : ...")
    local AmborData = self.clientData.AmborData

    -- actorMgr:CreateActorWithPos(AmborData.Ambor, AmborData.AmborScript, AmborData.AmborID, 0, AmborData.Pos4, AmborData.Dir4, true, false) 
    self:CreateQuestNpc(quest, AmborData.AmborID, 0)

    self:PlayCutsceneIndex(35703,
    function (self)
        self:RequestInteraction("Ambor")
    end
    )
end

function Quest357:OnSubStart35724(quest)
    print("35724 Start : ...")
end

function Quest357:OnSubStart35725(quest)
    print("35724 Start : ...")

end

function Quest357:OnSubFinish35721(quest)
	print("35721 Finish : ...")
end

function Quest357:OnSubFinish35722(quest)
    print("35722 Finish : ...")

    self:CallDelay(1,
    function (self)
        self:TriggerLevelAbility("Dvalin_S00_ResetSkyBox")
    end
    )
    
    self:PlayCutsceneIndex(35702,
    function (self)
        self:TransmitPlayer(3, sceneData:GetDummyPoint(3,"Q35707Player").pos, sceneData:GetDummyPoint(3,"Q35707Player").rot)
    end
    )
end

function Quest357:OnSubFinish35723(quest)
    print("35723 Finish : ...")
    self:ActionSafeCall(
        function(self)
            --local ambor = actorMgr:GetActor(AmborData.Ambor)
            local ambor = self:GetQuestNpcActor(AmborData.Ambor)
            if ambor ~= nil then
                ambor:Destroy(false)
            end
            
            --local gaia = actorMgr:GetActor(GaiaData.Gaia)
            local gaia = self:GetQuestNpcActor(GaiaData.Gaia)
            if gaia ~= nil then
                gaia:Destroy(false)
            end

            --local paimon = actorMgr:GetActor("Paimon")
            local paimon = self:GetQuestNpcActor("Paimon")
            if paimon ~= nil then
                paimon:DestroyWithDisappear(false)
            end
        end
    )
end

function Quest357:OnSubFinish35725(quest)
end


function Quest357:Start()
end

function Quest357:OnDestroy()
end

return Quest357