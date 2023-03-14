require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q100000Trigger = class("Q100000Trigger", gadgetActorProxy)

Q100000Trigger.defaultAlias = "Q100000Trigger"


local q1000Cfg = require('Quest/Client/Q1000ClientConfig')


function Q100000Trigger:OnPostDataPrepare()
end

function Q100000Trigger:OnPostComponentPrepare()
	self:AddComponentTrigger(3, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q100000Trigger:TriggerIn()
	local quest = actorMgr:GetActor(q1000Cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuestID(false, 100000)
	end
	self:DestroySelf()
end

function Q100000Trigger:TriggerOut()
end

return Q100000Trigger