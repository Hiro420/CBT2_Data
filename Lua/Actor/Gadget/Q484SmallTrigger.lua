require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q484SmallTrigger = class("Q484SmallTrigger", gadgetActorProxy)

Q484SmallTrigger.defaultAlias = "Q484SmallTrigger"

local q484Cfg = require('Quest/Client/Q484ClientConfig')

function Q484SmallTrigger:OnPostDataPrepare()
end

function Q484SmallTrigger:OnPostComponentPrepare()
	self:AddComponentTrigger(8, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q484SmallTrigger:TriggerIn()
    print("In Q484SmallTrigger")
	local quest = actorMgr:GetActor(q484Cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuest(false, nil)
	end
    self:DestroySelf()
end

function Q484SmallTrigger:TriggerOut()
	--print("Exit " .. tostring(outCnt))
    --self:DestroySelf()
end

return Q484SmallTrigger