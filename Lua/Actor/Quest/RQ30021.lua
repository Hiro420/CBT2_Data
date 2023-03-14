require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest30021 = class("Quest30021", questActorProxy)

Quest30021.defaultAlias = "Quest30021"
local q30021Cfg = require('Quest/Client/Q30021ClientConfig')
local subIDs = q30021Cfg.SubIDs
local NpcUtil = require('Actor/Npc/NPCUtil')

-- Generated
function Quest30021:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
	self.subStartHandlers["3002101"] = self.OnSubStart3002101
	self.subStartHandlers["3002102"] = self.OnSubStart3002102
end

function Quest30021:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
	self.subFinishHandlers["3002101"] = self.OnSubFinish3002101
	self.subFinishHandlers["3002102"] = self.OnSubFinish3002102
end

function Quest30021:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["3002101"] = self.OnSubFailed3002101
    self.subFailedHandlers["3002102"] = self.OnSubFailed3002102
end

--@region sub start & finish 内调用的函数
function Quest30021:QuestDestroy(quest)
    local avatarPos = actorUtils.GetAvatarPos()
    local quest_pos = sceneData:GetDummyPoint(3, self:GetRandomFactorValue("{QuestRescuePos}")).pos
    local X = avatarPos.x - quest_pos.x
    local Y = avatarPos.y - quest_pos.y
    local Z = avatarPos.z - quest_pos.z
    local distance = math.sqrt(X*X+Y*Y+Z*Z)
    if distance > 50 then
        local randomNpc = self:GetQuestNpcActor("{QuestNpcID}")
        if randomNpc ~= nil then
            randomNpc:Destroy(false)
        end

        if self ~= nil then
            self:FinishQuest(true)
            print("********30021***Failed****")
        end
    else
        self:CallDelay(10, self.QuestDestroy)
    end
end
--@endregion

--@region sub start handlers
function Quest30021:OnSubStart3002101(quest)
    print("3002101 start:CreatNPC")
    local randomNpc = self:CreateQuestNpc(quest, 0, 1)

    if randomNpc ~= nil then
        randomNpc:DoFreeStyle(1160)
    end

    self:CallDelay(60, self.QuestDestroy)
end

function Quest30021:OnSubStart3002102(quest)
    print("3002102 start:......")
    self:UnCallFunc(self.QuestDestroy)

    local randomNpc = self:CreateQuestNpc(quest, 0, 1)

    local npc3_alias = "Npc" .. self:GetRandomFactorValue("{QuestNpcID3}")
    print("NPC3 alias is " .. npc3_alias)
    self:NotifyTo(npc3_alias, NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest30021:OnSubFinish3002101(quest)
    self:ActionSafeCall(
        function(self)
            self:ShowBlackScreen(0.5, 1.0, 0.5, 
                function(self)
                    local rAlias = "{QuestNpcID}"
                    local randomNpc = self:GetQuestNpcActor(rAlias)
                    if randomNpc ~= nil then
                        randomNpc:Destroy(false)
                    end
                    self:UnCallFunc(self.QuestDestroy)
                end         
            )  
        end
    )
end

function Quest30021:OnSubFinish3002102(quest)
    self:ActionSafeCall(
        function(self)
            self:ShowBlackScreen(0.5, 1.0, 0.5, 
                function(self)
                    local rAlias = "{QuestNpcID2}"
                    local randomNpc = self:GetQuestNpcActor(rAlias)
                    if randomNpc ~= nil then
                        randomNpc:Destroy(false)
                    end
                    self:UnCallFunc(self.QuestDestroy)

                    local npc3_alias = "Npc" .. self:GetRandomFactorValue("{QuestNpcID3}")
                    print("NPC3 alias is " .. npc3_alias)
                    self:NotifyTo(npc3_alias, NpcUtil.NpcEventType.STARTDAILY, true)
                end         
            )  
        end
    )
end
--@endregion

--@region sub finish handlers

--@endregion

function Quest30021:Start()
     print("********Quest30021 Start")
end

function Quest30021:OnDestroy()
     print("********Quest30021 OnDestroy")
end

return Quest30021