require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q10201trigger01 = class("Q10201trigger01", gadgetActorProxy)


Q10201trigger01.defaultAlias = "Q10201trigger01"

local q10201cfg = require('Quest/Client/Q10201ClientConfig')
local quest = actorMgr:GetActor(q10201cfg.ActorAlias)

function Q10201trigger01:OnPostDataPrepare()
end

function Q10201trigger01:OnPostComponentPrepare()
	self:AddComponentTrigger(50, DistType.EULER, M.Pos(0, 0, 0), self.TriggerIn, self.TriggerOut)
end

function Q10201trigger01:TriggerIn()
    print("In Q10201trigger01")
end

function Q10201trigger01:TriggerOut()
    print("Out Q10201trigger01")
    local quest = actorMgr:GetActor(q10201cfg.ActorAlias)
    if  quest:GetSubQuestState(1020103) == 2 then
        quest:FinishQuestID(true, 1020103)
        quest:ClearNarratorTask()
        print("let 1020103 fail")
        quest:CallDelay(2,
		function(  )
			quest:TransmitPlayerWithText(3, sceneData:GetDummyPoint(3,"Q10201AvatarSpawn").pos, sceneData:GetDummyPoint(3,"Q10201AvatarSpawn").rot,{"QUEST_Message_Q1020104"})
		end
		)
    end
    if  quest:GetSubQuestState(1020104) == 2 then
        quest:FinishQuestID(true, 1020104)
        quest:ClearNarratorTask()
        print("let 1020104 fail")
        quest:CallDelay(2,
		function(  )
			quest:TransmitPlayerWithText(3, sceneData:GetDummyPoint(3,"Q10201AvatarSpawn").pos, sceneData:GetDummyPoint(3,"Q10201AvatarSpawn").rot,{"QUEST_Message_Q1020104"})
		end
		)
    end
    if  quest:GetSubQuestState(1020114) == 2 then
        quest:FinishQuestID(true, 1020114)
        quest:ClearNarratorTask()
        print("let 1020114 fail")
        quest:CallDelay(2,
		function(  )
			quest:TransmitPlayerWithText(3, sceneData:GetDummyPoint(3,"Q10201AvatarSpawn").pos, sceneData:GetDummyPoint(3,"Q10201AvatarSpawn").rot,{"QUEST_Message_Q1020104"})
		end
		)
    end
    self:DestroySelf()
end

return Q10201trigger01