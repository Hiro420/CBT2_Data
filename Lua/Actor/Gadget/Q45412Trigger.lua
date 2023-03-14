--进圈创生雷泽、安柏、受伤的狼
require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q45412Trigger = class("Q45412Trigger", gadgetActorProxy)

Q45412Trigger.defaultAlias = "Q45412Trigger"

local q454Cfg = require('Quest/Client/Q454ClientConfig')
util.do_require('Quest/Share/Q454ShareConfig')

local amborData = AmborData
local razorData = RazorData
local wolfWoundData = WolfWoundData

function Q45412Trigger:OnPostDataPrepare()
end

function Q45412Trigger:OnPostComponentPrepare()
	self:AddComponentTrigger(40, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q45412Trigger:TriggerIn()
    print("IN Q45412Trigger") 
    local quest454 = actorMgr:GetActor(q454Cfg.ActorAlias)

    quest454:CreateQuestNpcById(45412, razorData.ID)
    local razor = quest454:GetQuestNpcActor(razorData.Alias)
    razor:DoFreeStyle(1120)

    quest454:CreateQuestNpcById(45412, amborData.ID)
    local ambor = quest454:GetQuestNpcActor(amborData.Alias)
    ambor:DoFreeStyle(1230)

    quest454:CreateQuestNpcById(45412, wolfWoundData.ID)

    self:DestroySelf()

end

function Q45412Trigger:TriggerOut()


end

return Q45412Trigger