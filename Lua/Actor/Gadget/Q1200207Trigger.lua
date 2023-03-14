require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q1200207Trigger = class("Q1200207Trigger", gadgetActorProxy)

Q1200207Trigger.defaultAlias = "Q1200207Trigger"

local q12002Cfg = require('Quest/Client/Q12002ClientConfig')

-- local questActorProxy = require('Actor/Quest/QuestActorProxy')
-- local Questnew = class("Questnew", questActorProxy)
-- Questnew.defaultAlias = "Questnew"
-- local Quest12002 = require('Quest/LQ12002')

function Q1200207Trigger:OnPostDataPrepare()
end

function Q1200207Trigger:OnPostComponentPrepare()
	self:AddComponentTrigger(3, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q1200207Trigger:TriggerIn()
    print("Out Q12002TriggerSP01")
	local quest = actorMgr:GetActor(q12002Cfg.ActorAlias)
	if quest ~= nil then
		print("***************get quest success")
		quest:FinishQuest(false, nil)
	end
	print("35301 start: 222")
    self:DestroySelf()
end

function Q1200207Trigger:TriggerOut()
	--print("Exit " .. tostring(outCnt))
	--self:DestroySelf()
	print("35301 start: 111")
end

return Q1200207Trigger