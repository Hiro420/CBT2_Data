require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest352 = class("Quest352", questActorProxy)


Quest352.defaultAlias = "Quest352"

local warningTask = nil
local stayWarningTask = nil

-- Generated
function Quest352:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["35200"] = self.OnSubStart35200
	self.subStartHandlers["35201"] = self.OnSubStart35201
	self.subStartHandlers["35202"] = self.OnSubStart35202
	self.subStartHandlers["35203"] = self.OnSubStart35203
	self.subStartHandlers["35204"] = self.OnSubStart35204
	self.subStartHandlers["35205"] = self.OnSubStart35205
end

function Quest352:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["35200"] = self.OnSubFinish35200
	self.subFinishHandlers["35201"] = self.OnSubFinish35201
	self.subFinishHandlers["35202"] = self.OnSubFinish35202
	self.subFinishHandlers["35203"] = self.OnSubFinish35203
	self.subFinishHandlers["35204"] = self.OnSubFinish35204
	self.subFinishHandlers["35205"] = self.OnSubFinish35205
end

---sub start & finish 内调用的函数
function Quest352:PaimonCreat()
    local PaimonData = self.clientData.PaimonData
	self:CreateQuestNpcById(35200, PaimonData.PaimonID)
	self:NarratorOnlyTask(self.clientData.NarratorData.Story1)
end

function Quest352:On35201CutsceneFinish()
	self:RequestInteraction(self.clientData.PaimonData.Paimon)
end

---隐藏女神像写法待程序换处理方式后可干掉
local goddessActor;
local goddessInitPos;
function Quest352:ShowGoddess()
	if goddessActor ~= nil then	
		goddessActor:SetPos(goddessInitPos)
		goddessActor = nil
	end
end

function Quest352:HideGoddess()
	goddessActor = actorMgr:GetActor("Goddess_3003")
	if goddessActor == nil or goddessActor == actorMgr.dummyActor then
		goddessActor = nil
		print("can not find Goddess_3003")
	else
		goddessInitPos = goddessActor:GetPos()
		goddessActor:SetPos(M.Pos(goddessInitPos.x, goddessInitPos.y + 100, goddessInitPos.z))
	end
end
---

function Quest352:On35204CutsceneDestroy()
	print("On35204CutsceneDestroy")
	self:ShowGoddess() --还原女神像
end

function Quest352:On35204CutsceneFinish()
	self:ShowGoddess() --还原女神像
	--完成任务35309开地图
	local quest = actorMgr:GetActor(self.clientData.ActorAlias)
	if quest ~= nil then
		quest:FinishQuestID(false, 35205)
	end
end

--@region sub start & finish handlers
---按流程触发顺序
---当OnSubFinish当前环和OnSubStart下一环等效时，写在OnSubFinish内，否则断线重连流程可能和OnSubStart流程重复执行
function Quest352:OnSubFinish35200(quest)
    print("35200 Finish: Paimon shimo to NPC")
    self.uActor:AvatarPaimonDisappear(nil, false)
	self:CallDelay(2, self.PaimonCreat)
end

function Quest352:OnSubFinish35201(quest)
    print("35201 Finish : Cs_BigWorldShow_Cutscene")
	self:PlayCutsceneIndex(35201, self.On35201CutsceneFinish)
	self:CallDelay(3,
		function()
			globalActor:ChangeDay24Time(9, true)
		end
	)
	if stayWarningTask ~= nil then
		stayWarningTask:FinishTask()
	end
	if warningTask ~= nil then
		warningTask:FinishTask()
	end
end

function Quest352:OnSubStart35202(quest)
	globalActor:ChangeDay24Time(9, true)
	globalActor:PlayerBackButtonOn(1, 3, "Q352View", 40, 9)

end

