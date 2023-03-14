--完成1100205
require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q1100205Trigger = class("Q1100205Trigger", gadgetActorProxy)

Q1100205Trigger.defaultAlias = "Q1100205Trigger"

local Q11002Cfg = require('Quest/Client/Q11002ClientConfig')

function Q1100205Trigger:OnPostDataPrepare()
end

function Q1100205Trigger:OnPostComponentPrepare()
	self:AddComponentTrigger(7, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q1100205Trigger:TriggerIn()
	self:DestroySelf()
end

function Q1100205Trigger:TriggerOut()

end

return Q1100205Trigger