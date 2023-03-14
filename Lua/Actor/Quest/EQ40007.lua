require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest40007 = class("Quest40007", questActorProxy)

Quest40007.defaultAlias = "Quest40007"

local q40007Cfg = require('Quest/Client/Q40007ClientConfig')
local thiefData = q40007Cfg.ThiefData

--@region Generated
function Quest40007:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["4000701"] = self.OnSubStart4000701
    self.subStartHandlers["4000702"] = self.OnSubStart4000702
    self.subStartHandlers["4000703"] = self.OnSubStart4000703
    self.subStartHandlers["4000704"] = self.OnSubStart4000704
end

function Quest40007:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["4000701"] = self.OnSubFinish4000701
    self.subFinishHandlers["4000702"] = self.OnSubFinish4000702
    self.subFinishHandlers["4000703"] = self.OnSubFinish4000703
    self.subFinishHandlers["4000704"] = self.OnSubFinish4000704
end
--@endregion

--@region sub start & finish 内调用的函数
--@endregion


--@region sub start & finish handlers
---按流程触发顺序
function Quest40007:OnSubStart4000703(quest)
	print("4000703 OnStart")
    --actorMgr:CreateActorWithPos(thiefData.Alias, thiefData.Script, thiefData.ID, 0, thiefData.BornPos, thiefData.BornDir, true) 
    self:CreateQuestNpc(quest, thiefData.ID)

    -- local thief = self:GetQuestNpcActor(thiefData.Alias)
    -- if thief ~= nil then
    --     thief:DoFreeStyle(1280)
    -- end

    --actorMgr:CreateActorWithPos("Q40007Trigger1", "Actor/Gadget/Q40007Trigger1", 70900002, 0, thiefData.BornPos, thiefData.BornDir, true)

    local quest = actorMgr:GetActor(q40007Cfg.ActorAlias)
	if quest ~= nil then
        quest:FinishQuestID(false, 4000703)
	end
end

function Quest40007:OnSubStart4000701(quest)
    print("4000701 OnStart")
    actorMgr:CreateActorWithPos("Q40007Trigger1", "Actor/Gadget/Q40007Trigger1", 70900002, 0, thiefData.BornPos, thiefData.BornDir, true)
    local thief = self:GetQuestNpcActor(thiefData.Alias)
    if thief ~= nil then
        thief:DoFreeStyle(1280)
    end
end

function Quest40007:OnSubFinish4000701(quest)
	print("4000701 OnFinish")
    local trigger1 = actorMgr:GetActor("Q40007Trigger1")
    if trigger1 ~= nil then
        trigger1:Destroy(false)
    end

    local thief = self:GetQuestNpcActor(thiefData.Alias)
    if thief ~= nil then
        thief:EnableInteraction(false)
        thief:DoFreeStateTrigger()
        thief:WalkToTask(thiefData.BornPos2,
            function(actor, task)
                actorMgr:CreateActorWithPos("Q40007Trigger2", "Actor/Gadget/Q40007Trigger2", 70900002, 0, thiefData.BornPos2, thiefData.BornDir2, true)
                self:CallDelay(1, 
                    function  (self)
                        actor:DoFreeStyle(1280)
                    end
                )
                actor:EnableInteraction(true)
            end
        )
    end
end

function Quest40007:OnSubFinish4000702(quest)
    print("4000702 OnFinish")
    local trigger2 = actorMgr:GetActor("Q40007Trigger2")
    if trigger2 ~= nil then
        trigger2:Destroy(false)
    end

    local thief = self:GetQuestNpcActor(thiefData.Alias)
    if thief ~= nil then
        thief:EnableInteraction(false)
        thief:DoFreeStateTrigger()
        thief:WalkToTask(thiefData.BornPos,
            function(actor, task)
                actorMgr:CreateActorWithPos("Q40007Trigger1", "Actor/Gadget/Q40007Trigger1", 70900002, 0, thiefData.BornPos, thiefData.BornDir, true)
                self:CallDelay(1, 
                    function  (self)
                        actor:DoFreeStyle(1280)
                    end
                )
                actor:EnableInteraction(true)
            end
        )
    end
end

function Quest40007:OnSubFinish4000704(quest)
    print("4000704 OnFinish")
    local trigger1 = actorMgr:GetActor("Q40007Trigger1")
    if trigger1 ~= nil then
        trigger1:Destroy(false)
    end

    local trigger2 = actorMgr:GetActor("Q40007Trigger2")
    if trigger2 ~= nil then
        trigger2:Destroy(false)
    end

    local thief = self:GetQuestNpcActor(thiefData.Alias)
    if thief ~= nil then
        thief:Destroy(false)
    end

    local quest = actorMgr:GetActor(q40007Cfg.ActorAlias)
	if quest ~= nil then
        quest:FinishQuestID(true, 4000701)
        quest:FinishQuestID(true, 4000702)
	end
end

function Quest40007:InvokeOnInteraction(param)
    local q40007 = actorMgr:GetActor(q40007Cfg.ActorAlias)
    if param == 1 then
        print("Invoke quest finish")
        local quest = actorMgr:GetActor(q40007Cfg.ActorAlias)
        if quest ~= nil then
            if self:GetSubQuestState(4000701) == 2 then
                quest:FinishQuestID(false, 4000701)
            elseif self:GetSubQuestState(4000702) == 2 then
                quest:FinishQuestID(false, 4000702)
            end
        end
       
        self:ActionSafeCall(
            function(self)
                local paimon = q40007:GetQuestNpcActor("Paimon")
                if paimon ~= nil then
                    paimon:DestroyWithDisappear(false)
                end
            end
        )
    end
end
--@endregion

function Quest40007:Start()
end

function Quest40007:OnDestroy()
end

return Quest40007