require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')
local Quest22113 = class("Quest22113", questActorProxy)
Quest22113.defaultAlias = "Quest22113"

local q22113Cfg
local MainID
local ActorAlias
local SubIDs
local Actors
local Datas

function Quest22113:OnDataLoaded()
	q22113Cfg = self.clientData
	SubIDs = q22113Cfg.SubIDs
	MainID =  22113
	Actors = q22113Cfg.Actors

end



function Quest22113:OnSubStartHandlerBuild()
	self.subStartHandlers = 
	{
		["2211301"] = self.OnSubStart2211301,
		["2211302"] = self.OnSubStart2211302,
		["2211303"] = self.OnSubStart2211303,
		["2211304"] = self.OnSubStart2211304,
		["2211305"] = self.OnSubStart2211305,
	}
end

function Quest22113:OnSubFinishHandlerBuild()
	self.subFinishHandlers = 
	{
		["2211301"] = self.OnSubFinish2211301,
		["2211302"] = self.OnSubFinish2211302,
		["2211303"] = self.OnSubFinish2211303,
		["2211304"] = self.OnSubFinish2211304,
		["2211305"] = self.OnSubFinish2211305,
	}
end

function Quest22113:OnSubFailedHandlerBuild()
	self.subFailedHandlers = 
	{
		["2211301"] = self.OnSubFailed2211301,
		["2211302"] = self.OnSubFailed2211302,
		["2211303"] = self.OnSubFailed2211303,
		["2211304"] = self.OnSubFailed2211304,
		["2211305"] = self.OnSubFailed2211305,
	}
end

function Quest22113:ShowBridge()
	print("ShowBridge")
	globalActor:EnterSceneLookCamera(Actors.NpcData.NewTransfrom.pos, 0, 2, true, true)
	local c_quest = actorMgr:GetActor("22113")

	c_quest:FinishQuestID(false, 2211304)

end


function Quest22113:PlayAudio()
	print("playaudio")
	local quest22113 = actorMgr:GetActor("22113")
		local EventNPC = quest22113:GetQuestNpcActor(Actors.NpcData.alias)
		EventNPC:PlayAudio("Play_sfx_quest_LYAQ_underConstruction")
end

function Quest22113:Start()
	print("Start")
end

function Quest22113:OnDestroy()
	print("OnDestroy")
end

function Quest22113:OnSubStart2211301(quest)
	print("OnSubStart2211301")
	self:CreateQuestNpc(quest, Actors.NpcData.id)
	self:NotifyTo("Npc2202", 1, true)
end

function Quest22113:OnSubFinish2211301(quest)
	print("OnSubFinish2211301")
end

function Quest22113:OnSubFailed2211301(quest)
	print("OnSubFailed2211301")
	self:NotifyTo("Npc2202", 0, true)
end

function Quest22113:OnSubStart2211302(quest)
	print("OnSubStart2211302")
end

function Quest22113:OnSubFinish2211302(quest)
	print("OnSubFinish2211302")
	self:NotifyTo("Npc2202", 1, true)
end

function Quest22113:OnSubFailed2211302(quest)
	print("OnSubFailed2211302")
	self:NotifyTo("Npc2202", 0, true)
end

function Quest22113:OnSubStart2211303(quest)
	print("OnSubStart2211303")
	self:NotifyTo("Npc2202", 1, true)
end

function Quest22113:OnSubFinish2211303(quest)
	print("OnSubFinish2211303")
end

function Quest22113:OnSubFailed2211303(quest)
	print("OnSubFailed2211303")
	self:NotifyTo("Npc2202", 0, true)
end

function Quest22113:OnSubStart2211304(quest)
	print("OnSubStart2211304")
	self:NotifyTo("Npc2202", 1, true)
	globalActor:ShowBlackScreen(0.5, 2, 1, self.playAudio, self.ShowBridge, nil, Actors.NpcData.BlackScreenText)
end

function Quest22113:OnSubFinish2211304(quest)
	print("OnSubFinish2211304")
end

function Quest22113:OnSubFailed2211304(quest)
	print("OnSubFailed2211304")
	self:NotifyTo("Npc2202", 0, true)
end

function Quest22113:OnSubStart2211305(quest)
	print("OnSubStart2211305")
	self:NotifyTo("Npc2202", 1, true)
end

function Quest22113:OnSubFinish2211305(quest)
	print("OnSubFinish2211305")
	local quest22113 = actorMgr:GetActor("22113")
	local EventNPC = quest22113:GetQuestNpcActor(Actors.NpcData.alias)
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

function Quest22113:OnSubFailed2211305(quest)
	print("OnSubFailed2211305")
	self:NotifyTo("Npc2202", 0, false)
end

return Quest22113
