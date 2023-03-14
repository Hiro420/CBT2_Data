require("Actor/ActorCommon")
local questActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest490 = class("Quest490", questActorProxy)

Quest490.defaultAlias = "Quest490"

local q490Cfg = require("Quest/Client/Q490ClientConfig")

local PaimonData = q490Cfg.PaimonData
local QinData = q490Cfg.QinData
local BabaraData = q490Cfg.BarbaraData
local KaeyaData = q490Cfg.KaeyaData
local questData = q490Cfg.QuestData
local MonsterData = q490Cfg.MonsterData
local BallData = q490Cfg.BallData
local BarbaraPublic = q490Cfg.BarbaraPublic
local AmborPublic = q490Cfg.AmborPublic
local KaeyaPublic = q490Cfg.KaeyaPublic
local LisaPublic = q490Cfg.LisaPublic
local DilukePublic = q490Cfg.DilukePublic
-- local WindyPublic = q490Cfg.WindyPublic
local WindyPublic = q490Cfg.WindyPublic1
local WindyPublic1 = q490Cfg.WindyPublic1
local PaimonPublic = q490Cfg.PaimonPublic


-- Generated
function Quest490:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["49001"] = self.OnSubStart49001
    self.subStartHandlers["49002"] = self.OnSubStart49002
    self.subStartHandlers["49003"] = self.OnSubStart49003
    self.subStartHandlers["49004"] = self.OnSubStart49004
    self.subStartHandlers["49005"] = self.OnSubStart49005
    self.subStartHandlers["49006"] = self.OnSubStart49006
    self.subStartHandlers["49007"] = self.OnSubStart49007
    self.subStartHandlers["49008"] = self.OnSubStart49008
    self.subStartHandlers["49009"] = self.OnSubStart49009
    self.subStartHandlers["49010"] = self.OnSubStart49010
    self.subStartHandlers["49011"] = self.OnSubStart49011
    self.subStartHandlers["49012"] = self.OnSubStart49012
	self.subStartHandlers["49013"] = self.OnSubStart49013
	self.subStartHandlers["49014"] = self.OnSubStart49014
end

function Quest490:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["49001"] = self.OnSubFinish49001
    self.subFinishHandlers["49002"] = self.OnSubFinish49002
    self.subFinishHandlers["49003"] = self.OnSubFinish49003
    self.subFinishHandlers["49004"] = self.OnSubFinish49004
    self.subFinishHandlers["49005"] = self.OnSubFinish49005
    self.subFinishHandlers["49006"] = self.OnSubFinish49006
    self.subFinishHandlers["49007"] = self.OnSubFinish49007
    self.subFinishHandlers["49008"] = self.OnSubFinish49008
    self.subFinishHandlers["49009"] = self.OnSubFinish49009
    self.subFinishHandlers["49010"] = self.OnSubFinish49010
    self.subFinishHandlers["49011"] = self.OnSubFinish49011
    self.subFinishHandlers["49012"] = self.OnSubFinish49012
	self.subFinishHandlers["49013"] = self.OnSubFinish49013
	self.subFinishHandlers["49014"] = self.OnSubFinish49014
end

---sub start & finish 内调用的函数
function Quest490:PaimonVanish()
    print("paimon vanish")
    local paimon = self:GetQuestNpcActor(PaimonData.Alias)
    paimon:AirModeOff()
    --paimon:VanishKeep()
    if paimon ~= nil then
        paimon:DestroyWithDisappear(false)
    end
end

--@region sub start & finish handlers
---按流程触发顺序
function Quest490:OnSubStart49001(quest)
    --actorMgr:CreateActorWithPos(BabaraData.Alias, BabaraData.Script, BabaraData.ID, 0, BabaraData.BabaraPos1, BabaraData.BabaraDir1, true, false, 1008)
    self:CreateQuestNpc(quest, BabaraData.ID)
    self:NarratorOnlyTask(q490Cfg.NarratorData.Story1)
end

function Quest490:OnSubFinish49001(quest)
    print("49001 Finish : Story")
    self:PaimonVanish()
end

function Quest490:OnSubStart49002(quest)
    --actorMgr:CreateActorWithPos(QinData.Alias, QinData.Script, QinData.ID, 0, QinData.QinPos1, QinData.QinDir1, true, false, 3)
    self:CreateQuestNpc(quest, QinData.ID)
end

function Quest490:OnSubFinish49002(quest)
    print("49002 Finish : Creat Paimon")
