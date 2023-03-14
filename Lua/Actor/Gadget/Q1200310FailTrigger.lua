require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q1200310FailTrigger = class("Q1200310FailTrigger", gadgetActorProxy)

Q1200310FailTrigger.defaultAlias = "Q1200310FailTrigger"

local q1200310Cfg = require('Quest/Client/Q12003ClientConfig')

-- local questActorProxy = require('Actor/Quest/QuestActorProxy')
-- local Questnew = class("Questnew", questActorProxy)
-- Questnew.defaultAlias = "Questnew"
-- local Quest12000 = require('Quest/LQ12000')

function Q1200310FailTrigger:OnPostDataPrepare()
end

function Q1200310FailTrigger:OnPostComponentPrepare()
    self:AddComponentTrigger(40, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q1200310FailTrigger:TriggerIn()
    print("Out Q12000TriggerSP01")

end

function Q1200310FailTrigger:TriggerOut()
	--print("Exit " .. tostring(outCnt))
	--self:DestroySelf()
	print("35301 start: 111")
	local quest = actorMgr:GetActor(q1200310Cfg.ActorAlias)
	if quest ~= nil then
		print("***************get quest success")
		quest:FinishQuest(true, nil)
	end
	print("35301 start: 222")
    self:DestroySelf()
end

return Q1200310FailTrigger