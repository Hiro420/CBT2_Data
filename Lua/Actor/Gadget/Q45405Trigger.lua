require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q45405Trigger = class("Q45405Trigger", gadgetActorProxy)

Q45405Trigger.defaultAlias = "Q45405Trigger"

local Q454Cfg = require('Quest/Client/Q454ClientConfig')

function Q45405Trigger:OnPostDataPrepare()
end

function Q45405Trigger:OnPostComponentPrepare()
	self:AddComponentTrigger(55, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q45405Trigger:TriggerIn()
end

function Q45405Trigger:TriggerOut()
	print("Out Q45405Trigger")
	local quest = actorMgr:GetActor(Q454Cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuestID(true, 45405)
    end
    self:DestroySelf()
end

return Q45405Trigger