end

function Quest490:OnSubStart49003(quest)
    --self:PlayCutscene(self.clientData.InterData.Cutscene1, self.On49003CutsceneFinish)
    self:PlayCutsceneIndex(49001, self.On49003CutsceneFinish)
end

function Quest490:On49003CutsceneFinish()
    self:RequestInteraction(QinData.Alias)
end

function Quest490:OnSubFinish49003(quest)
    print("49003 Finish : Paimon Vanish")
	self:PaimonVanish()
	--actorMgr:CreateActorWithPos(MonsterData.Alias, MonsterData.Script, MonsterData.ID, 0, MonsterData.Pos1, MonsterData.Dir1, true, false, 3)
    self:CreateQuestNpc(quest, MonsterData.ID)
    --local monster = actorMgr:GetActor(MonsterData.Alias)
    local monster = self:GetQuestNpcActor(MonsterData.Alias)
    --paimon:VanishKeep()
	if monster ~= nil then
		--monster:SetPos(MonsterData.Pos1)
        monster:WalkToTask(
            MonsterData.Pos2,
            function(actor, task)
                actor:ClearFollowTask()
                actor:PerformDither(false, 1, actor.HideSelf)
            end
        )
    end
    --local qin = actorMgr:GetActor(QinData.Alias)
    local qin = self:GetQuestNpcActor(QinData.Alias)
    qin:EnableInteraction(false)
    qin:RunToRouteTask(
        QinData.QinRoutePoints,
        function(actor, task)
            actor:ClearFollowTask()
            actor:EnableInteraction(true)
            actor:PerformDither(false, 1, actor.HideSelf)
        end
    )
end

function Quest490:OnSubStart49006(quest)   
	self:CallDelay(
        4,
        function(self)
            self:ShowBlackScreen(0.5, 0.5, 0.5, self.StartTalk49006)
        end
    )
end

function Quest490:StartTalk49006()
	--actorMgr:CreateActorWithPos(QinData.Alias, QinData.Script, QinData.ID, 0, QinData.QinPos4, QinData.QinDir4, true, false, 20022)
    self:CreateQuestNpcById(49006, QinData.ID)
    self:CallDelay(
        0.2,
        function(self)
            self:RequestInteraction(QinData.Alias)
        end
    )
end

function Quest490:OnSubFinish49006(quest)
    self:PaimonVanish()
	local qin = self:GetQuestNpcActor(QinData.Alias)
    qin:EnableInteraction(false)
    qin:RunToTask(
        QinData.QinPos8,
        function(actor, task)
            actor:ClearFollowTask()
            actor:EnableInteraction(true)
            actor:PerformDither(false, 1, self.MoveQin)
        end
    )
end

function Quest490:MoveQin()
    local quest = actorMgr:GetActor(q490Cfg.ActorAlias)
    local qin = quest:GetQuestNpcActor(QinData.Alias)
    qin:Destroy(false)
    --actorMgr:CreateActorWithPos(QinData.Alias, QinData.Script, QinData.ID, 0, QinData.QinPos2, QinData.QinDir2, true, false, 3,true,0,49006)
    quest:CreateQuestNpcById(49006, QinData.ID,2)
end

function Quest490:MoveQin2()
    local quest = actorMgr:GetActor(q490Cfg.ActorAlias)
    local qin = quest:GetQuestNpcActor(QinData.Alias)
    qin:Destroy(false)
    --actorMgr:CreateActorWithPos(QinData.Alias, QinData.Script, QinData.ID, 0, QinData.QinPos5, QinData.QinDir5, true, false, 1009)
    quest:CreateQuestNpcById(49007, QinData.ID)
end

function Quest490:OnSubStart49007(quest)
	--注意做个回滚
    --actorMgr:CreateActorWithPos(QinData.Alias, QinData.Script, QinData.ID, 0, QinData.QinPos2, QinData.QinDir2, true, false, 3)
end

function Quest490:OnSubFinish49007(quest)
    self:PaimonVanish()
	local qin = self:GetQuestNpcActor(QinData.Alias)
    qin:EnableInteraction(false)
    qin:RunToTask(
        QinData.QinPos9,
        function(actor, task)
            actor:ClearFollowTask()
            actor:EnableInteraction(true)
            actor:PerformDither(false, 1, self.MoveQin2)
        end
    )
end

