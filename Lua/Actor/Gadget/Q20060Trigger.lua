require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q20060Trigger = class("Q20060Trigger", gadgetActorProxy)

Q20060Trigger.defaultAlias = "Q20060Trigger"

local q20060Cfg = require('Quest/Client/Q20060ClientConfig')
local chatcount = 0

function Q20060Trigger:OnPostDataPrepare()
end

function Q20060Trigger:OnPostComponentPrepare()
	self:AddComponentTrigger(3, DistType.EULER_XZ, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q20060Trigger:TriggerIn()
	if chatcount == 0 then
		self:RequestInteraction("Npc1441")
		chatcount = 1
	end
end

function Q20060Trigger:TriggerOut()
	
end

return Q20060Trigger