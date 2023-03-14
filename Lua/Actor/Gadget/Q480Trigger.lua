require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q480Trigger = class("Q480Trigger", gadgetActorProxy)

Q480Trigger.defaultAlias = "Q480Trigger"


local q480Cfg = require('Quest/Client/Q480ClientConfig')


function Q480Trigger:OnPostDataPrepare()
end

function Q480Trigger:OnPostComponentPrepare()
	self:AddComponentTrigger(30, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q480Trigger:TriggerIn()
	local quest = actorMgr:GetActor(q480Cfg.ActorAlias)
	if quest ~= nil then
        quest:FinishQuestID(false, 48005)
	end
	self:DestroySelf()
end

function Q480Trigger:TriggerOut()
end

return Q480Trigger