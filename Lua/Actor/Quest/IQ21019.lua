require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest21019 = class("Quest21019", questActorProxy)
Quest21019.defaultAlias = "Quest21019"

local q21019Cfg = require('Quest/Client/Q21019ClientConfig')
local SubIDs = q21019Cfg.SubIDs
local Actors = q21019Cfg.Actors
local GadgetData_1 = Actors.GadgetData_1
local GadgetData_2 = Actors.GadgetData_2
local GadgetData_3 = Actors.GadgetData_3
local Datas = q21019Cfg.Datas

function Quest21019:OnSubStartHandlerBuild()
	self.subStartHandlers = 
	{
		["2101901"] = self.OnSubStart2101901,
		["2101902"] = self.OnSubStart2101902,
		["2101903"] = self.OnSubStart2101903,
		["2101904"] = self.OnSubStart2101904,
		["2101905"] = self.OnSubStart2101905,
		["2101906"] = self.OnSubStart2101906,
		["2101907"] = self.OnSubStart2101907,
	}
end

function Quest21019:OnSubFinishHandlerBuild()
	self.subFinishHandlers = 
	{
		["2101901"] = self.OnSubFinish2101901,
		["2101902"] = self.OnSubFinish2101902,
		["2101903"] = self.OnSubFinish2101903,
		["2101904"] = self.OnSubFinish2101904,
		["2101905"] = self.OnSubFinish2101905,
		["2101906"] = self.OnSubFinish2101906,
		["2101907"] = self.OnSubFinish2101907,
	}
end

function Quest21019:OnSubFailedHandlerBuild()
	self.subFailedHandlers = 
	{
		["2101901"] = self.OnSubFailed2101901,
		["2101902"] = self.OnSubFailed2101902,
		["2101903"] = self.OnSubFailed2101903,
		["2101904"] = self.OnSubFailed2101904,
		["2101905"] = self.OnSubFailed2101905,
		["2101906"] = self.OnSubFailed2101906,
		["2101907"] = self.OnSubFailed2101907,
	}
end

function Quest21019:Start()
	print("Start")
end

function Quest21019:OnDestroy()
	print("OnDestroy")
end

function Quest21019:OnSubStart2101901(quest)
	print("OnSubStart2101901")
end

function Quest21019:OnSubFinish2101901(quest)
	print("OnSubFinish2101901")
end

function Quest21019:OnSubFailed2101901(quest)
	print("OnSubFailed2101901")
end

function Quest21019:OnSubStart2101902(quest)
	print("OnSubStart2101902")
end

function Quest21019:OnSubFinish2101902(quest)
	print("OnSubFinish2101902")
end

function Quest21019:OnSubFailed2101902(quest)
	print("OnSubFailed2101902")
end

function Quest21019:OnSubStart2101903(quest)
	print("OnSubStart2101903")
	self:SpawnGadget(Actors.GadgetData_1.id, Actors.GadgetData_1.pos, Actors.GadgetData_1.rot, Actors.GadgetData_1.name)
	self:SpawnGadget(Actors.GadgetData_2.id, Actors.GadgetData_2.pos, Actors.GadgetData_2.rot, Actors.GadgetData_2.name)
	self:SpawnGadget(Actors.GadgetData_3.id, Actors.GadgetData_3.pos, Actors.GadgetData_3.rot, Actors.GadgetData_3.name)
end

function Quest21019:OnSubFinish2101903(quest)
	print("OnSubFinish2101903")
end

function Quest21019:OnSubFailed2101903(quest)
	print("OnSubFailed2101903")
end

function Quest21019:OnSubStart2101904(quest)
	print("OnSubStart2101904")
end

function Quest21019:OnSubFinish2101904(quest)
	print("OnSubFinish2101904")
end

function Quest21019:OnSubFailed2101904(quest)
	print("OnSubFailed2101904")
end

function Quest21019:OnSubStart2101905(quest)
	print("OnSubStart2101905")
end

function Quest21019:OnSubFinish2101905(quest)
	print("OnSubFinish2101905")
end

function Quest21019:OnSubFailed2101905(quest)
	print("OnSubFailed2101905")
end

function Quest21019:OnSubStart2101906(quest)
	print("OnSubStart2101906")
end

function Quest21019:OnSubFinish2101906(quest)
	print("OnSubFinish2101906")
end

function Quest21019:OnSubFailed2101906(quest)
	print("OnSubFailed2101906")
end

function Quest21019:OnSubStart2101907(quest)
	print("OnSubStart2101907")
end

function Quest21019:OnSubFinish2101907(quest)
	print("OnSubFinish2101907")
end

function Quest21019:OnSubFailed2101907(quest)
	print("OnSubFailed2101907")
end

return Quest21019
