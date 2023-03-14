--香菱地城最后boss战前开车
require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q1100498Trigger = class("Q1100498Trigger", gadgetActorProxy)

Q1100498Trigger.defaultAlias = "Q1100498Trigger"

local Q11004Cfg = require('Quest/Client/Q11004ClientConfig')

function Q1100498Trigger:OnPostDataPrepare()
end

function Q1100498Trigger:OnPostComponentPrepare()
	self:AddComponentTrigger(20, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q1100498Trigger:TriggerIn()
	print("IN Q1100498Trigger")
	--self:NarratorOnlyTask(Q11004Cfg.NarratorFlow3)
	self:EnterSceneLookCamera(sceneData:GetDummyPoint(20005,"Q1100403XL").pos, 2, 2, true)
	local quest = actorMgr:GetActor(Q11004Cfg.ActorAlias)
	if quest ~= nil then
		print("finish 1100498")
		quest:FinishQuestID(false, 1100498)
    end
    self:DestroySelf()
end

function Q1100498Trigger:TriggerOut()

end

return Q1100498Trigger