require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest30003 = class("Quest30003", questActorProxy)

Quest30003.defaultAlias = "Quest30003"
local q30003Cfg = require('Quest/Client/Q30003ClientConfig')
local subIDs = q30003Cfg.SubIDs

local bubbleState = q30003Cfg.BubbleState

-- Generated
function Quest30003:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
	self.subStartHandlers["3000301"] = self.OnSubStart3000301
	self.subStartHandlers["3000302"] = self.OnSubStart3000302
	self.subStartHandlers["3000303"] = self.OnSubStart3000303
    self.subStartHandlers["3000304"] = self.OnSubStart3000304
    self.subStartHandlers["3000305"] = self.OnSubStart3000305
end

function Quest30003:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
	self.subFinishHandlers["3000301"] = self.OnSubFinish3000301
	self.subFinishHandlers["3000302"] = self.OnSubFinish3000302
	self.subFinishHandlers["3000303"] = self.OnSubFinish3000303
    self.subFinishHandlers["3000304"] = self.OnSubFinish3000304
    self.subFinishHandlers["3000305"] = self.OnSubFinish3000305
end

function Quest30003:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["3000301"] = self.OnSubFailed3000301
    self.subFailedHandlers["3000302"] = self.OnSubFailed3000302
    self.subFailedHandlers["3000303"] = self.OnSubFailed3000303
    self.subFailedHandlers["3000304"] = self.OnSubFailed3000304
    self.subFailedHandlers["3000305"] = self.OnSubFailed3000305
end

--@region sub start handlers
function Quest30003:QuestDestroy(quest)
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
            print("********30003***Failed****")
        end
    else
        self:CallDelay(10,self.QuestDestroy)
    end
end

function Quest30003:NPCShowBubble(quest)
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

function Quest30003:OnSubStart3000301(quest)
    print("3000301 start:CreatNPC")

    bubbleState = true

    local randomNpc = self:CreateQuestNpc(quest, 0, 1)

    if randomNpc ~= nil then
        randomNpc:DoFreeStyle(4190)
    end

    self:CallDelay(60, self.QuestDestroy)
    self:NPCShowBubble()
end

function Quest30003:OnSubStart3000302(quest)
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

function Quest30003:OnSubFinish3000302(quest)
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

function Quest30003:Start()
     print("********Quest30003 Start")
end

function Quest30003:OnDestroy()
     print("********Quest30003 OnDestroy")
end

return Quest30003