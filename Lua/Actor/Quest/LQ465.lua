require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest465 = class("Quest465", questActorProxy)

Quest465.defaultAlias = "Quest465"

local q465Cfg
local subIDs
local dilucData
local hoffmanData
local kaeyaData
local PaimonData
local abyssWaterData
local SAN = 100
local ESCAPE = 0
local WIN = 0
local DailyNpcManager = require('Actor/DailyNPCManager')

function Quest465:OnDataLoaded()
    q465Cfg = self.clientData
    subIDs = q465Cfg.SubIDs
    dilucData = q465Cfg.DilucData
    hoffmanData = q465Cfg.HoffmanData
    kaeyaData = q465Cfg.KaeyaData
    PaimonData = q465Cfg.PaimonData
    abyssWaterData = q465Cfg.AbyssWaterData
end

-- Generated
function Quest465:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["46501"] = self.OnSubStart46501
    self.subStartHandlers["46502"] = self.OnSubStart46502
    self.subStartHandlers["46503"] = self.OnSubStart46503
    self.subStartHandlers["46504"] = self.OnSubStart46504
    self.subStartHandlers["46505"] = self.OnSubStart46505
    self.subStartHandlers["46506"] = self.OnSubStart46506
    self.subStartHandlers["46507"] = self.OnSubStart46507
    self.subStartHandlers["46508"] = self.OnSubStart46508
    self.subStartHandlers["46509"] = self.OnSubStart46509
    self.subStartHandlers["46510"] = self.OnSubStart46510
    self.subStartHandlers["46511"] = self.OnSubStart46511
    self.subStartHandlers["46512"] = self.OnSubStart46512
    self.subStartHandlers["46513"] = self.OnSubStart46513
    self.subStartHandlers["46514"] = self.OnSubStart46514
    self.subStartHandlers["46515"] = self.OnSubStart46515
    self.subStartHandlers["46516"] = self.OnSubStart46516
    self.subStartHandlers["46517"] = self.OnSubStart46517
    self.subStartHandlers["46518"] = self.OnSubStart46518
    self.subStartHandlers["46519"] = self.OnSubStart46519
    self.subStartHandlers["46520"] = self.OnSubStart46520
    self.subStartHandlers["46521"] = self.OnSubStart46521
    self.subStartHandlers["46522"] = self.OnSubStart46522
    self.subStartHandlers["46523"] = self.OnSubStart46523
    self.subStartHandlers["46524"] = self.OnSubStart46524
    self.subStartHandlers["46525"] = self.OnSubStart46525
end

function Quest465:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["46501"] = self.OnSubFinish46501
    self.subFinishHandlers["46502"] = self.OnSubFinish46502
    self.subFinishHandlers["46503"] = self.OnSubFinish46503
    self.subFinishHandlers["46504"] = self.OnSubFinish46504
    self.subFinishHandlers["46505"] = self.OnSubFinish46505
    self.subFinishHandlers["46506"] = self.OnSubFinish46506
    self.subFinishHandlers["46507"] = self.OnSubFinish46507
    self.subFinishHandlers["46508"] = self.OnSubFinish46508
    self.subFinishHandlers["46509"] = self.OnSubFinish46509
    self.subFinishHandlers["46510"] = self.OnSubFinish46510
    self.subFinishHandlers["46511"] = self.OnSubFinish46511
    self.subFinishHandlers["46512"] = self.OnSubFinish46512
    self.subFinishHandlers["46513"] = self.OnSubFinish46513
    self.subFinishHandlers["46514"] = self.OnSubFinish46514
    self.subFinishHandlers["46515"] = self.OnSubFinish46515
    self.subFinishHandlers["46516"] = self.OnSubFinish46516
    self.subFinishHandlers["46517"] = self.OnSubFinish46517
    self.subFinishHandlers["46518"] = self.OnSubFinish46518
    self.subFinishHandlers["46519"] = self.OnSubFinish46519
    self.subFinishHandlers["46520"] = self.OnSubFinish46520
    self.subFinishHandlers["46521"] = self.OnSubFinish46521
    self.subFinishHandlers["46522"] = self.OnSubFinish46522
    self.subFinishHandlers["46523"] = self.OnSubFinish46523
    self.subFinishHandlers["46524"] = self.OnSubFinish46524
    self.subFinishHandlers["46525"] = self.OnSubFinish46525
