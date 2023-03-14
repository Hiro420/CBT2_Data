require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest30013 = class("Quest30013", questActorProxy)

Quest30013.defaultAlias = "Quest30013"
local q30013Cfg = require('Quest/Client/Q30013ClientConfig')
local subIDs = q30013Cfg.SubIDs

-- Generated
function Quest30013:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
	self.subStartHandlers["3001301"] = self.OnSubStart3001301
	self.subStartHandlers["3001302"] = self.OnSubStart3001302
	self.subStartHandlers["3001303"] = self.OnSubStart3001303
	self.subStartHandlers["3001304"] = self.OnSubStart3001304
end

function Quest30013:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
	self.subFinishHandlers["3001301"] = self.OnSubFinish3001301
	self.subFinishHandlers["3001302"] = self.OnSubFinish3001302
	self.subFinishHandlers["3001303"] = self.OnSubFinish3001303
	self.subFinishHandlers["3001304"] = self.OnSubFinish3001304
end

function Quest30013:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["3001301"] = self.OnSubFailed3001301
    self.subFailedHandlers["3001302"] = self.OnSubFailed3001302
    self.subFailedHandlers["3001303"] = self.OnSubFailed3001303
    self.subFailedHandlers["3001304"] = self.OnSubFailed3001304
end

--@region sub start & finish 内调用的函数
function Quest30013:QuestDestroy(quest)
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
            print("********30013***Failed****")
        end
    else
        self:CallDelay(10, self.QuestDestroy)
    end
end
--@endregion

--@region sub start handlers
function Quest30013:OnSubStart3001301(quest)
    print("3001301 start:CreatNPC")
    local randomNpc = self:CreateQuestNpc(quest, 0, 1)

    if randomNpc ~= nil then
        randomNpc:DoFreeStyle(1160)
    end

    self:CallDelay(60, self.QuestDestroy)
end

function Quest30013:OnSubStart3001302(quest)
    print("3001302 start:......")
    self:UnCallFunc(self.QuestDestroy)
end

function Quest30013:OnSubFinish3001302(quest)
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

function Quest30013:Start()
     print("********Quest30013 Start")
end

function Quest30013:OnDestroy()
     print("********Quest30013 OnDestroy")
end

return Quest30013