--完成1100301
require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q1100301Trigger = class("Q1100301Trigger", gadgetActorProxy)

Q1100301Trigger.defaultAlias = "Q1100301Trigger"

local Q11003Cfg = require('Quest/Client/Q11003ClientConfig')
local olafData = Q11003Cfg.OlafData

function Q1100301Trigger:OnPostDataPrepare()
end

function Q1100301Trigger:OnPostComponentPrepare()
	self:AddComponentTrigger(20, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q1100301Trigger:TriggerIn()
	print("IN Q1100301Trigger")
	self:EnterSceneLookCamera(sceneData:GetDummyPoint(3,"Q1100302Olaf").pos, 2, 2, true)
	local quest = actorMgr:GetActor(Q11003Cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuestID(false, 1100301)
	end
	local olaf = quest:GetQuestNpcActor(olafData.Alias)
	olaf:DoFreeStyle(4200)
    self:DestroySelf()
end

function Q1100301Trigger:TriggerOut()

end

return Q1100301Trigger