end

-- local method begin
-- local method end

--@region sub start & finish handlers
function Quest465:OnSubStart46503(quest)
    print("46503 Finish: Creat NPC")
    self:ActionSafeCall(self.CreatHoffman)
end
function Quest465:CreatHoffman(quest)
    local hoffmanData = self.clientData.HoffmanData
    self:CreateQuestNpcById(46503, hoffmanData.HoffmanID, 1)
    --actorMgr:CreateActorWithPos(hoffmanData.Hoffman, hoffmanData.HoffmanScript, hoffmanData.HoffmanID, 0, hoffmanData.Pos2, hoffmanData.Dir2, true, false, 3)
end

function Quest465:OnSubFinish46503(quest)
    print("46503 Finish: Creat NPC")
    self:ActionSafeCall(self.PaimonVanish)
    self:NarratorOnlyTask(self.clientData.NarratorData.Story2)
    self:NotifyTo("Npc1447", DailyNpcManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1441", DailyNpcManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1433", DailyNpcManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1569", DailyNpcManager.NpcEventType.STARTDAILY, true)
end
function Quest465:PaimonVanish()
    self:ShowBlackScreen(0.5, 1.0, 0.5, self.OnBright1)
end
function Quest465:OnBright1()
    local hoffmanData = self.clientData.HoffmanData
    self:CreateQuestNpcById(46503, hoffmanData.HoffmanID, 2)
    --actorMgr:CreateActorWithPos(hoffmanData.Hoffman, hoffmanData.HoffmanScript, hoffmanData.HoffmanID, 0, hoffmanData.hiddenPos, hoffmanData.hiddenDir, true)
    local hoffman = self:GetQuestNpcActor(self.clientData.HoffmanData.Hoffman)
    if hoffman ~= nil then
        hoffman:Destroy(false)
    end
    local dilucData = self.clientData.DilucData
    self:CreateQuestNpcById(46503, dilucData.DilucID, 3)
    --actorMgr:CreateActorWithPos(dilucData.Diluc, dilucData.DilucScript, dilucData.DilucID, 0, dilucData.Pos5, dilucData.Dir5, true, false, 1018)
	local paimon = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
    if paimon ~= nil then
        paimon:DestroyWithDisappear(false)
    end
end

function Quest465:OnSubStart46504(quest)
    print("46504 Start: Creat NPC")
end

function Quest465:OnSubFinish46504(quest)
    print("46504 Finish: Creat NPC")
    local dilucData = self.clientData.DilucData
    self:CreateQuestNpcById(46504, dilucData.DilucID, 1)
    --actorMgr:CreateActorWithPos(dilucData.Diluc, dilucData.DilucScript, dilucData.DilucID, 0, dilucData.Pos5, dilucData.Dir5, true, false, 1018)
end

function Quest465:OnSubFinish46505(quest)
    print("46505 Finish: Move NPC")
    self:ActionSafeCall(self.Finish46505Do)
end
function Quest465:Finish46505Do(quest)
    self:ShowBlackScreen(0.5, 1.0, 0.5, self.OnBright3)
end
function Quest465:OnBright3(quest)
    local dilucData = self.clientData.DilucData
    self:CreateQuestNpcById(46505, dilucData.DilucID, 1)
    --actorMgr:CreateActorWithPos(dilucData.Diluc, dilucData.DilucScript, dilucData.DilucID, 0, dilucData.Pos2, dilucData.Dir2, true)
	local paimon = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
	if paimon ~= nil then
		paimon:DestroyWithDisappear(false)
	end
end

function Quest465:OnSubFinish46507(quest)
    print("46507 Finish: TempDungeon")
    local diluc = self:GetQuestNpcActor(self.clientData.DilucData.Diluc)
    diluc:AddPriorityInter(InterTimingType.BTN, self.clientData.InterData.NoReplyInter)	
	diluc:RunToTask(self.clientData.DilucData.Pos4,
	function(actor, task)
		actor:ClearFollowTask()
        actor:ClearPriorityInter(InterTimingType.BTN)
        actor:Standby()
		actor:TurnTo(M.Euler2DirXZ(self.clientData.DilucData.Dir4))
	end
    )
end

function Quest465:OnSubFinish46508(quest)
    print("46508 Finish: Monster")
end

function Quest465:OnSubFinish46509(quest)
    print("46509 Finish: NPC")
end
function Quest465:InvokeOnInteraction(param)
    if param == 1 then
        print("SAN-20/25,ESCAPE+10")
        self:SANMinusi()
	elseif param == 2 then
		print("SAN-30/60,ESCAPE+10")
        self:SANMinusj()
    elseif param == 3 then
        print("SAN-0,ESCAPE+10")
        local AbyssWater = self:GetQuestNpcActor(self.clientData.AbyssWaterData.AbyssWater)
        --local AbyssWater = actorMgr:GetActor("AbyssWater")
        AbyssWater:PlayEmojiBubble("EmojiBubble_Emoji_Shock")
        self:SANMinusk()
    elseif param == 4 then
        print("Invoke 4")
        self:ShowReadingDialog(100214)
    elseif param == 5 then
        print("Invoke 5")
        local kaeyaData = self.clientData.KaeyaData
        self:CreateQuestNpcById(46513, kaeyaData.Kaeya, 2)
        --actorMgr:CreateActorWithPos(kaeyaData.Kaeya, kaeyaData.KaeyaScript, kaeyaData.KaeyaID, 0, kaeyaData.Pos3, kaeyaData.Dir3, true, false, 3)
        local kaeya = self:GetActor(self.clientData.KaeyaData.Kaeya)
        if kaeya ~= nil then
            kaeya:ClearFollowTask()
            kaeya:WalkToTask(kaeyaData.Pos4)
        end
    elseif param == 6 then
        print("Invoke 6")
        --self:ShowReadingDialog(100214)
    elseif param == 7 then
        print("Invoke 7")
        self:ActionSafeCall(self.OnBright4)
    elseif param == 8 then
        print("Invoke 8")
        local kaeya = self:GetActor(self.clientData.KaeyaData.Kaeya)
        if kaeya ~= nil then
            kaeya:ClearFollowTask()
            kaeya:WalkToTask(kaeyaData.Pos3)
        end
        local hoffman = self:GetQuestNpcActor(self.clientData.HoffmanData.Hoffman)
        if hoffman ~= nil then
            hoffman:ClearFollowTask()
            hoffman:WalkToTask(kaeyaData.Pos3)
        end
        self:CallDelay(4,self.NPCVanish)
    elseif param == 9 then
        print("Invoke 9")
    elseif param == 10 then
        print("Invoke 10")
        local AbyssWater = self:GetQuestNpcActor(self.clientData.AbyssWaterData.AbyssWater)
        AbyssWater:DoFreeStyle(2)
    elseif param == 11 then
        print("Invoke 11")
        self:PlayEffect("Eff_Diluc_FireCross_Aoe2", sceneData:GetDummyPoint(20019,"Q465AbyssEmo1").pos)
        self:ActionSafeCall(self.OnBright4)
    elseif param == 12 then
        print("Invoke 12")
        self:ActionSafeCall(self.Start46520Do)
    elseif param == 13 then
        print("Invoke 13")
        self:PlayEffect("Eff_Diluc_FireCross_Aoe2", sceneData:GetDummyPoint(20019,"Q465AbyssEmo1").pos)
    end
end
function Quest465:NPCVanish()
    local kaeya = self:GetActor(self.clientData.KaeyaData.Kaeya)
    if kaeya ~= nil then
        kaeya:SetVisible(false)
    end
    local hoffman = self:GetQuestNpcActor(self.clientData.HoffmanData.Hoffman)
    if hoffman ~= nil then
        hoffman:SetVisible(false)
    end
end
function Quest465:SANMinusi()
    local i = math.random(20,25)
    SAN = SAN-i
    ESCAPE = ESCAPE+10
    WIN = 100 - SAN
    self:PlayEffect("Eff_Diluc_FireCross_Aoe2", sceneData:GetDummyPoint(20019,"Q465AbyssEmo1").pos)
    self:showstate()
    local quest = actorMgr:GetActor(q465Cfg.ActorAlias)
	if quest ~= nil and SAN<=0 then
        quest:FinishQuestID(false, 46517)

        local AbyssWater = actorMgr:GetActor("AbyssWater")
        AbyssWater:DoFreeStyle(2)
        self:ShowTextMapWithParam("QUEST_TIP_Q469_DIZZY")
    elseif quest ~= nil and SAN>0 then
        self:ESC()
	end
end
function Quest465:SANMinusj()
    local j = math.random(30,60)
    SAN = SAN-j
    ESCAPE = ESCAPE+10
    WIN = 100 - SAN
    self:PlayEffect("Eff_Diluc_FireCross_Aoe2", sceneData:GetDummyPoint(20019,"Q465AbyssEmo1").pos)
    local quest = actorMgr:GetActor(q465Cfg.ActorAlias)
	if quest ~= nil and SAN<=0 then
        quest:FinishQuestID(false, 46517)

        local AbyssWater = self:GetQuestNpcActor(self.clientData.AbyssWaterData.AbyssWater)
        AbyssWater:DoFreeStyle(2)
        self:ShowTextMapWithParam("QUEST_TIP_Q469_DIZZY")
    elseif quest ~= nil and SAN>0 then
        self:ESC()
	end
end
function Quest465:SANMinusk()
    SAN = SAN    
    ESCAPE = ESCAPE+10
    WIN = 100 - SAN
    self:showstate()
    local quest = actorMgr:GetActor(q465Cfg.ActorAlias)
	if quest ~= nil and SAN<=0 then
        quest:FinishQuestID(false, 46517)
        self:ShowTextMapWithParam("QUEST_TIP_Q469_DIZZY")
    elseif quest ~= nil and SAN>0 then
        self:SUC()
	end
end
function Quest465:ESC()
    SAN = SAN    
    local esc = math.random(1,100)
    local quest = actorMgr:GetActor(q465Cfg.ActorAlias)
    if quest ~= nil and esc < ESCAPE and 80 < ESCAPE then
        self:showESC()
        self:ShowTextMapWithParam("QUEST_TIP_Q469_ESCAPE" .. esc..ESCAPE)
        quest:FinishQuestID(false, 46516)
    else
        self:showESC()
        self:ShowTextMapWithParam("QUEST_TIP_Q469_ESCAPE_FAILED")
    end
end
function Quest465:SUC()
    local suc = math.random(1,100)
    local quest = actorMgr:GetActor(q465Cfg.ActorAlias)
    if quest ~= nil and suc > SAN and 60 > SAN then
        self:ShowTextMapWithParam("QUEST_TIP_Q469_SUCCESSED" .. suc)
        quest:FinishQuestID(false, 46515)
        local AbyssWater = self:GetQuestNpcActor(self.clientData.AbyssWaterData.AbyssWater)
    else
        self:ESC()
    end
end
function Quest465:showstate(quest)
    SAN = SAN    
        if SAN < 30 then
            self:CallDelay(1.5,self.Worry)
            local AbyssWater = self:GetQuestNpcActor(self.clientData.AbyssWaterData.AbyssWater)
            AbyssWater:DoFreeStyle(5)
        elseif SAN < 60 then
            self:CallDelay(1.5,self.Sweat)
            local AbyssWater = self:GetQuestNpcActor(self.clientData.AbyssWaterData.AbyssWater)
            AbyssWater:DoFreeStyle(3)
        elseif SAN < 80 then
            self:CallDelay(1.5,self.Shock)
            local AbyssWater = self:GetQuestNpcActor(self.clientData.AbyssWaterData.AbyssWater)
            AbyssWater:DoFreeStyle(3)
        end
end
function Quest465:Worry()
    local AbyssWater = self:GetQuestNpcActor(self.clientData.AbyssWaterData.AbyssWater)
    AbyssWater:PlayEmojiBubble("EmojiBubble_Emoji_Worry")
end
function Quest465:Sweat()
    local AbyssWater = self:GetQuestNpcActor(self.clientData.AbyssWaterData.AbyssWater)
    AbyssWater:PlayEmojiBubble("EmojiBubble_Emoji_Surprise")
end
function Quest465:Shock()
    local AbyssWater = self:GetQuestNpcActor(self.clientData.AbyssWaterData.AbyssWater)
    AbyssWater:PlayEmojiBubble("EmojiBubble_Emoji_Shock")
end
function Quest465:showESC(quest)
    ESCAPE = ESCAPE    
        if ESCAPE < 30 then
            self:ShowTextMapWithParam("QUEST_TIP_Q469_ESCSTATE1")
        elseif ESCAPE < 60 then
            self:ShowTextMapWithParam("QUEST_TIP_Q469_ESCSTATE2")
        elseif ESCAPE < 80 then
            self:ShowTextMapWithParam("QUEST_TIP_Q469_ESCSTATE3")
        end
end

function Quest465:OnSubStart46510(quest)
    print("46510 Start: Clear data")
    self:CallDelay(3,self.AutoTalk)
end
function Quest465:AutoTalk(quest)
    print("46510 Start: Clear data")
    local abyssWaterData = self.clientData.AbyssWaterData
    local task = self:CreateQuestNpcCreateTask({abyssWaterData.AbyssWater})
    self:ShowBlackScreen(0.5, 1.0, 0.5, self.OnBright6, nil, task)
end
function Quest465:OnBright6(quest)
    self:CreateQuestNpcById(46510, dilucData.DilucID, 1)
    self:CreateQuestNpcById(46510, abyssWaterData.AbyssWater, 2)
    self:CreateQuestNpcById(46510, PaimonData.Paimon, 3)
    --actorMgr:CreateActorWithPos(dilucData.Diluc, dilucData.DilucScript, dilucData.DilucID, 0, dilucData.Pos3, dilucData.Dir3, true, false, 20019)
    --actorMgr:CreateActorWithPos(abyssWaterData.AbyssWater, abyssWaterData.AbyssWaterScript, abyssWaterData.AbyssWaterID, 0, abyssWaterData.Pos1, abyssWaterData.Dir1, true, false, 20019)
    --actorMgr:CreateActorWithPos(PaimonData.Paimon, PaimonData.PaimonScript, PaimonData.PaimonID, 0, PaimonData.Pos3, PaimonData.Dir3, true, false, 20019)
    local AbyssWater = self:GetQuestNpcActor(self.clientData.AbyssWaterData.AbyssWater)
    if AbyssWater ~= nil then
        AbyssWater:SetVisible(true)
    end
    SAN = 100
    ESCAPE = 0
    WIN = 0
    self:RequestInteraction(self.clientData.AbyssWaterData.AbyssWater)
end

function Quest465:OnSubStart46514(quest)
    print("46514 Start: Show UI")
    globalActor:ChangeToHero()
end

function Quest465:Invoke7Do(quest)
self:ShowBlackScreen(0.5, 1.0, 0.5, self.OnBright4)
end
function Quest465:OnBright4(quest)
    local quest = actorMgr:GetActor(q465Cfg.ActorAlias)
	if quest ~= nil then
        quest:FinishQuestID(false, 46523)
	end
    local AbyssWater = self:GetQuestNpcActor(self.clientData.AbyssWaterData.AbyssWater)
    if AbyssWater ~= nil then
        AbyssWater:SetVisible(false)
    end
end

function Quest465:OnSubFinish46510(quest)
    print("46510 Finish: Hide NPC")
    self:ActionSafeCall(self.Finish46510Do)
end
function Quest465:Finish46510Do(quest)
    self:ShowBlackScreen(0.5, 1.0, 0.5, self.OnBright2)

end
function Quest465:OnBright2(quest)
    self:CreateQuestNpcById(46510, dilucData.DilucID, 4)
    self:CreateQuestNpcById(46510, abyssWaterData.AbyssWater, 5)
    --actorMgr:CreateActorWithPos(abyssWaterData.AbyssWater, abyssWaterData.AbyssWaterScript, abyssWaterData.AbyssWaterID, 0, abyssWaterData.hiddenPos, abyssWaterData.hiddenDir, true, false, 3)
    --actorMgr:CreateActorWithPos(dilucData.Diluc, dilucData.DilucScript, dilucData.DilucID, 0, dilucData.hiddenPos, dilucData.hiddenDir, true)
	local paimon = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
	if paimon ~= nil then
		paimon:DestroyWithDisappear(false)
	end
end

function Quest465:OnSubStart46520(quest)
    print("46520 Start: Hide NPC")
end
function Quest465:Start46520Do(quest)
    self:ShowBlackScreen(0.1, 1.0, 0.5, self.OnBright7)
end
function Quest465:OnBright7(quest)
    local AbyssWater = self:GetQuestNpcActor(self.clientData.AbyssWaterData.AbyssWater)
	if AbyssWater ~= nil then
		AbyssWater:DestroyWithDisappear(false)
    end
	local paimon = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
	if paimon ~= nil then
		paimon:DestroyWithDisappear(false)
    end
    local diluc = self:GetQuestNpcActor(self.clientData.DilucData.Diluc)
    if diluc ~= nil then
        diluc:SetVisible(false)
    end
    
end

function Quest465:OnSubFinish46511(quest)
    print("46511 Finish: Creat NPC")
    self:CreateQuestNpcById(46511, dilucData.DilucID, 1)
    --actorMgr:CreateActorWithPos(dilucData.Diluc, dilucData.DilucScript, dilucData.DilucID, 0, dilucData.Pos2, dilucData.Dir2, true)
    self:CallDelay(0.5,
    function (self)
        self:RequestInteraction(self.clientData.DilucData.Diluc)
    end
)
end

function Quest465:OnSubFinish46524(quest)
    print("46524 Finish: Hide NPC")
    self:ActionSafeCall(self.Finish46524Do)
end
function Quest465:Finish46524Do(quest)
    self:ShowBlackScreen(0.5, 1.0, 0.5, self.OnBright9)
end
function Quest465:OnBright9(quest)
    self:CreateQuestNpcById(46524, dilucData.DilucID, 1)
    --actorMgr:CreateActorWithPos(dilucData.Diluc, dilucData.DilucScript, dilucData.DilucID, 0, dilucData.hiddenPos, dilucData.hiddenDir, true)
    local diluc = actorMgr:GetActor(dilucData.Diluc)
    if diluc ~= nil then
        diluc:Destroy(false)
    end
	local paimon = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
	if paimon ~= nil then
		paimon:DestroyWithDisappear(false)
	end
end

function Quest465:OnSubStart46513(quest)
    print("46513 Start: Creat NPC")
    self:CreateQuestNpcById(46513, hoffmanData.HoffmanID, 1)
    --actorMgr:CreateActorWithPos(hoffmanData.Hoffman, hoffmanData.HoffmanScript, hoffmanData.HoffmanID, 0, hoffmanData.Pos2, hoffmanData.Dir2, true, false, 3)
end

function Quest465:OnSubFinish46513(quest)
    print("46513 Finish: Hide NPC")
    self:ActionSafeCall(self.OnBright5)
end
function Quest465:Finish46513Do(quest)
    self:ShowBlackScreen(0.5, 1.0, 0.5, self.OnBright5)
end
function Quest465:OnBright5(quest)
    local paimon = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
	if paimon ~= nil then
		paimon:DestroyWithDisappear(false)
	end
    self:NarratorOnlyTask(self.clientData.NarratorData.Story3)
    --self:CreateQuestNpcById(46513, kaeyaData.Kaeya, 2)
    --self:CreateQuestNpcById(46513, hoffmanData.HoffmanID, 1)
    --actorMgr:CreateActorWithPos(kaeyaData.Kaeya, kaeyaData.KaeyaScript, kaeyaData.KaeyaID, 0, kaeyaData.hiddenPos, kaeyaData.hiddenDir, true, false, 1004)
    --actorMgr:CreateActorWithPos(hoffmanData.Hoffman, hoffmanData.HoffmanScript, hoffmanData.HoffmanID, 0, hoffmanData.hiddenPos, hoffmanData.hiddenDir, true)
    local kaeya = self:GetQuestNpcActor(self.clientData.KaeyaData.Kaeya)
    if kaeya ~= nil then
        kaeya:Destroy(false)
    end
    local hoffman = self:GetQuestNpcActor(self.clientData.HoffmanData.Hoffman)
    if hoffman ~= nil then
        hoffman:Destroy(false)
    end
end

--@endregion

function Quest465:Start()
end

function Quest465:OnDestroy()
end

return Quest465