require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q1200304Trigger = class("Q1200304Trigger", gadgetActorProxy)

Q1200304Trigger.defaultAlias = "Q1200304Trigger"

local q12003Cfg = require('Quest/Client/Q12003ClientConfig')

-- local questActorProxy = require('Actor/Quest/QuestActorProxy')
-- local Questnew = class("Questnew", questActorProxy)
-- Questnew.defaultAlias = "Questnew"
-- local Quest12003 = require('Quest/LQ12003')

function Q1200304Trigger:OnPostDataPrepare()
end

function Q1200304Trigger:OnPostComponentPrepare()
	self:AddComponentTrigger(3, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q1200304Trigger:TriggerIn()
    print("Out Q12003TriggerSP01")
	local quest = actorMgr:GetActor(q12003Cfg.ActorAlias)
	if quest ~= nil then
		print("***************get quest success")
		quest:FinishQuest(false, nil)
	end
	print("35301 start: 222")
    self:DestroySelf()
end

function Q1200304Trigger:TriggerOut()
	--print("Exit " .. tostring(outCnt))
	--self:DestroySelf()
	print("35301 start: 111")
end

return Q1200304Trigger