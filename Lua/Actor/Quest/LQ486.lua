require("Actor/ActorCommon")
local questActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest486 = class("Quest486", questActorProxy)

Quest486.defaultAlias = "Quest486"

local q486Cfg = require("Quest/Client/Q486ClientConfig")
util.do_require('Quest/Share/Q486ShareConfig')
--local q486Cfg_share = require("Quest/Share/Q486ShareConfig")
local questData = q486Cfg.QuestData
local CatNpcData = q486Cfg.CatNpcData
local BarNpcData = q486Cfg.BarNpcData
local QinData = q486Cfg.QinData
local BabaraData = q486Cfg.BarbaraData
local KaeyaData = q486Cfg.KaeyaData
local PaimonData = q486Cfg.PaimonData
local quest_data48605 = quest_data["48605"]
local quest_data48608 = quest_data["48608"]
local quest_data48610 = quest_data["48610"]
local quest_data48607 = quest_data["48607"]


-- Generated
function Quest486:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["48601"] = self.OnSubStart48601
    self.subStartHandlers["48602"] = self.OnSubStart48602
    self.subStartHandlers["48603"] = self.OnSubStart48603
    self.subStartHandlers["48604"] = self.OnSubStart48604
    self.subStartHandlers["48605"] = self.OnSubStart48605
    self.subStartHandlers["48606"] = self.OnSubStart48606
    self.subStartHandlers["48607"] = self.OnSubStart48607
    self.subStartHandlers["48608"] = self.OnSubStart48608
    self.subStartHandlers["48609"] = self.OnSubStart48609
    self.subStartHandlers["48610"] = self.OnSubStart48610
    self.subStartHandlers["48611"] = self.OnSubStart48611
    self.subStartHandlers["48612"] = self.OnSubStart48612
    self.subStartHandlers["48613"] = self.OnSubStart48613
    self.subStartHandlers["48614"] = self.OnSubStart48614
    self.subStartHandlers["48615"] = self.OnSubStart48615
end

function Quest486:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["48601"] = self.OnSubFinish48601
    self.subFinishHandlers["48602"] = self.OnSubFinish48602
    self.subFinishHandlers["48603"] = self.OnSubFinish48603
    self.subFinishHandlers["48604"] = self.OnSubFinish48604
    self.subFinishHandlers["48605"] = self.OnSubFinish48605
    self.subFinishHandlers["48606"] = self.OnSubFinish48606
    self.subFinishHandlers["48607"] = self.OnSubFinish48607
    self.subFinishHandlers["48608"] = self.OnSubFinish48608
    self.subFinishHandlers["48609"] = self.OnSubFinish48609
    self.subFinishHandlers["48610"] = self.OnSubFinish48610
    self.subFinishHandlers["48611"] = self.OnSubFinish48611
    self.subFinishHandlers["48612"] = self.OnSubFinish48612
    self.subFinishHandlers["48613"] = self.OnSubFinish48613
    self.subFinishHandlers["48614"] = self.OnSubFinish48614
    self.subFinishHandlers["48615"] = self.OnSubFinish48615
end

function Quest486:SceneLookCamera()
    print("PaimonNarrator Start : ")
    self:EnablePlayerInput(false)
    self:EnterSceneLookCamera(questData.camPos1, 0, 3, true, true)
    --self:NarratorOnlyTask(q462Cfg.NarratorData.Story4)
    --self:EnablePlayerInput(true)
end

function Quest486:InvokeOnInteraction(param)
    if param == 0 then
        --local Qin = actorMgr:GetActor(QinData.Alias)
        local Qin = self:GetQuestNpcActor(QinData.Alias)
        if Qin ~= nil then
            Qin:DoFreeStateTrigger()
            Qin:WalkToTask(
                QinData.BornPos2,
                function(self)
                    --Qin:SitOnChair()
                    Qin:SitOnChair(8010)
                end
            )
        end
    elseif param == 1 then
        --local Qin = actorMgr:GetActor(QinData.Alias)
        local Qin = self:GetQuestNpcActor(QinData.Alias)
        if Qin ~= nil then
			Qin:SitOnChair(8062)
            --Qin:DoFreeStyle(8062)
            --[[Qin:DoFreeStyle(8010)
            self:CallDelay(
                1.1,
                function(self)
                    Qin:DoFreeStyle(8062)
                end
            )]]
        end
    elseif param == 2 then
    end
