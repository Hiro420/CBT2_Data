require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q100101Trigger = class("Q100101Trigger", gadgetActorProxy)

Q100101Trigger.defaultAlias = "Q100101Trigger"


local q1001Cfg = require('Quest/Client/Q1001ClientConfig')


function Q100101Trigger:OnPostDataPrepare()
end

function Q100101Trigger:OnPostComponentPrepare()
	self:AddComponentTrigger(10, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q100101Trigger:TriggerIn()
	local quest = actorMgr:GetActor(q1001Cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuestID(false, 100101)
	end
	self:DestroySelf()
end

function Q100101Trigger:TriggerOut()
end

return Q100101Trigger