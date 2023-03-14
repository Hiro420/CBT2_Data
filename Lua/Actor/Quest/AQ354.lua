require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest354 = class("Quest354", questActorProxy)

Quest354.defaultAlias = "Quest354"

-- Generated
function Quest354:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["35401"] = self.OnSubStart35401
	self.subStartHandlers["35402"] = self.OnSubStart35402
	self.subStartHandlers["35403"] = self.OnSubStart35403
	self.subStartHandlers["35404"] = self.OnSubStart35404
	self.subStartHandlers["35405"] = self.OnSubStart35405
end

function Quest354:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["35401"] = self.OnSubFinish35401
	self.subFinishHandlers["35402"] = self.OnSubFinish35402
	self.subFinishHandlers["35403"] = self.OnSubFinish35403
	self.subFinishHandlers["35404"] = self.OnSubFinish35404
	self.subFinishHandlers["35405"] = self.OnSubFinish35405
end

---sub start & finish 内调用的函数
function Quest354:On35401CutsceneFinish()
	self:RequestInteraction(self.clientData.AmborData.Ambor)
end

function Quest354:AmborHide()
    self:ShowBlackScreen(1.0, 1.0, 1.0, 
	function(self)
		--完成任务刷史莱姆
		--开始教程
		--globalActor:StartGuide("GuideChooseAmbor")
		--转镜头看目标
		globalActor:StopLocalAvatar()	
		globalActor:EnablePlayerInput(false)	
		self:CallDelay(3, self.OnEnableInputAndStartGuide)
		self:EnterSceneLookCamera(sceneData:GetDummyPoint(3,"Q354Center").pos, 0, 3, true)
		actorUtils.SetAvatarEuler(sceneData:GetDummyPoint(3,"Q354SetAvatar").rot)
	end
)
end
function Quest354:OnEnableInputAndStartGuide()
	print("354 Finish: Enable Player Input")	
	globalActor:EnablePlayerInput(true)
	--开始教程
	globalActor:StartGuide("GuideChooseAmbor")
end

function Quest354:On35403CutsceneFinish()
    local AmborData = self.clientData.AmborData
	self:CreateQuestNpcById(35403, AmborData.AmborID)
end
--@region sub start & finish handlers
---按流程触发顺序
function Quest354:OnSubFinish35401(quest)
    print("35401 Finish : Cs_AM_FirstArrive_CutScene2")
	globalActor:StopLocalAvatar()
	local AmborData = self.clientData.AmborData
	self:CreateQuestNpcById(35401, AmborData.AmborID)
	self:PlayCutsceneIndex(35401, self.On35401CutsceneFinish)
end

function Quest354:OnSubFinish35402(quest)
	local Ambor = self:GetQuestNpcActor(self.clientData.AmborData.Ambor)
	if Ambor ~= nil then
    	Ambor:Destroy(false)
	end
	local Paimon = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
	if Paimon ~= nil then
    	Paimon:DestroyWithDisappear(false)
	end
end



function Quest354:OnSubStart35404(quest)
    print("35404 Start: Ambor VanishDirect Show TeamPage")
	self:ActionSafeCall(self.AmborHide)
end 

function Quest354:OnSubFinish35403(quest)
	print("35403 Finish: Cs_MDAQ018_MDCityShow")
	local Q354Trigger1Actor = actorMgr:GetActor("Q354Trigger1")
	Q354Trigger1Actor:DestroySelf()
	self:EnterSceneLookCamera(sceneData:GetDummyPoint(3,"Q360qqLook1").pos, 1, 2, true)
	self:ClearNarratorTask()

	globalActor:StopLocalAvatar()	
	globalActor:EnablePlayerInput(false)	
	self:CallDelay(2, self.OnEnableInput)
	self:CallDelay(1, self.Story3)

end
function Quest354:OnEnableInput()
	print("354 Finish: Enable Player Input")	
	globalActor:EnablePlayerInput(true)
end
function Quest354:Story3()
	globalActor:NarratorOnlyTask(self.clientData.NarratorData.Story3)
end  

function Quest354:OnSubFinish35404(quest)
	print("35404 Finish: trigger1")
	actorMgr:CreateActorWithPos("Q354Trigger1", "Actor/Gadget/Q354Trigger1", 70900002, 0, sceneData:GetDummyPoint(3,"Q354SetAvatar").pos, sceneData:GetDummyPoint(3,"Q354SetAvatar").rot, true, false)
end

function Quest354:OnSubFinish35405(quest)
	print("35405 Finish: Story4")
	self:NarratorOnlyTask(self.clientData.NarratorData.Story2, nil, "Story")
end

--@endregion

function Quest354:Start()
end

function Quest354:OnDestroy()
end

return Quest354