function Quest490:OnSubStart49008(quest)
	local MengdeNpcList=NpcUtil.GetMengdeNpcListPublic()
    for i=1, #MengdeNpcList do
        self:NotifyTo(MengdeNpcList[i], NpcUtil.NpcEventType.HIDESELF, true)
    end
    --actorMgr:CreateActorWithPos(QinData.Alias, QinData.Script, QinData.ID, 0, QinData.QinPos5, QinData.QinDir5, true, false, 1009)
end

function Quest490:StartTalk49009()
    print("46302 Start : ")
    --actorMgr:CreateActorWithPos(QinData.Alias, QinData.Script, QinData.ID, 0, QinData.QinPos5, QinData.QinDir5, true, false, 1009)
    self:CreateQuestNpcById(49009, QinData.ID)
    self:CallDelay(
        0.2,
        function(self)
            self:RequestInteraction(QinData.Alias)
        end
    )
end

function Quest490:OnSubStart49009(quest)
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.StartTalk49009)
    --self:ActionSafeCall(self.RequestInteraction(QinData.Alias))
    --self:RequestInteraction(QinData.Alias)
end

function Quest490:OnSubFinish49009(quest)
	
end

function Quest490:CreateNpc(quest)
    --actorMgr:CreateActorWithPos(QinData.Alias, QinData.Script, QinData.ID, 0, QinData.QinPos3, QinData.QinDir3, true, false, 3)
    self:CreateQuestNpcById(49010, QinData.ID)
    self:PaimonVanish()

    --actorMgr:CreateActorWithPos(BarbaraPublic.Alias, BarbaraPublic.Script, BarbaraPublic.ID, 0, BarbaraPublic.Pos, BarbaraPublic.Dir, true, false, 1009)
    local babara = self:GetQuestNpcActor(BarbaraPublic.Alias)
    babara:SetPosAndTurnTo(BarbaraPublic.Pos,M.Euler2DirXZ(BarbaraPublic.Dir),true)
    babara:DoFreeStyle(1170)

    --ambor站立
    --actorMgr:CreateActorWithPos(AmborPublic.Alias, AmborPublic.Script, AmborPublic.ID, 0, AmborPublic.Pos, AmborPublic.Dir, true, false, 1009)
    local ambor = self:GetQuestNpcActor(AmborPublic.Alias)
    ambor:SetPosAndTurnTo(AmborPublic.Pos,M.Euler2DirXZ(AmborPublic.Dir),true)
    ambor:DoFreeStyle(1130)


    --actorMgr:CreateActorWithPos(KaeyaPublic.Alias, KaeyaPublic.Script, KaeyaPublic.ID, 0, KaeyaPublic.Pos, KaeyaPublic.Dir, true, false, 1009)
    local kaeya = self:GetQuestNpcActor(KaeyaPublic.Alias)
    kaeya:SetPosAndTurnTo(KaeyaPublic.Pos,M.Euler2DirXZ(KaeyaPublic.Dir),true)
    kaeya:SitOnChair(8010)

    --actorMgr:CreateActorWithPos(LisaPublic.Alias, LisaPublic.Script, LisaPublic.ID, 0, LisaPublic.Pos, LisaPublic.Dir, true, false, 1009)
    local lisa = self:GetQuestNpcActor(LisaPublic.Alias)
    lisa:SetPosAndTurnTo(LisaPublic.Pos,M.Euler2DirXZ(LisaPublic.Dir),true)
    lisa:DoFreeStyle(1130)


    --actorMgr:CreateActorWithPos(DilukePublic.Alias, DilukePublic.Script, DilukePublic.ID, 0, DilukePublic.Pos, DilukePublic.Dir, true, false, 1009)
    local diluke = self:GetQuestNpcActor(DilukePublic.Alias)
    diluke:SetPosAndTurnTo(DilukePublic.Pos,M.Euler2DirXZ(DilukePublic.Dir),true)
    diluke:DoFreeStyle(1120)

    -- local npc = actorMgr:GetActor(WindyPublic1.Alias)
    -- if npc ~= nil then
    --     npc:Destroy(false)
    -- end

    --actorMgr:CreateActorWithPos(WindyPublic.Alias, WindyPublic.Script, WindyPublic.ID, 0, WindyPublic.Pos, WindyPublic.Dir, true, false, 1009)
    local windy = self:GetQuestNpcActor(WindyPublic.Alias)
    windy:SetPosAndTurnTo(WindyPublic.Pos,M.Euler2DirXZ(WindyPublic.Dir),true)
    windy:SitOnChair(8020)

    local MengdeNpcList=NpcUtil.GetMengdeNpcListPublic()
    for i=1, #MengdeNpcList do
        self:NotifyTo(MengdeNpcList[i], NpcUtil.NpcEventType.HIDESELF, true)
    end
