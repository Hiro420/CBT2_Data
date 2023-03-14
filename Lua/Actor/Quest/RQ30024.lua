require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest30024 = class("Quest30024", questActorProxy)

Quest30024.defaultAlias = "Quest30024"
local q30024Cfg = require('Quest/Client/Q30024ClientConfig')
local subIDs = q30024Cfg.SubIDs
local NpcUtil = require('Actor/Npc/NPCUtil')

-- Generated
function Quest30024:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
	self.subStartHandlers["3002401"] = self.OnSubStart3002401
	self.subStartHandlers["3002402"] = self.OnSubStart3002402
end

function Quest30024:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
	self.subFinishHandlers["3002401"] = self.OnSubFinish3002401
	self.subFinishHandlers["3002402"] = self.OnSubFinish3002402
end

function Quest30024:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["3002401"] = self.OnSubFailed3002401
    self.subFailedHandlers["3002402"] = self.OnSubFailed3002402
end

--@region sub start & finish 内调用的函数
function Quest30024:QuestDestroy(quest)
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
            print("********30024***Failed****")
        end
    else
        self:CallDelay(10, self.QuestDestroy)
    end
end
--@endregion

--@region sub start handlers
function Quest30024:OnSubStart3002401(quest)
    print("3002401 start:CreatNPC")
    local randomNpc = self:CreateQuestNpc(quest, 0, 1)

    if randomNpc ~= nil then
        randomNpc:DoFreeStyle(1160)
    end

    self:CallDelay(60, self.QuestDestroy)
end

function Quest30024:OnSubStart3002402(quest)
    print("3002402 start:......")
    self:UnCallFunc(self.QuestDestroy)

    local randomNpc = self:CreateQuestNpc(quest, 0, 1)

    local npc3_alias = "Npc" .. self:GetRandomFactorValue("{QuestNpcID3}")
    print("NPC3 alias is " .. npc3_alias)
    self:NotifyTo(npc3_alias, NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest30024:OnSubFinish3002401(quest)
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

function Quest30024:OnSubFinish3002402(quest)
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

function Quest30024:Start()
     print("********Quest30024 Start")
end

function Quest30024:OnDestroy()
     print("********Quest30024 OnDestroy")
end

return Quest30024