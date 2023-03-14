require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest30012 = class("Quest30012", questActorProxy)

Quest30012.defaultAlias = "Quest30012"
local q30012Cfg = require('Quest/Client/Q30012ClientConfig')
local subIDs = q30012Cfg.SubIDs

-- Generated
function Quest30012:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
	self.subStartHandlers["3001201"] = self.OnSubStart3001201
	self.subStartHandlers["3001202"] = self.OnSubStart3001202
	self.subStartHandlers["3001203"] = self.OnSubStart3001203
	self.subStartHandlers["3001204"] = self.OnSubStart3001204
end

function Quest30012:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
	self.subFinishHandlers["3001201"] = self.OnSubFinish3001201
	self.subFinishHandlers["3001202"] = self.OnSubFinish3001202
	self.subFinishHandlers["3001203"] = self.OnSubFinish3001203
	self.subFinishHandlers["3001204"] = self.OnSubFinish3001204
end

function Quest30012:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["3001201"] = self.OnSubFailed3001201
    self.subFailedHandlers["3001202"] = self.OnSubFailed3001202
    self.subFailedHandlers["3001203"] = self.OnSubFailed3001203
    self.subFailedHandlers["3001204"] = self.OnSubFailed3001204
end

--@region sub start & finish 内调用的函数
function Quest30012:QuestDestroy(quest)
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
            print("********30012***Failed****")
        end
    else
        self:CallDelay(10, self.QuestDestroy)
    end
end
--@endregion

--@region sub start handlers
function Quest30012:OnSubStart3001201(quest)
    print("3001201 start:CreatNPC")
    local randomNpc = self:CreateQuestNpc(quest, 0, 1)

    if randomNpc ~= nil then
        randomNpc:DoFreeStyle(1160)
    end

    self:CallDelay(60, self.QuestDestroy)
end

function Quest30012:OnSubStart3001202(quest)
    print("3001202 start:......")
    self:UnCallFunc(self.QuestDestroy)
end

function Quest30012:OnSubFinish3001202(quest)
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

function Quest30012:Start()
     print("********Quest30012 Start")
end

function Quest30012:OnDestroy()
     print("********Quest30012 OnDestroy")
end

return Quest30012