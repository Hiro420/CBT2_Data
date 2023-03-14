require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')
local DailyNpcManager = require('Actor/DailyNPCManager')

local Quest372 = class("Quest372", questActorProxy)

Quest372.defaultAlias = "Quest372"

local q372Cfg
local subIDs
local mainquestid = 372
local paimonData 
local wendyData 
local npcdata 

function Quest372:OnDataLoaded()
    q372Cfg = self.clientData
    subIDs = q372Cfg.SubIDs
    paimonData = q372Cfg.PaimonData
    wendyData = q372Cfg.WendyData
    npcdata = q372Cfg.NPCData
end

-- Generated
function Quest372:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["37201"] = self.OnSubStart37201
    self.subStartHandlers["37202"] = self.OnSubStart37202
    self.subStartHandlers["37203"] = self.OnSubStart37203
end

function Quest372:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["37201"] = self.OnSubFinish37201
    self.subFinishHandlers["37202"] = self.OnSubFinish37202
    self.subFinishHandlers["37203"] = self.OnSubFinish37203
end

-- local param begin
-- local param end

-- local method begin
--@region sub start handlers


function Quest372:OnSubStart37201(quest)  
    print("37201 start ")
    self:NotifyTo("Npc1429", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1453", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1451", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1601", DailyNpcManager.NpcEventType.HIDESELF, true)

    actorMgr:CreateActorWithPos("Q372Trigger", "Actor/Gadget/Q372Trigger", 70900002, 0, sceneData:GetDummyPoint(3,"Q372WendyShow").pos, sceneData:GetDummyPoint(3,"Q372WendyShow").rot, true, false)
    self:CreateQuestNpc(quest, wendyData.WendyID)

    self:CallDelay(2,
        function (self)
            local wendy = self:GetQuestNpcActor(wendyData.Wendy)
            wendy:DoFreeStyle(1120)
        end
    )
   
    self:CreateQuestNpc(quest, npcdata.Npc1ID)
    self:CreateQuestNpc(quest, npcdata.Npc2ID)
    self:CreateQuestNpc(quest, npcdata.Npc3ID)
    self:CreateQuestNpc(quest, npcdata.Npc4ID)
    self:CreateQuestNpc(quest, npcdata.Npc5ID)

end

function Quest372:OnSubStart37202(quest)
    print("37202 start:...")
    self:NotifyTo("Npc1525", DailyNpcManager.NpcEventType.HIDESELF, true)
    local quest = actorMgr:GetActor(q372Cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuest(false, nil)
	end
    -- self:PlayCutsceneIndex(37201, self.VideoNow)
end

function Quest372:OnSubStart37203(quest)
    print("37203 start:...")
    self:NotifyTo("Npc1525", DailyNpcManager.NpcEventType.HIDESELF, true)

    -- self:ShowBlackScreen(0, 0.5, 0.5,
    --     function(self)
            self:ActionSafeCall(self.RequestWendy)
    --     end
    -- )   
    self:NotifyTo("Npc1429", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1451", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1453", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1601", DailyNpcManager.NpcEventType.HIDESELF, true)

end

-- function Quest372:Play372Cutscene(quest)
--     self:PlayCutsceneIndex(37202, self.On372CutsceneFinish)
-- end

function Quest372:RequestPaimon(quest)
    self:RequestInteraction(paimonData.Paimon)
end

function Quest372:VideoNow(quest)
    self:ShowBlackScreen(0.5, 1, 0.5,
    function (self)
        local Npc1 = self:GetQuestNpcActor(npcdata.Npc1)
        if Npc1 ~= nil then
            Npc1:Destroy(false)
        end
        local Npc2 = self:GetQuestNpcActor(npcdata.Npc2)
        if Npc2 ~= nil then
            Npc2:Destroy(false)
        end
        local Npc3 = self:GetQuestNpcActor(npcdata.Npc3)
        if Npc3 ~= nil then
            Npc3:Destroy(false)
        end
        local Npc4 = self:GetQuestNpcActor(npcdata.Npc4)
        if Npc4 ~= nil then
            Npc4:Destroy(false)
        end
        local Npc5 = self:GetQuestNpcActor(npcdata.Npc5)
        if Npc5 ~= nil then
            Npc5:Destroy(false)
        end
        self:TryPlayVideo("MDAQ041.usm", 300001, true, self.AdvanceQuest)
    end
    )
end

function Quest372:AdvanceQuest(quest)
	local quest = actorMgr:GetActor(q372Cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuest(false, nil)
	end
end

function Quest372:RequestWendy(quest)
    self:RequestInteraction(wendyData.Wendy)
end

--@endregion

--@region sub finish handlers
function Quest372:OnSubFinish37201(quest)
    print("OnFinished 37201")
end

function Quest372:OnSubFinish37202(quest)
    print("OnFinished 37202")
end

function Quest372:OnSubFinish37203(quest)
    print("OnFinished 37203")
    self:ActionSafeCall(
        self.DestroyNPC
    )
    self:ActionSafeCall(
        self.TellStory
    )
end

function Quest372:DestroyNPC(quest)
    print("Destory NPC ")
    -- self:ShowBlackScreen(0.5, 1.5, 0.5, 
    --     function(self)
            local paimon = self:GetQuestNpcActor("Paimon")
            if paimon ~= nil then
                paimon:DestroyWithDisappear(false)
            end
            local wendy = self:GetQuestNpcActor(wendyData.Wendy)
            if wendy ~= nil then
                wendy:Destroy(false)
            end
            self:NotifyTo("Npc1525", DailyNpcManager.NpcEventType.STARTDAILY, true)

    --     end,
    --     self.TellStory
    -- )
end
-- function Quest372:OnSubFinish37204(quest)
--     print("OnFinished 37204")
-- end
function Quest372:TellStory(quest)
    self:CallDelay(1.5, 
        function(self)
            self:NarratorOnlyTask(q372Cfg.NarratorFlow, nil, "Story")
            local Npc1 = self:GetQuestNpcActor(npcdata.Npc1)
            if Npc1 ~= nil then
                Npc1:Destroy(false)
            end
            local Npc2 = self:GetQuestNpcActor(npcdata.Npc2)
            if Npc2 ~= nil then
                Npc2:Destroy(false)
            end
            local Npc3 = self:GetQuestNpcActor(npcdata.Npc3)
            if Npc3 ~= nil then
                Npc3:Destroy(false)
            end
            local Npc4 = self:GetQuestNpcActor(npcdata.Npc4)
            if Npc4 ~= nil then
                Npc4:Destroy(false)
            end
            local Npc5 = self:GetQuestNpcActor(npcdata.Npc5)
            if Npc5 ~= nil then
                Npc5:Destroy(false)
            end
        end
    )
end


function Quest372:BlackDoSth(quest)
    print("OnFinished 37203")
    self:ShowBlackScreen(1.0, 1.0, 1.0, self.DestroyNPC)
end

function Quest372:InvokeOnInteraction(param)
    if param == 3 then
        print("Now Spawn Tears")
        self:SpawnGadgetById(37203 , 70300042 )

        -- self:SpawnGadget(70300042, sceneData:GetDummyPoint(3,"Q37201Tear").pos, sceneData:GetDummyPoint(3,"Q37201Tear").rot, "Tears", 3)
    elseif param == 4 then
        print("Now Destroy Tears")
        self:UnSpawn("Tears") 
    elseif param == 6 then
        local wendy = self:GetQuestNpcActor(wendyData.Wendy)
        if wendy ~= nil then
            wendy:ClearFollowTask()
            wendy:WalkToTask(wendyData.desPos, Quest372.wendyVanish)
        end    
    end
end

function Quest372:wendyVanish()
    -- self:ShowBlackScreen(0.5, 1.0, 0.5, 
	--     function(self)
            local wendy = self:GetQuestNpcActor(wendyData.Wendy)
            if wendy ~= nil then
                wendy:SetVisible(false)
            end
    --     end
    -- )
end

--@endregion

function Quest372:Start()
end

function Quest372:OnDestroy()
end

return Quest372