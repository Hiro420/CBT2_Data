require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest22004 = class("Quest22004", questActorProxy)
Quest22004.defaultAlias = "Quest22004"

local q22004Cfg
local MainID
local ActorAlias
local SubIDs
local Actors
local Datas

function Quest22004:OnDataLoaded()
	q22004Cfg = self.clientData
	MainID = q22004Cfg.MainID
	ActorAlias = q22004Cfg.ActorAlias
	SubIDs = q22004Cfg.SubIDs
	Actors = q22004Cfg.Actors
	Datas = q22004Cfg.Datas
end

function Quest22004:OnSubStartHandlerBuild()
	self.subStartHandlers =
	{
		["2200401"] = self.OnSubStart2200401,
		["2200402"] = self.OnSubStart2200402,
		["2200403"] = self.OnSubStart2200403,
		["2200404"] = self.OnSubStart2200404,
		["2200405"] = self.OnSubStart2200405,
	}
end

function Quest22004:OnSubFinishHandlerBuild()
	self.subFinishHandlers =
	{
		["2200401"] = self.OnSubFinish2200401,
		["2200402"] = self.OnSubFinish2200402,
		["2200403"] = self.OnSubFinish2200403,
		["2200404"] = self.OnSubFinish2200404,
		["2200405"] = self.OnSubFinish2200405,
	}
end

function Quest22004:OnSubFailedHandlerBuild()
	self.subFailedHandlers =
	{
		["2200401"] = self.OnSubFailed2200401,
		["2200402"] = self.OnSubFailed2200402,
		["2200403"] = self.OnSubFailed2200403,
		["2200404"] = self.OnSubFailed2200404,
		["2200405"] = self.OnSubFailed2200405,
	}
end

function Quest22004:BlackScreen(quest)
	print("BlackScreen")
	self:ShowBlackScreen(0.5, 1.5, 0.5, self.Finishquest04, nil, nil, "")
end

function Quest22004:Finishquest04(quest)
	print("Finishquest04")
	self:FinishQuestID(false, 2200404)
end

function Quest22004:ShowNarrator04(quest)
	print("ShowNarrator04")
	self:NarratorOnlyTask(Datas.PaimonReminder, self.BlackScreen)
end

function Quest22004:ShowNarrator02(quest)
	print("ShowNarrator02")
	self:NarratorOnlyTask(Datas.JiangXueReminder01)
end

function Quest22004:ShowNarrator03(quest)
	print("ShowNarrator03")
	self:NarratorOnlyTask(Datas.JiangXueReminder02)
end

function Quest22004:TurnCamera(quest)
	print("TurnCamera")
	self:EnterSceneLookCamera(Datas.CameraFocus, 1.5, 2, true, true)
	local paimonData = self:GetQuestNPCActor(Actors.PaimonData.alias)
	paimonData:DestroyWithDisappear(false)
end

function Quest22004:ForceInteract(quest)
	print("ForceInteract")
	self:RequestInteraction(Actors.JiangXueData.alias)
end

function Quest22004:Start()
	print("Start")
end

function Quest22004:OnDestroy()
	print("OnDestroy")
end

