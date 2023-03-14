require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest22001 = class("Quest22001", questActorProxy)
Quest22001.defaultAlias = "Quest22001"

local q22001Cfg
local MainID
local SubIDs
local ActorAlias
local Actors
local Datas


function Quest22001:OnDataLoaded(  )
	q22001Cfg = self.clientData
	MainID = q22001Cfg.MainID
	SubIDs = q22001Cfg.SubIDs
	ActorAlias = q22001Cfg.ActorAlias
	Actors = q22001Cfg.Actors
	Datas = q22001Cfg.Datas
end


function Quest22001:OnSubStartHandlerBuild()
	self.subStartHandlers = 
	{
		["2200101"] = self.OnSubStart2200101,
		["2200102"] = self.OnSubStart2200102,
		["2200103"] = self.OnSubStart2200103,
		["2200106"] = self.OnSubStart2200106,
		["2200104"] = self.OnSubStart2200104,
		["2200105"] = self.OnSubStart2200105,
	}
end

function Quest22001:OnSubFinishHandlerBuild()
	self.subFinishHandlers = 
	{
		["2200101"] = self.OnSubFinish2200101,
		["2200102"] = self.OnSubFinish2200102,
		["2200103"] = self.OnSubFinish2200103,
		["2200106"] = self.OnSubFinish2200106,
		["2200104"] = self.OnSubFinish2200104,
		["2200105"] = self.OnSubFinish2200105,
	}
end

function Quest22001:OnSubFailedHandlerBuild()
	self.subFailedHandlers = 
	{
		["2200101"] = self.OnSubFailed2200101,
		["2200102"] = self.OnSubFailed2200102,
		["2200103"] = self.OnSubFailed2200103,
		["2200106"] = self.OnSubFailed2200106,
		["2200104"] = self.OnSubFailed2200104,
		["2200105"] = self.OnSubFailed2200105,
	}
end

function Quest22001:RewindNPC(quest)
	local QuestVar = self:GetQuestVar(quest.QuestConfigId, 1)
	if QuestVar == 1 then
		local FeiActor = self:GetQuestNpcActorNoDummy(Actors.Fei.alias)
		if FeiActor == nil then
			self:CreateQuestNpc(quest, Actors.Fei.id, 1)
		end
		local MengActor = self:GetQuestNpcActorNoDummy(Actors.Meng.alias)
		if MengActor == nil then
			self:CreateQuestNpc(quest, Actors.Meng.id, 2)
		end
		local LuluActor = self:GetQuestNpcActorNoDummy(Actors.Lulu.alias)
		if LuluActor == nil then
			self:CreateQuestNpc(quest, Actors.Lulu.id, 3)
		end
	elseif QuestVar == 2 then
		local FeiActor = self:GetQuestNpcActorNoDummy(Actors.Fei.alias)
		if FeiActor == nil then
			self:CreateQuestNpc(quest, Actors.Fei.id, 4)
		end
		local MengActor = self:GetQuestNpcActorNoDummy(Actors.Meng.alias)
		if MengActor == nil then
			self:CreateQuestNpc(quest, Actors.Meng.id, 5)
		end
		local LuluActor = self:GetQuestNpcActorNoDummy(Actors.Lulu.alias)
		if LuluActor == nil then
			self:CreateQuestNpc(quest, Actors.Lulu.id, 6)
		end
	elseif QuestVar == 3 then
		local FeiActor = self:GetQuestNpcActorNoDummy(Actors.Fei.alias)
		if FeiActor == nil then
			self:CreateQuestNpc(quest, Actors.Fei.id, 7)
		end
		local MengActor = self:GetQuestNpcActorNoDummy(Actors.Meng.alias)
		if MengActor == nil then
			self:CreateQuestNpc(quest, Actors.Meng.id, 8)
		end
		local LuluActor = self:GetQuestNpcActorNoDummy(Actors.Lulu.alias)
		if LuluActor == nil then
			self:CreateQuestNpc(quest, Actors.Lulu.id, 9)
		end
	end
end

function Quest22001:Blackscreen()
	print("Blackscreen")
	self:ShowBlackScreen(0.5, 1, 0.5, self.Cleardata)
end

