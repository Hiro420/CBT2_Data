--触发cs，完成1100001
require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q2101400Trigger = class("Q2101400Trigger", gadgetActorProxy)

Q2101400Trigger.defaultAlias = "Q2101400Trigger"

local Q21014Cfg = require('Quest/Client/Q21014ClientConfig')

function Q2101400Trigger:OnPostDataPrepare()
end

function Q2101400Trigger:OnPostComponentPrepare()
	self:AddComponentTrigger(5, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q2101400Trigger:TriggerIn()
	print("IN Q2101400Trigger")
	local quest = actorMgr:GetActor(Q21014Cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuestID(false, 2101400) 
    end
    self:DestroySelf()
end

function Q2101400Trigger:TriggerOut()

end

return Q2101400Trigger