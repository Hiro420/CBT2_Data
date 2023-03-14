require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest20061 = class("Quest20061", questActorProxy)
Quest20061.defaultAlias = "Quest20061"

local q20061Cfg
local SubIDs
local Actors
local PaimonData
local Datas
local NarratorData1
local NarratorData2
local NarratorData3
local NarratorData4
local NarratorData5

function Quest20061:OnDataLoaded()
	q20061Cfg = self.clientData
	SubIDs = q20061Cfg.SubIDs
	Actors = q20061Cfg.Actors
	PaimonData = Actors.PaimonData
	Datas = q20061Cfg.Datas
	NarratorData1 = Datas.NarratorData1
	NarratorData2 = Datas.NarratorData2
	NarratorData3 = Datas.NarratorData3
	NarratorData4 = Datas.NarratorData4
	NarratorData5 = Datas.NarratorData5
end


function Quest20061:OnSubStartHandlerBuild()
	self.subStartHandlers =
	{
		["2006101"] = self.OnSubStart2006101,
		["2006102"] = self.OnSubStart2006102,
		["2006103"] = self.OnSubStart2006103,
		["2006104"] = self.OnSubStart2006104,
		["2006105"] = self.OnSubStart2006105,
		["2006106"] = self.OnSubStart2006106,
		["2006107"] = self.OnSubStart2006107,
		["2006108"] = self.OnSubStart2006108,
		["2006109"] = self.OnSubStart2006109,
		["2006110"] = self.OnSubStart2006110,
		["2006111"] = self.OnSubStart2006111,
		["2006112"] = self.OnSubStart2006112,
		["2006113"] = self.OnSubStart2006113,
		["2006114"] = self.OnSubStart2006114,
		["2006115"] = self.OnSubStart2006115,
		["2006116"] = self.OnSubStart2006116,
		["2006117"] = self.OnSubStart2006117,
		["2006118"] = self.OnSubStart2006118,
		["2006119"] = self.OnSubStart2006119,
	}
end

function Quest20061:OnSubFinishHandlerBuild()
	self.subFinishHandlers =
	{
		["2006101"] = self.OnSubFinish2006101,
		["2006102"] = self.OnSubFinish2006102,
		["2006103"] = self.OnSubFinish2006103,
		["2006104"] = self.OnSubFinish2006104,
		["2006105"] = self.OnSubFinish2006105,
		["2006106"] = self.OnSubFinish2006106,
		["2006107"] = self.OnSubFinish2006107,
		["2006108"] = self.OnSubFinish2006108,
		["2006109"] = self.OnSubFinish2006109,
		["2006110"] = self.OnSubFinish2006110,
		["2006111"] = self.OnSubFinish2006111,
		["2006112"] = self.OnSubFinish2006112,
		["2006113"] = self.OnSubFinish2006113,
		["2006114"] = self.OnSubFinish2006114,
		["2006115"] = self.OnSubFinish2006115,
		["2006116"] = self.OnSubFinish2006116,
		["2006117"] = self.OnSubFinish2006117,
		["2006118"] = self.OnSubFinish2006118,
		["2006119"] = self.OnSubFinish2006119,

	}
end

function Quest20061:OnSubFailedHandlerBuild()
	self.subFailedHandlers =
	{
		["2006101"] = self.OnSubFailed2006101,
		["2006102"] = self.OnSubFailed2006102,
		["2006103"] = self.OnSubFailed2006103,
		["2006104"] = self.OnSubFailed2006104,
		["2006105"] = self.OnSubFailed2006105,
		["2006106"] = self.OnSubFailed2006106,
		["2006107"] = self.OnSubFailed2006107,
		["2006108"] = self.OnSubFailed2006108,
		["2006109"] = self.OnSubFailed2006109,
		["2006110"] = self.OnSubFailed2006110,
		["2006111"] = self.OnSubFailed2006111,
		["2006112"] = self.OnSubFailed2006112,
		["2006113"] = self.OnSubFailed2006113,
		["2006114"] = self.OnSubFailed2006114,
		["2006115"] = self.OnSubFailed2006115,
		["2006116"] = self.OnSubFailed2006116,
		["2006117"] = self.OnSubFailed2006117,
		["2006118"] = self.OnSubFailed2006118,
		["2006119"] = self.OnSubFailed2006119,

	}