function Quest22001:Cleardata()
	print("Cleardata")
	self:NotifyTo("Npc2074", 0, true)
	self:NotifyTo("Npc2030", 0, true)
	self:NotifyTo("Npc2031", 0, true)
	self:DestroyQuestNpcActor(Actors.Lulu.alias, 3)
	self:DestroyQuestNpcActor(Actors.Meng.alias, 3)
	self:DestroyQuestNpcActor(Actors.Fei.alias, 3)
end

function Quest22001:FailQuest22001()
	print("FailQuest2200103")
	local quest = actorMgr:GetActor(q22001Cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuestID(true, 2200103)
		quest:NarratorOnlyTask(Datas.NarratorTable2)
	end
end

function Quest22001:PauseReminder22001()
	print("PauseReminder2200103")
	local quest = actorMgr:GetActor(q22001Cfg.ActorAlias)
	quest:NarratorOnlyTask(Datas.NarratorTable3)
end

function Quest22001:FinishQuest22001()
	print("FinishQuest2200103")
	local quest = actorMgr:GetActor(q22001Cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuestID(false, 2200103)
	end
end

function Quest22001:Start()
	print("Start")
end

function Quest22001:OnDestroy()
	print("OnDestroy")
end

function Quest22001:OnSubStart2200101(quest)
	print("OnSubStart2200101")
	self:CreateQuestNpc(quest, Actors.Fei.id, 1)
	self:CreateQuestNpc(quest, Actors.Meng.id, 2)
	self:CreateQuestNpc(quest, Actors.Lulu.id, 3)
	self:NotifyTo("Npc2074", 1, true)
	self:NotifyTo("Npc2030", 1, true)
	self:NotifyTo("Npc2031", 1, true)
end

function Quest22001:OnSubFinish2200101(quest)
	print("OnSubFinish2200101")
end

function Quest22001:OnSubFailed2200101(quest)
	print("OnSubFailed2200101")
	self:NotifyTo("Npc2074", 0, true)
	self:NotifyTo("Npc2030", 0, true)
	self:NotifyTo("Npc2031", 0, true)
end


function Quest22001:OnSubStart2200102(quest)
	self:SetQuestVarWithInterval(quest.QuestConfigId, 1, 1, 3)
	--self:SetQuestVar(quest.QuestConfigId, 1, 1)
	print("OnSubStart2200102")
	local QuestVar = self:GetQuestVar(quest.QuestConfigId, 1)
	local task = self:CreateQuestNpcCreateTask({Actors.Fei.alias,Actors.Meng.alias,Actors.Lulu.alias})

	if QuestVar == 1 then
		self:TransmitPlayer(3, sceneData:GetDummyPoint(3,"Q22001AvatarSpawn").pos, sceneData:GetDummyPoint(3,"Q22001AvatarSpawn").rot, nil, 
			function (self)
				self:CreateQuestNpc(quest, Actors.Fei.id, 1)
				self:CreateQuestNpc(quest, Actors.Meng.id, 2)
				self:CreateQuestNpc(quest, Actors.Lulu.id, 3)
				self:RequestInteraction(Actors.Fei.alias)
			end, task
			)
	elseif QuestVar == 2 then
		self:TransmitPlayer(3, sceneData:GetDummyPoint(3,"Q22001AvatarSpawn2").pos, sceneData:GetDummyPoint(3,"Q22001AvatarSpawn2").rot, nil, 
			function (self)
				self:CreateQuestNpc(quest, Actors.Fei.id, 4)
				self:CreateQuestNpc(quest, Actors.Meng.id, 5)
				self:CreateQuestNpc(quest, Actors.Lulu.id, 6)
				self:RequestInteraction(Actors.Fei.alias)
			end, task
			)
	elseif QuestVar == 3 then
		self:TransmitPlayer(3, sceneData:GetDummyPoint(3,"Q22001AvatarSpawn3").pos, sceneData:GetDummyPoint(3,"Q22001AvatarSpawn3").rot, nil, 
			function (self)
				self:CreateQuestNpc(quest, Actors.Fei.id, 7)
				self:CreateQuestNpc(quest, Actors.Meng.id, 8)
				self:CreateQuestNpc(quest, Actors.Lulu.id, 9)
				self:RequestInteraction(Actors.Fei.alias)
			end, task
			)
	end
	self:NotifyTo("Npc2074", 1, true)
	self:NotifyTo("Npc2030", 1, true)
	self:NotifyTo("Npc2031", 1, true)
end

function Quest22001:OnSubFinish2200102(quest)
	print("OnSubFinish2200102")
end

function Quest22001:OnSubFailed2200102(quest)
	print("OnSubFailed2200102")
	self:NotifyTo("Npc2074", 0, true)
	self:NotifyTo("Npc2030", 0, true)
	self:NotifyTo("Npc2031", 0, true)
end

function Quest22001:OnSubStart2200103(quest)
	self:NotifyTo("Npc2074", 1, true)
	self:NotifyTo("Npc2030", 1, true)
	self:NotifyTo("Npc2031", 1, true)
	self:NarratorOnlyTask(Datas.NarratorTable1)
	print("OnSubStart2200103")
	local QuestVar = self:GetQuestVar(quest.QuestConfigId, 1)
	self:RewindNPC(quest)
	local fei = self:GetQuestNpcActor(Actors.Fei.alias)
	if QuestVar == 1 then
		fei:BeFollowTaskByRoutePoints(Datas.RoutePointsData1, Datas.beFollowLen, Datas.beFollowFailed,
		function(self, task)
			print("AFinishQuest2200103")
			if self.BeFollowState == BeFollowState.SUCCESS then	
				local quest = actorMgr:GetActor(q22001Cfg.ActorAlias)
				if quest ~= nil then
					quest:FinishQuestID(false, 2200103)
				end
			end
		end,
		nil,nil,
		function(self, task)
			print("APauseReminder2200103")
			local quest = actorMgr:GetActor(q22001Cfg.ActorAlias)
			quest:NarratorOnlyTask(Datas.NarratorTable2)
			fei:Standby()
		end, 
		nil,	
		function(self, task)
			print("AFailQuest2200103")
			local quest = actorMgr:GetActor(q22001Cfg.ActorAlias)
			if quest ~= nil  then
				
				quest:NarratorOnlyTask(Datas.NarratorTable2)

				self:CallDelay(2,
				function(  )
					local quest = actorMgr:GetActor(q22001Cfg.ActorAlias)
					quest:FinishQuestID(true, 2200103)
				end
				)
				
			end
		end
		)
	elseif QuestVar == 2 then
		fei:BeFollowTaskByRoutePoints(Datas.RoutePointsData2, Datas.beFollowLen, Datas.beFollowFailed,
		function(self, task)
			print("AFinishQuest2200103")
			if self.BeFollowState == BeFollowState.SUCCESS then	
				local quest = actorMgr:GetActor(q22001Cfg.ActorAlias)
				if quest ~= nil then
					quest:FinishQuestID(false, 2200103)
				end
			end
		end,
		nil,nil,
		function(self, task)
			print("APauseReminder2200103")
			local quest = actorMgr:GetActor(q22001Cfg.ActorAlias)
			quest:NarratorOnlyTask(Datas.NarratorTable2)
			fei:Standby()
		end, 
		nil,	
		function(self, task)
			print("AFailQuest2200103")
			local quest = actorMgr:GetActor(q22001Cfg.ActorAlias)
			if quest ~= nil  then
				
				quest:NarratorOnlyTask(Datas.NarratorTable2)

				self:CallDelay(2,
				function(  )
					local quest = actorMgr:GetActor(q22001Cfg.ActorAlias)
					quest:FinishQuestID(true, 2200103)
				end
				)
				
			end
		end
		)
	elseif QuestVar == 3 then
		fei:BeFollowTaskByRoutePoints(Datas.RoutePointsData3, Datas.beFollowLen, Datas.beFollowFailed,
		function(self, task)
			print("AFinishQuest2200103")
			if self.BeFollowState == BeFollowState.SUCCESS then	
				local quest = actorMgr:GetActor(q22001Cfg.ActorAlias)
				if quest ~= nil then
					quest:FinishQuestID(false, 2200103)
				end
			end
		end,
		nil,nil,
		function(self, task)
			print("APauseReminder2200103")
			local quest = actorMgr:GetActor(q22001Cfg.ActorAlias)
			quest:NarratorOnlyTask(Datas.NarratorTable2)
			fei:Standby()
		end, 
		nil,	
		function(self, task)
			print("AFailQuest2200103")
			local quest = actorMgr:GetActor(q22001Cfg.ActorAlias)
			if quest ~= nil  then
				
				quest:NarratorOnlyTask(Datas.NarratorTable2)

				self:CallDelay(2,
				function(  )
					local quest = actorMgr:GetActor(q22001Cfg.ActorAlias)
					quest:FinishQuestID(true, 2200103)
				end
				)
				
			end
		end
		)
	end
end

function Quest22001:OnSubFinish2200103(quest)
	print("OnSubFinish2200103")
end

function Quest22001:OnSubFailed2200103(quest)
	print("OnSubFailed2200103")
	self:NotifyTo("Npc2074", 0, true)
	self:NotifyTo("Npc2030", 0, true)
	self:NotifyTo("Npc2031", 0, true)
	self:DestroyQuestNpcActor(Actors.Meng.alias, 3)
	self:DestroyQuestNpcActor(Actors.Fei.alias, 3)
	self:DestroyQuestNpcActor(Actors.Lulu.alias, 3)
end

function Quest22001:OnSubStart2200106(quest)
	print("OnSubStart2200106")
	self:RewindNPC(quest)
	self:RequestInteraction(Actors.Meng.alias)
	self:NotifyTo("Npc2074", 1, true)
	self:NotifyTo("Npc2030", 1, true)
	self:NotifyTo("Npc2031", 1, true)
end

function Quest22001:OnSubFinish2200106(quest)
	print("OnSubFinish2200106")
end

function Quest22001:OnSubFailed2200106(quest)
	print("OnSubFailed2200106")
end

function Quest22001:OnSubStart2200104(quest)
	print("OnSubStart2200104")
	self:RewindNPC(quest)
	self:NotifyTo("Npc2074", 1, true)
	self:NotifyTo("Npc2030", 1, true)
	self:NotifyTo("Npc2031", 1, true)
end

function Quest22001:OnSubFinish2200104(quest)
	print("OnSubFinish2200104")
	self:NarratorOnlyTask(Datas.NarratorTable3)
	local PaimonData = self.clientData.PaimonData
	local paimonPos = actorUtils.GetAvatarPos()
	local playerVector = actorUtils.GetAvatarForward()
	local distance = 1.5
	paimonPos.x = paimonPos.x + playerVector.x * distance
	paimonPos.z = paimonPos.z + playerVector.z * distance

	local paimonVector = playerVector
	paimonVector.x = paimonVector.x * -1
	paimonVector.z = paimonVector.z * -1
	self:CreateQuestNpcByIdWithPos(2200104, Actors.Paimon.id, 10, paimonPos, M.Dir2Euler(paimonVector))
	self:CallDelay(3, function()
			local paimon = self:GetQuestNpcActor(q22001Cfg.Actors.Paimon.alias)
			if paimon ~= nil then
				paimon:DestroyWithDisappear(false)
		 	end
		end
	)
end

function Quest22001:OnSubFailed2200104(quest)
	print("OnSubFailed2200104")
	self:NotifyTo("Npc2074", 0, true)
	self:NotifyTo("Npc2030", 0, true)
	self:NotifyTo("Npc2031", 0, true)
end

function Quest22001:OnSubStart2200105(quest)
	print("OnSubStart2200105")
	self:RewindNPC(quest)
	self:NotifyTo("Npc2074", 1, true)
	self:NotifyTo("Npc2030", 1, true)
	self:NotifyTo("Npc2031", 1, true)
end

function Quest22001:OnSubFinish2200105(quest)
	print("OnSubFinish2200105")
	self:CallDelay(2, self.Blackscreen)
end

function Quest22001:OnSubFailed2200105(quest)
	print("OnSubFailed2200105")
	self:NotifyTo("Npc2074", 0, true)
	self:NotifyTo("Npc2030", 0, true)
	self:NotifyTo("Npc2031", 0, true)
end

return Quest22001
