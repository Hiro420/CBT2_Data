require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest30014 = class("Quest30014", questActorProxy)

Quest30014.defaultAlias = "Quest30014"
local q30014Cfg = require('Quest/Client/Q30014ClientConfig')
local subIDs = q30014Cfg.SubIDs

-- Generated
function Quest30014:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
	self.subStartHandlers["3001401"] = self.OnSubStart3001401
	self.subStartHandlers["3001402"] = self.OnSubStart3001402
	self.subStartHandlers["3001403"] = self.OnSubStart3001403
	self.subStartHandlers["3001404"] = self.OnSubStart3001404
end

function Quest30014:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
	self.subFinishHandlers["3001401"] = self.OnSubFinish3001401
	self.subFinishHandlers["3001402"] = self.OnSubFinish3001402
	self.subFinishHandlers["3001403"] = self.OnSubFinish3001403
	self.subFinishHandlers["3001404"] = self.OnSubFinish3001404
end

function Quest30014:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["3001401"] = self.OnSubFailed3001401
    self.subFailedHandlers["3001402"] = self.OnSubFailed3001402
    self.subFailedHandlers["3001403"] = self.OnSubFailed3001403
    self.subFailedHandlers["3001404"] = self.OnSubFailed3001404
end

--@region sub start & finish 内调用的函数
function Quest30014:QuestDestroy(quest)
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
            print("********30014***Failed****")
        end
    else
        self:CallDelay(10, self.QuestDestroy)
    end
end
--@endregion

--@region sub start handlers
function Quest30014:OnSubStart3001401(quest)
    print("3001401 start:CreatNPC")
    local randomNpc = self:CreateQuestNpc(quest, 0, 1)

    if randomNpc ~= nil then
        randomNpc:DoFreeStyle(1160)
    end

    self:CallDelay(60, self.QuestDestroy)
end

function Quest30014:OnSubStart3001402(quest)
    print("3001402 start:......")
    self:UnCallFunc(self.QuestDestroy)
end

function Quest30014:OnSubFinish3001402(quest)
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

function Quest30014:Start()
     print("********Quest30014 Start")
end

function Quest30014:OnDestroy()
     print("********Quest30014 OnDestroy")
end

return Quest30014