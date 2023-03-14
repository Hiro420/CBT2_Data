require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q1200104Trigger = class("Q1200104Trigger", gadgetActorProxy)

Q1200104Trigger.defaultAlias = "Q1200104Trigger"

local q12000Cfg = require('Quest/Client/Q12001ClientConfig')

-- local questActorProxy = require('Actor/Quest/QuestActorProxy')
-- local Questnew = class("Questnew", questActorProxy)
-- Questnew.defaultAlias = "Questnew"
-- local Quest12000 = require('Quest/LQ12000')

function Q1200104Trigger:OnPostDataPrepare()
end

function Q1200104Trigger:OnPostComponentPrepare()
	self:AddComponentTrigger(6, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q1200104Trigger:TriggerIn()
    print("Out Q12000TriggerSP01")
	local quest = actorMgr:GetActor(q12000Cfg.ActorAlias)
	if quest ~= nil then
		print("***************get quest success")
		quest:FinishQuest(false, nil)
	end
	print("35301 start: 222")
    self:DestroySelf()
end

function Q1200104Trigger:TriggerOut()
	--print("Exit " .. tostring(outCnt))
	--self:DestroySelf()
	print("35301 start: 111")
end

return Q1200104Trigger