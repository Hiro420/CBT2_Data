--完成100301
require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q100301Trigger = class("Q100301Trigger", gadgetActorProxy)

Q100301Trigger.defaultAlias = "Q100301Trigger"

local Q1003Cfg = require('Quest/Client/Q1003ClientConfig')

function Q100301Trigger:OnPostDataPrepare()
end

function Q100301Trigger:OnPostComponentPrepare()
	self:AddComponentTrigger(5, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q100301Trigger:TriggerIn()
	print("IN Q100301Trigger")
	--self:EnterSceneLookCamera(sceneData:GetDummyPoint(3,"Q100301Xiao").pos, 2, 2, true)
	local quest = actorMgr:GetActor(Q1003Cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuestID(false, 100301)
	end
    self:DestroySelf()
end

function Q100301Trigger:TriggerOut()

end

return Q100301Trigger