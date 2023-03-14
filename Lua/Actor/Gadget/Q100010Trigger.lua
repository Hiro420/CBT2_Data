require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q100010Trigger = class("Q100010Trigger", gadgetActorProxy)

Q100010Trigger.defaultAlias = "Q100010Trigger"


local q1000Cfg = require('Quest/Client/Q1000ClientConfig')


function Q100010Trigger:OnPostDataPrepare()
end

function Q100010Trigger:OnPostComponentPrepare()
	self:AddComponentTrigger(7.5, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q100010Trigger:TriggerIn()
	local quest = actorMgr:GetActor(q1000Cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuestID(false, 100010)
	end
	self:DestroySelf()
end

function Q100010Trigger:TriggerOut()
end

return Q100010Trigger