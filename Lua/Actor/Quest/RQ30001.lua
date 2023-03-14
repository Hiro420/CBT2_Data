require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest30001 = class("Quest30001", questActorProxy)

Quest30001.defaultAlias = "Quest30001"
local q30001Cfg = require('Quest/Client/Q30001ClientConfig')
local subIDs = q30001Cfg.SubIDs

local bubbleState = q30001Cfg.BubbleState

-- Generated
function Quest30001:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
	self.subStartHandlers["3000101"] = self.OnSubStart3000101
	self.subStartHandlers["3000102"] = self.OnSubStart3000102
	self.subStartHandlers["3000103"] = self.OnSubStart3000103
	self.subStartHandlers["3000104"] = self.OnSubStart3000104
end

function Quest30001:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
	self.subFinishHandlers["3000101"] = self.OnSubFinish3000101
	self.subFinishHandlers["3000102"] = self.OnSubFinish3000102
	self.subFinishHandlers["3000103"] = self.OnSubFinish3000103
	self.subFinishHandlers["3000104"] = self.OnSubFinish3000104
end

function Quest30001:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["3000101"] = self.OnSubFailed3000101
    self.subFailedHandlers["3000102"] = self.OnSubFailed3000102
    self.subFailedHandlers["3000103"] = self.OnSubFailed3000103
    self.subFailedHandlers["3000104"] = self.OnSubFailed3000104
end

--@region sub start handlers
function Quest30001:QuestDestroy(quest)
    local avatarPos = actorUtils.GetAvatarPos()
    local quest_pos = sceneData:GetDummyPoint(3,self:GetRandomFactorValue("{QuestRescuePos}")).pos
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
            print("********30001***Failed****")
        end
    else
        self:CallDelay(10,self.QuestDestroy)
    end
end

function Quest30001:NPCShowBubble(quest)
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

function Quest30001:OnSubStart3000101(quest)
    print("3000101 start:CreatNPC")

    bubbleState = true

    local randomNpc = self:CreateQuestNpc(quest, 0, 1)

    if randomNpc ~= nil then
        randomNpc:DoFreeStyle(4190)
    end

    self:CallDelay(60, self.QuestDestroy)
    self:NPCShowBubble()
end

function Quest30001:OnSubStart3000102(quest)
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

function Quest30001:OnSubFinish3000102(quest)
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

function Quest30001:Start()
     print("********Quest30001 Start")
end

function Quest30001:OnDestroy()
     print("********Quest30001 OnDestroy")
end

return Quest30001