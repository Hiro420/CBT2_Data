require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest30015 = class("Quest30015", questActorProxy)

Quest30015.defaultAlias = "Quest30015"
local q30015Cfg = require('Quest/Client/Q30015ClientConfig')
local subIDs = q30015Cfg.SubIDs

-- Generated
function Quest30015:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
	self.subStartHandlers["3001501"] = self.OnSubStart3001501
	self.subStartHandlers["3001502"] = self.OnSubStart3001502
	self.subStartHandlers["3001503"] = self.OnSubStart3001503
	self.subStartHandlers["3001504"] = self.OnSubStart3001504
end

function Quest30015:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
	self.subFinishHandlers["3001501"] = self.OnSubFinish3001501
	self.subFinishHandlers["3001502"] = self.OnSubFinish3001502
	self.subFinishHandlers["3001503"] = self.OnSubFinish3001503
	self.subFinishHandlers["3001504"] = self.OnSubFinish3001504
end

function Quest30015:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["3001501"] = self.OnSubFailed3001501
    self.subFailedHandlers["3001502"] = self.OnSubFailed3001502
    self.subFailedHandlers["3001503"] = self.OnSubFailed3001503
    self.subFailedHandlers["3001504"] = self.OnSubFailed3001504
end

--@region sub start & finish 内调用的函数
function Quest30015:QuestDestroy(quest)
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
            print("********30015***Failed****")
        end
    else
        self:CallDelay(10, self.QuestDestroy)
    end
end
--@endregion

--@region sub start handlers
function Quest30015:OnSubStart3001501(quest)
    print("3001501 start:CreatNPC")
    local randomNpc = self:CreateQuestNpc(quest, 0, 1)

    if randomNpc ~= nil then
        randomNpc:DoFreeStyle(1160)
    end

    self:CallDelay(60, self.QuestDestroy)
end

function Quest30015:OnSubStart3001502(quest)
    print("3001502 start:......")
    self:UnCallFunc(self.QuestDestroy)
end

function Quest30015:OnSubFinish3001502(quest)
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

function Quest30015:Start()
     print("********Quest30015 Start")
end

function Quest30015:OnDestroy()
     print("********Quest30015 OnDestroy")
end

return Quest30015