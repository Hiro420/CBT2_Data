require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q485Trigger = class("Q485Trigger", gadgetActorProxy)

Q485Trigger.defaultAlias = "Q485Trigger"

local q485Cfg = require('Quest/Client/Q485ClientConfig')

function Q485Trigger:OnPostDataPrepare()
end

function Q485Trigger:OnPostComponentPrepare()
	self:AddComponentTrigger(8, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q485Trigger:TriggerIn()
    print("In Q485Trigger")
	local quest = actorMgr:GetActor(q485Cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuest(false, nil)
	end
    self:DestroySelf()
end

function Q485Trigger:TriggerOut()
	--print("Exit " .. tostring(outCnt))
    --self:DestroySelf()
end

return Q485Trigger