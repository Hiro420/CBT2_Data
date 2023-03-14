require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q100007Trigger = class("Q100007Trigger", gadgetActorProxy)

Q100007Trigger.defaultAlias = "Q100007Trigger"


local q1000Cfg = require('Quest/Client/Q1000ClientConfig')


function Q100007Trigger:OnPostDataPrepare()
end

function Q100007Trigger:OnPostComponentPrepare()
	self:AddComponentTrigger(32, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q100007Trigger:TriggerIn()
	local quest = actorMgr:GetActor(q1000Cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuestID(false, 100007)
	end
	self:DestroySelf()
end

function Q100007Trigger:TriggerOut()
end

return Q100007Trigger