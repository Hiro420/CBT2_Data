require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q481Trigger = class("Q481Trigger", gadgetActorProxy)

Q481Trigger.defaultAlias = "Q481Trigger"

local q481Cfg = require('Quest/Client/Q481ClientConfig')

function Q481Trigger:OnPostDataPrepare()
end

function Q481Trigger:OnPostComponentPrepare()
	self:AddComponentTrigger(5, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q481Trigger:TriggerIn()

end

function Q481Trigger:TriggerOut()
    print("OUT Q481Trigger")
	local quest = actorMgr:GetActor(q481Cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuest(false, nil)
	end
    self:DestroySelf()
end

return Q481Trigger