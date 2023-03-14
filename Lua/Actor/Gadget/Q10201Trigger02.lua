require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q10201trigger02 = class("Q10201trigger02", gadgetActorProxy)


Q10201trigger02.defaultAlias = "Q10201trigger02"

local q10201cfg = require('Quest/Client/Q10201ClientConfig')
local quest = actorMgr:GetActor(q10201cfg.ActorAlias)

function Q10201trigger02:OnPostDataPrepare()
end

function Q10201trigger02:OnPostComponentPrepare()
	self:AddComponentTrigger(50, DistType.EULER, M.Pos(0, 0, 0), self.TriggerIn, self.TriggerOut)
end

function Q10201trigger02:TriggerIn()
    print("In Q10201trigger02")
end

function Q10201trigger02:TriggerOut()
    print("Out Q10201trigger02")
    local quest = actorMgr:GetActor(q10201cfg.ActorAlias)
    if  quest:GetSubQuestState(1020105) == 2 then
        quest:FinishQuestID(true, 1020105)
        quest:ClearNarratorTask()
        print("let 1020105 fail")
        quest:CallDelay(2,
		function(  )
			quest:TransmitPlayerWithText(3, sceneData:GetDummyPoint(3,"Q10201AvatarSpawn").pos, sceneData:GetDummyPoint(3,"Q10201AvatarSpawn").rot,{"QUEST_Message_Q1020104"})
		end
		)
    end
    if  quest:GetSubQuestState(1020106) == 2 then
        quest:FinishQuestID(true, 1020106)
        quest:ClearNarratorTask()
        print("let 1020106 fail")
        quest:CallDelay(2,
		function(  )
			quest:TransmitPlayerWithText(3, sceneData:GetDummyPoint(3,"Q10201AvatarSpawn").pos, sceneData:GetDummyPoint(3,"Q10201AvatarSpawn").rot,{"QUEST_Message_Q1020104"})
		end
		)
    end
    if  quest:GetSubQuestState(1020115) == 2 then
        quest:FinishQuestID(true, 1020115)
        quest:ClearNarratorTask()
        print("let 1020115 fail")
        quest:CallDelay(2,
		function(  )
			quest:TransmitPlayerWithText(3, sceneData:GetDummyPoint(3,"Q10201AvatarSpawn").pos, sceneData:GetDummyPoint(3,"Q10201AvatarSpawn").rot,{"QUEST_Message_Q1020104"})
		end
		)
    end
    self:DestroySelf()
end

return Q10201trigger02