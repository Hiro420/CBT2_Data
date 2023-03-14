--完成100311
require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q100311Trigger = class("Q100311Trigger", gadgetActorProxy)

Q100311Trigger.defaultAlias = "Q100311Trigger"

local Q1003Cfg = require('Quest/Client/Q1003ClientConfig')

function Q100311Trigger:OnPostDataPrepare()
end

function Q100311Trigger:OnPostComponentPrepare()
	self:AddComponentTrigger(3, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q100311Trigger:TriggerIn()
	print("IN Q100311Trigger")
	--self:EnterSceneLookCamera(sceneData:GetDummyPoint(3,"Q100311Xiao").pos, 2, 2, true)
	local quest = actorMgr:GetActor(Q1003Cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuestID(false, 100311)
	end
    self:DestroySelf()
end

function Q100311Trigger:TriggerOut()

end

return Q100311Trigger