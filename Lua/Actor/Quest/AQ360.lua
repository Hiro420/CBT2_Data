require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest360 = class("Quest360", questActorProxy)

Quest360.defaultAlias = "Quest360"

-- Generated
function Quest360:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["36001"] = self.OnSubStart36001
	--self.subStartHandlers["36002"] = self.OnSubStart36002
	self.subStartHandlers["36003"] = self.OnSubStart36003
	self.subStartHandlers["36004"] = self.OnSubStart36004
	self.subStartHandlers["36005"] = self.OnSubStart36005
end

function Quest360:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["36001"] = self.OnSubFinish36001
	--self.subFinishHandlers["36002"] = self.OnSubFinish36002
	self.subFinishHandlers["36003"] = self.OnSubFinish36003
	self.subFinishHandlers["36004"] = self.OnSubFinish36004
	self.subFinishHandlers["36005"] = self.OnSubFinish36005
end

---sub start & finish 内调用的函数
function Quest360:OnEnableInput()
	print("360 Finish: Enable Player Input")	
	globalActor:EnablePlayerInput(true)
end

--@region sub start & finish handlers
---按流程触发顺序

function Quest360:OnSubFinish36001(quest)
    print("36001 Finish : Story2")
	self:NarratorOnlyTask(self.clientData.NarratorData.Story2)
end

function Quest360:OnSubFinish36003(quest)
	print("36003 Finish : Creat NPC")
end
function Quest360:Interact()
	local AmborData = self.clientData.AmborData
	self:CreateQuestNpcById(36003, AmborData.AmborID)
	self:RequestInteraction(self.clientData.AmborData.Ambor)
end

function Quest360:OnSubStart36004(quest)
	print("36004 Start : interact")
	self:CallDelay(2,self.Delay1)
end
function Quest360:Delay1(quest)
	print("36004 Start : interact")
	self:ShowBlackScreen(0.5, 2.0, 0.5, self.Interact)
end

function Quest360:OnSubFinish36004(quest)
	print("36004 Finish : Ambor Vanish")
	self:ActionPreSafeCall(self.Finish36004Do)
end

function Quest360:Finish36004Do(quest)
	local AmborData = self.clientData.AmborData
	
	local ambor = self:GetQuestNpcActor(self.clientData.AmborData.Ambor)
	if ambor ~= nil then
		ambor:Destroy(false)
	end

	local paimon = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
	if paimon ~= nil then
		paimon:DestroyWithDisappear(false)
	end
end


--@endregion

function Quest360:Start()
end

function Quest360:OnDestroy()
end

return Quest360