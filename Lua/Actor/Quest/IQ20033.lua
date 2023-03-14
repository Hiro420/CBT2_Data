require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest20033 = class("Quest20033", questActorProxy)
Quest20033.defaultAlias = "Quest20033"

local q20033Cfg = require('Quest/Client/Q20033ClientConfig')
local SubIDs = q20033Cfg.SubIDs
local Actors = q20033Cfg.Actors
local NpcDataFishMan = Actors.NpcDataFishMan
local NpcDataLin = Actors.NpcDataLin
local NpcDataPaimon = Actors.NpcDataPaimon
local Datas = q20033Cfg.Datas
local Narritor_LinCallPlayer = Datas.Narritor_LinCallPlayer
local RoutePointsData = Datas.RoutePointsData

function Quest20033:OnSubStartHandlerBuild()
	self.subStartHandlers = 
	{
		["2003301"] = self.OnSubStart2003301,
		["2003302"] = self.OnSubStart2003302,
		["2003303"] = self.OnSubStart2003303,
		["2003304"] = self.OnSubStart2003304,
		["2003305"] = self.OnSubStart2003305,
		["2003306"] = self.OnSubStart2003306,
	}
end

function Quest20033:OnSubFinishHandlerBuild()
	self.subFinishHandlers = 
	{
		["2003301"] = self.OnSubFinish2003301,
		["2003302"] = self.OnSubFinish2003302,
		["2003303"] = self.OnSubFinish2003303,
		["2003304"] = self.OnSubFinish2003304,
		["2003305"] = self.OnSubFinish2003305,
		["2003306"] = self.OnSubFinish2003306,
	}
end

function Quest20033:OnSubFailedHandlerBuild()
	self.subFailedHandlers = 
	{
		["2003301"] = self.OnSubFailed2003301,
		["2003302"] = self.OnSubFailed2003302,
		["2003303"] = self.OnSubFailed2003303,
		["2003304"] = self.OnSubFailed2003304,
		["2003305"] = self.OnSubFailed2003305,
		["2003306"] = self.OnSubFailed2003306,
	}
end

function Quest20033:ExitSceneLookCamera()
	print("ExitSceneLookCamera")
	globalActor:ExitSceneLookCamera()
end

function Quest20033:NpcLinRuntoStart()
	print("NpcLinRuntoStart")
	local npcDataLin = actorMgr:GetActor(Actors.NpcDataLin.alias)
	npcDataLin:RunTo(Datas.Position01Pos)
end

function Quest20033:NpcLinRuntoTarget()
	print("NpcLinRuntoTarget")
	local npcDataLin = actorMgr:GetActor(Actors.NpcDataLin.alias)
	npcDataLin:RunToTask(Datas.SpawnPointChestPos)
end

function Quest20033:NpcLinCheer()
	print("NpcLinCheer")
	local npcDataLin = actorMgr:GetActor(Actors.NpcDataLin.alias)
	npcDataLin:DoFreeStyle(1270)
end

function Quest20033:NpcLinPauseAndCallPlayer()
	print("NpcLinPauseAndCallPlayer")
	local npcDataLin = actorMgr:GetActor(Actors.NpcDataLin.alias)
	npcDataLin:Standby()
	npcDataLin:NarratorTask(Datas.Narritor_LinCallPlayer)
end

function Quest20033:ClearNpcs()
	print("ClearNpcs")
	local npcDataFishMan = actorMgr:GetActor(Actors.NpcDataFishMan.alias)
	npcDataFishMan:DestroyWithDisappear(false)
end

function Quest20033:NpcLinBeFollowTask()
	print("NpcLinBeFollowTask")
	local npcDataLin = actorMgr:GetActor(Actors.NpcDataLin.alias)
	npcDataLin:BeFollowTaskByRoutePoints(Datas.RoutePointsData, 10, 100, self.NpcLinScared, nil, nil, self.NpcLinPauseAndCallPlayer)
end

function Quest20033:NpcLinScared()
	print("NpcLinScared")
	local npcDataLin = actorMgr:GetActor(Actors.NpcDataLin.alias)
	npcDataLin:DoFreeStyleTask(4190, false)
end

function Quest20033:NpcStrangerCreated()
	print("NpcStrangerCreated")
	actorMgr:CreateActorWithPos(Actors.NpcDataFishMan.alias, Actors.NpcDataFishMan.script, Actors.NpcDataFishMan.id, 0, Actors.NpcDataFishMan.pos, Actors.NpcDataFishMan.rot, false, false)
	globalActor:StopLocalAvatar()
end

function Quest20033:NpcStrangerMoveToPlayer()
	print("NpcStrangerMoveToPlayer")
	local npcDataFishMan = actorMgr:GetActor(Actors.NpcDataFishMan.alias)
	npcDataFishMan:RunToTask(Datas.SpawnPointChestPos)
end

function Quest20033:OnEvent(evt)
	print("OnEvent")
end

function Quest20033:Start()
	print("Start")
end

function Quest20033:OnDestroy()
	print("OnDestroy")
end

function Quest20033:OnSubStart2003301(quest)
	print("OnSubStart2003301")
	globalActor:CallDelay(1, self.ClearNpcs)
end

function Quest20033:OnSubFinish2003301(quest)
	print("OnSubFinish2003301")
	self:CallDelay(2, self.NpcLinBeFollowTask)
end

function Quest20033:OnSubFailed2003301(quest)
	print("OnSubFailed2003301")
end

function Quest20033:OnSubStart2003302(quest)
	print("OnSubStart2003302")
end

function Quest20033:OnSubFinish2003302(quest)
	print("OnSubFinish2003302")
	globalActor:SpawnChest(70210002, Datas.SpawnPointChestPos, Datas.SpawnPointChestRot, nil, nil, 100002)
end

function Quest20033:OnSubFailed2003302(quest)
	print("OnSubFailed2003302")
end

function Quest20033:OnSubStart2003303(quest)
	print("OnSubStart2003303")
	globalActor:ShowBlackScreen(1, 1, 1, self.NpcStrangerCreated, self.NpcStrangerMoveToPlayer)
end

function Quest20033:OnSubFinish2003303(quest)
	print("OnSubFinish2003303")
end

function Quest20033:OnSubFailed2003303(quest)
	print("OnSubFailed2003303")
end

function Quest20033:OnSubStart2003304(quest)
	print("OnSubStart2003304")
end

function Quest20033:OnSubFinish2003304(quest)
	print("OnSubFinish2003304")
end

function Quest20033:OnSubFailed2003304(quest)
	print("OnSubFailed2003304")
end

function Quest20033:OnSubStart2003305(quest)
	print("OnSubStart2003305")
end

function Quest20033:OnSubFinish2003305(quest)
	print("OnSubFinish2003305")
end

function Quest20033:OnSubFailed2003305(quest)
	print("OnSubFailed2003305")
end

function Quest20033:OnSubStart2003306(quest)
	print("OnSubStart2003306")
end

function Quest20033:OnSubFinish2003306(quest)
	print("OnSubFinish2003306")
end

function Quest20033:OnSubFailed2003306(quest)
	print("OnSubFailed2003306")
end

return Quest20033
