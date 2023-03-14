require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q372Trigger = class("Q372Trigger", gadgetActorProxy)

Q372Trigger.defaultAlias = "Q372Trigger"


local q372Cfg = require('Quest/Client/Q372ClientConfig')


function Q372Trigger:OnPostDataPrepare()
end

function Q372Trigger:OnPostComponentPrepare()
	self:AddComponentTrigger(8, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q372Trigger:TriggerIn()
	local quest = actorMgr:GetActor(q372Cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuest(false, nil)
	end
	self:DestroySelf()
end

function Q372Trigger:TriggerOut()
end

return Q372Trigger