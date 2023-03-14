require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q370Trigger = class("Q370Trigger", gadgetActorProxy)

Q370Trigger.defaultAlias = "Q370Trigger"


local q370Cfg = require('Quest/Client/Q370ClientConfig')


function Q370Trigger:OnPostDataPrepare()
end

function Q370Trigger:OnPostComponentPrepare()
	self:AddComponentTrigger(10, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q370Trigger:TriggerIn()
	local quest = actorMgr:GetActor(q370Cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuest(false, nil)
	end
	self:DestroySelf()
end

function Q370Trigger:TriggerOut()
end

return Q370Trigger