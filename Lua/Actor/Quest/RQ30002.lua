require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest30002 = class("Quest30002", questActorProxy)

Quest30002.defaultAlias = "Quest30002"
local q30002Cfg = require('Quest/Client/Q30002ClientConfig')
local subIDs = q30002Cfg.SubIDs

local bubbleState = q30002Cfg.BubbleState

-- Generated
function Quest30002:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
	self.subStartHandlers["3000201"] = self.OnSubStart3000201
	self.subStartHandlers["3000202"] = self.OnSubStart3000202
	self.subStartHandlers["3000203"] = self.OnSubStart3000203
	self.subStartHandlers["3000204"] = self.OnSubStart3000204
end

function Quest30002:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
	self.subFinishHandlers["3000201"] = self.OnSubFinish3000201
	self.subFinishHandlers["3000202"] = self.OnSubFinish3000202
	self.subFinishHandlers["3000203"] = self.OnSubFinish3000203
	self.subFinishHandlers["3000204"] = self.OnSubFinish3000204
end

function Quest30002:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["3000201"] = self.OnSubFailed3000201
    self.subFailedHandlers["3000202"] = self.OnSubFailed3000202
    self.subFailedHandlers["3000203"] = self.OnSubFailed3000203
    self.subFailedHandlers["3000204"] = self.OnSubFailed3000204
end

--@region sub start & finish 内调用的函数
function Quest30002:QuestDestroy(quest)
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
            print("********30002***Failed****")
        end
    else
        self:CallDelay(10, self.QuestDestroy)
    end
end

function Quest30002:NPCShowBubble(quest)
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
function Quest30002:OnSubStart3000201(quest)
    print("3000201 start:CreatNPC")

    bubbleState = true

    local randomNpc = self:CreateQuestNpc(quest, 0, 1)

    if randomNpc ~= nil then
        randomNpc:DoFreeStyle(4190)
    end

    self:CallDelay(60, self.QuestDestroy)
    self:NPCShowBubble()
end

function Quest30002:OnSubStart3000202(quest)
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

function Quest30002:OnSubFinish3000202(quest)
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

function Quest30002:Start()
     print("********Quest30002 Start")
end

function Quest30002:OnDestroy()
     print("********Quest30002 OnDestroy")
end

return Quest30002