end

function Quest20061:DestroyPaimon(quest)
	local Paimon = self:GetQuestNpcActor(PaimonData.Npc)
	Paimon:DestroyWithDisappear(false,
		function(quest, task)
			self:ShowReadingDialog(100352)
		end
	)
end

function Quest20061:Start()
	print("Start")
end

function Quest20061:OnDestroy()
	print("OnDestroy")
end

function Quest20061:OnSubStart2006101(quest)
	print("OnSubStart2006101")
end

function Quest20061:OnSubFinish2006101(quest)
	print("OnSubFinish2006101")
end

function Quest20061:OnSubFailed2006101(quest)
	print("OnSubFailed2006101")
end

function Quest20061:OnSubStart2006102(quest)
	print("OnSubStart2006102")
end

function Quest20061:OnSubFinish2006102(quest)
	print("OnSubFinish2006102")
	self:NarratorOnlyTask(Datas.NarratorData1)
	local RandomNum = math.random(1, 100)
	if RandomNum >= 1 and RandomNum <= 50 then
		local quest = actorMgr:GetActor(q20061Cfg.ActorAlias)
		if quest ~= nil then
				quest:FinishQuestID(false, 2006103)
				quest:FinishQuestID(true, 2006104)
		end
	elseif RandomNum > 50 and RandomNum <= 100 then
		local quest = actorMgr:GetActor(q20061Cfg.ActorAlias)
		if quest ~= nil then
				quest:FinishQuestID(false, 2006104)
				quest:FinishQuestID(true, 2006103)
		end
	end
end

function Quest20061:OnSubFailed2006102(quest)
	print("OnSubFailed2006102")
end

function Quest20061:OnSubStart2006103(quest)
	print("OnSubStart2006103")
end

function Quest20061:OnSubFinish2006103(quest)
	print("OnSubFinish2006103")
end

function Quest20061:OnSubFailed2006103(quest)
	print("OnSubFailed2006103")
end

function Quest20061:OnSubStart2006104(quest)
	print("OnSubStart2006104")
end

function Quest20061:OnSubFinish2006104(quest)
	print("OnSubFinish2006104")
end

function Quest20061:OnSubFailed2006104(quest)
	print("OnSubFailed2006104")
end

function Quest20061:OnSubStart2006105(quest)
	print("OnSubStart2006105")
end

function Quest20061:OnSubFinish2006105(quest)
	print("OnSubFinish2006105")
	self:NarratorOnlyTask(Datas.NarratorData5)
end

function Quest20061:OnSubFailed2006105(quest)
	print("OnSubFailed2006105")
end

function Quest20061:OnSubStart2006106(quest)
	print("OnSubStart2006106")
end

function Quest20061:OnSubFinish2006106(quest)
	print("OnSubFinish2006106")
end

function Quest20061:OnSubFailed2006106(quest)
	print("OnSubFailed2006106")
end

function Quest20061:OnSubStart2006107(quest)
	print("OnSubStart2006107")
end

function Quest20061:OnSubFinish2006107(quest)
	print("OnSubFinish2006107")
end

function Quest20061:OnSubFailed2006107(quest)
	print("OnSubFailed2006107")
end

function Quest20061:OnSubStart2006108(quest)
	print("OnSubStart2006108")
end

function Quest20061:OnSubFinish2006108(quest)
	print("OnSubFinish2006108")
	self:NarratorOnlyTask(Datas.NarratorData2)
end

function Quest20061:OnSubFailed2006108(quest)
	print("OnSubFailed2006108")
end

function Quest20061:OnSubStart2006109(quest)
	print("OnSubStart2006109")
end

