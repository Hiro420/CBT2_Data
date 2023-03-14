require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest466 = class("Quest466", questActorProxy)

Quest466.defaultAlias = "Quest466"

local q466Cfg
local DailyNpcManager = require('Actor/DailyNPCManager')
local subIDs
local dilucData
local hoffmanData
local conorData
local kaeyaData
local lureData
local baitData
local guardData
local joseData
local FailNum = 0
local EscapeTime = 50

function Quest466:OnDataLoaded()
    q466Cfg = self.clientData
    subIDs = q466Cfg.SubIDs
    dilucData = q466Cfg.DilucData
    hoffmanData = q466Cfg.HoffmanData
    conorData = q466Cfg.ConorData
    kaeyaData = q466Cfg.KaeyaData
    guardData = q466Cfg.GuardData
    joseData = q466Cfg.JoseData
    baitData = q466Cfg.BaitData
    lureData = q466Cfg.LureData
end

-- Generated
function Quest466:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["46601"] = self.OnSubStart46601
    self.subStartHandlers["46602"] = self.OnSubStart46602
    self.subStartHandlers["46603"] = self.OnSubStart46603
    self.subStartHandlers["46604"] = self.OnSubStart46604
    self.subStartHandlers["46605"] = self.OnSubStart46605
    self.subStartHandlers["46606"] = self.OnSubStart46606
    self.subStartHandlers["46607"] = self.OnSubStart46607
    self.subStartHandlers["46608"] = self.OnSubStart46608
    self.subStartHandlers["46609"] = self.OnSubStart46609
    self.subStartHandlers["46610"] = self.OnSubStart46610
    self.subStartHandlers["46611"] = self.OnSubStart46611
    self.subStartHandlers["46612"] = self.OnSubStart46612
    self.subStartHandlers["46613"] = self.OnSubStart46613
    self.subStartHandlers["46614"] = self.OnSubStart46614
    self.subStartHandlers["46615"] = self.OnSubStart46615
    self.subStartHandlers["46616"] = self.OnSubStart46616
    self.subStartHandlers["46617"] = self.OnSubStart46617
    self.subStartHandlers["46618"] = self.OnSubStart46618
    self.subStartHandlers["46619"] = self.OnSubStart46619
    self.subStartHandlers["46620"] = self.OnSubStart46620
    self.subStartHandlers["46621"] = self.OnSubStart46621
    self.subStartHandlers["46622"] = self.OnSubStart46622
    self.subStartHandlers["46623"] = self.OnSubStart46623
    self.subStartHandlers["46624"] = self.OnSubStart46624
    self.subStartHandlers["46625"] = self.OnSubStart46625
end

function Quest466:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["46601"] = self.OnSubFinish46601
    self.subFinishHandlers["46602"] = self.OnSubFinish46602
    self.subFinishHandlers["46603"] = self.OnSubFinish46603
    self.subFinishHandlers["46604"] = self.OnSubFinish46604
    self.subFinishHandlers["46605"] = self.OnSubFinish46605
    self.subFinishHandlers["46606"] = self.OnSubFinish46606
    self.subFinishHandlers["46607"] = self.OnSubFinish46607
    self.subFinishHandlers["46608"] = self.OnSubFinish46608
    self.subFinishHandlers["46609"] = self.OnSubFinish46609
    self.subFinishHandlers["46610"] = self.OnSubFinish46610
    self.subFinishHandlers["46611"] = self.OnSubFinish46611
    self.subFinishHandlers["46612"] = self.OnSubFinish46612
    self.subFinishHandlers["46613"] = self.OnSubFinish46613
    self.subFinishHandlers["46614"] = self.OnSubFinish46614
    self.subFinishHandlers["46615"] = self.OnSubFinish46615
    self.subFinishHandlers["46616"] = self.OnSubFinish46616
    self.subFinishHandlers["46617"] = self.OnSubFinish46617
    self.subFinishHandlers["46618"] = self.OnSubFinish46618
    self.subFinishHandlers["46619"] = self.OnSubFinish46619
    self.subFinishHandlers["46620"] = self.OnSubFinish46620
    self.subFinishHandlers["46621"] = self.OnSubFinish46621
    self.subFinishHandlers["46622"] = self.OnSubFinish46622
    self.subFinishHandlers["46623"] = self.OnSubFinish46623
    self.subFinishHandlers["46624"] = self.OnSubFinish46624
    self.subFinishHandlers["46625"] = self.OnSubFinish46625
end

-- local method begin
-- local method end

--@region sub start & finish handlers
function Quest466:OnSubStart46601(quest)
    print("46601 Start: Creat NPC")
    --actorMgr:CreateActorWithPos(dilucData.Diluc, dilucData.DilucScript, dilucData.DilucID, 0, dilucData.Pos5, dilucData.Dir5, true, false, 1018, true, 1, quest.QuestConfigId)  
    self:CreateQuestNpcById(46601, dilucData.DilucID,1)
