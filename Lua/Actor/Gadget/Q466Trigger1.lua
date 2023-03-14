require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q466trigger1 = class("Q466trigger1", gadgetActorProxy)

Q466trigger1.defaultAlias = "Q466trigger1"

local q466Cfg = require('Quest/Client/Q466ClientConfig')

function Q466trigger1:OnPostDataPrepare()
end

function Q466trigger1:OnPostComponentPrepare()
	self:AddComponentTrigger(95, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q466trigger1:TriggerIn()
end

function Q466trigger1:TriggerOut()
	--print("Exit " .. tostring(outCnt))
    --self:DestroySelf()
    print("Out Q466trigger1")
    actorUtils.ShowMessage("已离开任务区域")
    --self:NarratorOnlyTask(q466Cfg.NarratorData.Story6) 
    local quest = actorMgr:GetActor(q466Cfg.ActorAlias)
    if quest ~= nil then
      quest:FinishQuest(true, nil)
    end
    --self:DestroySelf()
end

return Q466trigger1