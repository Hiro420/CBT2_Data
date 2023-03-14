--完成100320
require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q100320Trigger = class("Q100320Trigger", gadgetActorProxy)

Q100320Trigger.defaultAlias = "Q100320Trigger"

local Q1003Cfg = require('Quest/Client/Q1003ClientConfig')

function Q100320Trigger:OnPostDataPrepare()
end

function Q100320Trigger:OnPostComponentPrepare()
	self:AddComponentTrigger(47, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q100320Trigger:TriggerIn()
	print("IN Q100320Trigger")
	--self:EnterSceneLookCamera(sceneData:GetDummyPoint(3,"Q100320Xiao").pos, 2, 2, true)
	local quest = actorMgr:GetActor(Q1003Cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuestID(false, 100320)
	end
    self:DestroySelf()
end

function Q100320Trigger:TriggerOut()

end

return Q100320Trigger