end

function Quest466:OnSubFinish46601(quest)
    print("46601 Finish: Creat NPC")
    --actorMgr:CreateActorWithPos(dilucData.Diluc, dilucData.DilucScript, dilucData.DilucID, 0, dilucData.Pos5, dilucData.Dir5, true, false, 1018, true, 1, quest.QuestConfigId)
    self:CreateQuestNpcById(46601, dilucData.DilucID,1)
end

function Quest466:OnSubFinish46602(quest)
    print("46602 Finish: Hide NPC")
    self:ActionSafeCall(self.Finish46602Do)
end
function Quest466:Finish46602Do(quest)
    local paimon = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
	if paimon ~= nil then
		paimon:DestroyWithDisappear(false)
	end
end
function Quest466:OnBright1(quest)
end

function Quest466:OnSubFinish46603(quest)
    print("---------- 46603 Finish: Creat NPC -----------") 
    --actorMgr:CreateActorWithPos(dilucData.Diluc, dilucData.DilucScript, dilucData.DilucID, 0, dilucData.Pos2, dilucData.Dir2, true, false, 1018, true, 1, quest.QuestConfigId)    
    self:CreateQuestNpcById(46603, dilucData.DilucID,1)
end
function Quest466:Finish46603Do(quest)
    print("---------- 46603 Do: Creat NPC -----------")

end

function Quest466:OnSubFinish46621(quest)
    print("46621 Finish: Creat NPC")
    self:NotifyTo("Npc1529", DailyNpcManager.NpcEventType.HIDESELF, true)

    --actorMgr:CreateActorWithPos(dilucData.Diluc, dilucData.DilucScript, dilucData.DilucID, 0, dilucData.Pos2, dilucData.Dir2, true, false, 1018, true, 1, quest.QuestConfigId)    
    --actorMgr:CreateActorWithPos(conorData.Conor, conorData.ConorScript, conorData.ConorID, 0, conorData.Pos1, conorData.Dir1, true, false, 1018, true, 1, quest.QuestConfigId)
    self:CreateQuestNpcById(46621, dilucData.DilucID,1)
    self:CreateQuestNpcById(46621, conorData.ConorID,2)
end

function Quest466:OnSubFinish46622(quest)
    print("46622 Finish: Creat NPC")
    self:ActionSafeCall(self.Finish46622Do)
end
function Quest466:Finish46622Do(quest)
    self:ShowBlackScreen(0.5, 1.0, 0.5, self.OnBright8) 
end
function Quest466:OnBright8()
    self:NotifyTo("Npc1529", DailyNpcManager.NpcEventType.STARTDAILY, true)
    --actorMgr:CreateActorWithPos(conorData.Conor, conorData.ConorScript, conorData.ConorID, 0, conorData.hiddenPos, conorData.hiddenDir, true, false, 1018, true, 1, 46622)
    self:CreateQuestNpcById(46622, conorData.ConorID, 2)
    local conor = self:GetQuestNpcActor(conorData.Conor)
    if conor ~= nil then
        conor:Destroy(false)
    end
    globalActor:UnSpawn("Lure")
    local lureData = self.clientData.LureData
	self:SpawnGadgetById(46622, lureData.LureID, 1)
    --self:SpawnGadget(lureData.LureID, lureData.Pos1, lureData.Dir1, "Lure", 3)
    local paimon = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
	if paimon ~= nil then
		paimon:DestroyWithDisappear(false)
    end
end

function Quest466:OnSubStart46604(quest)
    print("46604 Start: Clear Target")
    local TargetData = self.clientData.TargetData
    --globalActor:UnSpawn(TargetData.Target1)
    --globalActor:UnSpawn(TargetData.Target2)
    globalActor:UnSpawn("Bait")
end

function Quest466:OnSubFinish46604(quest)
    print("46604 Finish: Creat NPC")
    globalActor:UnSpawn("Bait")
    local baitData = self.clientData.BaitData
	self:SpawnGadgetById(46604, baitData.BaitID, 1)
    --globalActor:SpawnGadget(baitData.BaitID, baitData.Pos1, baitData.Dir1, "Bait")
end

function Quest466:OnSubFinish46605(quest)
    print("46605 Finish: Creat Monster")
    self:ActionSafeCall(self.Finish46605Do)
