require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest355 = class("Quest355", questActorProxy)

Quest355.defaultAlias = "Quest355"

-- Generated
function Quest355:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["35501"] = self.OnSubStart35501
	self.subStartHandlers["35502"] = self.OnSubStart35502
	self.subStartHandlers["35503"] = self.OnSubStart35503
	self.subStartHandlers["35504"] = self.OnSubStart35504
	self.subStartHandlers["35505"] = self.OnSubStart35505
end

function Quest355:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["35501"] = self.OnSubFinish35501
	self.subFinishHandlers["35502"] = self.OnSubFinish35502
	self.subFinishHandlers["35503"] = self.OnSubFinish35503
	self.subFinishHandlers["35504"] = self.OnSubFinish35504
	self.subFinishHandlers["35505"] = self.OnSubFinish35505
end

---sub start & finish 内调用的函数
function Quest355:PaimonVanish()
	--self:ShowTutorialDialog(113)
	local paimon = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
	paimon:AirModeOff()
	--paimon:VanishKeep()
	if paimon ~= nil then
		paimon:DestroyWithDisappear(false)
	end
end

function Quest355:On35502CutsceneFinish()
	self:ShowBlackScreen(0.5, 1.0, 0.5, self.Tear)
end
function Quest355:Tear()
	self:RequestInteraction(self.clientData.PaimonData.Paimon)
	local TearData = self.clientData.TearData
	self:UnSpawn("Tear")
	self:SpawnItemById(35503, TearData.TearID, 1)
	-- globalActor:UnSpawn("Tear")
	-- globalActor:SpawnItem(TearData.TearID, TearData.TearPos,nil,"Tear")
end

function Quest355:Story1()
    self:NarratorOnlyTask(self.clientData.NarratorData.Story1)
end

--@region sub start & finish handlers
---按流程触发顺序
---当OnSubFinish当前环和OnSubStart下一环等效时，写在OnSubFinish内，否则断线重连流程可能和OnSubStart流程重复执行
function Quest355:OnSubStart35503(quest)
	print("35503 Start : Play Cutscene & Creat Paimon")
	self:PlayCutsceneIndex(35501, self.On35502CutsceneFinish)
	local PaimonData = self.clientData.PaimonData
	self:CreateQuestNpc(quest, PaimonData.PaimonID)
end

function Quest355:OnSubFinish35503(quest)
	print("35503 Finish : Paimon to Paimon2 & Spawn Tears")
	self:ActionSafeCall(self.Story1)
	local paimon = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
	paimon:AirModeOn()
	paimon:AddPriorityInter(InterTimingType.BTN, self.clientData.InterData.NoReplyInter)	
	paimon:RunToTask(self.clientData.PaimonData.Pos2,
	function(actor, task)
		actor:ClearFollowTask()
		actor:ClearPriorityInter(InterTimingType.BTN)
		actor:DoFreeStyle(1200)
		actor:TurnTo(M.Euler2DirXZ(self.clientData.PaimonData.Dir2))
	end
	)
end

function Quest355:OnSubStart35501(quest)
	self:SetNavigationByMainId(355, true)
end

function Quest355:OnSubStart35504(quest)
end

function Quest355:OnSubFinish35504(quest)
end

function Quest355:OnSubStart35505(quest)
	self:RequestInteraction(self.clientData.PaimonData.Paimon)
end

function Quest355:OnSubFinish35505(quest)
	print("35505 Finish : Paimon Vanish")
	self:ActionSafeCall(self.PaimonVanish)
end

function Quest355:InvokeOnInteraction(param)
    if param == 1 then
 		print("Now Spawn Tears")
		local TearData = self.clientData.TearData
		self:UnSpawn("Tear")
		self:SpawnItemById(35505, TearData.TearID, 1)
		-- globalActor:UnSpawn("Tear")
		-- globalActor:SpawnItem(TearData.TearID, TearData.TearPos,nil, "Tear") 
	elseif param == 5 then
        print("Now Destroy Tears")
        self:UnSpawn("Tear") 
    end
end

--@endregion

function Quest355:Start()
end

function Quest355:OnDestroy()
end

return Quest355