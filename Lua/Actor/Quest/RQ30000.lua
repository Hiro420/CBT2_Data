require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest30000 = class("Quest30000", questActorProxy)

Quest30000.defaultAlias = "Quest30000"
local q30000Cfg = require('Quest/Client/Q30000ClientConfig')
local subIDs = q30000Cfg.SubIDs

-- Generated
function Quest30000:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
	self.subStartHandlers["3000001"] = self.OnSubStart3000001
	self.subStartHandlers["3000002"] = self.OnSubStart3000002
	self.subStartHandlers["3000003"] = self.OnSubStart3000003
    self.subStartHandlers["3000004"] = self.OnSubStart3000004
    self.subStartHandlers["3000005"] = self.OnSubStart3000005
end

function Quest30000:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
	self.subFinishHandlers["3000001"] = self.OnSubFinish3000001
	self.subFinishHandlers["3000002"] = self.OnSubFinish3000002
	self.subFinishHandlers["3000003"] = self.OnSubFinish3000003
    self.subFinishHandlers["3000004"] = self.OnSubFinish3000004
    self.subFinishHandlers["3000005"] = self.OnSubFinish3000005
end

function Quest30000:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["3000001"] = self.OnSubFailed3000001
    self.subFailedHandlers["3000002"] = self.OnSubFailed3000002
    self.subFailedHandlers["3000003"] = self.OnSubFailed3000003
    self.subFailedHandlers["3000004"] = self.OnSubFailed3000004
    self.subFailedHandlers["3000005"] = self.OnSubFailed3000005
end

--@region sub start handlers
function Quest30000:QuestDestroy(quest)
    local avatarPos = actorUtils.GetAvatarPos()
    local quest_pos = sceneData:GetDummyPoint(3,self:GetRandomFactorValue("{QuestRescuePos}")).pos
    local X = avatarPos.x - quest_pos.x
    local Y = avatarPos.y - quest_pos.y
    local Z = avatarPos.z - quest_pos.z
    local distance = math.sqrt(X*X+Y*Y+Z*Z)
    if distance > 50 then
        local npc_alias = self:GetRandomNpcAlias(self:GetRandomFactorValue("{QuestNpcID}"))
        --local randomNpc = actorMgr:GetActor(npc_alias)
        local randomNpc = self:GetQuestNpcActor(npc_alias)
        print("********30000****" .. npc_alias)
        if randomNpc ~= nil then
            randomNpc:Destroy(false)
            print("********30000NPC***Destroy:****" .. npc_alias)
        end

        if self ~= nil then
            self:FinishQuest(true)
            print("********30000***Failed****")
        end
    else
        self:CallDelay(10,self.QuestDestroy)
    end
end

function Quest30000:OnSubStart3000001(quest)
    
    local npc_ID = tonumber(self:GetRandomFactorValue("{QuestNpcID}"))
    print(npc_ID)
    local npc_alias = self:GetRandomNpcAlias(self:GetRandomFactorValue("{QuestNpcID}"))
    local npc_metaPath = "Actor/Npc/RandomNpc"
    local npc_pos = self:GetRandomFactorValue("{QuestRescuePos}")

    local monster_ID = tonumber(self:GetRandomFactorValue("{QuestMonsterID}"))
    local monster_num = tonumber(self:GetRandomFactorValue("{QuestMonsterNum}"))
    local monster_pos = sceneData:GetDummyPoint(3,npc_pos).pos
    local monster_alias = "RandomMonster" .. tostring(self.mainQuestID)

    local point = sceneData:GetDummyPoint(3,npc_pos)
    --local randomNpc = actorMgr:CreateActorWithPos(npc_alias, npc_metaPath, npc_ID, 0, point.pos, point.rot, true, false, 3, nil, nil, quest.QuestId)
    local randomNpc = self:CreateQuestNpcWithPos(quest, npc_ID, 0, point.pos, point.rot)
    print("********3000001 start: Spawn " .. npc_alias .. "******" .. npc_pos)

    if randomNpc ~= nil then
        randomNpc:DoFreeStyle(4190)
    end

    self:CallDelay(60,self.QuestDestroy)
end

function Quest30000:OnSubStart3000002(quest)
    local npc_alias = self:GetRandomNpcAlias(self:GetRandomFactorValue("{QuestNpcID}"))
    --local randomNpc = actorMgr:GetActor(npc_alias)
    local randomNpc = self:GetQuestNpcActor(npc_alias)
    if randomNpc ~= nil then
        randomNpc:DoFreeStateTrigger()
        randomNpc:Standby()
        print("********3000002Start:****NpcStandUp*****" .. npc_alias)
    end
    self:UnCallFunc(self.QuestDestroy)
    print("********30000***DestroyUncalled****")
end

-- function Quest30000:OnSubFinish3000002(quest)
--     local bonusRate = math.random(1, 100)
--     if bonusRate < 30 then
--         local quest = actorMgr:GetActor(q30000Cfg.ActorAlias)
--         if quest ~= nil then
--             quest:FinishQuestID(false, 3000004)
--         else
--             quest:FinishQuestID(true, 3000004)
--         end
--     end
-- end

function Quest30000:OnSubFinish3000004(quest)
    print("********30000***DestroyNPC****")
    self:ActionSafeCall(
        function(self)
            self:ShowBlackScreen(0.5, 1.0, 0.5, 
                function(self)
                    local npc_alias = self:GetRandomNpcAlias(self:GetRandomFactorValue("{QuestNpcID}"))
                    --local randomNpc = actorMgr:GetActor(npc_alias)
                    local randomNpc = self:GetQuestNpcActor(npc_alias)
                    if randomNpc ~= nil then
                        randomNpc:Destroy(false)
                    end
                end         
            )  
        end
    )
end

function Quest30000:OnSubFailed3000004(quest)
    self:ActionSafeCall(
        function(self)
            self:ShowBlackScreen(0.5, 1.0, 0.5, 
                function(self)
                    local npc_alias = self:GetRandomNpcAlias(self:GetRandomFactorValue("{QuestNpcID}"))
                    --local randomNpc = actorMgr:GetActor(npc_alias)
                    local randomNpc = self:GetQuestNpcActor(npc_alias)
                    if randomNpc ~= nil then
                        randomNpc:Destroy(false)
                    end
                end         
            )  
        end
    )
end

--@endregion

--@region sub finish handlers

--@endregion

function Quest30000:Start()
     print("********Quest30000 Start")
end

function Quest30000:OnDestroy()
     print("********Quest30000 OnDestroy")
end

return Quest30000