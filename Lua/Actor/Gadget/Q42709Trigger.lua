require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q42709Trigger = class("Q42709Trigger", gadgetActorProxy)

Q42709Trigger.defaultAlias = "Q42709Trigger"


local q427Cfg = require('Quest/Client/Q427ClientConfig')


function Q42709Trigger:OnPostDataPrepare()
end

function Q42709Trigger:OnPostComponentPrepare()
	self:AddComponentTrigger(30, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q42709Trigger:TriggerIn()
	local quest = actorMgr:GetActor(q427Cfg.ActorAlias)
	if quest ~= nil then
        quest:FinishQuestID(false, 42709)
	end
	self:DestroySelf()
end

function Q42709Trigger:TriggerOut()
end

return Q42709Trigger