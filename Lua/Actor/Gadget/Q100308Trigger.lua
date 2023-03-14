--完成100308
require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q100308Trigger = class("Q100308Trigger", gadgetActorProxy)

Q100308Trigger.defaultAlias = "Q100308Trigger"

local Q1003Cfg = require('Quest/Client/Q1003ClientConfig')

function Q100308Trigger:OnPostDataPrepare()
end

function Q100308Trigger:OnPostComponentPrepare()
	self:AddComponentTrigger(5, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q100308Trigger:TriggerIn()
	print("IN Q100308Trigger")
	--self:EnterSceneLookCamera(sceneData:GetDummyPoint(3,"Q100308Xiao").pos, 2, 2, true)
	local quest = actorMgr:GetActor(Q1003Cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuestID(false, 100308)
	end
    self:DestroySelf()
end

function Q100308Trigger:TriggerOut()

end

return Q100308Trigger