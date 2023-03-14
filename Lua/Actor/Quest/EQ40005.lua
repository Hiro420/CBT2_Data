require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest40005 = class("Quest40005", questActorProxy)

Quest40005.defaultAlias = "Quest40005"

local q40005Cfg
local playerData
local paimonData
local xiaoData
local thiefData
local narratorData

function Quest40005:OnDataLoaded()
    q40005Cfg = self.clientData
    playerData = q40005Cfg.PlayerData
    paimonData = q40005Cfg.PaimonData
    xiaoData = q40005Cfg.XiaoData
    thiefData = q40005Cfg.ThiefData
    narratorData = q40005Cfg.NarratorData
end
-- Generated
function Quest40005:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["4000500"] = self.OnSubStart4000500
    self.subStartHandlers["4000501"] = self.OnSubStart4000501
    self.subStartHandlers["4000502"] = self.OnSubStart4000502
    self.subStartHandlers["4000503"] = self.OnSubStart4000503
    self.subStartHandlers["4000504"] = self.OnSubStart4000504
    self.subStartHandlers["4000505"] = self.OnSubStart4000505
    self.subStartHandlers["4000506"] = self.OnSubStart4000506
end

function Quest40005:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["4000500"] = self.OnSubFinish4000500
	self.subFinishHandlers["4000501"] = self.OnSubFinish4000501
    self.subFinishHandlers["4000502"] = self.OnSubFinish4000502
    self.subFinishHandlers["4000503"] = self.OnSubFinish4000503
    self.subFinishHandlers["4000504"] = self.OnSubFinish4000504
    self.subFinishHandlers["4000505"] = self.OnSubFinish4000505
    self.subFinishHandlers["4000506"] = self.OnSubFinish4000506
end

---sub start & finish 内调用的函数

--@region sub start & finish handlers
---按流程触发顺序
function Quest40005:OnSubStart4000500(quest)
    local quest = actorMgr:GetActor(q40005Cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuest(false, nil)
    end
end

function Quest40005:OnSubFinish4000500(quest)
    print("4000400 OnFinish")
    self:NarratorOnlyTask(narratorData.Story1, nil, "Story")
end

function Quest40005:OnSubStart4000501(quest)
    --actorMgr:CreateActorWithPos(thiefData.Alias, thiefData.Script, thiefData.ID, 0, thiefData.BornPos, thiefData.BornDir, true)
    self:CreateQuestNpc(quest, thiefData.ID) 
end

function Quest40005:OnSubFinish4000502(quest)
    print("4000502 OnFinish")
	self:ActionSafeCall(
        function ()
            local thief = self:GetQuestNpcActor(thiefData.Alias)
            if thief ~= nil then
                thief:Destroy(false)
            end

            local paimon = self:GetQuestNpcActor(paimonData.Alias)
            if paimon ~= nil then
                paimon:DestroyWithDisappear(false)
            end

            globalActor:UnSpawnAttach("Mask_PlayerBoy", 10000005)
            globalActor:UnSpawnAttach("Mask_PlayerGirl", 10000007)
        end
	)
end

function Quest40005:OnSubStart4000504(quest)
    print("4000504 OnStart")
    local task = self.CreateQuestNpcCreateTask({thiefData.Alias})

    self:TransmitPlayer(3, playerData.BornPos, playerData.BornDir, nil, 
        function (self)
            --actorMgr:CreateActorWithPos(thiefData.Alias, thiefData.Script, thiefData.ID, 0, thiefData.BornPos, thiefData.BornDir, true) 
            self:CreateQuestNpc(quest, thiefData.ID) 
        end, task
    )
end

function Quest40005:OnSubFinish4000504(quest)
	self:ActionSafeCall(
        function (self)
            local thief = self:GetQuestNpcActor(thiefData.Alias)
            if thief ~= nil then
                thief:Destroy(false)
            end

            local paimon = self:GetQuestNpcActor(paimonData.Alias)
            if paimon ~= nil then
                paimon:DestroyWithDisappear(false)
            end
        end
	)
end

function Quest40005:OnSubStart4000505(quest)
    print("4000505 OnStart")
    --actorMgr:CreateActorWithPos(xiaoData.Alias, xiaoData.Script, xiaoData.ID, 0, xiaoData.BornPos, xiaoData.BornDir, true) 
    self:CreateQuestNpc(quest, xiaoData.ID) 
end

function Quest40005:OnSubFinish4000505(quest)
	self:ActionSafeCall(
        function (self)
            local paimon = self:GetQuestNpcActor(paimonData.Alias)
            if paimon ~= nil then
                paimon:DestroyWithDisappear(false)
            end
        end
	)
end

function Quest40005:OnSubFinish4000506(quest)
    self:CallDelay(0.5,
        function(self)
            globalActor:ChangeDay24Time(22, true)        
        end
    )

    self:PlayCutsceneIndex(4000501,
        function(self)
            local xiao = self:GetQuestNpcActor(xiaoData.Alias)
            if xiao ~= nil then
                xiao:Destroy(false)
            end 
        end
    )
end

function Quest40005:InvokeOnInteraction(param)
    if param == 1 then
        print("Invoke quest finish")
        globalActor:SpawnAttach("Mask_PlayerBoy", 10000005)
        globalActor:SpawnAttach("Mask_PlayerGirl", 10000007)
    end
end
--@endregion

function Quest40005:Start()
end

function Quest40005:OnDestroy()
end

return Quest40005