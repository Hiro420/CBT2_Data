require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q466trigger5 = class("Q466trigger5", gadgetActorProxy)

Q466trigger5.defaultAlias = "Q466trigger5"

local q466Cfg = require('Quest/Client/Q466ClientConfig')

function Q466trigger5:OnPostDataPrepare()
end

function Q466trigger5:OnPostComponentPrepare()
	self:AddComponentTrigger(60, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q466trigger5:TriggerIn()
end

function Q466trigger5:TriggerOut()
	--print("Exit " .. tostring(outCnt))
    --self:DestroySelf()
    print("Out Q466trigger5")
    actorUtils.ShowMessage("已离开任务区域")
    --self:NarratorOnlyTask(q466Cfg.NarratorData.Story6) 
    local quest = actorMgr:GetActor(q466Cfg.ActorAlias)
    if quest ~= nil then
      quest:FinishQuest(true, nil)
      --quest:FinishQuestID(true, 46606)
    end
    self:DestroySelf()
end

return Q466trigger5