end
function Quest466:Finish46605Do(quest)
    globalActor:UnSpawn("Bait")
    --local TargetData = self.clientData.TargetData
    --globalActor:UnSpawn(TargetData.Target1)
    --globalActor:UnSpawn(TargetData.Target2)
    --globalActor:SpawnGadget(TargetData.TargetID, TargetData.Pos1, TargetData.Dir1, TargetData.Target1)
    --globalActor:SpawnGadget(TargetData.TargetID, TargetData.Pos2, TargetData.Dir2, TargetData.Target2)
    --actorMgr:CreateActorWithPos(conorData.Conor, conorData.ConorScript, conorData.ConorID, 0, conorData.hiddenPos, conorData.hiddenDir, true, false, 3, true, 0, 46605)
    self:CreateQuestNpcById(46605, conorData.ConorID,1)
    local conor = self:GetQuestNpcActor(conorData.Conor)
    if conor ~= nil then
        conor:Destroy(false)
    end
    local paimon = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
	if paimon ~= nil then
		paimon:DestroyWithDisappear(false)
	end
end

function Quest466:OnSubStart46606(quest)
    print("46606 Start: Clear bait")
    globalActor:UnSpawn("Bait")
    globalActor:UnSpawn("Lure")
end

function Quest466:OnSubFinish46606(quest)
    print("46606 Finish: Clear Target")
    self:CallDelay(4, self.Delay1)

end
function Quest466:Delay1(quest)
    local dilucData = self.clientData.DilucData
    local task = self:CreateQuestNpcCreateTask({dilucData.DilucID})
    self:ShowBlackScreen(0.5, 1.0, 0.5, self.OnBright7,nil,task) 
    local TargetData = self.clientData.TargetData
    --globalActor:UnSpawn(TargetData.Target1)
    --globalActor:UnSpawn(TargetData.Target2)
end 
function Quest466:OnBright7(quest)
   -- actorMgr:CreateActorWithPos(dilucData.Diluc, dilucData.DilucScript, dilucData.DilucID, 0, dilucData.Pos2, dilucData.Dir2, true, false, 3, true, 0, 46606)    
    self:CreateQuestNpcById(46606, dilucData.DilucID,1)
    self:RequestInteraction(dilucData.Diluc)
end

function Quest466:OnSubFinish46607(quest)
    print("46607 Finish: Creat Monster")
    self:ActionSafeCall(self.Finish46607Do)
    globalActor:UnSpawn("Slime1")
    globalActor:UnSpawn("Slime2")
    globalActor:UnSpawn("Slime3")
    globalActor:UnSpawn("Slime4")
    globalActor:UnSpawn("Slime5")
    globalActor:UnSpawn("Slime6")
