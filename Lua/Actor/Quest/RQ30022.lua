require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest30022 = class("Quest30022", questActorProxy)

Quest30022.defaultAlias = "Quest30022"
local q30022Cfg = require('Quest/Client/Q30022ClientConfig')
local subIDs = q30022Cfg.SubIDs
local NpcUtil = require('Actor/Npc/NPCUtil')

-- Generated
function Quest30022:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
	self.subStartHandlers["3002201"] = self.OnSubStart3002201
	self.subStartHandlers["3002202"] = self.OnSubStart3002202
end

function Quest30022:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
	self.subFinishHandlers["3002201"] = self.OnSubFinish3002201
	self.subFinishHandlers["3002202"] = self.OnSubFinish3002202
end

function Quest30022:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["3002201"] = self.OnSubFailed3002201
    self.subFailedHandlers["3002202"] = self.OnSubFailed3002202
end

--@region sub start & finish 内调用的函数
function Quest30022:QuestDestroy(quest)
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
            print("********30022***Failed****")
        end
    else
        self:CallDelay(10, self.QuestDestroy)
    end
end
--@endregion

--@region sub start handlers
function Quest30022:OnSubStart3002201(quest)
    print("3002201 start:CreatNPC")
    local randomNpc = self:CreateQuestNpc(quest, 0, 1)

    if randomNpc ~= nil then
        randomNpc:DoFreeStyle(1160)
    end

    self:CallDelay(60, self.QuestDestroy)
end

function Quest30022:OnSubStart3002202(quest)
    print("3002202 start:......")
    self:UnCallFunc(self.QuestDestroy)

    local randomNpc = self:CreateQuestNpc(quest, 0, 1)

    local npc3_alias = "Npc" .. self:GetRandomFactorValue("{QuestNpcID3}")
    print("NPC3 alias is " .. npc3_alias)
    self:NotifyTo(npc3_alias, NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest30022:OnSubFinish3002201(quest)
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

function Quest30022:OnSubFinish3002202(quest)
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

function Quest30022:Start()
     print("********Quest30022 Start")
end

function Quest30022:OnDestroy()
     print("********Quest30022 OnDestroy")
end

return Quest30022