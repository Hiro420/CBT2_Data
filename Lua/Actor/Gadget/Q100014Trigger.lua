require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q100014Trigger = class("Q100014Trigger", gadgetActorProxy)

Q100014Trigger.defaultAlias = "Q100014Trigger"


local q1000Cfg = require('Quest/Client/Q1000ClientConfig')


function Q100014Trigger:OnPostDataPrepare()
end

function Q100014Trigger:OnPostComponentPrepare()
	self:AddComponentTrigger(20, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q100014Trigger:TriggerIn()
	local quest = actorMgr:GetActor(q1000Cfg.ActorAlias)
	if quest ~= nil then
        quest:CreateQuestNpcById(100014, 10200)
	end
	self:DestroySelf()
end

function Q100014Trigger:TriggerOut()
end

return Q100014Trigger