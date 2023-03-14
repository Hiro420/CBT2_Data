require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest467 = class("Quest467", questActorProxy)

Quest467.defaultAlias = "Quest467"

local q467Cfg
local PaimonData
local subIDs

function Quest467:OnDataLoaded()
    q467Cfg = self.clientData
    subIDs = q467Cfg.SubIDs
    PaimonData = q467Cfg.PaimonData
end

-- Generated
function Quest467:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["46701"] = self.OnSubStart46701
	self.subStartHandlers["46702"] = self.OnSubStart46702
	self.subStartHandlers["46703"] = self.OnSubStart46703
end

function Quest467:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["46701"] = self.OnSubFinish46701
	self.subFinishHandlers["46702"] = self.OnSubFinish46702
	self.subFinishHandlers["46703"] = self.OnSubFinish46703
end

---sub start & finish 内调用的函数
function Quest467:PaimonVanish()
end

--@region sub start & finish handlers
---按流程触发顺序
function Quest467:OnSubStart46701(quest)
    print("46701 Start : Creat Lynn")
end

function Quest467:OnSubFinish46701(quest)
    print("46701 Start : Creat Lynn")
	self:NarratorOnlyTask(self.clientData.NarratorData.Story1)
	self:EnterSceneLookCamera(sceneData:GetDummyPoint(3,"Q467Lynn1").pos, 1.5, 1.5, true)
	globalActor:StopLocalAvatar()	
	globalActor:EnablePlayerInput(false)	
	self:CallDelay(1.5, self.OnEnableInput)
end
function Quest467:OnEnableInput()
	print("467 Finish: Enable Player Input")	
	globalActor:EnablePlayerInput(true)
end

function Quest467:OnSubFinish46702(quest)
    print("46702 Finish:  Paimon Des")
    self:ActionSafeCall(self.Finish46702Do)
end
function Quest467:Finish46702Do(quest)
	local paimon = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
    if paimon ~= nil then
        paimon:DestroyWithDisappear(false)
    end
end

function Quest467:OnSubFinish46703(quest)
    print("46703 Finish:  Paimon Des")
    self:ActionSafeCall(self.Finish46703Do)
end
function Quest467:Finish46703Do(quest)
	local paimon = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
    if paimon ~= nil then
        paimon:DestroyWithDisappear(false)
    end
end

function Quest467:InvokeOnInteraction(param)
    if param == 1 then
 		print("Paimon Creat")
         local PaimonData = self.clientData.PaimonData
         self:CreateQuestNpcById(46702, PaimonData.Paimon, 1)
		 --actorMgr:CreateActorWithPos(PaimonData.Paimon, PaimonData.PaimonScript, PaimonData.PaimonID, 0, PaimonData.Pos1, PaimonData.Dir1, true, false)	 
    end
end

--@endregion

function Quest467:Start()
end

function Quest467:OnDestroy()
end

return Quest467