require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest353 = class("Quest353", questActorProxy)

Quest353.defaultAlias = "Quest353"

-- Generated
function Quest353:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
	self.subStartHandlers["35301"] = self.OnSubStart35301
    self.subStartHandlers["35302"] = self.OnSubStart35302
    self.subStartHandlers["35303"] = self.OnSubStart35303
    self.subStartHandlers["35304"] = self.OnSubStart35304
	self.subStartHandlers["35309"] = self.OnSubStart35309
	self.subStartHandlers["35310"] = self.OnSubStart35310
	self.subStartHandlers["35311"] = self.OnSubStart35311
	self.subStartHandlers["35312"] = self.OnSubStart35312
end

function Quest353:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
	self.subFinishHandlers["35301"] = self.OnSubFinish35301
    self.subFinishHandlers["35302"] = self.OnSubFinish35302
    self.subFinishHandlers["35303"] = self.OnSubFinish35303
    self.subFinishHandlers["35304"] = self.OnSubFinish35304
    self.subFinishHandlers["35309"] = self.OnSubFinish35309
    self.subFinishHandlers["35310"] = self.OnSubFinish35310
	self.subFinishHandlers["35311"] = self.OnSubFinish35311
	self.subFinishHandlers["35312"] = self.OnSubFinish35312
end

---sub start & finish 内调用的函数
function Quest353:ShowTutorial(actor)
end

local goddessActor;
local goddessInitPos;
function Quest353:ShowGoddess()
	if goddessActor ~= nil then
		goddessActor:SetPos(goddessInitPos)
		goddessActor = nil
	end
end

function Quest353:HideGoddess()
	goddessActor = actorMgr:GetActor("Goddess_3003")
	if goddessActor == nil or goddessActor == actorMgr.dummyActor then
		goddessActor = nil
		print("can not find Goddess_3003")
	else
		goddessInitPos = goddessActor:GetPos()
		goddessActor:SetPos(M.Pos(goddessInitPos.x, goddessInitPos.y + 100, goddessInitPos.z))
	end
end

function Quest353:On35309CutsceneFinish()
    local PaimonData = self.clientData.PaimonData
	--actorMgr:CreateActorWithPos(PaimonData.Paimon, PaimonData.PaimonScript, PaimonData.PaimonID, 0, PaimonData.Pos4, PaimonData.Dir4, true, false,3, true, 0, 35309)
	self:CreateQuestNPCById(35309, PaimonData.PaimonID)
	self:RequestInteraction(self.clientData.PaimonData.Paimon)
    self:ShowGoddess() --还原女神像
	print("Finish quest to unlock Goddess")
	local quest = actorMgr:GetActor(self.clientData.ActorAlias)
	if quest ~= nil then
		quest:FinishQuest(false, nil)
	end
	--show paimon
	local Paimon = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
	if Paimon ~= nil then
		Paimon:SetVisible(true)
	end
	--spawn MengdeEff
	local effData = self.clientData.EffData
	self:SpawnGadgetById(35301, effData.EffID, 1)
	--self:SpawnGadget(70300051, sceneData:GetDummyPoint(3,"Q357Gaia1").pos, sceneData:GetDummyPoint(3,"Q357Gaia1").rot, "MengdeEff", 3)
end

function Quest353:On35309CutsceneDestroy()
	print("On35309CutsceneDestroy")
	self:ShowGoddess() --还原女神像
end

function Quest353:On35309CutsceneStart()
	self:HideGoddess() --隐藏女神像，用导演自己的
	--hide paimon
	local Paimon = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
	if Paimon ~= nil then
		Paimon:SetVisible(false)
	end
end

function Quest353:PlayerName()
	local Paimon = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
	Paimon:VanishKeep()
	self:ShowNameDialog(
        function()
            print("Finish Name Task")
		    local quest = actorMgr:GetActor(self.clientData.ActorAlias)
		    if quest ~= nil then
			    quest:FinishQuest(false, nil)
		    end
        end
    )
end

function Quest353:PaimonVanish()
	local Paimon = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
	Paimon:CallDelay(1, Paimon.VanishKeep)
end

function Quest353:Cutscene35309()
	self:PlayCutscene(self.clientData.InterData.Cutscene1, self.On35309CutsceneFinish, self.On35309CutsceneStart, self.On35309CutsceneDestroy)
end

--@region sub start & finish handlers
---按流程触发顺序
function Quest353:OnSubStart35301(quest)
    print("35301 start: Paimon Create")
	local PaimonData = self.clientData.PaimonData
	self:CreateQuestNpc(quest, PaimonData.PaimonID)
	globalActor:PlayerBackButtonOn(2, 3, "Q353Center", 30, 9)
	self:CallDelay(1, self.Actionsafe)
