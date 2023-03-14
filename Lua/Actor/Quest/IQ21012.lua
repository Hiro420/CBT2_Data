require('Actor/ActorCommon')

local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest21012 = class("Quest21012", questActorProxy)

Quest21012.defaultAlias = "Quest21012"

local Q21012Cfg = require('Quest/Client/Q21012ClientConfig')
local FemaleData = Q21012Cfg.FemaleData

-- Generated
function Quest21012:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["2101201"] = self.OnSubStart2101201
	self.subStartHandlers["2101202"] = self.OnSubStart2101202
	self.subStartHandlers["2101203"] = self.OnSubStart2101203
	self.subStartHandlers["2101204"] = self.OnSubStart2101204
	self.subStartHandlers["2101205"] = self.OnSubStart2101205
	self.subStartHandlers["2101206"] = self.OnSubStart2101206
	self.subStartHandlers["2101207"] = self.OnSubStart2101207
	self.subStartHandlers["2101208"] = self.OnSubStart2101208
	self.subStartHandlers["2101209"] = self.OnSubStart2101209
end

function Quest21012:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["2101201"] = self.OnSubFinish2101201
	self.subFinishHandlers["2101202"] = self.OnSubFinish2101202
	self.subFinishHandlers["2101203"] = self.OnSubFinish2101203
	self.subFinishHandlers["2101204"] = self.OnSubFinish2101204
	self.subFinishHandlers["2101205"] = self.OnSubFinish2101205
	self.subFinishHandlers["2101206"] = self.OnSubFinish2101206
	self.subFinishHandlers["2101207"] = self.OnSubFinish2101207
	self.subFinishHandlers["2101208"] = self.OnSubFinish2101208
	self.subFinishHandlers["2101209"] = self.OnSubFinish2101209
	
end

function Quest21012:Create02()
	actorMgr:CreateActorWithPos(FemaleData.Alias, FemaleData.Script, FemaleData.ID, 0, FemaleData.BornPos, FemaleData.BornPos, true, false)
end

function Quest21012:OnSubStart2101202(quest)
	self:CallDelay(1,
		function(self)
			self:ActionSafeCall(
				function(self)
					self:ShowBlackScreen(0.5, 1, 0.5, self.Create02)
				end	
			)
		end	
	)
end

function Quest21012:Start()
end

function Quest21012:OnDestroy()
end


return Quest21012