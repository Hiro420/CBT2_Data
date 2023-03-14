require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest30007 = class("Quest30007", questActorProxy)

Quest30007.defaultAlias = "Quest30007"
local q30007Cfg = require('Quest/Client/Q30007ClientConfig')
local subIDs = q30007Cfg.SubIDs

local bubbleState = q30007Cfg.BubbleState

-- Generated
function Quest30007:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
	self.subStartHandlers["3000701"] = self.OnSubStart3000701
	self.subStartHandlers["3000702"] = self.OnSubStart3000702
	self.subStartHandlers["3000703"] = self.OnSubStart3000703
    self.subStartHandlers["3000704"] = self.OnSubStart3000704
    self.subStartHandlers["3000705"] = self.OnSubStart3000705
end

function Quest30007:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
	self.subFinishHandlers["3000701"] = self.OnSubFinish3000701
	self.subFinishHandlers["3000702"] = self.OnSubFinish3000702
	self.subFinishHandlers["3000703"] = self.OnSubFinish3000703
    self.subFinishHandlers["3000704"] = self.OnSubFinish3000704
    self.subFinishHandlers["3000705"] = self.OnSubFinish3000705
end

function Quest30007:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["3000701"] = self.OnSubFailed3000701
    self.subFailedHandlers["3000702"] = self.OnSubFailed3000702
    self.subFailedHandlers["3000703"] = self.OnSubFailed3000703
    self.subFailedHandlers["3000704"] = self.OnSubFailed3000704
    self.subFailedHandlers["3000705"] = self.OnSubFailed3000705
end

--@region sub start handlers
function Quest30007:QuestDestroy(quest)
    local avatarPos = actorUtils.GetAvatarPos()
    local quest_pos = sceneData:GetDummyPoint(3,self:GetRandomFactorValue("{QuestRescuePos}")).pos
    local X = avatarPos.x - quest_pos.x
    local Y = avatarPos.y - quest_pos.y
    local Z = avatarPos.z - quest_pos.z
    local distance = math.sqrt(X*X+Y*Y+Z*Z)
    if distance > 50 then
        local npc_alias = self:GetRandomNpcAlias(self:GetRandomFactorValue("{QuestNpcID}"))
        local randomNpc = actorMgr:GetActor(npc_alias)
        print("********30007****" .. npc_alias)
        if randomNpc ~= nil then
            randomNpc:Destroy(false)
            print("********30007NPC***Destroy:****" .. npc_alias)
        end

        if self ~= nil then
            self:FinishQuest(true)
            print("********30007***Failed****")
        end
    else
        self:CallDelay(10,self.QuestDestroy)
    end
end

function Quest30007:NPCShowBubble(quest)
    print("NPC show bubble")
    local npc_ID = tonumber(self:GetRandomFactorValue("{QuestNpcID}"))
    local x = math.random(1, 2)

    if x == 1 then
        self:TriggerNpcSpeechBubble(npc_ID, 300010106)
    elseif x == 2 then
        self:TriggerNpcSpeechBubble(npc_ID, 300010107)
    end

    self:CallDelay(3, 
        function (self)
            self:ClearNpcSpeechBubble(npc_ID)
        end
    )
    
    if bubbleState == true then
        self:CallDelay(4, self.NPCShowBubble)
    end
end

function Quest30007:OnSubStart3000701(quest)
    print("3000701 start:CreatNPC")

    bubbleState = true

    local randomNpc = self:CreateQuestNpc(quest, 0, 1)

    if randomNpc ~= nil then
        randomNpc:DoFreeStyle(4190)
    end

    self:CallDelay(60, self.QuestDestroy)
    self:NPCShowBubble()
end

function Quest30007:OnSubStart3000702(quest)
    bubbleState = false
    local rAlias = "{QuestNpcID}"
    local npc_ID = tonumber(self:GetRandomFactorValue(rAlias))
    local randomNpc = self:GetQuestNpcActor(rAlias)
    if randomNpc ~= nil then
        self:ClearNpcSpeechBubble(npc_ID)
        randomNpc:DoFreeStateTrigger()
        randomNpc:Standby()
    end

    self:UnCallFunc(self.NPCShowBubble)
end

function Quest30007:OnSubFinish3000702(quest)
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

function Quest30007:Start()
     print("********Quest30007 Start")
end

function Quest30007:OnDestroy()
     print("********Quest30007 OnDestroy")
end

return Quest30007