--触发cs，完成1100101
require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q1100101Trigger = class("Q1100101Trigger", gadgetActorProxy)

Q1100101Trigger.defaultAlias = "Q1100101Trigger"

local Q11001Cfg = require('Quest/Client/Q11001ClientConfig')

function Q1100101Trigger:OnPostDataPrepare()
end

function Q1100101Trigger:OnPostComponentPrepare()
	self:AddComponentTrigger(7, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q1100101Trigger:TriggerIn()
	print("IN Q1100101Trigger")
	local quest = actorMgr:GetActor(Q11001Cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuestID(false, 1100101)
    end
    self:DestroySelf()
end

function Q1100101Trigger:TriggerOut()

end

return Q1100101Trigger