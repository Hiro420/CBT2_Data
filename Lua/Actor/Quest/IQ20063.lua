require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest20063 = class("Quest20063", questActorProxy)
Quest20063.defaultAlias = "Quest20063"

local q20063Cfg
local MainID
local ActorAlias
local SubIDs
local Actors
local Datas

function Quest20063:OnDataLoaded()
	q20063Cfg = self.clientData
	MainID = q20063Cfg.MainID
	ActorAlias = q20063Cfg.ActorAlias
	SubIDs = q20063Cfg.SubIDs
	Actors = q20063Cfg.Actors
	Datas = q20063Cfg.Datas
end


function Quest20063:OnSubStartHandlerBuild()
	self.subStartHandlers =
	{
		["2006301"] = self.OnSubStart2006301,
		["2006302"] = self.OnSubStart2006302,
		["2006303"] = self.OnSubStart2006303,
		["2006304"] = self.OnSubStart2006304,
		["2006305"] = self.OnSubStart2006305,
		["2006306"] = self.OnSubStart2006306,
		["2006307"] = self.OnSubStart2006307,
		["2006308"] = self.OnSubStart2006308,
		["2006309"] = self.OnSubStart2006309,
		["2006310"] = self.OnSubStart2006310,
	}
end

function Quest20063:OnSubFinishHandlerBuild()
	self.subFinishHandlers =
	{
		["2006301"] = self.OnSubFinish2006301,
		["2006302"] = self.OnSubFinish2006302,
		["2006303"] = self.OnSubFinish2006303,
		["2006304"] = self.OnSubFinish2006304,
		["2006305"] = self.OnSubFinish2006305,
		["2006306"] = self.OnSubFinish2006306,
		["2006307"] = self.OnSubFinish2006307,
		["2006308"] = self.OnSubFinish2006308,
		["2006309"] = self.OnSubFinish2006309,
		["2006310"] = self.OnSubFinish2006310,
	}
end

function Quest20063:OnSubFailedHandlerBuild()
	self.subFailedHandlers =
	{
		["2006301"] = self.OnSubFailed2006301,
		["2006302"] = self.OnSubFailed2006302,
		["2006303"] = self.OnSubFailed2006303,
		["2006304"] = self.OnSubFailed2006304,
		["2006305"] = self.OnSubFailed2006305,
		["2006306"] = self.OnSubFailed2006306,
		["2006307"] = self.OnSubFailed2006307,
		["2006308"] = self.OnSubFailed2006308,
		["2006309"] = self.OnSubFailed2006309,
		["2006310"] = self.OnSubFailed2006310,
	}
end

function Quest20063:ClearNPC(quest)
	print("ClearNPC")
	actorMgr:DestroyEntityActor(Actors.StanleyData.alias, 3, false)
	actorMgr:DestroyEntityActor(Actors.JackData.alias, 3, false)
	actorMgr:DestroyEntityActor(Actors.CyrusData.alias, 3, false)
	self:NotifyTo(Actors.StanleyDaily1Data.alias, 0, true)
	self:NotifyTo(Actors.StanleyDaily2Data.alias, 0, true)
	self:NotifyTo(Actors.CyrusDaily1Data.alias, 0, true)
	self:NotifyTo(Actors.CyrusDaily2Data.alias, 0, true)
	self:NotifyTo(Actors.JackDaily1Data.alias, 0, true)
	self:NotifyTo(Actors.JackDaily2Data.alias, 0, true)
end

function Quest20063:JackFreeStyle(quest)
	print("JackFreeStyle")
	local jackData = self:GetQuestNpcActor(Actors.JackData.alias)
	jackData:DoFreeStyle(1270)
end

function Quest20063:Start()
	print("Start")
end

function Quest20063:OnDestroy()
	print("OnDestroy")
end



