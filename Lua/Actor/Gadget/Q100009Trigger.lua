require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q100009Trigger = class("Q100009Trigger", gadgetActorProxy)

Q100009Trigger.defaultAlias = "Q100009Trigger"


local q1000Cfg = require('Quest/Client/Q1000ClientConfig')


function Q100009Trigger:OnPostDataPrepare()
end

function Q100009Trigger:OnPostComponentPrepare()
	self:AddComponentTrigger(7.5, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q100009Trigger:TriggerIn()
	local quest = actorMgr:GetActor(q1000Cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuestID(false, 100009)
	end
	self:DestroySelf()
end

function Q100009Trigger:TriggerOut()
end

return Q100009Trigger