function Quest20061:OnSubFinish2006109(quest)
	print("OnSubFinish2006109")
end

function Quest20061:OnSubFailed2006109(quest)
	print("OnSubFailed2006109")
end

function Quest20061:OnSubStart2006110(quest)
	print("OnSubStart2006110")
end

function Quest20061:OnSubFinish2006110(quest)
	print("OnSubFinish2006110")
	self:CallDelay(2,
		function()
			self:NarratorOnlyTask(Datas.NarratorData3)
		end
		)
end

function Quest20061:OnSubFailed2006110(quest)
	print("OnSubFailed2006110")
end

function Quest20061:OnSubStart2006111(quest)
	print("OnSubStart2006111")
end

function Quest20061:OnSubFinish2006111(quest)
	print("OnSubFinish2006111")
	self:NarratorOnlyTask(Datas.NarratorData4)
	local RandomNum = math.random(1, 100)
	if RandomNum >= 1 and RandomNum <= 50 then
		local quest = actorMgr:GetActor(q20061Cfg.ActorAlias)
		if quest ~= nil then
				quest:FinishQuestID(false, 2006112)
				quest:FinishQuestID(true, 2006113)
		end
	elseif RandomNum > 50 and RandomNum <= 100 then
		local quest = actorMgr:GetActor(q20061Cfg.ActorAlias)
		if quest ~= nil then
				quest:FinishQuestID(false, 2006113)
				quest:FinishQuestID(true, 2006112)
		end
	end
end

function Quest20061:OnSubFailed2006111(quest)
	print("OnSubFailed2006111")
end

function Quest20061:OnSubStart2006112(quest)
	print("OnSubStart2006112")
end

function Quest20061:OnSubFinish2006112(quest)
	print("OnSubFinish2006112")
end

function Quest20061:OnSubFailed2006112(quest)
	print("OnSubFailed2006112")
end

function Quest20061:OnSubStart2006113(quest)
	print("OnSubStart2006113")
end

function Quest20061:OnSubFinish2006113(quest)
	print("OnSubFinish2006113")
end

function Quest20061:OnSubFailed2006113(quest)
	print("OnSubFailed2006113")
end

function Quest20061:OnSubStart2006114(quest)
	print("OnSubStart2006114")
end

function Quest20061:OnSubFinish2006114(quest)
	print("OnSubFinish2006114")
end

function Quest20061:OnSubFailed2006114(quest)
	print("OnSubFailed2006114")
end

function Quest20061:OnSubStart2006115(quest)
	print("OnSubStart2006115")
end

function Quest20061:OnSubFinish2006115(quest)
	print("OnSubFinish2006115")
	local paimon = self:GetQuestNpcActor("Paimon")
	local paimonPos = actorUtils.GetAvatarPos()
	local playerVector = actorUtils.GetAvatarForward()
	local distance = 1.5
	print(playerVector.x .. "," .. playerVector.y .. "," .. playerVector.z)
	paimonPos.x = paimonPos.x + playerVector.x * distance
	paimonPos.z = paimonPos.z + playerVector.z * distance
	local paimonVector = playerVector
	paimonVector.x = paimonVector.x * -1
	paimonVector.z = paimonVector.z * -1
	self:CreateQuestNpcByIdWithPos(2006115, PaimonData.NpcID, 1, paimonPos, M.Dir2Euler(paimonVector))

	self:RequestInteractionForceAlias("Paimon20061")


end

function Quest20061:OnSubFailed2006115(quest)
	print("OnSubFailed2006115")
end

function Quest20061:OnSubStart2006116(quest)
	print("OnSubStart2006116")
end

function Quest20061:OnSubFinish2006116(quest)
	print("OnSubFinish2006116")
end

function Quest20061:OnSubFailed2006116(quest)
	print("OnSubFailed2006116")
end

function Quest20061:InvokeOnInteraction(param)
	if param == 1 then
		self:ActionSafeCall(self.DestroyPaimon)
	end
end


return Quest20061
