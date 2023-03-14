require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q40003Trigger = class("Q40003Trigger", gadgetActorProxy)

Q40003Trigger.defaultAlias = "Q40003Trigger"

local q40003Cfg = require('Quest/Client/Q40003ClientConfig')

function Q40003Trigger:OnPostDataPrepare()
end

function Q40003Trigger:OnPostComponentPrepare()
	self:AddComponentTrigger(30, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q40003Trigger:TriggerIn()
	print("Out Q40003Trigger")
	local quest = actorMgr:GetActor(q40003Cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuestID(false, 4000305)
    end
    self:DestroySelf()
end

function Q40003Trigger:TriggerOut()

end

return Q40003Trigger