end

---sub start & finish 内调用的函数
function Quest486:PaimonVanish()
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
function Quest486:OnSubStart48601(quest)
end

function Quest486:PlayerInputOn()
    print("PaimonNarrator Start : ")
    self:EnablePlayerInput(true)
end

function Quest486:OnSubFinish48601(quest)
    self:SceneLookCamera()
    self:NarratorOnlyTask(q486Cfg.NarratorData.Story1)
    self:CallDelay(4, self.PlayerInputOn)
end

function Quest486:OnSubFinish48602(quest)
    print("48602 Finish : Creat Paimon")
    self:PaimonVanish()
end

function Quest486:OnSubStart48603(quest)
    --actorMgr:CreateActorWithPos(BarNpcData.Alias, BarNpcData.Script, BarNpcData.ID, 0, BarNpcData.NPCPos1, BarNpcData.NPCDir1, true, false, 3)
    self:CreateQuestNpc(quest, BarNpcData.ID)
end

function Quest486:OnSubFinish48603(quest)
    local npc = self:GetQuestNpcActor(BarNpcData.Alias)
    self:PaimonVanish()
end

function Quest486:OnSubStart48604(quest)
    --actorMgr:CreateActorWithPos(CatNpcData.Alias, CatNpcData.Script, CatNpcData.ID, 0, CatNpcData.NPCPos1, CatNpcData.NPCDir1, true, false, 3)
    self:CreateQuestNpc(quest, CatNpcData.ID)
    local npc = self:GetQuestNpcActor(CatNpcData.Alias)
    --npc:BanDaily()
end

function Quest486:OnSubStart48605(quest)
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.StartTalk48605)
end

function Quest486:StartTalk48605()
    print("46302 Start : ")
    --actorMgr:CreateQuestNpc(48605, CatNpcData.ID,quest_data48605)
    self:CreateQuestNpcById(48605, CatNpcData.ID)
    --actorMgr:CreateActorWithPos(CatNpcData.Alias, CatNpcData.Script, CatNpcData.ID, 0, CatNpcData.NPCPos1, CatNpcData.NPCDir1, true, false, 3)
    self:NotifyTo("Npc1431", NpcUtil.NpcEventType.HIDESELF, true)
	self:CallDelay(
        0.5,
        function(self)
            self:RequestInteraction(CatNpcData.Alias)
        end
    )
end

function Quest486:DestroySelf(actor)
    actor:Destroy(false)
end

function Quest486:OnSubFinish48605(quest)
    --local npc = actorMgr:GetActor(CatNpcData.Alias)
    local npc = self:GetQuestNpcActor(CatNpcData.Alias)
    self:PaimonVanish()
    npc:EnableInteraction(false)
    npc:WalkToTask(
    CatNpcData.NPCPos2,
    function(actor, task)
        actor:ClearFollowTask()
        actor:EnableInteraction(true)
        actor:PerformDither(
            false,
            1,
            function()
                --actorMgr:CreateActorWithPos(CatNpcData.Alias, CatNpcData.Script, CatNpcData.ID, 0, CatNpcData.NPCPos3, CatNpcData.NPCDir3, true, false, 3,true,0,48605)
                self:CreateQuestNpcById(48605, CatNpcData.ID,2)
                --actorMgr:CreateQuestNpc(48605, CatNpcData.ID,q486Cfg_share.quest_data["48605"] )
            end
        )
    end
)

end



function Quest486:OnSubStart48606(quest)
    --actorMgr:CreateActorWithPos(QinData.Alias, QinData.Script, QinData.ID, 0, QinData.QinPos1, QinData.QinDir1, true, false, 1004,true,100402)
    self:CreateQuestNpc(quest, QinData.ID, 0)
end

