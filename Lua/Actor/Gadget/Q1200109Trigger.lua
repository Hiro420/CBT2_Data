require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q1200109Trigger = class("Q1200109Trigger", gadgetActorProxy)

Q1200109Trigger.defaultAlias = "Q1200109Trigger"

local q12001Cfg = require('Quest/Client/Q12001ClientConfig')

-- local questActorProxy = require('Actor/Quest/QuestActorProxy')
-- local Questnew = class("Questnew", questActorProxy)
-- Questnew.defaultAlias = "Questnew"
-- local Quest12000 = require('Quest/LQ12000')

function Q1200109Trigger:OnPostDataPrepare()
end

function Q1200109Trigger:OnPostComponentPrepare()
	self:AddComponentTrigger(10, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q1200109Trigger:TriggerIn()
    print("Out Q12000TriggerSP01")
	local quest = actorMgr:GetActor(q12001Cfg.ActorAlias)
	if quest ~= nil then
		print("***************get quest success")
		quest:FinishQuest(false, nil)
	end
	print("35301 start: 222")
    self:DestroySelf()
end

function Q1200109Trigger:TriggerOut()
	--print("Exit " .. tostring(outCnt))
	--self:DestroySelf()
	print("35301 start: 111")
end

return Q1200109Trigger