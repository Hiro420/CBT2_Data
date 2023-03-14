require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q12000TriggerSP = class("Q12000TriggerSP", gadgetActorProxy)

Q12000TriggerSP.defaultAlias = "Q12000TriggerSP"

local q12000Cfg = require('Quest/Client/Q12000ClientConfig')

-- local questActorProxy = require('Actor/Quest/QuestActorProxy')
-- local Questnew = class("Questnew", questActorProxy)
-- Questnew.defaultAlias = "Questnew"
-- local Quest12000 = require('Quest/LQ12000')

function Q12000TriggerSP:OnPostDataPrepare()
end

function Q12000TriggerSP:OnPostComponentPrepare()
	self:AddComponentTrigger(6, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q12000TriggerSP:TriggerIn()
    print("Out Q12000TriggerSP")
	local quest = actorMgr:GetActor(q12000Cfg.ActorAlias)
	if quest ~= nil then
		print("***************get quest success")
		quest:FinishQuest(false, nil)
	end
	print("35301 start: 222")
    self:DestroySelf()
end

function Q12000TriggerSP:TriggerOut()
	--print("Exit " .. tostring(outCnt))
	--self:DestroySelf()
	print("35301 start: 111")
end

return Q12000TriggerSP