require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q100026Trigger = class("Q100026Trigger", gadgetActorProxy)

Q100026Trigger.defaultAlias = "Q100026Trigger"


local q1000Cfg = require('Quest/Client/Q1000ClientConfig')


function Q100026Trigger:OnPostDataPrepare()
end

function Q100026Trigger:OnPostComponentPrepare()
	self:AddComponentTrigger(16.5, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q100026Trigger:TriggerIn()
	local quest = actorMgr:GetActor(q1000Cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuestID(false, 100026)
	end
	self:DestroySelf()
end

function Q100026Trigger:TriggerOut()
end

return Q100026Trigger