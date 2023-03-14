require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest356 = class("Quest356", questActorProxy)

Quest356.defaultAlias = "Quest356"

local NpcUtil = require('Actor/Npc/NPCUtil')

-- Generated
function Quest356:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["35601"] = self.OnSubStart35601
	self.subStartHandlers["35602"] = self.OnSubStart35602
	self.subStartHandlers["35603"] = self.OnSubStart35603
	self.subStartHandlers["35604"] = self.OnSubStart35604
	self.subStartHandlers["35605"] = self.OnSubStart35605
	self.subStartHandlers["35606"] = self.OnSubStart35606
end

function Quest356:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["35601"] = self.OnSubFinish35601
	self.subFinishHandlers["35602"] = self.OnSubFinish35602
	self.subFinishHandlers["35603"] = self.OnSubFinish35603
	self.subFinishHandlers["35604"] = self.OnSubFinish35604
	self.subFinishHandlers["35605"] = self.OnSubFinish35605
	self.subFinishHandlers["35606"] = self.OnSubFinish35606
end

---sub start & finish 内调用的函数
--@region sub start & finish handlers

--@endregion

--@region sub start & finish handlers
---按流程触发顺序
function Quest356:OnSubStart35601(quest)
	print("35601 Start : ......")
	globalActor:PlayAudioState("StateGroup_musicEmotion", "State_musicNormal")
	globalActor:StopLocalAvatar()
	globalActor:FinishAllNarrator()

	self:PlayCutsceneIndex(36001, self.On35601CutsceneFinish)
end

function Quest356:On35601CutsceneFinish()
	local AmborData = self.clientData.AmborData
	
	self:CreateQuestNpcById(35601, AmborData.AmborID)
	self:RequestInteraction(self.clientData.AmborData.Ambor)
end

function Quest356:OnSubStart35603(quest)
end

function Quest356:OnSubStart35604(quest)
end

function Quest356:OnSubStart35605(quest)
	print("35605 Start : ...")
	self:ActionSafeCall(
		function (self)
			self:TransmitPlayer(3, self.clientData.FlyTrainData.StartPos, self.clientData.FlyTrainData.StartDir, 
			function ()
				globalActor:StartGuide("GuideAvatarFly")
				globalActor:StartGuide("GuideAvatarFlyPC")
				globalActor:StartGuide("GuideAvatarFlyWarningInfo")
			end,
			function ()
				local paimon = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
				if paimon ~= nil then
					paimon:Destroy(false)
				end

				local quest = actorMgr:GetActor(self.clientData.ActorAlias)
				if quest ~= nil then
					quest:FinishQuest(false, nil)
				end
				
				globalActor:ChangeToHero()
			end
		    ) 
		end
	)
end

function Quest356:OnSubStart35606(quest)
	print("35606 Start : ...")
	local MengdeNpcList = NpcUtil.GetMengdeNpcListSpecial()
    for i = 1, #MengdeNpcList do
        self:NotifyTo(MengdeNpcList[i], NpcUtil.NpcEventType.STARTDAILY, true)
	end

	self:CreateQuestNpc(quest, self.clientData.AmborData.AmborID)
end


function Quest356:OnSubFinish35601(quest)
	print("35601 Finish : ...")
	self:CancelCurrentNavigation()
    self:ActionSafeCall(
		function (self)
			globalActor:StartGuide("GuideQuestGuide")
			local ambor = self:GetQuestNpcActor(self.clientData.AmborData.Ambor)
			local paimon = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)

			if ambor ~= nil then
				ambor:Destroy(false)
			end

			if paimon ~= nil then
				paimon:DestroyWithDisappear(false)
			end
		end
	)
end

function Quest356:OnSubFinish35602(quest)
	print("35602 Finish : Play Cutscene")
	self:CallDelay(1,
		function (self)
			self:NarratorOnlyTask(self.clientData.NarratorData.Story1.dialogList, nil, "Story")
		end
    )
end

function Quest356:OnSubFinish35603(quest)
	print("35603 Finish : ...")
	local task = curtainUtils.CreateEntityCreateTask({self.clientData.AmborData.Ambor})
	
	self:ShowBlackScreen(0.5, 1.0, 0.5,
	function (self)
		self:CreateQuestNpc(quest, self.clientData.AmborData.AmborID)
		self:CallDelay(0.5,
		function (self)
			self:RequestInteraction("Ambor")
		end
		)
	end, nil, task
    )
end

function Quest356:OnSubFinish35604(quest)
	print("35604 Finish : ...")
end

function Quest356:OnSubFinish35605(quest)
	print("35605 Finish : ...")
end

function Quest356:OnSubFinish35606(quest)
	print("35606 Finish : ...")
end
--@endregion

function Quest356:Start()
end

function Quest356:OnDestroy()
end

return Quest356