function Quest20063:OnSubStart2006301(quest)
	print("OnSubStart2006301")
	self:CreateQuestNpc(quest, Actors.StanleyData.id, 1)
	local stanleyData = self:GetQuestNpcActor(Actors.StanleyData.alias)
	stanleyData:DoFreeStateTrigger()
	stanleyData:DoFreeStyle(1230)
	self:CreateQuestNpc(quest, Actors.CyrusData.id, 2)
	local cyrusData = self:GetQuestNpcActor(Actors.CyrusData.alias)
	cyrusData:DoFreeStateTrigger()
	cyrusData:DoFreeStyle(7030)
	self:CreateQuestNpc(quest, Actors.JackData.id, 3)
	local jackData = self:GetQuestNpcActor(Actors.JackData.alias)
	jackData:DoFreeStateTrigger()
	jackData:DoFreeStyle(1270)
	self:NotifyTo(Actors.StanleyDaily1Data.alias, 1, true)
	self:NotifyTo(Actors.StanleyDaily2Data.alias, 1, true)
	self:NotifyTo(Actors.CyrusDaily1Data.alias, 1, true)
	self:NotifyTo(Actors.CyrusDaily2Data.alias, 1, true)
	self:NotifyTo(Actors.JackDaily1Data.alias, 1, true)
	self:NotifyTo(Actors.JackDaily2Data.alias, 1, true)
	self:SetQuestVarWithInterval(quest.QuestConfigId, 0, 1, 3)
	--self:SetQuestVar(quest.QuestConfigId, 0, 3)
	self:GetQuestVar(quest.QuestConfigId, 0)
end

function Quest20063:OnSubFinish2006301(quest)
	print("OnSubFinish2006301")
	--self:ActionSafeCall(self.JackFreeStyle)
end

function Quest20063:OnSubFailed2006301(quest)
	print("OnSubFailed2006301")
end

function Quest20063:OnSubStart2006302(quest)
	print("OnSubStart2006302")
	self:NotifyTo(Actors.StanleyDaily1Data.alias, 1, true)
	self:NotifyTo(Actors.StanleyDaily2Data.alias, 1, true)
	self:NotifyTo(Actors.CyrusDaily1Data.alias, 1, true)
	self:NotifyTo(Actors.CyrusDaily2Data.alias, 1, true)
	self:NotifyTo(Actors.JackDaily1Data.alias, 1, true)
	self:NotifyTo(Actors.JackDaily2Data.alias, 1, true)
end

function Quest20063:OnSubFinish2006302(quest)
	print("OnSubFinish2006302")
	self:NarratorOnlyTask(Datas.FireSlimeReminder)
end

function Quest20063:OnSubFailed2006302(quest)
	print("OnSubFailed2006302")
end

function Quest20063:OnSubStart2006303(quest)
	print("OnSubStart2006303")
	self:NotifyTo(Actors.StanleyDaily1Data.alias, 1, true)
	self:NotifyTo(Actors.StanleyDaily2Data.alias, 1, true)
	self:NotifyTo(Actors.CyrusDaily1Data.alias, 1, true)
	self:NotifyTo(Actors.CyrusDaily2Data.alias, 1, true)
	self:NotifyTo(Actors.JackDaily1Data.alias, 1, true)
	self:NotifyTo(Actors.JackDaily2Data.alias, 1, true)
end

function Quest20063:OnSubFinish2006303(quest)
	print("OnSubFinish2006303")
	self:SetQuestVar(quest.QuestConfigId, 1, 1)
	self:NarratorOnlyTask(Datas.FireSlimeFinishReminder)
end

function Quest20063:OnSubFailed2006303(quest)
	print("OnSubFailed2006303")
end

function Quest20063:OnSubStart2006304(quest)
	print("OnSubStart2006304")
	self:NotifyTo(Actors.StanleyDaily1Data.alias, 1, true)
	self:NotifyTo(Actors.StanleyDaily2Data.alias, 1, true)
	self:NotifyTo(Actors.CyrusDaily1Data.alias, 1, true)
	self:NotifyTo(Actors.CyrusDaily2Data.alias, 1, true)
	self:NotifyTo(Actors.JackDaily1Data.alias, 1, true)
	self:NotifyTo(Actors.JackDaily2Data.alias, 1, true)
end

function Quest20063:OnSubFinish2006304(quest)
	print("OnSubFinish2006304")
	self:NarratorOnlyTask(Datas.ShieldHiliReminder)
