require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q20101Trigger = class("Q20101Trigger", gadgetActorProxy)

Q20101Trigger.defaultAlias = "Q20101Trigger"

local q20101Cfg = require('Quest/Client/Q20101ClientConfig')

function Q20101Trigger:OnPostDataPrepare()
end

function Q20101Trigger:OnPostComponentPrepare()
	self:AddComponentTrigger(5, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q20101Trigger:TriggerIn()
    print("In Q20101Trigger")
	local quest = actorMgr:GetActor(q20101Cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuestID(false, 2010104)
	end
    self:DestroySelf()
end

function Q20101Trigger:TriggerOut()
	--print("Exit " .. tostring(outCnt))
    --self:DestroySelf()
end

return Q20101Trigger