require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest30006 = class("Quest30006", questActorProxy)

Quest30006.defaultAlias = "Quest30006"
local q30006Cfg = require('Quest/Client/Q30006ClientConfig')
local subIDs = q30006Cfg.SubIDs

local bubbleState = q30006Cfg.BubbleState

-- Generated
function Quest30006:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
	self.subStartHandlers["3000601"] = self.OnSubStart3000601
	self.subStartHandlers["3000602"] = self.OnSubStart3000602
	self.subStartHandlers["3000603"] = self.OnSubStart3000603
    self.subStartHandlers["3000604"] = self.OnSubStart3000604
    self.subStartHandlers["3000605"] = self.OnSubStart3000605
end

function Quest30006:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
	self.subFinishHandlers["3000601"] = self.OnSubFinish3000601
	self.subFinishHandlers["3000602"] = self.OnSubFinish3000602
	self.subFinishHandlers["3000603"] = self.OnSubFinish3000603
    self.subFinishHandlers["3000604"] = self.OnSubFinish3000604
    self.subFinishHandlers["3000605"] = self.OnSubFinish3000605
end

function Quest30006:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["3000601"] = self.OnSubFailed3000601
    self.subFailedHandlers["3000602"] = self.OnSubFailed3000602
    self.subFailedHandlers["3000603"] = self.OnSubFailed3000603
    self.subFailedHandlers["3000604"] = self.OnSubFailed3000604
    self.subFailedHandlers["3000605"] = self.OnSubFailed3000605
end

--@region sub start handlers
function Quest30006:QuestDestroy(quest)
    local avatarPos = actorUtils.GetAvatarPos()
    local quest_pos = sceneData:GetDummyPoint(3,self:GetRandomFactorValue("{QuestRescuePos}")).pos
    local X = avatarPos.x - quest_pos.x
    local Y = avatarPos.y - quest_pos.y
    local Z = avatarPos.z - quest_pos.z
    local distance = math.sqrt(X*X+Y*Y+Z*Z)
    if distance > 50 then
        local npc_alias = self:GetRandomNpcAlias(self:GetRandomFactorValue("{QuestNpcID}"))
        local randomNpc = actorMgr:GetActor(npc_alias)
        print("********30006****" .. npc_alias)
        if randomNpc ~= nil then
            randomNpc:Destroy(false)
            print("********30006NPC***Destroy:****" .. npc_alias)
        end

        if self ~= nil then
            self:FinishQuest(true)
            print("********30006***Failed****")
        end
    else
        self:CallDelay(10,self.QuestDestroy)
    end
end

function Quest30006:NPCShowBubble(quest)
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

function Quest30006:OnSubStart3000601(quest)
    print("3000601 start:CreatNPC")

    bubbleState = true

    local randomNpc = self:CreateQuestNpc(quest, 0, 1)

    if randomNpc ~= nil then
        randomNpc:DoFreeStyle(4190)
    end

    self:CallDelay(60, self.QuestDestroy)
    self:NPCShowBubble()
end

function Quest30006:OnSubStart3000602(quest)
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

function Quest30006:OnSubFinish3000602(quest)
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

function Quest30006:Start()
     print("********Quest30006 Start")
end

function Quest30006:OnDestroy()
     print("********Quest30006 OnDestroy")
end

return Quest30006