end

function Quest490:FinishCallback(quest)
    self:NarratorOnlyTask(q490Cfg.NarratorData.Story2)
    local babara = self:GetQuestNpcActor(BarbaraPublic.Alias)
    babara:DoFreeStyle(1170)
    local ambor = self:GetQuestNpcActor(AmborPublic.Alias)
    ambor:DoFreeStyle(1130)
    local kaeya = self:GetQuestNpcActor(KaeyaPublic.Alias)
    --kaeya:DoFreeStyle(8010)
    local lisa = self:GetQuestNpcActor(LisaPublic.Alias)
    lisa:DoFreeStyle(1130)
    local diluke = self:GetQuestNpcActor(DilukePublic.Alias)
    diluke:DoFreeStyle(1120)
    local windy = self:GetQuestNpcActor(WindyPublic.Alias)
    --windy:DoFreeStyle(8020)

    -- local kaeya = actorMgr:GetActor(KaeyaPublic.Alias)
    -- kaeya:SitOnChair()
    -- local windy = actorMgr:GetActor(WindyPublic.Alias)
    -- windy:SitOnChair()
    -- self:CallDelay(
    --     2,
    --     function(self)
    --         local kaeya = actorMgr:GetActor(KaeyaPublic.Alias)
    --         kaeya:SitOnChair()
    --         kaeya:DoFreeStyle(8010)
    --         local windy = actorMgr:GetActor(WindyPublic.Alias)
    --         windy:SitOnChair()
    --         windy:DoFreeStyle(8020)
    --     end
    -- )
end

function Quest490:OnSubStart49010(quest)
    --local task = curtainUtils.CreateEntityCreateTask({BarbaraPublic.Alias,WindyPublic.Alias,DilukePublic.Alias,LisaPublic.Alias,KaeyaPublic.Alias,AmborPublic.Alias})
    local task =  self:CreateQuestNpcCreateTask({QinData.Alias})
    self:ShowBlackScreen(0.5, 1, 0.5, self.CreateNpc,self.FinishCallback,task,"QUEST_Message_Q49010")
    --self:ShowBlackScreen(0.5, 1, 0.5, nil,self.FinishCallback,self.CreateNpc,{"QUEST_Message_Q49010"})    
    --actorMgr:CreateActorWithPos(PaimonPublic.Alias, PaimonPublic.Script, PaimonPublic.ID, 0, PaimonPublic.Pos, PaimonPublic.Dir, true, false, 1009)
    --self:TransmitPlayerWithText(3, questData.PlayerPos1, questData.PlayerDir1,{"QUEST_Message_Q49010"},self.StartTalkQin)
    

end

function Quest490:OnSubFinish49010(quest)
    self:PaimonVanish()
    self:DestroyQuestNpcActor(BarbaraPublic.Alias, 1009)
    self:DestroyQuestNpcActor(AmborPublic.Alias, 1009)
    self:DestroyQuestNpcActor(KaeyaPublic.Alias, 1009)
    self:DestroyQuestNpcActor(LisaPublic.Alias, 1009)
    self:DestroyQuestNpcActor(DilukePublic.Alias, 1009)
    self:DestroyQuestNpcActor(WindyPublic.Alias, 1009)
    self:DestroyQuestNpcActor(QinData.Alias, 3)
    -- local npc = actorMgr:GetActor(BarbaraPublic.Alias)
    -- if npc ~= nil then        
    --     npc:Destroy(false)
    -- end
    
    -- npc = actorMgr:GetActor(AmborPublic.Alias)
    -- if npc ~= nil then
    --     npc:Destroy(false)
    -- end
    -- npc = actorMgr:GetActor(KaeyaPublic.Alias)
    -- if npc ~= nil then
    --     npc:Destroy(false)
    -- end
    -- npc = actorMgr:GetActor(LisaPublic.Alias)
    -- if npc ~= nil then
    --     npc:Destroy(false)
    -- end
    -- npc = actorMgr:GetActor(DilukePublic.Alias)
    -- if npc ~= nil then
    --     npc:Destroy(false)
    -- end
    -- npc = actorMgr:GetActor(WindyPublic.Alias)
    -- if npc ~= nil then
    --     npc:Destroy(false)
    -- end
    -- npc = actorMgr:GetActor(QinData.Alias)
    -- if npc ~= nil then
    --     npc:Destroy(false)
    -- end

	local MengdeNpcList=NpcUtil.GetMengdeNpcListPublic()
    for i=1, #MengdeNpcList do
        self:NotifyTo(MengdeNpcList[i], NpcUtil.NpcEventType.STARTDAILY, true)
    end
