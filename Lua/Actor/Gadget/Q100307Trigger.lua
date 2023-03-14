--完成100307
require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q100307Trigger = class("Q100307Trigger", gadgetActorProxy)

Q100307Trigger.defaultAlias = "Q100307Trigger"

local Q1003Cfg = require('Quest/Client/Q1003ClientConfig')

function Q100307Trigger:OnPostDataPrepare()
end

function Q100307Trigger:OnPostComponentPrepare()
	self:AddComponentTrigger(3, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q100307Trigger:TriggerIn()
	print("IN Q100307Trigger")
	--self:EnterSceneLookCamera(sceneData:GetDummyPoint(3,"Q100307Xiao").pos, 2, 2, true)
	local quest = actorMgr:GetActor(Q1003Cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuestID(false, 100307)
	end
    self:DestroySelf()
end

function Q100307Trigger:TriggerOut()

end

return Q100307Trigger