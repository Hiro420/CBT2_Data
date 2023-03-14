require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q48401Trigger = class("Q48401Trigger", gadgetActorProxy)

Q48401Trigger.defaultAlias = "Q48401Trigger"

local q484Cfg = require('Quest/Client/Q484ClientConfig')

function Q48401Trigger:OnPostDataPrepare()
end

function Q48401Trigger:OnPostComponentPrepare()
	self:AddComponentTrigger(6, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q48401Trigger:TriggerIn()
    print("In Q48401Trigger")
	local quest = actorMgr:GetActor(q484Cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuestID(false, 48401)
    end
    self:DestroySelf()
end

function Q48401Trigger:TriggerOut()
	--print("Exit " .. tostring(outCnt))
    --self:DestroySelf()
end

return Q48401Trigger