function Quest352:OnSubStart35203(quest)
	print("35203 Start: Follow Paimon")
	globalActor:PlayerBackButtonOff(1)
	local Paimon = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
	self:CallDelay(5,
		function()
			Paimon:NarratorTask(self.clientData.NarratorFlow, self.clientData.FollowLen, self.clientData.FollowLen, 
				nil, "Story", self.mainQuestConfigID)
		end
	)
	Paimon:BeFollowTaskByRoutePoints(self.clientData.RoutePoints, self.clientData.FollowLen, self.clientData.FollowTransLen,
	function(Paimon, task)
		if Paimon.BeFollowState == BeFollowState.FAILED then
			local quest = actorMgr:GetActor(self.clientData.ActorAlias)
			if quest ~= nil then
				print("35203 failed1111111")
				quest:FinishQuestID(true, 35203)
			end
			Paimon:StopPerformNarrator()
		elseif Paimon.BeFollowState == BeFollowState.SUCCESS then
			Paimon:Standby()
			Paimon:TurnTo(M.Euler2DirXZ(self.clientData.PaimonData.Dir5))
			local quest = actorMgr:GetActor(self.clientData.ActorAlias)
			if quest ~= nil then
				quest:FinishQuestID(false, 35203)
			end
		end
	end,
	function(Paimon, task)
		Paimon:Standby(false)
	end
	)
	stayWarningTask = Paimon:WarningNarratorTask(0, self.clientData.NarratorStayWarning, function(Paimon)
		local selfPos = Paimon:GetPos()
		local avatarPos = actorUtils.GetAvatarPos()
		local currLen = M.Dist(selfPos, avatarPos)
		return currLen > self.clientData.FollowLen + 5 and currLen <= self.clientData.FollowLen + 15 and Paimon:IsInIdle()
	end, nil, "StoryWarning", self.mainQuestConfigID)
	warningTask = Paimon:WarningNarratorTask(1, self.clientData.NarratorWarning, function(Paimon)
		local selfPos = Paimon:GetPos()
		local avatarPos = actorUtils.GetAvatarPos()
		local currLen = M.Dist(selfPos, avatarPos)
		return currLen > self.clientData.FollowLen + 15 and currLen < self.clientData.FollowLen + 1000
	end, nil, "StoryWarning", self.mainQuestConfigID)
end

function Quest352:OnSubFinish35203(quest)
	print("35203 Finish : Clear Task")
	if stayWarningTask ~= nil then
		stayWarningTask:FinishTask()
	end
	if warningTask ~= nil then
		warningTask:FinishTask()
	end
	--local Paimon = actorMgr:GetActor(self.clientData.PaimonData.Paimon)
	local Paimon = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
	-- Paimon:ClearBeLockTask()
end

function Quest352:OnSubStart35204(quest)
	print("35204 Start: ByQueen")
	--local Paimon = actorMgr:GetActor(self.clientData.PaimonData.Paimon)
	local Paimon = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
	Paimon:NarratorTask(self.clientData.NarratorFlow2, 20, 20, nil)
	Paimon:AirModeOn()
	Paimon:ByQueen()
	self:EnterSceneLookCamera(sceneData:GetDummyPoint(3,"Q353Guide2").pos, 1, 3, true)
	globalActor:StopLocalAvatar()	
	globalActor:EnablePlayerInput(false)	
    self:CallDelay(3, self.OnEnableInput)
end
function Quest352:OnEnableInput()
	print("Enable Player Input")	
    globalActor:EnablePlayerInput(true)
end

function Quest352:On35204CutsceneStart()
	self:HideGoddess() --隐藏女神像，用导演自己的
end

function Quest352:OnSubFinish35204(quest)
	print("35204 Finish: Cs_MDAQ010_UnlockSkill")
	self:PlayCutsceneIndex(35202, self.On35204CutsceneFinish, self.On35204CutsceneStart, self.On35204CutsceneDestroy)
end

--@endregion

function Quest352:Start()
end

function Quest352:OnDestroy()
end

return Quest352