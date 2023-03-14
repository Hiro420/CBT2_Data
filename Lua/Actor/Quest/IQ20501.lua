require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest20501 = class("Quest20501", questActorProxy)

Quest20501.defaultAlias = "Quest20501"

local q20501Cfg = require('Quest/Client/Q20501ClientConfig')
local jackData = q20501Cfg.JackData
local paimonData = q20501Cfg.PaimonData

-- Generated
function Quest20501:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["2050101"] = self.OnSubStart2050101
	self.subStartHandlers["2050102"] = self.OnSubStart2050102
	self.subStartHandlers["2050103"] = self.OnSubStart2050103
	self.subStartHandlers["2050104"] = self.OnSubStart2050104
	self.subStartHandlers["2050105"] = self.OnSubStart2050105
	self.subStartHandlers["2050106"] = self.OnSubStart2050106
	self.subStartHandlers["2050107"] = self.OnSubStart2050107
	self.subStartHandlers["2050108"] = self.OnSubStart2050108
	self.subStartHandlers["2050109"] = self.OnSubStart2050109
	self.subStartHandlers["2050110"] = self.OnSubStart2050110
end

function Quest20501:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["2050101"] = self.OnSubFinish2050101
	self.subFinishHandlers["2050102"] = self.OnSubFinish2050102
	self.subFinishHandlers["2050103"] = self.OnSubFinish2050103
	self.subFinishHandlers["2050104"] = self.OnSubFinish2050104
	self.subFinishHandlers["2050105"] = self.OnSubFinish2050105
	self.subFinishHandlers["2050106"] = self.OnSubFinish2050106
	self.subFinishHandlers["2050107"] = self.OnSubFinish2050107
	self.subFinishHandlers["2050108"] = self.OnSubFinish2050108
	self.subFinishHandlers["2050109"] = self.OnSubFinish2050109
	self.subFinishHandlers["2050110"] = self.OnSubFinish2050110
end

---sub start & finish 内调用的函数
function Quest20501:DestroyNPC()
    print("DestroyNPC")
    self:ActionSafeCall(
        function(self)
            self:ShowBlackScreen(0.5, 1, 0.5,
                function (self)
                local jack = self:GetQuestNpcActor(jackData.Jack)
                local paimon = self:GetQuestNpcActor(paimonData.Paimon)
                    if jack ~= nil then
                        jack:Destroy(false)
                    end

                    if paimon ~= nil then
                        paimon:DestroyWithDisappear(false)
                    end
                end
            )
        end
    )
end


--@region sub start & finish handlers
---按流程触发顺序
function Quest20501:OnSubStart2050102(quest)
    print("2050105 finish:CreatNPC & Talk")
	--actorMgr:CreateActorWithPos(jackData.Jack, jackData.JackScript, jackData.JackID, 0, jackData.BornPos, jackData.BornDir, true, false, 40100, true)  
	--actorMgr:CreateActorWithPos(paimonData.Paimon, paimonData.PaimonScript, paimonData.PaimonID, 0, paimonData.BornPos, paimonData.BornDir, true, false, 40100, true)  

	self:CreateQuestNpc(quest, jackData.JackID)
	self:CreateQuestNpc(quest, paimonData.ID)
end

function Quest20501:OnSubFinish2050102(quest)
	print("2050105 finish:DestroyNPC")
	self:DestroyNPC()
end

function Quest20501:OnSubFinish2050104(quest)
	self:ActionSafeCall(
        function(self)
			globalActor:StartGuide("GuideAdventureDungeon") 
		end
	)
end
--@endregion

function Quest20501:Start()
end

function Quest20501:OnDestroy()
end

return Quest20501