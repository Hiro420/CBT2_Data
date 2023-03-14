require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q20101Trigger03 = class("Q20101Trigger03", gadgetActorProxy)

Q20101Trigger03.defaultAlias = "Q20101Trigger03"

local q20101Cfg = require('Quest/Client/Q20101ClientConfig')

function Q20101Trigger03:OnPostDataPrepare()
end

function Q20101Trigger03:OnPostComponentPrepare()
	self:AddComponentTrigger(5, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q20101Trigger03:TriggerIn()
    print("In Q20101Trigger03")
	local quest = actorMgr:GetActor(q20101Cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuestID(false, 2010134)
	end
    self:DestroySelf()
end

function Q20101Trigger03:TriggerOut()
	--print("Exit " .. tostring(outCnt))
    --self:DestroySelf()
end

return Q20101Trigger03