require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q37408Trigger = class("Q37408Trigger", gadgetActorProxy)

Q37408Trigger.defaultAlias = "Q37408Trigger"


local q374Cfg = require('Quest/Client/Q374ClientConfig')


function Q37408Trigger:OnPostDataPrepare()
end

function Q37408Trigger:OnPostComponentPrepare()
	self:AddComponentTrigger(30, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q37408Trigger:TriggerIn()
	local quest = actorMgr:GetActor(q374Cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuestID(false, 37408)
	end
	self:DestroySelf()
end

function Q37408Trigger:TriggerOut()
end

return Q37408Trigger