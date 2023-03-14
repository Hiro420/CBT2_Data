require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q466trigger2 = class("Q466trigger2", gadgetActorProxy)

Q466trigger2.defaultAlias = "Q466trigger2"

local q466Cfg = require('Quest/Client/Q466ClientConfig')

function Q466trigger2:OnPostDataPrepare()
end

function Q466trigger2:OnPostComponentPrepare()
	self:AddComponentTrigger(185, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q466trigger2:TriggerIn()
end

function Q466trigger2:TriggerOut()
	--print("Exit " .. tostring(outCnt))
    --self:DestroySelf()
    print("Out Q466trigger2")
    actorUtils.ShowMessage("已离开任务区域")
    --self:NarratorOnlyTask(q466Cfg.NarratorData.Story6) 
    local quest = actorMgr:GetActor(q466Cfg.ActorAlias)
    if quest ~= nil then
      quest:FinishQuest(true, nil)
    end
    --self:DestroySelf()
end

return Q466trigger2