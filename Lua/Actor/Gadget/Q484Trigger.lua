require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q484Trigger = class("Q484Trigger", gadgetActorProxy)

Q484Trigger.defaultAlias = "Q484Trigger"

local q484Cfg = require('Quest/Client/Q484ClientConfig')

function Q484Trigger:OnPostDataPrepare()
end

function Q484Trigger:OnPostComponentPrepare()
	self:AddComponentTrigger(20, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q484Trigger:TriggerIn()
    print("In Q484Trigger")
	local quest = actorMgr:GetActor(q484Cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuest(false, nil)
	end
    self:DestroySelf()
end

function Q484Trigger:TriggerOut()
	--print("Exit " .. tostring(outCnt))
    --self:DestroySelf()
end

return Q484Trigger