end
function Quest466:Finish46607Do(quest)
    --self:NotifyTo("Npc1465", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:ShowBlackScreen(0.5, 1.0, 0.5, self.OnBright5) 
end
function Quest466:OnBright5(quest)
    -- actorMgr:CreateActorWithPos(dilucData.Diluc, dilucData.DilucScript, dilucData.DilucID, 0, dilucData.hiddenPos, dilucData.hiddenDir, true, false, 3, true, 0, 46607)
   self:CreateQuestNpcById(46607, dilucData.DilucID,1)
   local diluc = self:GetQuestNpcActor(dilucData.Diluc)
   if diluc ~= nil then
       diluc:Destroy(false)
   end
    local paimon = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
	if paimon ~= nil then
		paimon:DestroyWithDisappear(false)
    end
    self:NarratorOnlyTask(self.clientData.NarratorData.Story2)
end

function Quest466:OnSubStart46608(quest)
    self:NotifyTo("Npc1465", DailyNpcManager.NpcEventType.HIDESELF, true)
    globalActor:UnSpawn("Lure")
    globalActor:UnSpawn("Bait")
    globalActor:UnSpawn("Slime1")
    globalActor:UnSpawn("Slime2")
    globalActor:UnSpawn("Slime3")
    globalActor:UnSpawn("Slime4")
    globalActor:UnSpawn("Slime5")
    globalActor:UnSpawn("Slime6")
    local Q466Trigger1 = actorMgr:GetActor("Q466Trigger1")
    Q466Trigger1:DestroySelf()
    local Q466Trigger3 = actorMgr:GetActor("Q466Trigger3")
    Q466Trigger3:DestroySelf()
    local Q466Trigger2 = actorMgr:GetActor("Q466Trigger2")
    Q466Trigger2:DestroySelf()
    local Q466Trigger4 = actorMgr:GetActor("Q466Trigger4")
    Q466Trigger4:DestroySelf()
end

function Quest466:OnSubFinish46608(quest)
    print("46608 Finish: Creat NPC & Trigger1")
    --creat trigger1&3
    actorMgr:CreateActorWithPos("Q466Trigger1", "Actor/Gadget/Q466Trigger1", 70900002, 0, sceneData:GetDummyPoint(3,"Q466Trigger1").pos, sceneData:GetDummyPoint(3,"Q466Trigger1").rot, true, false)
    actorMgr:CreateActorWithPos("Q466Trigger3", "Actor/Gadget/Q466Trigger3", 70900002, 0, sceneData:GetDummyPoint(3,"Q466Trigger1").pos, sceneData:GetDummyPoint(3,"Q466Trigger1").rot, true, false)
end

function Quest466:OnSubFinish46609(quest)
    print("46608 Finish: Creat NPC & Trigger1")
    --actorMgr:CreateActorWithPos(dilucData.Diluc, dilucData.DilucScript, dilucData.DilucID, 0, dilucData.Pos3, dilucData.Dir3, true, false, 1009)    
    --actorMgr:CreateActorWithPos(hoffmanData.Hoffman, hoffmanData.HoffmanScript, hoffmanData.HoffmanID, 0, hoffmanData.Pos1, hoffmanData.Dir1, true, false, 1009)
    self:CreateQuestNpcById(46609, dilucData.DilucID,1)
    self:CreateQuestNpcById(46609, hoffmanData.HoffmanID,2)
end

function Quest466:OnSubStart46610(quest)
    self:NotifyTo("Npc1465", DailyNpcManager.NpcEventType.HIDESELF, true)
end

function Quest466:OnSubFinish46610(quest)
    print("46610 Finish: Creat Lure")
    globalActor:UnSpawn("Lure")
    local lureData = self.clientData.LureData
	self:SpawnGadgetById(46610, lureData.LureID, 1)
    --self:SpawnGadget(lureData.LureID, lureData.Pos2, lureData.Dir2, "Lure", 3)
    self:NotifyTo("Npc1433", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1569", DailyNpcManager.NpcEventType.HIDESELF, true)
    local paimon = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
	if paimon ~= nil then
		paimon:DestroyWithDisappear(false)
	end
end

function Quest466:OnSubStart46611(quest)

end


function Quest466:OnSubStart46619(quest)
    print("46619 start:...")
    self:AdvanceQuest()
end
function Quest466:AdvanceQuest()
    local quest = actorMgr:GetActor(q466Cfg.ActorAlias)
    if quest ~= nil then
        quest:FinishQuest(false, nil)
    end 
end

function Quest466:OnSubFinish46620(quest)
    print("46620 Finish: Story")
    self:NarratorOnlyTask(self.clientData.NarratorData.Story7)
    actorMgr:CreateActorWithPos("Q466Trigger1", "Actor/Gadget/Q466Trigger1", 70900002, 0, sceneData:GetDummyPoint(3,"Q466Trigger1").pos, sceneData:GetDummyPoint(3,"Q466Trigger1").rot, true, false)
    actorMgr:CreateActorWithPos("Q466Trigger3", "Actor/Gadget/Q466Trigger3", 70900002, 0, sceneData:GetDummyPoint(3,"Q466Trigger1").pos, sceneData:GetDummyPoint(3,"Q466Trigger1").rot, true, false)
end

function Quest466:OnSubFinish46611(quest)
    print("46611 Finish: Creat NPC")
    self:NarratorOnlyTask(self.clientData.NarratorData.Story3)
    globalActor:UnSpawn("Bait")
    local baitData = self.clientData.BaitData
	self:SpawnGadgetById(46611, baitData.BaitID, 1)
    --globalActor:SpawnGadget(baitData.BaitID, baitData.Pos2, baitData.Dir2, "Bait")
    
    print("46611 Finish: Creat Lure")

    --actorMgr:CreateActorWithPos(dilucData.Diluc, dilucData.DilucScript, dilucData.DilucID, 0, dilucData.Pos3, dilucData.Dir3, true, false, 1009)    
    --actorMgr:CreateActorWithPos(hoffmanData.Hoffman, hoffmanData.HoffmanScript, hoffmanData.HoffmanID, 0, hoffmanData.Pos1, hoffmanData.Dir1, true, false, 1009)
    self:CreateQuestNpcById(46611, dilucData.DilucID,1)
    self:CreateQuestNpcById(46611, hoffmanData.HoffmanID,2)

    
    globalActor:UnSpawn("Slime1")
    globalActor:UnSpawn("Slime2")
    globalActor:UnSpawn("Slime3")
    globalActor:UnSpawn("Slime4")
    globalActor:UnSpawn("Slime5")
    globalActor:UnSpawn("Slime6")
    
    local Monster1Data = self.clientData.Monster1Data
    local Monster2Data = self.clientData.Monster2Data
    local Monster3Data = self.clientData.Monster3Data
    local Monster4Data = self.clientData.Monster4Data
    self:SpawnMonsterById(46611, Monster1Data.MonsterID,1)
    self:SpawnMonsterById(46611, Monster2Data.MonsterID,2)
    self:SpawnMonsterById(46611, Monster3Data.MonsterID,3)
    self:SpawnMonsterById(46611, Monster4Data.MonsterID,4)
    self:SpawnMonsterById(46611, Monster3Data.MonsterID,5)
    self:SpawnMonsterById(46611, Monster4Data.MonsterID,6)
    -- self:SpawnMonster(20011401, 1, sceneData:GetDummyPoint(3,"Q466Slime").pos,nil,nil,nil,"Slime1")
    -- self:SpawnMonster(20011201, 1, sceneData:GetDummyPoint(3,"Q466Slime2").pos,nil,nil,nil,"Slime2")
    -- self:SpawnMonster(20011001, 1, sceneData:GetDummyPoint(3,"Q466Slime3").pos,nil,nil,nil,"Slime3")
    -- self:SpawnMonster(20010901, 1, sceneData:GetDummyPoint(3,"Q466Slime4").pos,nil,nil,nil,"Slime4")
    -- self:SpawnMonster(20011001, 1, sceneData:GetDummyPoint(3,"Q466Slime5").pos,nil,nil,nil,"Slime5")
    -- self:SpawnMonster(20010901, 1, sceneData:GetDummyPoint(3,"Q466Slime6").pos,nil,nil,nil,"Slime6")
	self:EnterSceneLookCamera(sceneData:GetDummyPoint(3,"Q466Slime").pos, 4, 12, true)
	globalActor:StopLocalAvatar()	
	globalActor:EnablePlayerInput(false)	
    self:CallDelay(13, self.OnEnableInput)
end
function Quest466:OnEnableInput()
	print("466 Finish: Enable Player Input")	
    globalActor:EnablePlayerInput(true)
    self:TransmitPlayerWithText(1009, sceneData:GetDummyPoint(1009,"Q466Player1").pos, sceneData:GetDummyPoint(1009,"Q466Player1").rot,{"QUEST_Message_Q46612"})
end

function Quest466:OnSubFinish46625(quest)
    print("46625 Finish: Paimon Talk")
    self.uActor:AvatarPaimonAppear()
	globalActor:StopLocalAvatar()	
    globalActor:EnablePlayerInput(false)
    self:NarratorOnlyTask(self.clientData.NarratorData.Story8)
    self:CallDelay(5, self.OnEnableInput2)
end
function Quest466:OnEnableInput2()
    print("46625 DelayFinish: Enable Player Input")
    self.uActor:AvatarPaimonDisappear(nil, false)	
    globalActor:EnablePlayerInput(true)
	self:TransmitPlayer(3, sceneData:GetDummyPoint(3, "Q46625Player").pos, sceneData:GetDummyPoint(3, "Q46625Player").rot)
end

function Quest466:OnSubStart46613(quest)
    self:NotifyTo("Npc1465", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1433", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1569", DailyNpcManager.NpcEventType.STARTDAILY, true)
end

function Quest466:OnSubFinish46613(quest)
    print("46613 Finish: Creat Trigger2")
    self:ActionSafeCall(self.Finish46613Do)  
end
function Quest466:OnSubFinish46613(quest)
    self:ShowBlackScreen(0.5, 1.0, 0.5, self.OnBright3) 
end
function Quest466:OnBright3(quest)
    local paimon = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
	if paimon ~= nil then
		paimon:DestroyWithDisappear(false)
    end
    --actorMgr:CreateActorWithPos(guardData.Guard, guardData.GuardScript, guardData.GuardID, 0, guardData.hiddenPos, guardData.hiddenDir, true)
    self:CreateQuestNpcById(46613, guardData.GuardID,1)
    local guard = self:GetQuestNpcActor(guardData.Guard)
    if guard ~= nil then
        guard:Destroy(false)
    end
    --actorMgr:CreateActorWithPos(dilucData.Diluc, dilucData.DilucScript, dilucData.DilucID, 0, dilucData.hiddenPos, dilucData.hiddenDir, true)
    self:CreateQuestNpcById(46613, dilucData.DilucID,2)
    local diluc = self:GetQuestNpcActor(dilucData.Diluc)
    if diluc ~= nil then
        diluc:Destroy(false)
    end
end

function Quest466:OnSubStart46614(quest)
    self:NotifyTo("Npc1465", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1433", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1437", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1439", DailyNpcManager.NpcEventType.HIDESELF, true)
end

function Quest466:OnSubFinish46614(quest)
    print("46614 Finish: Creat Monster")
    self:PlayCutsceneIndex(46601, self.AfterCSDo)
    globalActor:UnSpawn("Q466Trigger1")
    globalActor:UnSpawn("Q466Trigger3")
    local Q466Trigger1 = actorMgr:GetActor("Q466Trigger1")
    Q466Trigger1:DestroySelf()
    local Q466Trigger3 = actorMgr:GetActor("Q466Trigger3")
    Q466Trigger3:DestroySelf()
    local trigger2 = actorMgr:CreateActorWithPos("Q466Trigger2", "Actor/Gadget/Q466Trigger2", 70900002, 0, sceneData:GetDummyPoint(3,"Q466Trigger2").pos, sceneData:GetDummyPoint(3,"Q466Trigger2").rot, true, false)
    local trigger4 = actorMgr:CreateActorWithPos("Q466Trigger4", "Actor/Gadget/Q466Trigger4", 70900002, 0, sceneData:GetDummyPoint(3,"Q466Trigger2").pos, sceneData:GetDummyPoint(3,"Q466Trigger2").rot, true, false)
    trigger2:SetLocalEntityDist(200)
    trigger4:SetLocalEntityDist(200)
    

    local guard = self:GetQuestNpcActor(guardData.Guard)
    if guard ~= nil then
        self:ActionSafeCall(
            function(self)
                guard:Destroy(false)
            end
        )
    end
end
function Quest466:AfterCSDo(quest)
    local quest = actorMgr:GetActor(q466Cfg.ActorAlias)
    if quest ~= nil then
        quest:FinishQuest(false, nil)
    end 
end

function Quest466:OnSubStart46624(quest)
    print("46615 Finish: Creat NPC")
    self:CallDelay(2,self.Delay2)
end
function Quest466:Delay2(quest)
    print("Finish 46624")
    local quest = actorMgr:GetActor(q466Cfg.ActorAlias)
    if quest ~= nil then
        quest:FinishQuest(false, nil)
    end 
end

function Quest466:OnSubFinish46624(quest)
    local dilucData = self.clientData.DilucData
    local task = self:CreateQuestNpcCreateTask({dilucData.Diluc})
    self:ShowBlackScreen(0.5, 1.0, 0.5, self.OnBright4, nil, task)
end
function Quest466:OnBright4(quest)
    --actorMgr:CreateActorWithPos(dilucData.Diluc, dilucData.DilucScript, dilucData.DilucID, 0, dilucData.Pos4, dilucData.Dir4, true)
    self:CreateQuestNpcById(46624, dilucData.DilucID,1)
    self:RequestInteraction(dilucData.Diluc)
end

function Quest466:OnSubStart46616(quest)
    self:NotifyTo("Npc1465", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1433", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1437", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1439", DailyNpcManager.NpcEventType.HIDESELF, true)
end

function Quest466:OnSubFinish46616(quest)
    print("46616 Finish: Creat NPC")
    self:NarratorOnlyTask(self.clientData.NarratorData.Story5)
    self:ActionSafeCall(self.Finish46616Do)
end
function Quest466:Finish46616Do(quest)
    self:ShowBlackScreen(0.5, 1.0, 0.5, self.OnBright6)
end
function Quest466:OnBright6(quest)
    --actorMgr:CreateActorWithPos(dilucData.Diluc, dilucData.DilucScript, dilucData.DilucID, 0, dilucData.hiddenPos, dilucData.hiddenDir, true)
    self:CreateQuestNpcById(46616, dilucData.DilucID,1)
    local diluc = self:GetQuestNpcActor(dilucData.Diluc)
    if diluc ~= nil then
        diluc:Destroy(false)
    end
	local paimon = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
	if paimon ~= nil then
		paimon:DestroyWithDisappear(false)
	end
end

function Quest466:OnSubFinish46617(quest)
    print("46617 Finish: Creat NPC")
    --actorMgr:CreateActorWithPos(dilucData.Diluc, dilucData.DilucScript, dilucData.DilucID, 0, dilucData.Pos3, dilucData.Dir3, true, false, 1009)
    self:CreateQuestNpcById(46617, dilucData.DilucID,1)
end

function Quest466:OnSubStart46618(quest)
    self:NotifyTo("Npc1465", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1433", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1523", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1437", DailyNpcManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1439", DailyNpcManager.NpcEventType.STARTDAILY, true)
    --actorMgr:CreateActorWithPos(dilucData.Diluc, dilucData.DilucScript, dilucData.DilucID, 0, dilucData.Pos3, dilucData.Dir3, true, false, 1009)
    self:CreateQuestNpcById(46618, dilucData.DilucID,1)
    self:CreateQuestNpcById(46618, kaeyaData.KaeyaID,6)
    self:RequestInteraction(dilucData.Diluc)
    
    
end

function Quest466:OnSubFinish46618(quest)
    print("46618 Finish: Hide NPC")
    --为可莉线特殊处理下查尔斯
    self:ShowBlackScreen(0.5, 1, 0.5,
			function (self)
				if self:GetSubQuestState(1020014) == 2 or self:GetSubQuestState(1020014) == 1 then
                    self:NotifyTo("Npc1465", DailyNpcManager.NpcEventType.STARTDAILY, true)
                end
			end
	)
    self:ActionSafeCall(self.Finish46618Do)
end
function Quest466:Finish46618Do(quest)
    self:ShowBlackScreen(0.5, 1.0, 0.5, self.OnBright2)
    globalActor:UnSpawn("Slime1")
    globalActor:UnSpawn("Slime2")
    globalActor:UnSpawn("Slime3")
    globalActor:UnSpawn("Slime4")
    globalActor:UnSpawn("Slime5")
    globalActor:UnSpawn("Slime6")
end
function Quest466:OnBright2(quest)
    globalActor:UnSpawn("Q466Trigger2")
    globalActor:UnSpawn("Q466Trigger4")
    local Q466Trigger2 = actorMgr:GetActor("Q466Trigger2")
    Q466Trigger2:DestroySelf()
    local Q466Trigger4 = actorMgr:GetActor("Q466Trigger4")
    Q466Trigger4:DestroySelf()

    --actorMgr:CreateActorWithPos(dilucData.Diluc, dilucData.DilucScript, dilucData.DilucID, 0, dilucData.hiddenPos, dilucData.hiddenDir, true)
    --actorMgr:CreateActorWithPos(hoffmanData.Hoffman, hoffmanData.HoffmanScript, hoffmanData.HoffmanID, 0, hoffmanData.hiddenPos, hoffmanData.hiddenDir, true)
    --actorMgr:CreateActorWithPos(kaeyaData.Kaeya, kaeyaData.KaeyaScript, kaeyaData.KaeyaID, 0, kaeyaData.hiddenPos, kaeyaData.hiddenDir, true, false, 3)
    --self:CreateQuestNpcById(46618, hoffmanData.HoffmanID,2)
    --self:CreateQuestNpcById(46618, kaeyaData.KaeyaID,3)

    local paimon = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
	if paimon ~= nil then
		paimon:DestroyWithDisappear(false)
    end
    local diluc = self:GetQuestNpcActor(dilucData.Diluc)
    if diluc ~= nil then
        diluc:Destroy(false)
    end
    local kaeya = self:GetQuestNpcActor(kaeyaData.Kaeya)
    if kaeya ~= nil then
        kaeya:Destroy(false)
    end
    local hoffman = self:GetQuestNpcActor(hoffmanData.Hoffman)
    if hoffman ~= nil then
        hoffman:Destroy(false)
    end
    local jose = self:GetQuestNpcActor(joseData.Jose)
    if jose ~= nil then
        jose:Destroy(false)
    end
end

function Quest466:InvokeOnInteraction(param)
    print("466 Invoke : ")
    if param == 1 then
        print("Invoke 1")
        local conor = self:GetQuestNpcActor(self.clientData.ConorData.Conor)
        if conor ~= nil then
            conor:ClearFollowTask()
            conor:WalkToTask(conorData.Pos2)
        end
    elseif param == 2 then
        print("Invoke 2")
        --actorMgr:CreateActorWithPos(conorData.Conor, conorData.ConorScript, conorData.ConorID, 0, conorData.Pos3, conorData.Dir3, true)
        self:CreateQuestNpcById(46622, conorData.ConorID, 1)
        local conor = self:GetQuestNpcActor(self.clientData.ConorData.Conor)
        if conor ~= nil then
            conor:ClearFollowTask()
            conor:WalkToTask(conorData.Pos1)
        end
    elseif param == 3 then
        print("Invoke 3")
        --actorMgr:CreateActorWithPos(guardData.Guard, guardData.GuardScript, guardData.GuardID, 0, guardData.Pos2, guardData.Dir2, true, false, 1009)    
        self:CreateQuestNpcById(46613, guardData.GuardID,3)
        local guard = self:GetQuestNpcActor(self.clientData.GuardData.Guard)
        if guard ~= nil then
            guard:ClearFollowTask()
            guard:WalkToTask(guardData.Pos1)
        end
    elseif param == 4 then
        print("Invoke 4")
        local guard = self:GetQuestNpcActor(self.clientData.GuardData.Guard)
        if guard ~= nil then
            guard:ClearFollowTask()
            guard:WalkToTask(guardData.Pos2)
        end
        local hoffman = self:GetQuestNpcActor(hoffmanData.Hoffman)
        if hoffman ~= nil then
            hoffman:ClearFollowTask()
            hoffman:WalkToTask(hoffmanData.Pos2)
        end

        self:CallDelay(2,self.GuardVanish)
    elseif param == 5 then
        print("Invoke 5")
        --actorMgr:CreateActorWithPos(hoffmanData.Hoffman, hoffmanData.HoffmanScript, hoffmanData.HoffmanID, 0, hoffmanData.Pos2, hoffmanData.Dir2, true, false, 1009)
        -- self:CreateQuestNpcById(48818, hoffmanData.HoffmanID,4)
        -- local hoffman = self:GetQuestNpcActor(hoffmanData.Hoffman)
        -- if hoffman ~= nil then
        --     hoffman:ClearFollowTask()
        --     hoffman:WalkToTask(hoffmanData.Pos1,
        --     function (self)
        --         hoffman:Standby()
        --         hoffman:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(1009,"Q466Hoffman1").rot))
        --     end
        -- )
        -- end

    elseif param == 6 then
        print("Invoke 6")
        -- local hoffman = self:GetQuestNpcActor(hoffmanData.Hoffman)
        -- if hoffman ~= nil then
        --     hoffman:ClearFollowTask()
        --     hoffman:WalkToTask(hoffmanData.Pos2)
        --     hoffman:Standby()
        -- end

        self:CallDelay(2,self.HoffmanVanish)
    elseif param == 7 then
        print("Invoke 7")
        --actorMgr:CreateActorWithPos(kaeyaData.Kaeya, kaeyaData.KaeyaScript, kaeyaData.KaeyaID, 0, kaeyaData.Pos1, kaeyaData.Dir1, true, false, 1009)
        self:CreateQuestNpcById(48818, kaeyaData.KaeyaID,5)
        local kaeya = self:GetQuestNpcActor(self.clientData.KaeyaData.Kaeya)
        if kaeya ~= nil then
            kaeya:ClearFollowTask()
            kaeya:WalkToTask(kaeyaData.Pos2)
        end
    elseif param == 8 then
        print("Invoke 8")
        local kaeya = self:GetQuestNpcActor(self.clientData.KaeyaData.Kaeya)
        if kaeya ~= nil then
            kaeya:ClearFollowTask()
            kaeya:WalkToTask(kaeyaData.Pos1)
        end

        self:CallDelay(2,self.KaeyaVanish)
    elseif param == 9 then
        print("Invoke 9")    
        local Monster5Data = self.clientData.Monster5Data
        local Monster6Data = self.clientData.Monster6Data
        local Monster7Data = self.clientData.Monster7Data
        self:SpawnMonsterById(46605, Monster5Data.MonsterID,1)
        self:SpawnMonsterById(46605, Monster6Data.MonsterID,2)
        self:SpawnMonsterById(46605, Monster7Data.MonsterID,3)
        -- self:SpawnMonster(20010801, 7, sceneData:GetDummyPoint(3,"Q466Slime7").pos,nil,nil,nil,"Slime7")
        -- self:SpawnMonster(20010801, 7, sceneData:GetDummyPoint(3,"Q466Slime8").pos,nil,nil,nil,"Slime8")
        -- self:SpawnMonster(20010801, 7, sceneData:GetDummyPoint(3,"Q466Slime9").pos,nil,nil,nil,"Slime9")
    elseif param == 10 then
        print("Invoke 10")
        globalActor:UnSpawn("Slime7")
        globalActor:UnSpawn("Slime8")
        globalActor:UnSpawn("Slime9")
    elseif param == 11 then
        print("Invoke 11")
        self:ShowBlackScreen(0.5, 2.5, 0.5)
    end    
end

function Quest466:GuardVanish()
   -- actorMgr:CreateActorWithPos(guardData.Guard, guardData.GuardScript, guardData.GuardID, 0, guardData.hiddenPos, guardData.hiddenDir, true)
   -- actorMgr:CreateActorWithPos(hoffmanData.Hoffman, hoffmanData.HoffmanScript, hoffmanData.HoffmanID, 0, hoffmanData.hiddenPos, hoffmanData.hiddenDir, true)

    self:CreateQuestNpcById(46613, hoffmanData.HoffmanID,4)
    self:CreateQuestNpcById(46613, guardData.GuardID,5)

    local guard = self:GetQuestNpcActor(guardData.Guard)
    if guard ~= nil then
        guard:Destroy(false)
    end
    local hoffman = self:GetQuestNpcActor(hoffmanData.Hoffman)
    if hoffman ~= nil then
        hoffman:Destroy(false)
    end
end
function Quest466:HoffmanVanish()
   -- actorMgr:CreateActorWithPos(hoffmanData.Hoffman, hoffmanData.HoffmanScript, hoffmanData.HoffmanID, 0, hoffmanData.hiddenPos, hoffmanData.hiddenDir, true)
    self:CreateQuestNpcById(48818, hoffmanData.HoffmanID,4)
    local hoffman = self:GetQuestNpcActor(hoffmanData.Hoffman)
    if hoffman ~= nil then
        hoffman:Destroy(false)
    end
end
function Quest466:KaeyaVanish()
    --actorMgr:CreateActorWithPos(kaeyaData.Kaeya, kaeyaData.KaeyaScript, kaeyaData.KaeyaID, 0, kaeyaData.hiddenPos, kaeyaData.hiddenDir, true, false, 3)
    self:CreateQuestNpcById(48818, kaeyaData.KaeyaID,5)
    local kaeya = self:GetQuestNpcActor(kaeyaData.Kaeya)
    if kaeya ~= nil then
        kaeya:Destroy(false)
    end
end
--@endregion

function Quest466:Start()
end

function Quest466:OnDestroy()
end

return Quest466