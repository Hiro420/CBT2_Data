require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q373Trigger = class("Q373Trigger", gadgetActorProxy)

Q373Trigger.defaultAlias = "Q373Trigger"


local q373Cfg = require('Quest/Client/Q373ClientConfig')


function Q373Trigger:OnPostDataPrepare()
end

function Q373Trigger:OnPostComponentPrepare()
	self:AddComponentTrigger(5, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q373Trigger:TriggerIn()
	local quest = actorMgr:GetActor(q373Cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuest(false, nil)
	end
	self:DestroySelf()
end

function Q373Trigger:TriggerOut()
end

return Q373Trigger