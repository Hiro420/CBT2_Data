require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q1200311FailTrigger = class("Q1200311FailTrigger", gadgetActorProxy)

Q1200311FailTrigger.defaultAlias = "Q1200311FailTrigger"

local q1200311Cfg = require('Quest/Client/Q12003ClientConfig')

-- local questActorProxy = require('Actor/Quest/QuestActorProxy')
-- local Questnew = class("Questnew", questActorProxy)
-- Questnew.defaultAlias = "Questnew"
-- local Quest12000 = require('Quest/LQ12000')

function Q1200311FailTrigger:OnPostDataPrepare()
end

function Q1200311FailTrigger:OnPostComponentPrepare()
    self:AddComponentTrigger(100, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q1200311FailTrigger:TriggerIn()
    print("Out Q12000TriggerSP01")

end

function Q1200311FailTrigger:TriggerOut()
	--print("Exit " .. tostring(outCnt))
	--self:DestroySelf()
	print("35301 start: 111")
	local quest = actorMgr:GetActor(q1200311Cfg.ActorAlias)
	if quest ~= nil then
		print("***************get quest success")
		quest:FinishQuest(true, nil)
	end
	print("35301 start: 222")
    self:DestroySelf()
end

return Q1200311FailTrigger