function Quest22004:InvokeOnInteraction(param)
	if param == 1 then
		local paimonPos = actorUtils.GetAvatarPos()
		local playerVector = actorUtils.GetAvatarForward()
		local paimonVector = playerVector
		paimonVector.x = Actors.JiangXueData.pos.x - paimonPos.x
		paimonVector.z = Actors.JiangXueData.pos.z - paimonPos.z
		local paimonVectorlength = (paimonVector.x^2+paimonVector.y^2+paimonVector.z^2)^0.5
		paimonVector.x = paimonVector.x/paimonVectorlength
		paimonVector.z = paimonVector.z/paimonVectorlength
		local paimonVectorx = paimonVector.x
		paimonVector.x = paimonVector.z * -1
		paimonVector.z = paimonVectorx
		paimonPos.x = 0.5*(paimonPos.x + Actors.JiangXueData.pos.x)+paimonVector.x*1
		paimonPos.z = 0.5*(paimonPos.z + Actors.JiangXueData.pos.z)+paimonVector.z*1
		paimonVector.x = Actors.JiangXueData.pos.x - paimonPos.x
		paimonVector.z = Actors.JiangXueData.pos.z - paimonPos.z
		self:CreateQuestNpcByIdWithPos(2200401, Actors.PaimonData.id, 2, paimonPos, M.Dir2Euler(paimonVector))
	elseif param == 2 then
		local paimonPos = actorUtils.GetAvatarPos()
		local playerVector = actorUtils.GetAvatarForward()
		local paimonVector = playerVector
		paimonVector.x = Actors.JiangXueData.pos.x - paimonPos.x
		paimonVector.z = Actors.JiangXueData.pos.z - paimonPos.z
		local paimonVectorlength = (paimonVector.x^2+paimonVector.y^2+paimonVector.z^2)^0.5
		paimonVector.x = paimonVector.x/paimonVectorlength
		paimonVector.z = paimonVector.z/paimonVectorlength
		local paimonVectorx = paimonVector.x
		paimonVector.x = paimonVector.z * -1
		paimonVector.z = paimonVectorx
		paimonPos.x = 0.5*(paimonPos.x + Actors.JiangXueData.pos.x)+paimonVector.x*1
		paimonPos.z = 0.5*(paimonPos.z + Actors.JiangXueData.pos.z)+paimonVector.z*1
		paimonVector.x = Actors.JiangXueData.pos.x - paimonPos.x
		paimonVector.z = Actors.JiangXueData.pos.z - paimonPos.z
		self:CreateQuestNpcByIdWithPos(2200405, Actors.PaimonData.id, 2, paimonPos, M.Dir2Euler(paimonVector))
	end
end

function Quest22004:OnSubStart2200401(quest)
	print("OnSubStart2200401")
	self:CreateQuestNpc(quest, Actors.JiangXueData.id, 1)
	local jiangXueData = self:GetQuestNpcActor(Actors.JiangXueData.alias)
	jiangXueData:Standby()
	jiangXueData:DoFreeStateTrigger()
	jiangXueData:DoFreeStyle(4220)
	self:NotifyTo(Actors.JiangXueDailyData.alias, 1, true)
end

function Quest22004:OnSubFinish2200401(quest)
	print("OnSubFinish2200401")
	self:ActionSafeCall(self.TurnCamera)
end

function Quest22004:OnSubFailed2200401(quest)
	print("OnSubFailed2200401")
end

function Quest22004:OnSubStart2200402(quest)
	print("OnSubStart2200402")
	self:CallDelay(3, self.ShowNarrator02)
	self:NotifyTo(Actors.JiangXueDailyData.alias, 1, true)
end

function Quest22004:OnSubFinish2200402(quest)
	print("OnSubFinish2200402")
end

function Quest22004:OnSubFailed2200402(quest)
	print("OnSubFailed2200402")
end

function Quest22004:OnSubStart2200403(quest)
	print("OnSubStart2200403")
	self:CallDelay(3, self.ShowNarrator03)
	self:NotifyTo(Actors.JiangXueDailyData.alias, 1, true)
end

function Quest22004:OnSubFinish2200403(quest)
	print("OnSubFinish2200403")
end

function Quest22004:OnSubFailed2200403(quest)
	print("OnSubFailed2200403")
end

function Quest22004:OnSubStart2200404(quest)
	print("OnSubStart2200404")
	self:CallDelay(10, self.ShowNarrator04)
	self:NotifyTo(Actors.JiangXueDailyData.alias, 1, true)
end

function Quest22004:OnSubFinish2200404(quest)
	print("OnSubFinish2200404")
end

function Quest22004:OnSubFailed2200404(quest)
	print("OnSubFailed2200404")
end

function Quest22004:OnSubStart2200405(quest)
	print("OnSubStart2200405")
	self:NotifyTo(Actors.JiangXueDailyData.alias, 1, true)
end

function Quest22004:OnSubFinish2200405(quest)
	print("OnSubFinish2200405")
	self:ActionSafeCall(
		function(quest)
			self:ShowBlackScreen(0.5, 1.5, 0.5,
				function(actor, task)
					local paimonData = self:GetQuestNPCActor(Actors.PaimonData.alias)
					paimonData:DestroyWithDisappear(false)
					local jiangXueData = self:GetQuestNpcActor(Actors.JiangXueData.alias)
					jiangXueData:Destroy(false)
					self:NotifyTo(Actors.JiangXueDailyData.alias, 0, true)
				end
			)
		end
	)
end

function Quest22004:OnSubFailed2200405(quest)
	print("OnSubFailed2200405")
	self:NotifyTo(Actors.JiangXueDailyData.alias, 0, true)
end

return Quest22004
