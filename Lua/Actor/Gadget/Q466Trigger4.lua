require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q466trigger4 = class("Q466trigger4", gadgetActorProxy)

Q466trigger4.defaultAlias = "Q466trigger4"

local q466Cfg = require('Quest/Client/Q466ClientConfig')

function Q466trigger4:OnPostDataPrepare()
end

function Q466trigger4:OnPostComponentPrepare()
	self:AddComponentTrigger(165, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q466trigger4:TriggerIn()
end

function Q466trigger4:TriggerOut()
	--print("Exit " .. tostring(outCnt))
    --self:DestroySelf()
    print("Out Q466trigger4")
    self:NarratorOnlyTask(q466Cfg.NarratorData.Story6) 
end

return Q466trigger4