end
function Quest353:Actionsafe()
	self:ActionSafeCall(self.InteractPaimon)
end
function Quest353:InteractPaimon()
	self:RequestInteraction(self.clientData.PaimonData.Paimon)
end

function Quest353:OnSubFinish35301(quest)
	print("35301 Finish: Tutorial")
	self:ActionSafeCall(self.ShowTutorial)
	self:ActionSafeCall(self.PaimonVanish)
end

function Quest353:OnSubStart35302(quest)
	print("35302 start: Create questarea")
	self:CallDelay(1,self.Skill)

	globalActor:PlayerBackButtonOff(2)
end
function Quest353:Skill(quest)
	print("Skill")
	self:ActionSafeCall(self.SkillTurorial)
end
function Quest353:SkillTurorial(quest)
	print("SkillTurorial")
	self:TransmitPlayer(3, sceneData:GetDummyPoint(3, "Q353SetAvatar").pos, sceneData:GetDummyPoint(3, "Q353SetAvatar").rot)
	globalActor:StartGuide("GuideElementSkill")
end

function Quest353:OnSubStart35303(quest)
	print("35303 start: Paimon to Act2")
	self:CallDelay(1,
	function()
		globalActor:EndGuide("GuideElementSkill")
		globalActor:EndGuide("GuideElementSkillPC")
		globalActor:StartGuide("GuideElementSkillHold")
	end
)
end

function Quest353:OnSubStart35304(quest)
	print("35304 start: Paimon to Act3")

	--local BallData = self.clientData.BallData
	--self:SpawnItemById(35304, BallData.BallID, 1)
	--self:SpawnItemById(35304, BallData.BallID, 2)
	--self:SpawnItemById(35304, BallData.BallID, 3)
    -- globalActor:SpawnItem(BallData.BallID, BallData.BallPos,nil,"Ball")
    -- globalActor:SpawnItem(BallData.BallID, BallData.BallPos,nil,"Ball")
	-- globalActor:SpawnItem(BallData.BallID, BallData.BallPos,nil,"Ball")
	
	self:CallDelay(1,
	function()
		globalActor:EndGuide("GuideElementSkillHold")
		globalActor:EndGuide("GuideElementSkillHoldPC")
		globalActor:StartGuide("GuideElementSkillBurst")
	end
)
end

function Quest353:OnSubFinish35304(quest)
	print("35304 Finish: Endguide")
	globalActor:EndGuide("GuideElementSkillBurst")
	globalActor:EndGuide("GuideElementSkillBurstPC")
end

function Quest353:OnSubStart35312(quest)
	print("35312 start: Questarea")
	actorMgr:CreateActorWithPos("Q353Trigger1", "Actor/Gadget/Q353Trigger1", 70900002, 0, sceneData:GetDummyPoint(3,"Q353Center").pos, sceneData:GetDummyPoint(3,"Q353Center").rot, true, false)
	actorMgr:CreateActorWithPos("Q353Trigger2", "Actor/Gadget/Q353Trigger2", 70900002, 0, sceneData:GetDummyPoint(3,"Q353Center").pos, sceneData:GetDummyPoint(3,"Q353Center").rot, true, false)
end

function Quest353:OnSubFinish35312(quest)
	print("35312 Finish: Questarea Des")
	globalActor:UnSpawn("Q353Trigger1")
	globalActor:UnSpawn("Q353Trigger2")
	local Q353Trigger1Actor = actorMgr:GetActor("Q353Trigger1")
	Q353Trigger1Actor:DestroySelf()
	local Q353Trigger2Actor = actorMgr:GetActor("Q353Trigger2")
	Q353Trigger2Actor:DestroySelf()
end

function Quest353:OnSubFinish35311(quest)
	print("35311 Finish: Story5")
	self:NarratorOnlyTask(self.clientData.NarratorData.Story5, self.OnNarratorFinish)
	globalActor:EndGuide("GuideElementSkillBurst")
	globalActor:EndGuide("GuideElementSkillBurstPC")
end

function Quest353:OnNarratorFinish()
  globalActor:StartGuide("GuideViewHotkey")
end

function Quest353:InvokeOnInteraction(param)
    if param == 1 then
        print("Now Spawn Tears")
	elseif param == 2 then
		print("Show Name Dialog")
		self:PlayerName()
	end
end
--@endregion

function Quest353:Start()
end

function Quest353:OnDestroy()
end

return Quest353
