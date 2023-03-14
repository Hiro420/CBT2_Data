require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest22003 = class("Quest22003", questActorProxy)
Quest22003.defaultAlias = "Quest22003"

local q22003Cfg
local MainID
local ActorAlias
local SubIDs
local Actors
local Datas

function Quest22003:OnDataLoaded()
	q22003Cfg = self.clientData
	MainID = q22003Cfg.MainID
	ActorAlias = q22003Cfg.ActorAlias
	SubIDs = q22003Cfg.SubIDs
	Actors = q22003Cfg.Actors
	Datas = q22003Cfg.Datas
end

function Quest22003:OnSubStartHandlerBuild()
	self.subStartHandlers =
	{
		["2200301"] = self.OnSubStart2200301,
		["2200302"] = self.OnSubStart2200302,
		["2200303"] = self.OnSubStart2200303,
		["2200304"] = self.OnSubStart2200304,
		["2200305"] = self.OnSubStart2200305,
	}
end

function Quest22003:OnSubFinishHandlerBuild()
	self.subFinishHandlers =
	{
		["2200301"] = self.OnSubFinish2200301,
		["2200302"] = self.OnSubFinish2200302,
		["2200303"] = self.OnSubFinish2200303,
		["2200304"] = self.OnSubFinish2200304,
		["2200305"] = self.OnSubFinish2200305,
	}
end

function Quest22003:OnSubFailedHandlerBuild()
	self.subFailedHandlers =
	{
		["2200301"] = self.OnSubFailed2200301,
		["2200302"] = self.OnSubFailed2200302,
		["2200303"] = self.OnSubFailed2200303,
		["2200304"] = self.OnSubFailed2200304,
		["2200305"] = self.OnSubFailed2200305,
	}
end

function Quest22003:Start()
	print("Start")
end

function Quest22003:OnDestroy()
	print("OnDestroy")
end


function Quest22003:OnSubStart2200301(quest)
	print("OnSubStart2200301")
	self:NotifyTo(Actors.YanXiaoDailyData.alias, 1, true)
	self:NotifyTo(Actors.JiangXueDailyData.alias, 1, true)
	self:CreateQuestNpc(quest, Actors.YanXiaoData.id, 1)
	self:CreateQuestNpc(quest, Actors.JiangXueData.id, 2)
	local yanXiaoData = self:GetQuestNpcActor(Actors.YanXiaoData.alias)
	yanXiaoData:Standby()
	local jiangXueData = self:GetQuestNpcActor(Actors.JiangXueData.alias)
	jiangXueData:Standby()
	jiangXueData:DoFreeStyle(4220)
end

function Quest22003:OnSubFinish2200301(quest)
	print("OnSubFinish2200301")
end

function Quest22003:OnSubFailed2200301(quest)
	print("OnSubFailed2200301")
end

function Quest22003:OnSubStart2200302(quest)
	print("OnSubStart2200302")
	self:NotifyTo(Actors.YanXiaoDailyData.alias, 1, true)
	self:NotifyTo(Actors.JiangXueDailyData.alias, 1, true)
end

function Quest22003:OnSubFinish2200302(quest)
	print("OnSubFinish2200302")
end

function Quest22003:OnSubFailed2200302(quest)
	print("OnSubFailed2200302")
end

function Quest22003:OnSubStart2200303(quest)
	print("OnSubStart2200303")
	self:RequestInteraction(Actors.YanXiaoData.alias)
	self:NotifyTo(Actors.YanXiaoDailyData.alias, 1, true)
	self:NotifyTo(Actors.JiangXueDailyData.alias, 1, true)
end

function Quest22003:OnSubFinish2200303(quest)
	print("OnSubFinish2200303")
end

function Quest22003:OnSubFailed2200303(quest)
	print("OnSubFailed2200303")
end

function Quest22003:OnSubStart2200304(quest)
	print("OnSubStart2200304")
	self:NotifyTo(Actors.YanXiaoDailyData.alias, 1, true)
	self:NotifyTo(Actors.JiangXueDailyData.alias, 1, true)
end

function Quest22003:OnSubFinish2200304(quest)
	print("OnSubFinish2200304")
end

function Quest22003:OnSubFailed2200304(quest)
	print("OnSubFailed2200304")
end

function Quest22003:OnSubStart2200305(quest)
	print("OnSubStart2200305")
	self:NotifyTo(Actors.YanXiaoDailyData.alias, 1, true)
	self:NotifyTo(Actors.JiangXueDailyData.alias, 1, true)
end

function Quest22003:OnSubFinish2200305(quest)
	print("OnSubFinish2200305")
	self:ShowBlackScreen(0.5, 1.5, 0.5,
		function()
			local yanXiaoData = self:GetQuestNpcActor(Actors.YanXiaoData.alias)
			yanXiaoData:Destroy(false)
			local jiangXueData = self:GetQuestNpcActor(Actors.JiangXueData.alias)
			jiangXueData:Destroy(false)
			self:NotifyTo(Actors.YanXiaoDailyData.alias, 0, true)
			self:NotifyTo(Actors.JiangXueDailyData.alias, 0, true)
			print("DestroyNPC")
		end
		)
end

function Quest22003:OnSubFailed2200305(quest)
	print("OnSubFailed2200305")
	self:NotifyTo(Actors.YanXiaoDailyData.alias, 0, true)
	self:NotifyTo(Actors.JiangXueDailyData.alias, 0, true)
end

return Quest22003
