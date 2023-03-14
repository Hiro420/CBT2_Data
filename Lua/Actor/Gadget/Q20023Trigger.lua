require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q20023trigger = class("Q20023trigger", gadgetActorProxy)


Q20023trigger.defaultAlias = "Q20023trigger"

local q20023cfg = require('Quest/Client/Q20023ClientConfig')
local quest = actorMgr:GetActor(q20023cfg.ActorAlias)

function Q20023trigger:OnPostDataPrepare()
end

function Q20023trigger:OnPostComponentPrepare()
	self:AddComponentTrigger(7, DistType.EULER, M.Pos(0, 0, 0), self.TriggerIn, self.TriggerOut)
end

function Q20023trigger:TriggerIn()
    print("In Q20023trigger")
    local quest = actorMgr:GetActor(q20023cfg.ActorAlias)
    if quest ~= nil then
        quest:FinishQuestID(false, 2002306)
    end
end

function Q20023trigger:TriggerOut()
    print("Out Q20023trigger")
    local quest = actorMgr:GetActor(q20023cfg.ActorAlias)
    if  quest:GetSubQuestState(2002307) == 2 then
        quest:FinishQuestID(true, 2002307)
        print("let 2002307 fail")
    end
    
    if  quest:GetSubQuestState(2002307) == 3 then
        quest:NarratorOnlyTask(q20023cfg.NarratorData.Story4)
    end
    self:DestroySelf()
end

return Q20023trigger