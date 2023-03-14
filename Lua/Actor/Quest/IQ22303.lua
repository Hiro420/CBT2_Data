require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest22303 = class("Quest22303", questActorProxy)
Quest22303.defaultAlias = "Quest22303"

--local q22303Cfg = require('Quest/Client/Q22303ClientConfig')
local q22303Cfg
local MainID 
local ActorAlias
local SubIDs
local Actors 
local Datas

function Quest22303:OnDataLoaded()
	q22303Cfg = self.clientData
	MainID = q22303Cfg.MainID
	ActorAlias = q22303Cfg.ActorAlias
	SubIDs = q22303Cfg.SubIDs
	Actors = q22303Cfg.Actors
	Datas = q22303Cfg.Datase
end


function Quest22303:OnSubStartHandlerBuild()
	self.subStartHandlers = 
	{
		["2230301"] = self.OnSubStart2230301,
		["2230302"] = self.OnSubStart2230302,
		["2230303"] = self.OnSubStart2230303,
	}
end

function Quest22303:OnSubFinishHandlerBuild()
	self.subFinishHandlers = 
	{
		["2230301"] = self.OnSubFinish2230301,
		["2230302"] = self.OnSubFinish2230302,
		["2230303"] = self.OnSubFinish2230303,
	}
end

function Quest22303:OnSubFailedHandlerBuild()
	self.subFailedHandlers = 
	{
		["2230301"] = self.OnSubFailed2230301,
		["2230302"] = self.OnSubFailed2230302,
		["2230303"] = self.OnSubFailed2230303,
	}
end

function Quest22303:Start()
	print("Start")
end

function Quest22303:OnDestroy()
	print("OnDestroy")
end

function Quest22303:OnSubStart2230301(quest)
	self:SetQuestVar(quest.QuestConfigId, 0, 0)
	print("OnSubStart2230301")
	self:NotifyTo("Npc2040", DailyNpcManager.NpcEventType.BANDAILY, true)
end

function Quest22303:OnSubFinish2230301(quest)
	self:SetQuestVar(quest.QuestConfigId, 0, 1)
	print("OnSubFinish2230301")
end

function Quest22303:OnSubFailed2230301(quest)
	print("OnSubFailed2230301")
end

function Quest22303:OnSubStart2230302(quest)
	self:SetQuestVar(quest.QuestConfigId, 0, 2)
	print("OnSubStart2230302")
	self:NotifyTo("Npc2040", DailyNpcManager.NpcEventType.BANDAILY, true)
end

function Quest22303:OnSubFinish2230302(quest)

	print("OnSubFinish2230302")
end

function Quest22303:OnSubFailed2230302(quest)
	print("OnSubFailed2230302")
end

function Quest22303:OnSubStart2230303(quest)
	if self:GetQuestVar(quest.QuestconfigId,0) < 3 then
		self:RequestInteractionForceAlias("Npc2040")
	end
	self:SetQuestVar(quest.QuestConfigId, 0, 3)
	print("OnSubStart2230303")
	self:NotifyTo("Npc2040", DailyNpcManager.NpcEventType.BANDAILY, true)
end

function Quest22303:OnSubFinish2230303(quest)
	print("OnSubFinish2230303")
end

function Quest22303:OnSubFailed2230303(quest)
	print("OnSubFailed2230303")
end

function Quest22303:OnMainFinished(quest)
	print("main finished " .. tostring(quest.QuestMainId))
	self:NotifyTo("Npc2040", NpcUtil.NpcEventType.STARTDAILY, true) 
end

function Quest22303:OnMainFailed(quest)
	print("main failed " .. tostring(quest.QuestMainId))
	self:NotifyTo("Npc2040", NpcUtil.NpcEventType.STARTDAILY, true)   
end

function Quest22303:OnMainCanceled(quest)
	print("main canceled " .. tostring(quest.QuestMainId))
	self:NotifyTo("Npc2040", NpcUtil.NpcEventType.STARTDAILY, true) 
end


return Quest22303