end

function Quest20063:OnSubFailed2006304(quest)
	print("OnSubFailed2006304")
end

function Quest20063:OnSubStart2006305(quest)
	print("OnSubStart2006305")
	self:NotifyTo(Actors.StanleyDaily1Data.alias, 1, true)
	self:NotifyTo(Actors.StanleyDaily2Data.alias, 1, true)
	self:NotifyTo(Actors.CyrusDaily1Data.alias, 1, true)
	self:NotifyTo(Actors.CyrusDaily2Data.alias, 1, true)
	self:NotifyTo(Actors.JackDaily1Data.alias, 1, true)
	self:NotifyTo(Actors.JackDaily2Data.alias, 1, true)
end

function Quest20063:OnSubFinish2006305(quest)
	print("OnSubFinish2006305")
	self:SetQuestVar(quest.QuestConfigId, 1, 2)
	self:NarratorOnlyTask(Datas.ShieldHiliFinishReminder)
end

function Quest20063:OnSubFailed2006305(quest)
	print("OnSubFailed2006305")
end

function Quest20063:OnSubStart2006306(quest)
	print("OnSubStart2006306")
	self:NotifyTo(Actors.StanleyDaily1Data.alias, 1, true)
	self:NotifyTo(Actors.StanleyDaily2Data.alias, 1, true)
	self:NotifyTo(Actors.CyrusDaily1Data.alias, 1, true)
	self:NotifyTo(Actors.CyrusDaily2Data.alias, 1, true)
	self:NotifyTo(Actors.JackDaily1Data.alias, 1, true)
	self:NotifyTo(Actors.JackDaily2Data.alias, 1, true)
end

function Quest20063:OnSubFinish2006306(quest)
	print("OnSubFinish2006306")
	self:NarratorOnlyTask(Datas.IceSlimeReminder)
end

function Quest20063:OnSubFailed2006306(quest)
	print("OnSubFailed2006306")
end

function Quest20063:OnSubStart2006307(quest)
	print("OnSubStart2006307")
	self:NotifyTo(Actors.StanleyDaily1Data.alias, 1, true)
	self:NotifyTo(Actors.StanleyDaily2Data.alias, 1, true)
	self:NotifyTo(Actors.CyrusDaily1Data.alias, 1, true)
	self:NotifyTo(Actors.CyrusDaily2Data.alias, 1, true)
	self:NotifyTo(Actors.JackDaily1Data.alias, 1, true)
	self:NotifyTo(Actors.JackDaily2Data.alias, 1, true)
end

function Quest20063:OnSubFinish2006307(quest)
	print("OnSubFinish2006307")
	self:SetQuestVar(quest.QuestConfigId, 1, 1)
	self:NarratorOnlyTask(Datas.IceSlimeFinishReminder)
	local QuestVar = self:GetQuestVar(quest.QuestConfigId, 1)
		print("2006307全局变量为",QuestVar)
end

function Quest20063:OnSubFailed2006307(quest)
	print("OnSubFailed2006307")
end

function Quest20063:OnSubStart2006308(quest)
	print("OnSubStart2006308")
	self:NotifyTo(Actors.StanleyDaily1Data.alias, 1, true)
	self:NotifyTo(Actors.StanleyDaily2Data.alias, 1, true)
	self:NotifyTo(Actors.CyrusDaily1Data.alias, 1, true)
	self:NotifyTo(Actors.CyrusDaily2Data.alias, 1, true)
	self:NotifyTo(Actors.JackDaily1Data.alias, 1, true)
	self:NotifyTo(Actors.JackDaily2Data.alias, 1, true)
end

