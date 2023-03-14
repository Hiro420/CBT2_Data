require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q1200111Trigger = class("Q1200111Trigger", gadgetActorProxy)

Q1200111Trigger.defaultAlias = "Q1200111Trigger"

local q12001Cfg = require('Quest/Client/Q12001ClientConfig')

-- local questActorProxy = require('Actor/Quest/QuestActorProxy')
-- local Questnew = class("Questnew", questActorProxy)
-- Questnew.defaultAlias = "Questnew"
-- local Quest12000 = require('Quest/LQ12000')

function Q1200111Trigger:OnPostDataPrepare()
end

function Q1200111Trigger:OnPostComponentPrepare()
	self:AddComponentTrigger(6, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q1200111Trigger:TriggerIn()
    print("Q1200111Trigger")
	local quest = actorMgr:GetActor(q12001Cfg.ActorAlias)
	if quest ~= nil then
		print("***************Q1200111Triggerget quest success")
		quest:FinishQuest(false, nil)
	end
	print("Q1200111Trigger")
    self:DestroySelf()
end

function Q1200111Trigger:TriggerOut()
	--print("Exit " .. tostring(outCnt))
	--self:DestroySelf()
	print("35301 start: 111")
end

return Q1200111Trigger