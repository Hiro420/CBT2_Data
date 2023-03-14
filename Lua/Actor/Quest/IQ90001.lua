require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest90001 = class("Quest90001", questActorProxy)
Quest90001.defaultAlias = "Quest90001"

local q90001Cfg = require('Quest/Client/Q90001ClientConfig')
local SubIDs = q90001Cfg.SubIDs
local Actors = q90001Cfg.Actors
local Datas = q90001Cfg.Datas

function Quest90001:OnSubStartHandlerBuild()
	self.subStartHandlers = 
	{
		["9000101"] = self.OnSubStart9000101,
	}
end

function Quest90001:OnSubFinishHandlerBuild()
	self.subFinishHandlers = 
	{
		["9000101"] = self.OnSubFinish9000101,
	}
end

function Quest90001:OnSubFailedHandlerBuild()
	self.subFailedHandlers = 
	{
		["9000101"] = self.OnSubFailed9000101,
	}
end

function Quest90001:Start()
	print("Start")
end

function Quest90001:OnDestroy()
	print("OnDestroy")
end

function Quest90001:OnSubStart9000101(quest)
	print("OnSubStart9000101")
end

function Quest90001:OnSubFinish9000101(quest)
	print("OnSubFinish9000101")
end

function Quest90001:OnSubFailed9000101(quest)
	print("OnSubFailed9000101")
end

return Quest90001
