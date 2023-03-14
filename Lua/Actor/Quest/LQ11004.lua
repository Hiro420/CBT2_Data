require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')
local Quest11004 = class("Quest11004", questActorProxy)
Quest11004.defaultAlias = "Quest11004"

local DailyNpcManager = require('Actor/DailyNPCManager')

local q11004Cfg
local subIDs
local mainquestid = 11004
local paimonData
local xianglingData
local freezeBoarData

function Quest11004:OnDataLoaded()
    q11004Cfg = self.clientData
    subIDs = q11004Cfg.SubIDs
    mainquestid = 11004
    paimonData = q11004Cfg.PaimonData
    xianglingData = q11004Cfg.XianglingData
    freezeBoarData = q11004Cfg.FreezeBoarData
end

-- Generated
function Quest11004:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["1100401"] = self.OnSubStart1100401
    self.subStartHandlers["1100402"] = self.OnSubStart1100402
    self.subStartHandlers["1100403"] = self.OnSubStart1100403
    self.subStartHandlers["1100499"] = self.OnSubStart1100499
    self.subStartHandlers["1100498"] = self.OnSubStart1100498
end

function Quest11004:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["1100401"] = self.OnSubFinish1100401
    self.subFinishHandlers["1100402"] = self.OnSubFinish1100402
    self.subFinishHandlers["1100403"] = self.OnSubFinish1100403
    self.subFinishHandlers["1100499"] = self.OnSubFinish1100499
    self.subFinishHandlers["1100498"] = self.OnSubFinish1100498
end

function Quest11004:PaimonDis()
    local paimon = self:GetQuestNpcActor(paimonData.Alias)
    if paimon ~= nil then
        paimon:DestroyWithDisappear(false)
    end
end
 
function Quest11004:PaimonDelay()
	self:PaimonDis()
end

function Quest11004:OnSubStart1100401(quest)
    print("1100401 start:...")

end

function Quest11004:OnSubStart1100499(quest)
    print("1100499 start:...")

end

function Quest11004:OnSubStart1100498(quest)
    print("1100498 start:...")
    actorMgr:CreateActorWithPos("Q1100498Trigger", "Actor/Gadget/Q1100498Trigger", 70900002, 0, sceneData:GetDummyPoint(20005,"Q1100498Trigger").pos, sceneData:GetDummyPoint(20005,"Q1100498Trigger").rot, true, false, 20005)
    self:SpawnGadget(quest, freezeBoarData.ID)
end


function Quest11004:OnSubStart1100402(quest)
    print("1100402 start:...")
    self:NarratorOnlyTask(q11004Cfg.NarratorFlow1)
end

function Quest11004:OnSubStart1100403(quest)
    print("1100403 start:...")
    globalActor:UnSpawn("FreezeBoar")
    local task = curtainUtils.CreateEntityCreateTask({xianglingData.Alias})
	self:TransmitPlayer(20005, sceneData:GetDummyPoint(20005, "Q1100403PlayerPos").pos, sceneData:GetDummyPoint(20005, "Q1100403PlayerPos").rot, nil,
	function (self)	
        self:CreateQuestNpc(quest, xianglingData.ID)
        local xiangling = self:GetQuestNpcActor(xianglingData.Alias)
        xiangling:DoFreeStyle(1220)
        self:RequestInteraction(xianglingData.Alias)
        self:SpawnGadget(quest, freezeBoarData.ID)
		print("SHOW BLACK SCREEN 11002")
	end ,task)
end



function Quest11004:OnSubFinish1100401(quest)
end

function Quest11004:OnSubFinish1100499(quest)
    print("1100499 finish:...")
    self:NarratorOnlyTask(q11004Cfg.NarratorFlow2)
end

function Quest11004:OnSubFinish1100498(quest)
    print("1100499 finish:...")
    self:NarratorOnlyTask(q11004Cfg.NarratorFlow3)
    globalActor:EnablePlayerInput(false)
	self:CallDelay(2,
		function()
			globalActor:EnablePlayerInput(true)
		end
	)
end

function Quest11004:OnSubFinish1100402(quest)
end

function Quest11004:OnSubFinish1100403(quest)
    print("1100403 finish:...")

    local xiangling = self:GetQuestNpcActor(xianglingData.Alias)
    if xiangling ~= nil then
        self:ActionSafeCall(
            function(self)
                self:DestroyQuestNpcActorByAlias(xianglingData.Alias, false)
            end
        )
    end
    globalActor:UnSpawn("FreezeBoar")
    self:NotifyTo("Npc1537", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1541", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:ActionSafeCall(self.PaimonDelay)

end

function Quest11004:InvokeOnInteraction(param)
    if param == 1 then
        print("del FreezeBoar")
        globalActor:UnSpawn("FreezeBoar")
    end
end

function Quest11004:Start()
end

function Quest11004:OnDestroy()
end

return Quest11004