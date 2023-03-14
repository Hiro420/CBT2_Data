require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q40004Trigger1 = class("Q40004Trigger1", gadgetActorProxy)

Q40004Trigger1.defaultAlias = "Q40004Trigger1"

local q40004Cfg = require('Quest/Client/Q40004ClientConfig')

function Q40004Trigger1:OnPostDataPrepare()
end

function Q40004Trigger1:OnPostComponentPrepare()
	self:AddComponentTrigger(25, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q40004Trigger1:TriggerIn()
	print("In Q40004Trigger1")
end

function Q40004Trigger1:TriggerOut()
	print("Out Q40004Trigger1")
	local quest = actorMgr:GetActor(q40004Cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuestID(true, 4000407)
    end
    self:DestroySelf()
end

return Q40004Trigger1