require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest393 = class("Quest393", questActorProxy)

Quest393.defaultAlias = "Quest393"

local q393Cfg
local wendyData
local qinData
local dilucData
local paimonData

function Quest393:OnDataLoaded()
    q393Cfg = self.clientData
    wendyData = q393Cfg.WendyData
    qinData = q393Cfg.QinData
    dilucData = q393Cfg.DilucData
    paimonData = q393Cfg.PaimonData
end

-- Generated
function Quest393:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["39301"] = self.OnSubStart39301
    self.subStartHandlers["39302"] = self.OnSubStart39302
    self.subStartHandlers["39303"] = self.OnSubStart39303  
end

function Quest393:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["39301"] = self.OnSubFinish39301
    self.subFinishHandlers["39302"] = self.OnSubFinish39302
    self.subFinishHandlers["39303"] = self.OnSubFinish39303
end

-- local param begin
-- local param end

---sub start & finish 内调用的函数
-- end

-- local method begin
--@region sub start handlers
function Quest393:OnSubStart39301(quest)
    print("39301 start:......")
    local quest = actorMgr:GetActor(q393Cfg.ActorAlias)
    if quest ~= nil then
        quest:FinishQuest(false, nil)
    end 
end

function Quest393:OnSubStart39302(quest)
    print("39302 start:......")
end

function Quest393:OnSubStart39303(quest)
    print("39303 start:......")
end
--@endregion


--@region sub finish handlers
function Quest393:OnSubFinish39301(quest)
    print("OnFinished 39301")
    -- self:NarratorOnlyTask(self.clientData.NarratorData.Story1)
    -- self:EnterSceneLookCamera(sceneData:GetDummyPoint(3,"Q389VentiPos2").pos, 0, 3, true) 
end

function Quest393:OnSubFinish39302(quest)
    print("OnFinished 39302")
    local task = curtainUtils.CreateEntityCreateTask({wendyData.Wendy, dilucData.Diluc, qinData.Qin})

    self:TransmitPlayer(3, wendyData.bornPos, wendyData.bornDir, nil, 
        function (self)
            self:CreateQuestNpc(quest, wendyData.WendyID) 
            self:CreateQuestNpc(quest, dilucData.DilucID) 
            self:CreateQuestNpc(quest, qinData.QinID)

            self:CallDelay(0.5,
                function (self)
                    self:RequestInteraction(wendyData.Wendy)
                end
            )
        end, task
    )
end

function Quest393:OnSubFinish39303(quest)
    print("OnFinished 39303")
    self:ActionSafeCall(
    function(self)
        local wendy = self:GetQuestNpcActor(wendyData.Wendy)
        local diluc = self:GetQuestNpcActor(dilucData.Diluc)
        local qin = self:GetQuestNpcActor(qinData.Qin)
        local paimon = self:GetQuestNpcActor("Paimon")

        -- if wendy ~= nil then
        --     wendy:ClearFollowTask()
        --     wendy:RunToTask(wendyData.bornPos2,
        --     function (wendy, task)
        --         wendy:Standby()
        --         wendy:TurnTo(M.Euler2DirXZ(wendyData.bornDir2))
        --     end
        --     )
        -- end

        -- if diluc ~= nil then
        --     diluc:ClearFollowTask()
        --     diluc:RunToTask(dilucData.bornPos2,
        --     function (diluc, task)
        --         diluc:Standby()
        --         diluc:TurnTo(M.Euler2DirXZ(dilucData.bornDir2))
        --     end
        --     )
        -- end

        -- if qin ~= nil then
        --     qin:ClearFollowTask()
        --     qin:RunToTask(qinData.bornPos2,
        --     function (qin, task)
        --         qin:Standby()
        --         qin:TurnTo(M.Euler2DirXZ(qinData.bornDir2))
        --     end
        --     )
        -- end

        if paimon ~= nil then
            paimon:DestroyWithDisappear(false)
        end
    end
    )
end
--@endregion

function Quest393:Start()
end

function Quest393:OnDestroy()
-- if ScriptLib.GetEntityType(evt.target_eid) == EntityType.AVATAR and ScriptLib.GetQuestState(evt.target_eid, 39302) == QuestState.UNFINISHED and evt.param1 == 178 then
--     return true
-- end
-- return false
end

return Quest393