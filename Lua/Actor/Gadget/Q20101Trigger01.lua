require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q20101Trigger01 = class("Q20101Trigger01", gadgetActorProxy)

Q20101Trigger01.defaultAlias = "Q20101Trigger01"

local q20101Cfg = require('Quest/Client/Q20101ClientConfig')

function Q20101Trigger01:OnPostDataPrepare()
end

function Q20101Trigger01:OnPostComponentPrepare()
	self:AddComponentTrigger(15, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q20101Trigger01:TriggerIn()
    print("In Q20101Trigger01")
	local quest = actorMgr:GetActor(q20101Cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuestID(false, 2010102)
	end
    self:DestroySelf()
end

function Q20101Trigger01:TriggerOut()
	--print("Exit " .. tostring(outCnt))
    --self:DestroySelf()
end

return Q20101Trigger01