end

function Quest490:OnSubStart49012(quest)
    self:CallDelay(
        4,
        function(self)
            self:ShowBlackScreen(0.5, 0.5, 0.5, self.StartTalk49012)
        end
    )
end

function Quest490:StartTalk49012()
    --actorMgr:CreateActorWithPos(QinData.Alias, QinData.Script, QinData.ID, 0, QinData.QinPos7, QinData.QinDir7, true, false, 20022)
    self:CreateQuestNpcById(49012, QinData.ID)
    self:CallDelay(
        0.2,
        function(self)
            self:RequestInteraction(QinData.Alias)
        end
    )
end

function Quest490:OnSubFinish49012(quest)
    --self:ShowBlackScreen(0.5, 0.5, 0.5,self.SpawnEn,self.SpawnEn1)
    self:PaimonVanish()
    --self:SpawnItem(BallData.BallID, BallData.BallPos,nil,"Q490Ball",20022)
    --self:SpawnItem(BallData.BallID, BallData.BallPos,nil,"Q490Ball",20022)
    --self:SpawnItem(BallData.BallID, BallData.BallPos,nil,"Q490Ball",20022)
    --self:SpawnItem(BallData.BallID, BallData.BallPos,nil,"Q490Ball",20022)
    --self:SpawnItem(BallData.BallID, BallData.BallPos,nil,"Q490Ball",20022)
    --self:SpawnItem(BallData.BallID, BallData.BallPos,nil,"Q490Ball",20022)
    -- self:SpawnItem(quest,2025)
    -- self:SpawnItem(quest,2025)
    -- self:SpawnItem(quest,2025)
    -- self:SpawnItem(quest,2025)
    -- self:SpawnItem(quest,2025)
    -- self:SpawnItem(quest,2025)
    local qin = self:GetQuestNpcActor(QinData.Alias)
    if qin ~= nil then
        --qin:DestroyWithDisappear(false)
        qin:Destroy();
	end
end

function Quest490:SpawnEn()
    self:PaimonVanish()
    local qin = self:GetQuestNpcActor(QinData.Alias)
    if qin ~= nil then
        qin:DestroyWithDisappear(false)
	end
	-- self:SpawnItem(BallData.BallID, BallData.BallPos,nil,"Q490Ball",20022)
    -- self:SpawnItem(BallData.BallID, BallData.BallPos,nil,"Q490Ball",20022)
    -- self:SpawnItem(BallData.BallID, BallData.BallPos,nil,"Q490Ball",20022)
end

function Quest490:SpawnEn1()
	-- self:SpawnItem(BallData.BallID, BallData.BallPos,nil,"Ball",20022)
    -- self:SpawnItem(BallData.BallID, BallData.BallPos,nil,"Ball",20022)
    -- self:SpawnItem(BallData.BallID, BallData.BallPos,nil,"Ball",20022)
end

function Quest490:OnSubFinish49014(quest)
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.Finish49014)    
end

function Quest490:Finish49012()
    self:CallDelay(
        0.2,
        function(self)
            self:RequestInteraction(QinData.Alias)
        end
    )    
end

function Quest490:Finish49014()
    self:DestroyQuestNpcActor(BarbaraPublic.Alias, 1009)
    self:DestroyQuestNpcActor(AmborPublic.Alias, 1009)
    self:DestroyQuestNpcActor(KaeyaPublic.Alias, 1009)
    self:DestroyQuestNpcActor(LisaPublic.Alias, 1009)
    self:DestroyQuestNpcActor(DilukePublic.Alias, 1009)
    self:DestroyQuestNpcActor(WindyPublic.Alias, 1009)    
    self:CallDelay(
        0.2,
        function(self)
            self:RequestInteraction(QinData.Alias)
        end
    )    
end

function Quest490:StartTalkQin()
    print("request interaction")
    self:RequestInteraction(QinData.Alias)
end

--@endregion

function Quest490:Start()
end

function Quest490:OnDestroy()
end

return Quest490
