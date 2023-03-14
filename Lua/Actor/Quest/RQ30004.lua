require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest30004 = class("Quest30004", questActorProxy)

Quest30004.defaultAlias = "Quest30004"
local q30004Cfg = require('Quest/Client/Q30004ClientConfig')
local subIDs = q30004Cfg.SubIDs

local bubbleState = q30004Cfg.BubbleState

-- Generated
function Quest30004:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
	self.subStartHandlers["3000401"] = self.OnSubStart3000401
	self.subStartHandlers["3000402"] = self.OnSubStart3000402
	self.subStartHandlers["3000403"] = self.OnSubStart3000403
    self.subStartHandlers["3000404"] = self.OnSubStart3000404
    self.subStartHandlers["3000405"] = self.OnSubStart3000405
end

function Quest30004:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
	self.subFinishHandlers["3000401"] = self.OnSubFinish3000401
	self.subFinishHandlers["3000402"] = self.OnSubFinish3000402
	self.subFinishHandlers["3000403"] = self.OnSubFinish3000403
    self.subFinishHandlers["3000404"] = self.OnSubFinish3000404
    self.subFinishHandlers["3000405"] = self.OnSubFinish3000405
end

function Quest30004:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["3000401"] = self.OnSubFailed3000401
    self.subFailedHandlers["3000402"] = self.OnSubFailed3000402
    self.subFailedHandlers["3000403"] = self.OnSubFailed3000403
    self.subFailedHandlers["3000404"] = self.OnSubFailed3000404
    self.subFailedHandlers["3000405"] = self.OnSubFailed3000405
end

--@region sub start & finish 内调用的函数
function Quest30004:QuestDestroy(quest)
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
            print("********30004***Failed****")
        end
    else
        self:CallDelay(10,self.QuestDestroy)
    end
end

function Quest30004:NPCShowBubble(quest)
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
--@endregion

--@region sub start handlers
function Quest30004:OnSubStart3000401(quest)
    print("3000401 start:CreatNPC")

    bubbleState = true

    local randomNpc = self:CreateQuestNpc(quest, 0, 1)

    if randomNpc ~= nil then
        randomNpc:DoFreeStyle(4190)
    end

    self:CallDelay(60, self.QuestDestroy)
    self:NPCShowBubble()
end

function Quest30004:OnSubStart3000402(quest)
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

function Quest30004:OnSubFinish3000402(quest)
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

function Quest30004:Start()
     print("********Quest30004 Start")
end

function Quest30004:OnDestroy()
     print("********Quest30004 OnDestroy")
end

return Quest30004