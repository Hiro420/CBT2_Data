require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q482Trigger = class("Q482Trigger", gadgetActorProxy)

Q482Trigger.defaultAlias = "Q482Trigger"

local q482Cfg = require('Quest/Client/Q482ClientConfig')

function Q482Trigger:OnPostDataPrepare()
end

function Q482Trigger:OnPostComponentPrepare()
	self:AddComponentTrigger(5, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q482Trigger:TriggerIn()
    print("In Q482Trigger")
	local quest = actorMgr:GetActor(q482Cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuestID(false, 48201)
	end
    self:DestroySelf()
end

function Q482Trigger:TriggerOut()
	--print("Exit " .. tostring(outCnt))
    --self:DestroySelf()
end

return Q482Trigger