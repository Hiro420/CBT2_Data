require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q464Trigger1 = class("Q464Trigger1", gadgetActorProxy)

Q464Trigger1.defaultAlias = "Q464Trigger1"

local q464Cfg = require('Quest/Client/Q464ClientConfig')

function Q464Trigger1:OnPostDataPrepare()
end

function Q464Trigger1:OnPostComponentPrepare()
	self:AddComponentTrigger(60, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q464Trigger1:TriggerIn()
end

function Q464Trigger1:TriggerOut()
	--print("Exit " .. tostring(outCnt))
    --self:DestroySelf()
    print("Out Q464Trigger1")
    --actorUtils.ShowMessage("已离开任务区域")
	local quest = actorMgr:GetActor(q464Cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuest(true, nil)
    end
    self:DestroySelf()
end

return Q464Trigger1