function Quest20063:OnSubFinish2006308(quest)
	print("OnSubFinish2006308")
	self:ShowBlackScreen(0.5, 1.5, 0.5,
		function()
			local stanleyData = self:GetQuestNpcActor(Actors.StanleyData.alias)
			stanleyData:Destroy(false)
			local cyrusData = self:GetQuestNpcActor(Actors.CyrusData.alias)
			cyrusData:Destroy(false)
			local jackData = self:GetQuestNpcActor(Actors.JackData.alias)
			jackData:Destroy(false)
			self:NotifyTo(Actors.StanleyDaily1Data.alias, 0, true)
			self:NotifyTo(Actors.StanleyDaily2Data.alias, 0, true)
			self:NotifyTo(Actors.CyrusDaily1Data.alias, 0, true)
			self:NotifyTo(Actors.CyrusDaily2Data.alias, 0, true)
			self:NotifyTo(Actors.JackDaily1Data.alias, 0, true)
			self:NotifyTo(Actors.JackDaily2Data.alias, 0, true)
		end
		)
end

function Quest20063:OnSubFailed2006308(quest)
	print("OnSubFailed2006308")
end

function Quest20063:OnSubStart2006309(quest)
	print("OnSubStart2006309")
	self:NotifyTo(Actors.StanleyDaily1Data.alias, 1, true)
	self:NotifyTo(Actors.StanleyDaily2Data.alias, 1, true)
	self:NotifyTo(Actors.CyrusDaily1Data.alias, 1, true)
	self:NotifyTo(Actors.CyrusDaily2Data.alias, 1, true)
	self:NotifyTo(Actors.JackDaily1Data.alias, 1, true)
	self:NotifyTo(Actors.JackDaily2Data.alias, 1, true)
end

function Quest20063:OnSubFinish2006309(quest)
	print("OnSubFinish2006309")
	--self:ActionSafeCall(
	--	function()
			--local quest20063 = actorMgr:GetActor("20063")
	--		local jackData = self:GetQuestNpcActor(Actors.JackData.alias)
	--		jackData:WalkToTask(Actors.JackData.leavepos,
	--				function(actor, task)
	--						actor:DestroyWithDither(false, 1)
	--				end
	--			)
	--		print("jack leave")
	--	end
	--)
	local jackData = self:GetQuestNpcActor(Actors.JackData.alias)
	jackData:WalkToTask(Actors.JackData.leavepos,
			function(actor, task)
					actor:DestroyWithDither(false, 1)
			end
		)
end

function Quest20063:OnSubFailed2006309(quest)
	print("OnSubFailed2006309")
end

function Quest20063:OnSubStart2006310(quest)
	print("OnSubStart2006310")
	self:NotifyTo(Actors.StanleyDaily1Data.alias, 1, true)
	self:NotifyTo(Actors.StanleyDaily2Data.alias, 1, true)
	self:NotifyTo(Actors.CyrusDaily1Data.alias, 1, true)
	self:NotifyTo(Actors.CyrusDaily2Data.alias, 1, true)
	self:NotifyTo(Actors.JackDaily1Data.alias, 1, true)
	self:NotifyTo(Actors.JackDaily2Data.alias, 1, true)
	--local cyrusData = self:GetQuestNpcActor(Actors.CyrusData.alias)
	self:RequestInteractionForceAlias("Npc14090120063")
end

function Quest20063:OnSubFinish2006310(quest)
	print("OnSubFinish2006310")
	self:ShowBlackScreen(0.5, 1.5, 0.5,
		function()
			local stanleyData = self:GetQuestNpcActor(Actors.StanleyData.alias)
			stanleyData:Destroy(false)
			local cyrusData = self:GetQuestNpcActor(Actors.CyrusData.alias)
			cyrusData:Destroy(false)
			local jackData = self:GetQuestNpcActor(Actors.JackData.alias)
			jackData:Destroy(false)
			self:NotifyTo(Actors.StanleyDaily1Data.alias, 0, true)
			self:NotifyTo(Actors.StanleyDaily2Data.alias, 0, true)
			self:NotifyTo(Actors.CyrusDaily1Data.alias, 0, true)
			self:NotifyTo(Actors.CyrusDaily2Data.alias, 0, true)
			self:NotifyTo(Actors.JackDaily1Data.alias, 0, true)
			self:NotifyTo(Actors.JackDaily2Data.alias, 0, true)
		end
		)
end

function Quest20063:OnSubFailed2006310(quest)
	print("OnSubFailed2006310")
end

return Quest20063
