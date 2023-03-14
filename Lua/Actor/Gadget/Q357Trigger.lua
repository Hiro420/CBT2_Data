require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q357Trigger = class("Q357Trigger", gadgetActorProxy)

Q357Trigger.defaultAlias = "Q357Trigger"

local q358Cfg = require('Quest/Client/Q358ClientConfig')
local paimonData = q358Cfg.PaimonData
local quest358 = actorMgr:GetActor(q358Cfg.ActorAlias)


function Q357Trigger:OnPostDataPrepare()
end

function Q357Trigger:OnPostComponentPrepare()
	self:AddComponentTrigger(20, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q357Trigger:TriggerIn()

end

function Q357Trigger:TriggerOut()
	print("357Trigger Out : Destory Paimon")
	local paimon = quest358:GetQuestNpcActor(paimonData.Paimon)
	if paimon ~= nil then
		paimon:DestroyWithDisappear(false)
	end

	self:DestroySelf()
end

return Q357Trigger