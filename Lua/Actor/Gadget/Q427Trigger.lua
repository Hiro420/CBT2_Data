require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q427Trigger = class("Q427Trigger", gadgetActorProxy)

Q427Trigger.defaultAlias = "Q427Trigger"

local q427Cfg = require('Quest/Client/Q427ClientConfig')

-- local questActorProxy = require('Actor/Quest/QuestActorProxy')
-- local Questnew = class("Questnew", questActorProxy)
-- Questnew.defaultAlias = "Questnew"
-- local Quest427 = require('Quest/MQ427')

function Q427Trigger:OnPostDataPrepare()
end

function Q427Trigger:OnPostComponentPrepare()
	self:AddComponentTrigger(5, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q427Trigger:TriggerIn()
    print("Out Q427Trigger")
	local quest = actorMgr:GetActor(q427Cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuest(false, nil)
    end
    self:DestroySelf()
end

function Q427Trigger:TriggerOut()
	--print("Exit " .. tostring(outCnt))
    --self:DestroySelf()
end

return Q427Trigger