function Quest486:OnSubStart48607(quest)
	--actorMgr:CreateActorWithPos(CatNpcData.Alias, CatNpcData.Script, CatNpcData.ID, 0, CatNpcData.NPCPos3, CatNpcData.NPCDir3, true, false,3)
    self:CreateQuestNpc(quest, CatNpcData.ID)
    self:NotifyTo("Npc1431", NpcUtil.NpcEventType.STARTDAILY, true)
	self:ShowBlackScreen(0.5, 0.5, 0.5, self.StartTalk48607)

    
end

function Quest486:StartTalk48607()
    print("46302 Start : ")
    --actorMgr:CreateActorWithPos(QinData.Alias, QinData.Script, QinData.ID, 0, QinData.QinPos1, QinData.QinDir1, true, false, 1004,true,100402)
    --self:CreateQuestNpcById(48607, QinData.ID)
    self:CallDelay(
        0.5,
        function(self)
            print("48607 RequestInteraction : ")
            self:RequestInteraction(QinData.Alias)
        end
    )
end

function Quest486:OnSubFinish48607(quest)
    --self:PaimonVanish()
end

function Quest486:OnSubStart48608(quest)
    self:TransmitPlayerWithText(1008, questData.PlayerPos1, questData.PlayerDir1, {"QUEST_Message_Q48608"}, 7, self.StartTalkBabara)
end

function Quest486:OnSubFinish48608(quest)
    self:PaimonVanish()
end

function Quest486:OnSubStart48609(quest)
    --actorMgr:CreateActorWithPos(KaeyaData.Alias, KaeyaData.Script, KaeyaData.ID, 0, KaeyaData.KaeyaPos, KaeyaData.KaeyaDir, true, false, 3)
end

function Quest486:OnSubStart48610(quest)
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.StartTalk48610)
    self:CreateQuestNpcById(48610, CatNpcData.ID,2)
    --self:RequestInteraction("NPC_Mengde_Male_InsomniaStand_16")
    --actorMgr:CreateActorWithPos(KaeyaData.Alias, KaeyaData.Script, KaeyaData.ID, 0, KaeyaData.KaeyaPos, KaeyaData.KaeyaDir, true, false,3)
end

function Quest486:StartTalk48610()
    print("46302 Start : ")
    --actorMgr:CreateActorWithPos(KaeyaData.Alias, KaeyaData.Script, KaeyaData.ID, 0, KaeyaData.KaeyaPos1, KaeyaData.KaeyaPos1, true, false, 3)
    self:CreateQuestNpcById(48610, KaeyaData.ID)
    
    self:CallDelay(
        0.5,
        function(self)
            print("48610 RequestInteraction : ")
            self:RequestInteraction(KaeyaData.Alias)
        end
    )
end

function Quest486:OnSubFinish48610(quest)
    self:PaimonVanish()
    local kaeya = self:GetQuestNpcActor(KaeyaData.Alias)
    kaeya:EnableInteraction(false)
    kaeya:WalkToTask(
        KaeyaData.KaeyaPos1,
        function(actor, task)
            actor:ClearFollowTask()
            actor:EnableInteraction(true)
            actor:PerformDither(false, 1, actor.HideSelf)
        end
    )
end

function Quest486:OnSubFinish48611(quest)
end

function Quest486:OnSubFinish48612(quest)
end

function Quest486:OnSubFinish48613(quest)
end

function Quest486:OnSubStart48615(quest)
    local quest = actorMgr:GetActor(q486Cfg.ActorAlias)
    if quest ~= nil then
        quest:FinishQuestID(false, 48615)
    end
end

function Quest486:OnSubFinish48615(quest)
end

function Quest486:StartTalkBabara()
    print("request interaction")
    --actorMgr:CreateActorWithPos(BabaraData.Alias, BabaraData.Script, BabaraData.ID, 0, BabaraData.BabaraPos1, BabaraData.BabaraDir1, true, false, 1008)
    --actorMgr:CreateQuestNpc(48608, BabaraData.ID,quest_data48608)
    --self:CreateQuestNpc(, BabaraData.ID)
    self:CreateQuestNpcById(48608, BabaraData.ID)    
    --self:RequestInteraction(BabaraData.Alias)
    self:RequestInteraction(BabaraData.Alias)
end

--@endregion

function Quest486:Start()
end

function Quest486:OnDestroy()
end

return Quest486
