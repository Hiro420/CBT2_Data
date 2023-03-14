require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest11002 = class("Quest11002", questActorProxy)
Quest11002.defaultAlias = "Quest11002"
local DailyNpcManager = require('Actor/DailyNPCManager')

local q11002Cfg
local subIDs
local mainquestid = 11002
local paimonData
local xianglingData
local nelumboData
local pepperData

function Quest11002:OnDataLoaded()
    q11002Cfg = self.clientData
    subIDs = q11002Cfg.SubIDs
    mainquestid = 11002
    paimonData = q11002Cfg.PaimonData
	xianglingData = q11002Cfg.XianglingData
	nelumboData = q11002Cfg.NelumboData
	pepperData = q11002Cfg.PepperData
end

-- Generated
function Quest11002:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["1100201"] = self.OnSubStart1100201
    self.subStartHandlers["1100202"] = self.OnSubStart1100202
	self.subStartHandlers["1100203"] = self.OnSubStart1100203
	self.subStartHandlers["1100204"] = self.OnSubStart1100204
	self.subStartHandlers["1100205"] = self.OnSubStart1100205
	self.subStartHandlers["1100206"] = self.OnSubStart1100206
	self.subStartHandlers["1100207"] = self.OnSubStart1100207

end

function Quest11002:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["1100201"] = self.OnSubFinish1100201
    self.subFinishHandlers["1100202"] = self.OnSubFinish1100202
    self.subFinishHandlers["1100203"] = self.OnSubFinish1100203
    self.subFinishHandlers["1100204"] = self.OnSubFinish1100204
    self.subFinishHandlers["1100205"] = self.OnSubFinish1100205
	self.subFinishHandlers["1100206"] = self.OnSubFinish1100206
	self.subFinishHandlers["1100207"] = self.OnSubFinish1100207

end

function Quest11002:PaimonDis()
    local paimon = self:GetQuestNpcActor(paimonData.Alias)
    if paimon ~= nil then
        paimon:DestroyWithDisappear(false)
    end
end
 
function Quest11002:PaimonDelay()
	self:PaimonDis()
end

function Quest11002:OnSubStart1100201(quest)
	print("1100201 start:...")
	actorMgr:CreateActorWithPos("Q1100201Trigger", "Actor/Gadget/Q1100201Trigger", 70900002, 0, sceneData:GetDummyPoint(3,"Q1100202XL").pos, sceneData:GetDummyPoint(3,"Q1100202XL").rot, true, false)
	
	self:CreateQuestNpc(quest, xianglingData.ID)
	local xiangling = self:GetQuestNpcActor(xianglingData.Alias)
	xiangling:DoFreeStyle(1200)

end

function Quest11002:OnSubStart1100202(quest)
	print("1100202 start:...")
	
end

function Quest11002:OnSubStart1100203(quest)
	print("1100203 start:...")
	
	actorMgr:CreateActorWithPos("Q1100203Trigger", "Actor/Gadget/Q1100203Trigger", 70900002, 0, sceneData:GetDummyPoint(3,"Q1100204M1").pos, sceneData:GetDummyPoint(3,"Q1100204M1").rot, true, false)
end

function Quest11002:OnSubStart1100204(quest)
	print("1100204 start:...")
	self:NarratorOnlyTask(q11002Cfg.NarratorFlow1, nil, "StoryCut")
end

function Quest11002:OnSubStart1100205(quest)
	print("1100205 start:...")
	--actorMgr:CreateActorWithPos("Q1100205Trigger", "Actor/Gadget/Q1100205Trigger", 70900002, 0, sceneData:GetDummyPoint(3,"Q1100204M2").pos, sceneData:GetDummyPoint(3,"Q1100204M2").rot, true, false)
	actorMgr:CreateActorWithPos("Q1100206Trigger01", "Actor/Gadget/Q1100206Trigger", 70900002, 0, sceneData:GetDummyPoint(3,"Q1100204T1").pos, sceneData:GetDummyPoint(3,"Q1100204T1").rot, true, false)
	actorMgr:CreateActorWithPos("Q1100206Trigger02", "Actor/Gadget/Q1100206Trigger", 70900002, 0, sceneData:GetDummyPoint(3,"Q1100204T2").pos, sceneData:GetDummyPoint(3,"Q1100204T2").rot, true, false)
	self:CreateQuestNpc(quest, xianglingData.ID)
	local xiangling = self:GetQuestNpcActor(xianglingData.Alias)
	xiangling:DoFreeStyle(1190)
end

function Quest11002:OnSubStart1100206(quest)
	print("1100206 start:...")
	--self:NarratorOnlyTask(q11002Cfg.NarratorFlow3)
end

function Quest11002:OnSubStart1100207(quest)
	print("1100207 start:...")
end


function Quest11002:OnSubFinish1100201(quest)
end

function Quest11002:OnSubFinish1100202(quest)
	local xiangling = self:GetQuestNpcActor(xianglingData.Alias)
    if xiangling ~= nil then
        self:ActionSafeCall(
            function(self)
                self:DestroyQuestNpcActorByAlias(xianglingData.Alias, false)
            end
        )
	end
	self:ActionSafeCall(self.PaimonDelay)
end

function Quest11002:OnSubFinish1100203(quest)
end

function Quest11002:OnSubFinish1100204(quest)
	self:ClearNarratorTask()
	self:CallDelay(1,
		function(self)
			self:NarratorOnlyTask(q11002Cfg.NarratorFlow2, nil, "StoryCut")
		end
	)
end

function Quest11002:OnSubFinish1100205(quest)
	self:NarratorOnlyTask(q11002Cfg.NarratorFlow3, nil, "StoryCut")
	globalActor:EnablePlayerInput(false)
	self:CallDelay(3,
	function()
		globalActor:EnablePlayerInput(true)
	end
	)
	local Q1100206Trigger01 = actorMgr:GetActor("Q1100206Trigger01")
	if Q1100206Trigger01 ~= nil then
		Q1100206Trigger01:DestroySelf()
	end
	local Q1100206Trigger02 = actorMgr:GetActor("Q1100206Trigger02")
	if Q1100206Trigger02 ~= nil then
		Q1100206Trigger02:DestroySelf()
	end
end

function Quest11002:OnSubFinish1100206(quest)

end

function Quest11002:OnSubFinish1100207(quest)
	local xiangling = self:GetQuestNpcActor(xianglingData.Alias)
    if xiangling ~= nil then
        self:ActionSafeCall(
            function(self)
                self:DestroyQuestNpcActorByAlias(xianglingData.Alias, false)
            end
        )
	end
	self:ActionSafeCall(self.PaimonDelay)
end

function Quest11002:Start()
end

function Quest11002:OnDestroy()
end

return Quest11002