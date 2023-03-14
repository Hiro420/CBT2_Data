require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest481 = class("Quest481", questActorProxy)

Quest481.defaultAlias = "Quest481"

local q481Cfg
local subIDs
local amborData
local paimonData


function Quest481:OnDataLoaded()
    q481Cfg = self.clientData
    subIDs = q481Cfg.SubIDs
    amborData = q481Cfg.AmborData
    paimonData = q481Cfg.PaimonData
end

-- Generated
function Quest481:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["48101"] = self.OnSubStart48101
    self.subStartHandlers["48102"] = self.OnSubStart48102
    self.subStartHandlers["48103"] = self.OnSubStart48103
    self.subStartHandlers["48104"] = self.OnSubStart48104
    self.subStartHandlers["48105"] = self.OnSubStart48105
    self.subStartHandlers["48106"] = self.OnSubStart48106
end

function Quest481:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["48101"] = self.OnSubFinish48101
	self.subFinishHandlers["48102"] = self.OnSubFinish48102
    self.subFinishHandlers["48103"] = self.OnSubFinish48103
    self.subFinishHandlers["48104"] = self.OnSubFinish48104
	self.subFinishHandlers["48105"] = self.OnSubFinish48105
	self.subFinishHandlers["48106"] = self.OnSubFinish48106
end

-- local param begin
-- local param end

-- local method begin
--@region sub start handlers

function Quest481:OnSubStart48101(quest)
    print("48101 start:...")
    self:ActionSafeCall(
        function(self)
            self:CreateQuestNpc(quest, amborData.AmborID)
            -- actorMgr:CreateActorWithPos(amborData.Ambor, amborData.AmborScript, amborData.AmborID, 0, amborData.bornPos, amborData.bornDir, true, false)
        end
    )
end

function Quest481:OnSubStart48102(quest)
    print("48102 start:...")
    -- TODO: Do sth on sub quest 48102 start
end

function Quest481:OnSubStart48103(quest)
    print("48103 start:...")
    -- TODO: Do sth on sub quest 48102 start
    self:AdvanceQuest()
    -- actorMgr:CreateActorWithPos("Q482Trigger", "Actor/Gadget/Q481Trigger", 70900002, 0, sceneData:GetDummyPoint(3,"Q481Ambor").pos, sceneData:GetDummyPoint(3,"Q481Ambor").rot, true, false) 
end

function Quest481:OnSubStart48104(quest)
    print("48104 start:...")
    -- TODO: Do sth on sub quest 48102 start
	globalActor:StopLocalAvatar()	
    -- globalActor:EnablePlayerInput(false)	
    

end

function Quest481:RequestPaimon(quest)
    self:RequestInteraction(paimonData.Paimon)
end

function Quest481:OnSubStart48105(quest)
    print("48105 start:...")
    self:ActionSafeCall(
        function(self)
            self:TryPlayVideo("OpeningSequence_Rough_Girl_batch.usm", 300004, true, self.AdvanceQuest)
        end
    )
end

function Quest481:AdvanceQuest()
	local quest = actorMgr:GetActor(q481Cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuest(false, nil)
	end
end

function Quest481:OnSubStart48106(quest)
    print("48106 start:...")

end

function Quest481:InvokeOnInteraction(param)
    if param == 1 then
        local ambor = self:GetQuestNpcActor(amborData.Ambor)
        if ambor ~= nil then
            ambor:ClearFollowTask()
            ambor:WalkToTask(amborData.desPos, Quest481.amborVanish)
        end
    elseif param == 11 then
        print("messahe start:...")
        self:ShowBlackScreen(0.5, 1.5, 0.5, nil, nil, nil, "QUEST_Message_Q48101")
    end
end

function Quest481:amborVanish(quest)
    -- self:ShowBlackScreen(0.5, 1.0, 0.5, 
	--     function(self)
            -- local ambor = self:GetQuestNpcActor(amborData.Ambor)
            -- if ambor ~= nil then
            --     ambor:SetVisible(false)
            -- end
    --     end
    -- )
end



--@endregion

--@region sub finish handlers
function Quest481:OnSubFinish48101(quest)
    print("OnFinished 48101")
    self:ActionSafeCall(
        function(self)
            local ambor = self:GetQuestNpcActor(amborData.Ambor)
            if ambor ~= nil then
                ambor:Destroy(false)
            end
            local paimon = self:GetQuestNpcActor("Paimon")
            if paimon ~= nil then
                paimon:DestroyWithDisappear(false)
            end   
        end
    )
end

function Quest481:OnSubFinish48102(quest)
    print("OnFinished 48102")
end

function Quest481:OnSubFinish48103(quest)
    print("OnFinished 48103")
end

function Quest481:OnSubFinish48104(quest)
    print("OnFinished 48104")
    globalActor:EnablePlayerInput(true)
end

function Quest481:OnSubFinish48105(quest)
    print("OnFinished 48105")
end

function Quest481:OnSubFinish48106(quest)
    print("OnFinished 48103")
    self:ActionSafeCall(
        function(self)
            local paimon = self:GetQuestNpcActor("Paimon")
            if paimon ~= nil then
                paimon:DestroyWithDisappear(false)
            end
        end
    )
end

--@endregion

function Quest481:Start()
end

function Quest481:OnDestroy()
end

return Quest481