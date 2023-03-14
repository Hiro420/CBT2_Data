require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')
local Quest22112 = class("Quest22112", questActorProxy)
Quest22112.defaultAlias = "Quest22112"

local q22112Cfg
local MainID
local ActorAlias
local SubIDs
local Actors
local Datas

function Quest22112:OnDataLoaded()
	q22112Cfg = self.clientData
	SubIDs = q22112Cfg.SubIDs
	MainID =  22112
	Actors = q22112Cfg.Actors

end



function Quest22112:OnSubStartHandlerBuild()
	self.subStartHandlers = 
	{
		["2211201"] = self.OnSubStart2211201,
		["2211202"] = self.OnSubStart2211202,
		["2211203"] = self.OnSubStart2211203,
		["2211204"] = self.OnSubStart2211204,
		["2211205"] = self.OnSubStart2211205,
	}
end

function Quest22112:OnSubFinishHandlerBuild()
	self.subFinishHandlers = 
	{
		["2211201"] = self.OnSubFinish2211201,
		["2211202"] = self.OnSubFinish2211202,
		["2211203"] = self.OnSubFinish2211203,
		["2211204"] = self.OnSubFinish2211204,
		["2211205"] = self.OnSubFinish2211205,
	}
end

function Quest22112:OnSubFailedHandlerBuild()
	self.subFailedHandlers = 
	{
		["2211201"] = self.OnSubFailed2211201,
		["2211202"] = self.OnSubFailed2211202,
		["2211203"] = self.OnSubFailed2211203,
		["2211204"] = self.OnSubFailed2211204,
		["2211205"] = self.OnSubFailed2211205,
	}
end

function Quest22112:ShowBridge()
	print("ShowBridge")
	globalActor:EnterSceneLookCamera(Actors.NpcData.NewTransfrom.pos, 0, 2, true, true)
	local c_quest = actorMgr:GetActor("22112")

	c_quest:FinishQuestID(false, 2211204)

end

function Quest22112:PlayAudio()
	print("playaudio")
	local quest22112 = actorMgr:GetActor("22112")
		local EventNPC = quest22112:GetQuestNpcActor(Actors.NpcData.alias)
		EventNPC:PlayAudio("Play_sfx_quest_LYAQ_underConstruction")
end

function Quest22112:Start()
	print("Start")
end

function Quest22112:OnDestroy()
	print("OnDestroy")
end

function Quest22112:OnSubStart2211201(quest)
	print("OnSubStart2211201")
	self:CreateQuestNpc(quest, Actors.NpcData.id)
	self:NotifyTo("Npc2202", 1, true)
end

function Quest22112:OnSubFinish2211201(quest)
	print("OnSubFinish2211201")
end

function Quest22112:OnSubFailed2211201(quest)
	print("OnSubFailed2211201")
	self:NotifyTo("Npc2202", 0, true)
end

function Quest22112:OnSubStart2211202(quest)
	print("OnSubStart2211202")
end

function Quest22112:OnSubFinish2211202(quest)
	print("OnSubFinish2211202")
	self:NotifyTo("Npc2202", 1, true)
end

function Quest22112:OnSubFailed2211202(quest)
	print("OnSubFailed2211202")
	self:NotifyTo("Npc2202", 0, true)
end

function Quest22112:OnSubStart2211203(quest)
	print("OnSubStart2211203")
	self:NotifyTo("Npc2202", 1, true)
end

function Quest22112:OnSubFinish2211203(quest)
	print("OnSubFinish2211203")
end

function Quest22112:OnSubFailed2211203(quest)
	print("OnSubFailed2211203")
	self:NotifyTo("Npc2202", 0, true)
end

function Quest22112:OnSubStart2211204(quest)
	print("OnSubStart2211204")
	self:NotifyTo("Npc2202", 1, true)
	globalActor:ShowBlackScreen(0.5, 2, 1, self.PlayAudio, self.ShowBridge, nil, Actors.NpcData.BlackScreenText)
end

function Quest22112:OnSubFinish2211204(quest)
	print("OnSubFinish2211204")
end

function Quest22112:OnSubFailed2211204(quest)
	print("OnSubFailed2211204")
	self:NotifyTo("Npc2202", 0, true)
end

function Quest22112:OnSubStart2211205(quest)
	print("OnSubStart2211205")
	self:NotifyTo("Npc2202", 1, true)
end

function Quest22112:OnSubFinish2211205(quest)
	print("OnSubFinish2211205")
	local quest22112 = actorMgr:GetActor("22112")
		local EventNPC = quest22112:GetQuestNpcActor(Actors.NpcData.alias)
		self:ShowBlackScreen(0.5, 1, 0.5,
		function (self)
		  self:CallDelay(0.2,
				function (self)
					EventNPC:DestroyWithDither(false, 1)
				end
		  )
		end
	  )
	self:NotifyTo("Npc2202", 0, true)
end

function Quest22112:OnSubFailed2211205(quest)
	print("OnSubFailed2211205")
	self:NotifyTo("Npc2202", 0, false)
end

return Quest22112
