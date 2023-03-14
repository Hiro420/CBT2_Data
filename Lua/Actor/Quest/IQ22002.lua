require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest22002 = class("Quest22002", questActorProxy)
Quest22002.defaultAlias = "Quest22002"

local q22002Cfg
local MainID
local SubIDs
local ActorAlias
local Actors
local Datas


function Quest22002:OnDataLoaded(  )
	q22002Cfg = self.clientData
	MainID = q22002Cfg.MainID
	SubIDs = q22002Cfg.SubIDs
	ActorAlias = q22002Cfg.ActorAlias
	Actors = q22002Cfg.Actors
	Datas = q22002Cfg.Datas
end

function Quest22002:OnSubStartHandlerBuild()
	self.subStartHandlers = 
	{
		["2200201"] = self.OnSubStart2200201,
		["2200202"] = self.OnSubStart2200202,
		["2200203"] = self.OnSubStart2200203,
		["2200204"] = self.OnSubStart2200204,
	}
end

function Quest22002:OnSubFinishHandlerBuild()
	self.subFinishHandlers = 
	{
		["2200201"] = self.OnSubFinish2200201,
		["2200202"] = self.OnSubFinish2200202,
		["2200203"] = self.OnSubFinish2200203,
		["2200204"] = self.OnSubFinish2200204,
	}
end

function Quest22002:OnSubFailedHandlerBuild()
	self.subFailedHandlers = 
	{
		["2200201"] = self.OnSubFailed2200201,
		["2200202"] = self.OnSubFailed2200202,
		["2200203"] = self.OnSubFailed2200203,
		["2200204"] = self.OnSubFailed2200204,
	}
end

function Quest22002:Blackscreen()
	print("Blackscreen")
	self:ShowBlackScreen(0.5, 1, 0.5, self.Cleardata)
end

function Quest22002:Cleardata()
	print("Cleardata")
	self:DestroyQuestNpcActor(Actors.Lulu.alias, 3)
	self:DestroyQuestNpcActor(Actors.Meng.alias, 3)
	self:DestroyQuestNpcActor(Actors.Fei.alias, 3)
	self:NotifyTo("Npc2074", 0, true)
	self:NotifyTo("Npc2030", 0, true)
	self:NotifyTo("Npc2031", 0, true)
end

function Quest22002:Start()
	print("Start")
end

function Quest22002:OnDestroy()
	print("OnDestroy")
end

function Quest22002:OnSubStart2200201(quest)
	print("OnSubStart2200201")
	self:NotifyTo("Npc2074", 1, true)
	self:NotifyTo("Npc2030", 1, true)
	self:NotifyTo("Npc2031", 1, true)
	self:CreateQuestNpc(quest, Actors.Fei.id, 1)
	self:CreateQuestNpc(quest, Actors.Meng.id, 2)
	self:CreateQuestNpc(quest, Actors.Lulu.id, 3)

end

function Quest22002:OnSubFinish2200201(quest)
	print("OnSubFinish2200201")
end

function Quest22002:OnSubFailed2200201(quest)
	print("OnSubFailed2200201")
	self:NotifyTo("Npc2074", 0, true)
	self:NotifyTo("Npc2030", 0, true)
	self:NotifyTo("Npc2031", 0, true)
end

function Quest22002:OnSubStart2200202(quest)
	print("OnSubStart2200202")	
	self:RequestInteraction(Actors.Meng.alias)
	self:NotifyTo("Npc2074", 1, true)
	self:NotifyTo("Npc2030", 1, true)
	self:NotifyTo("Npc2031", 1, true)
end

function Quest22002:OnSubFinish2200202(quest)
	print("OnSubFinish2200202")
end

function Quest22002:OnSubFailed2200202(quest)
	print("OnSubFailed2200202")
	self:NotifyTo("Npc2074", 0, true)
	self:NotifyTo("Npc2030", 0, true)
	self:NotifyTo("Npc2031", 0, true)
end

function Quest22002:OnSubStart2200203(quest)
	print("OnSubStart2200203")
	self:NotifyTo("Npc2074", 1, true)
	self:NotifyTo("Npc2030", 1, true)
	self:NotifyTo("Npc2031", 1, true)
end

function Quest22002:OnSubFinish2200203(quest)
	print("OnSubFinish2200203")
	self:NarratorOnlyTask(Datas.NarratorTable)
	local PaimonData = self.clientData.PaimonData
	local paimonPos = actorUtils.GetAvatarPos()
	local playerVector = actorUtils.GetAvatarForward()
	local distance = 1.5
	paimonPos.x = paimonPos.x + playerVector.x * distance
	paimonPos.z = paimonPos.z + playerVector.z * distance

	local paimonVector = playerVector
	paimonVector.x = paimonVector.x * -1
	paimonVector.z = paimonVector.z * -1
	self:CreateQuestNpcByIdWithPos(2200203, Actors.Paimon.id, 1, paimonPos, M.Dir2Euler(paimonVector))
	self:CallDelay(3, function()
			local paimon = self:GetQuestNpcActor(q22002Cfg.Actors.Paimon.alias)
			if paimon ~= nil then
				paimon:DestroyWithDisappear(false)
		 	end
		end
	)
end

function Quest22002:OnSubFailed2200203(quest)
	print("OnSubFailed2200203")
	self:NotifyTo("Npc2074", 0, true)
	self:NotifyTo("Npc2030", 0, true)
	self:NotifyTo("Npc2031", 0, true)
end

function Quest22002:OnSubStart2200204(quest)
	print("OnSubStart2200204")
	self:NotifyTo("Npc2074", 1, true)
	self:NotifyTo("Npc2030", 1, true)
	self:NotifyTo("Npc2031", 1, true)
end

function Quest22002:OnSubFinish2200204(quest)
	print("OnSubFinish2200204")
	self:CallDelay(2, self.Blackscreen)
end

function Quest22002:OnSubFailed2200204(quest)
	print("OnSubFailed2200204")
	self:NotifyTo("Npc2074", 0, true)
	self:NotifyTo("Npc2030", 0, true)
	self:NotifyTo("Npc2031", 0, true)
end

return Quest22002