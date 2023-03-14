require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest30011 = class("Quest30011", questActorProxy)

Quest30011.defaultAlias = "Quest30011"
local q30011Cfg = require('Quest/Client/Q30011ClientConfig')
local subIDs = q30011Cfg.SubIDs

-- Generated
function Quest30011:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
	self.subStartHandlers["3001101"] = self.OnSubStart3001101
	self.subStartHandlers["3001102"] = self.OnSubStart3001102
	self.subStartHandlers["3001103"] = self.OnSubStart3001103
	self.subStartHandlers["3001104"] = self.OnSubStart3001104
end

function Quest30011:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
	self.subFinishHandlers["3001101"] = self.OnSubFinish3001101
	self.subFinishHandlers["3001102"] = self.OnSubFinish3001102
	self.subFinishHandlers["3001103"] = self.OnSubFinish3001103
	self.subFinishHandlers["3001104"] = self.OnSubFinish3001104
end

function Quest30011:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["3001101"] = self.OnSubFailed3001101
    self.subFailedHandlers["3001102"] = self.OnSubFailed3001102
    self.subFailedHandlers["3001103"] = self.OnSubFailed3001103
    self.subFailedHandlers["3001104"] = self.OnSubFailed3001104
end

--@region sub start & finish 内调用的函数
function Quest30011:QuestDestroy(quest)
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
            print("********30011***Failed****")
        end
    else
        self:CallDelay(10, self.QuestDestroy)
    end
end
--@endregion

--@region sub start handlers
function Quest30011:OnSubStart3001101(quest)
    print("3001101 start:CreatNPC")

    local randomNpc = self:CreateQuestNpc(quest, 0, 1)

    if randomNpc ~= nil then
        randomNpc:DoFreeStyle(1160)
    end

    self:CallDelay(60, self.QuestDestroy)
end

function Quest30011:OnSubStart3001102(quest)
    print("3001102 start:......")
    self:UnCallFunc(self.QuestDestroy)
end

function Quest30011:OnSubFinish3001102(quest)
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
--@endregion

--@region sub finish handlers

--@endregion

function Quest30011:Start()
     print("********Quest30011 Start")
end

function Quest30011:OnDestroy()
     print("********Quest30011 OnDestroy")
end

return Quest30011