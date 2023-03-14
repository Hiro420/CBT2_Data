require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest40003 = class("Quest40003", questActorProxy)

Quest40003.defaultAlias = "Quest40003"

local Quest40007
local q40003Cfg
local q40007Cfg = require('Quest/Client/Q40007ClientConfig')
local paimonData
local playerData
local xiaoData
local thoarderIcon
local narratorData
local soldierData
local triggerData

function Quest40003:OnDataLoaded()
    q40003Cfg = self.clientData

    playerData = q40003Cfg.PlayerData
    xiaoData = q40003Cfg.XiaoData
    paimonData = q40003Cfg.PaimonData
    thoarderIcon = q40003Cfg.ThoarderIconData
    soldierData = q40003Cfg.SoldierData
    triggerData = q40003Cfg.TriggerData
    narratorData = q40003Cfg.NarratorData
end

--@region Generated
function Quest40003:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["4000300"] = self.OnSubStart4000300
    self.subStartHandlers["4000301"] = self.OnSubStart4000301
    self.subStartHandlers["4000302"] = self.OnSubStart4000302
    self.subStartHandlers["4000303"] = self.OnSubStart4000303
    self.subStartHandlers["4000304"] = self.OnSubStart4000304
    self.subStartHandlers["4000305"] = self.OnSubStart4000305
    self.subStartHandlers["4000306"] = self.OnSubStart4000306
    self.subStartHandlers["4000307"] = self.OnSubStart4000307
    self.subStartHandlers["4000308"] = self.OnSubStart4000308
    self.subStartHandlers["4000309"] = self.OnSubStart4000309
end

function Quest40003:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["4000300"] = self.OnSubFinish4000300
	self.subFinishHandlers["4000301"] = self.OnSubFinish4000301
    self.subFinishHandlers["4000302"] = self.OnSubFinish4000302
    self.subFinishHandlers["4000303"] = self.OnSubFinish4000303
    self.subFinishHandlers["4000304"] = self.OnSubFinish4000304
    self.subFinishHandlers["4000305"] = self.OnSubFinish4000305
    self.subFinishHandlers["4000306"] = self.OnSubFinish4000306
    self.subFinishHandlers["4000307"] = self.OnSubFinish4000307
    self.subFinishHandlers["4000308"] = self.OnSubFinish4000308
    self.subFinishHandlers["4000309"] = self.OnSubFinish4000309
end
--@endregion

--@region sub start & finish 内调用的函数

--@endregion

--@region sub start & finish handlers
---按流程触发顺序
function Quest40003:OnSubStart4000301(quest)
    local quest = actorMgr:GetActor(q40003Cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuest(false, nil)
    end
end

function Quest40003:OnSubFinish4000301(quest)
    print("4000301 OnFinish")
    self:NarratorOnlyTask(narratorData.Story1, nil, "Story")
end

function Quest40003:OnSubFinish4000302(quest)
	local paimon = self:GetQuestNpcActor(paimonData.Alias)
	if paimon ~= nil then
        paimon:DestroyWithDisappear(false)
    end
end

function Quest40003:OnSubStart4000305(quest)
    print("4000305 OnStart")
    actorMgr:CreateActorWithPos(triggerData.Alias, triggerData.Script, triggerData.ID, 0, triggerData.BornPos, triggerData.BornDir, true)
end

function Quest40003:OnSubFinish4000305(quest)
    print("4000305 OnFinished")
    self:NarratorOnlyTask(narratorData.Story2, nil, "Story")
end

function Quest40003:OnSubStart4000304(quest)
    print("4000304 OnStart")
    --actorMgr:CreateActorWithPos(soldierData.Alias, soldierData.Script, soldierData.ID, 0, soldierData.BornPos, soldierData.BornDir, true)
    self:CreateQuestNpc(quest, soldierData.ID)
end

function Quest40003:OnSubFinish4000304(quest)
    print("4000304 OnFinished")
	local paimon = self:GetQuestNpcActor(paimonData.Alias)
	if paimon ~= nil then
        paimon:DestroyWithDisappear(false)
    end

	local soldier = self:GetQuestNpcActor(soldierData.Alias)
	if soldier ~= nil then
        soldier:Destroy(false)
    end
end

function Quest40003:OnSubStart4000306(quest)
    print("4000307 OnStart")
    
    --actorMgr:CreateActorWithPos(xiaoData.Alias, xiaoData.Script, xiaoData.ID, 0, xiaoData.BornPos, xiaoData.BornDir, true)
    self:CreateQuestNpc(quest, xiaoData.ID)
    local xiao = self:GetQuestNpcActor(xiaoData.Alias)
    if xiao ~= nil then
        xiao:DoFreeStyle(1190)
    end

    --globalActor:SpawnGadget(thoarderIcon.ID, thoarderIcon.BornPos, thoarderIcon.BornDir, thoarderIcon.Alias)
    self:SpawnGadget(quest, thoarderIcon.ID, 1)

    local quest = actorMgr:GetActor(q40007Cfg.ActorAlias)
	if quest ~= nil then
        quest:FinishQuestID(false, 4000704)
        quest:FinishQuestID(true, 4000701)
        quest:FinishQuestID(true, 4000702)
    end
end

function Quest40003:OnSubStart4000307(quest)
    print("4000307 OnStart")
    local task = self.CreateQuestNpcCreateTask({paimonData.Alias})

    self:TransmitPlayer(3, playerData.BornPos, playerData.BornDir, nil, 
        function (self)
            --actorMgr:CreateActorWithPos(paimonData.Alias, paimonData.Script, paimonData.ID, 0, paimonData.BornPos, paimonData.BornDir, true)  
            self:CreateQuestNpc(quest, paimonData.ID)
        end, task
    )
end

function Quest40003:OnSubFinish4000307(quest)
    print("4000307 OnFinished")
	local paimon = self:GetQuestNpcActor(paimonData.Alias)
	if paimon ~= nil then
        paimon:DestroyWithDisappear(false)
    end

    local thief = self:GetQuestNpcActor("Npc10205")
	if thief ~= nil then
        thief:Destroy(false)
    end
end

function Quest40003:OnSubFinish4000309(quest)
    print("4000309 OnFinished")
	local paimon = self:GetQuestNpcActor(paimonData.Alias)
	if paimon ~= nil then
        paimon:DestroyWithDisappear(false)
    end

    self:NarratorOnlyTask(narratorData.Story3, nil, "Story")
end

--@endregion

function Quest40003:Start()
end

function Quest40003:OnDestroy()
end

return Quest40003