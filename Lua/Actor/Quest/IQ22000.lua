require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest22000 = class("Quest22000", questActorProxy)
Quest22000.defaultAlias = "Quest22000"

local q22000Cfg
local MainID
local SubIDs
local ActorAlias
local Actors
local Datas


function Quest22000:OnDataLoaded(  )
	q22000Cfg = self.clientData
	MainID = q22000Cfg.MainID
	SubIDs = q22000Cfg.SubIDs
	ActorAlias = q22000Cfg.ActorAlias
	Actors = q22000Cfg.Actors
	Datas = q22000Cfg.Datas
end

function Quest22000:OnSubStartHandlerBuild()
	self.subStartHandlers = 
	{
		["2200001"] = self.OnSubStart2200001,
		["2200002"] = self.OnSubStart2200002,
		["2200003"] = self.OnSubStart2200003,
		["2200004"] = self.OnSubStart2200004,
		["2200005"] = self.OnSubStart2200005,
	}
end

function Quest22000:OnSubFinishHandlerBuild()
	self.subFinishHandlers = 
	{
		["2200001"] = self.OnSubFinish2200001,
		["2200002"] = self.OnSubFinish2200002,
		["2200003"] = self.OnSubFinish2200003,
		["2200004"] = self.OnSubFinish2200004,
		["2200005"] = self.OnSubFinish2200005,
	}
end

function Quest22000:OnSubFailedHandlerBuild()
	self.subFailedHandlers = 
	{
		["2200001"] = self.OnSubFailed2200001,
		["2200002"] = self.OnSubFailed2200002,
		["2200003"] = self.OnSubFailed2200003,
		["2200004"] = self.OnSubFailed2200004,
		["2200005"] = self.OnSubFailed2200005,
	}
end

function Quest22000:Blackscreen()
	print("Blackscreen")
	self:ShowBlackScreen(0.5, 1, 0.5, self.Cleardata)
end

function Quest22000:Cleardata()
	print("Cleardata")
	self:DestroyQuestNpcActor(Actors.Lulu.alias, 3)
	self:DestroyQuestNpcActor(Actors.Meng.alias, 3)
	self:DestroyQuestNpcActor(Actors.Fei.alias, 3)
	self:NotifyTo("Npc2074", 0, true)
	self:NotifyTo("Npc2030", 0, true)
	self:NotifyTo("Npc2031", 0, true)
end

function Quest22000:Start()
	print("Start")
end

function Quest22000:OnDestroy()
	print("OnDestroy")
end

function Quest22000:OnSubStart2200001(quest)
	print("OnSubStart2200001")
	self:CreateQuestNpc(quest, Actors.Fei.id, 1)
	self:CreateQuestNpc(quest, Actors.Meng.id, 2)
	self:CreateQuestNpc(quest, Actors.Lulu.id, 3)
	self:NotifyTo("Npc2074", 1, true)
	self:NotifyTo("Npc2030", 1, true)
	self:NotifyTo("Npc2031", 1, true)
end

function Quest22000:OnSubFinish2200001(quest)
	print("OnSubFinish2200001")
end

function Quest22000:OnSubFailed2200001(quest)
	print("OnSubFailed2200001")
	self:NotifyTo("Npc2074", 0, true)
	self:NotifyTo("Npc2030", 0, true)
	self:NotifyTo("Npc2031", 0, true)
end

function Quest22000:OnSubStart2200002(quest)
	print("OnSubStart2200002")
	self:RequestInteraction("Npc203101")
	self:NotifyTo("Npc2074", 1, true)
	self:NotifyTo("Npc2030", 1, true)
	self:NotifyTo("Npc2031", 1, true)
end

function Quest22000:OnSubFinish2200002(quest)
	print("OnSubFinish2200002")
end

function Quest22000:OnSubFailed2200002(quest)
	print("OnSubFailed2200002")
	self:NotifyTo("Npc2074", 0, true)
	self:NotifyTo("Npc2030", 0, true)
	self:NotifyTo("Npc2031", 0, true)
end

function Quest22000:OnSubStart2200003(quest)
	print("OnSubStart2200003")
	self:NotifyTo("Npc2074", 1, true)
	self:NotifyTo("Npc2030", 1, true)
	self:NotifyTo("Npc2031", 1, true)
end

function Quest22000:OnSubFinish2200003(quest)
	print("OnSubFinish2200003")
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
	self:CreateQuestNpcByIdWithPos(2200003, Actors.Paimon.id, 1, paimonPos, M.Dir2Euler(paimonVector))
	self:CallDelay(3, function()
			local paimon = self:GetQuestNpcActor(q22000Cfg.Actors.Paimon.alias)
			if paimon ~= nil then
				paimon:DestroyWithDisappear(false)
		 	end
		end
	)
	local quest = actorMgr:GetActor(q22000Cfg.ActorAlias)
    if quest ~= nil then
        quest:FinishQuestID(false, 2200005)
    end
end

function Quest22000:OnSubFailed2200003(quest)
	print("OnSubFailed2200003")
	self:NotifyTo("Npc2074", 0, true)
	self:NotifyTo("Npc2030", 0, true)
	self:NotifyTo("Npc2031", 0, true)
end

function Quest22000:OnSubStart2200004(quest)
	print("OnSubStart2200004")
	self:NotifyTo("Npc2074", 1, true)
	self:NotifyTo("Npc2030", 1, true)
	self:NotifyTo("Npc2031", 1, true)
end

function Quest22000:OnSubFinish2200004(quest)
	print("OnSubFinish2200004")
	self:CallDelay(2, self.Blackscreen)
end

function Quest22000:OnSubFailed2200004(quest)
	print("OnSubFailed2200004")
	self:NotifyTo("Npc2074", 0, true)
	self:NotifyTo("Npc2030", 0, true)
	self:NotifyTo("Npc2031", 0, true)
end

return Quest22000
