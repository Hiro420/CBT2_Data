require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest30005 = class("Quest30005", questActorProxy)

Quest30005.defaultAlias = "Quest30005"
local q30005Cfg = require('Quest/Client/Q30005ClientConfig')
local subIDs = q30005Cfg.SubIDs

local bubbleState = q30005Cfg.BubbleState

-- Generated
function Quest30005:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
	self.subStartHandlers["3000501"] = self.OnSubStart3000501
	self.subStartHandlers["3000502"] = self.OnSubStart3000502
	self.subStartHandlers["3000503"] = self.OnSubStart3000503
    self.subStartHandlers["3000504"] = self.OnSubStart3000504
    self.subStartHandlers["3000505"] = self.OnSubStart3000505
end

function Quest30005:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
	self.subFinishHandlers["3000501"] = self.OnSubFinish3000501
	self.subFinishHandlers["3000502"] = self.OnSubFinish3000502
	self.subFinishHandlers["3000503"] = self.OnSubFinish3000503
    self.subFinishHandlers["3000504"] = self.OnSubFinish3000504
    self.subFinishHandlers["3000505"] = self.OnSubFinish3000505
end

function Quest30005:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["3000501"] = self.OnSubFailed3000501
    self.subFailedHandlers["3000502"] = self.OnSubFailed3000502
    self.subFailedHandlers["3000503"] = self.OnSubFailed3000503
    self.subFailedHandlers["3000504"] = self.OnSubFailed3000504
    self.subFailedHandlers["3000505"] = self.OnSubFailed3000505
end

--@region sub start handlers
function Quest30005:QuestDestroy(quest)
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
            print("********30005***Failed****")
        end
    else
        self:CallDelay(10,self.QuestDestroy)
    end
end

function Quest30005:NPCShowBubble(quest)
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

function Quest30005:OnSubStart3000501(quest)
    print("3000501 start:CreatNPC")

    bubbleState = true

    local randomNpc = self:CreateQuestNpc(quest, 0, 1)

    if randomNpc ~= nil then
        randomNpc:DoFreeStyle(4190)
    end

    self:CallDelay(60, self.QuestDestroy)
    self:NPCShowBubble()
end

function Quest30005:OnSubStart3000502(quest)
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

function Quest30005:OnSubFinish3000502(quest)
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

function Quest30005:Start()
     print("********Quest30005 Start")
end

function Quest30005:OnDestroy()
     print("********Quest30005 OnDestroy")
end

return Quest30005