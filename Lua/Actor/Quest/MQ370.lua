require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest370 = class("Quest370", questActorProxy)

Quest370.defaultAlias = "Quest370"

local q370Cfg
local subIDs
local mainquestid = 370
local qinData
local fatuusData
local lisaData
local paimonData
local DailyNpcManager = require('Actor/DailyNPCManager')


function Quest370:OnDataLoaded()
    q370Cfg = self.clientData
    subIDs = q370Cfg.SubIDs
    qinData = q370Cfg.QinData
    fatuusData = q370Cfg.FatuusData
    lisaData = q370Cfg.LisaData
    paimonData = q370Cfg.PaimonData
end


-- Generated
function Quest370:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["37001"] = self.OnSubStart37001
    self.subStartHandlers["37002"] = self.OnSubStart37002
    self.subStartHandlers["37004"] = self.OnSubStart37004
    self.subStartHandlers["37005"] = self.OnSubStart37005
    self.subStartHandlers["37003"] = self.OnSubStart37003
end

function Quest370:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["37001"] = self.OnSubFinish37001
    self.subFinishHandlers["37002"] = self.OnSubFinish37002
    self.subFinishHandlers["37004"] = self.OnSubFinish37004
    self.subFinishHandlers["37005"] = self.OnSubFinish37005
	self.subFinishHandlers["37003"] = self.OnSubFinish37003
end

-- local param begin
-- local param end

-- local method begin
--@region sub start handlers

function Quest370:OnSubStart37001(quest)
    print("37001 start:...")
    self:NotifyTo("Npc1519", DailyNpcManager.NpcEventType.HIDESELF, true)
    actorMgr:CreateActorWithPos("Q370Trigger", "Actor/Gadget/Q370Trigger", 70900002, 0, sceneData:GetDummyPoint(3,"Q37001Fatuus").pos, sceneData:GetDummyPoint(3,"Q37001Fatuus").rot, true, false)
    self:CreateQuestNpc(quest, qinData.QinID)
    self:CreateQuestNpc(quest, fatuusData.FatuusID)


end

function Quest370:OnSubStart37002(quest)
    print("37002 start:...")
    self:RequestInteraction(qinData.Qin)
end

function Quest370:OnSubStart37004(quest)
    print("37004 start:...")
end

function Quest370:OnSubStart37005(quest)
    print("37005 start:...")
    -- TODO: Do sth on sub quest 37002 start
    self:ActionSafeCall(
        function(self)
            self:CreateQuestNpc(quest, lisaData.LisaID)
            self:CreateQuestNpc(quest, qinData.QinID)

        end
    )
end

function Quest370:OnSubStart37003(quest)
    print("37003 start:...")
    -- TODO: Do sth on sub quest 37002 start
end

--@endregion

--@region sub finish handlers
function Quest370:OnSubFinish37001(quest)
    print("OnFinished 37001")
end

function Quest370:OnSubFinish37002(quest)
    print("OnFinished 37002")
    self:ActionSafeCall(
        self.DestroyNPC
    )
    self:ActionSafeCall(
        self.TellStory
    )
    -- self:ShowBlackScreen(0.5, 1.5, 0.5, self.DestroyNPC, self.TellStory)
    -- self:ActionSafeCall(
    --     function(self)
    --         self.uActor:AvatarPaimonAppear()
    --     end
    -- )
end

function Quest370:DestroyNPC(quest)
    -- self:ShowBlackScreen(0.5, 1.5, 0.5, 
    --     function(self)
            local paimon = self:GetQuestNpcActor("Paimon")
            if paimon ~= nil then
                paimon:DestroyWithDisappear(false)
            end
            local qin = self:GetQuestNpcActor(qinData.Qin)
            if qin ~= nil then
                qin:Destroy(false)
            end
            local fatuus = self:GetQuestNpcActor(fatuusData.Fatuus)
            if fatuus ~= nil then
                fatuus:Destroy(false)
            end
    --     end,
    --     self.TellStory
    -- )
end

function Quest370:OnSubFinish37004(quest)
    print("OnFinished 37004")
    if self.warningTask ~= nil then
		self.warningTask:FinishTask()
	end
	if self.stayWarningTask ~= nil then
		self.stayWarningTask:FinishTask()
	end
end

function Quest370:OnSubFinish37005(quest)
    print("OnFinished 37005")
    self:ActionSafeCall(
        function(self)
            local paimon = self:GetQuestNpcActor("Paimon")
            if paimon ~= nil then
                paimon:DestroyWithDisappear(false)
            end
        end
    )
end

function Quest370:OnSubFinish37003(quest)
    print("OnFinished 37003")
    self:RequestInteraction(qinData.Qin)
end

function Quest370:TellStory(quest)
    self:CallDelay(2.7, self.StartStory)
end

function Quest370:StartStory(quest)
    self:NarratorOnlyTask(q370Cfg.NarratorFlow, nil, "Story")
end

function Quest370:InvokeOnInteraction(param)
    if param == 3 then
        print("Now Spawn Tears")
        self:SpawnGadgetById(37005 , 70300059 )
        -- self:SpawnGadget(70300059, sceneData:GetDummyPoint(1004,"Q37004Tears").pos, sceneData:GetDummyPoint(1004,"Q37004Tears").rot, "Tears", 1004,0,0,100402)
    elseif param == 5 then
        print("Now Destroy Tears")
        self:UnSpawn("Tears")    
    end
end

--@endregion

function Quest370:Start()
end

function Quest370:OnDestroy()
end

return Quest370