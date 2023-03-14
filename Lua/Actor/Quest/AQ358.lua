require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest358 = class("Quest358", questActorProxy)

Quest358.defaultAlias = "Quest358"

local q358Cfg = require('Quest/Client/Q358ClientConfig')
local paimonData = q358Cfg.PaimonData

-- Generated
function Quest358:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["35800"] = self.OnSubStart35800
	self.subStartHandlers["35801"] = self.OnSubStart35801
	self.subStartHandlers["35802"] = self.OnSubStart35802
end

function Quest358:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["35800"] = self.OnSubFinish35800
	self.subFinishHandlers["35801"] = self.OnSubFinish35801
	self.subFinishHandlers["35802"] = self.OnSubFinish35802
end

---sub start & finish 内调用的函数
function Quest358:PaimonVanish()
	--self:ShowTutorialDialog(114)
	local paimon = self:GetQuestNpcActor(paimonData.Paimon)
	--paimon:VanishKeep()
	if paimon ~= nil then
		paimon:DestroyWithDisappear(false)
	end
end

function Quest358:On35801CutsceneFinish()
	print("Talk To NPC")
	local QinData = self.clientData.QinData
	self:CreateQuestNpc(35801, QinData.QinID, 0)
	local AmborData = self.clientData.AmborData
	self:CreateQuestNpc(35801, AmborData.AmborID, 0)
	local GaiaData = self.clientData.GaiaData
	self:CreateQuestNpc(35801, GaiaData.GaiaID, 0)
	local LisaData = self.clientData.LisaData
	self:CreateQuestNpc(35801, LisaData.LisaID, 0)
	local PaimonData = self.clientData.PaimonData
	self:CreateQuestNpc(35801, PaimonData.PaimonID, 0)	

	self:RequestInteraction("Qin")
end

--@region sub start & finish handlers
---按流程触发顺序
function Quest358:OnSubFinish35800(quest)
	print("35724 Finish : Creat Paimon")
    actorMgr:CreateActorWithPos("Q357Trigger", "Actor/Gadget/Q357Trigger", 70900002, 0, paimonData.Pos3, paimonData.Dir3, true)

    self:CallDelay(0.1,
        function(self)
            self:CreateQuestNpc(quest, paimonData.PaimonID, 0)
            
			local paimon = self:GetQuestNpcActor(paimonData.Paimon)
			--paimon:EnableInteraction(false)
            paimon:RunToTask(paimonData.Pos2,
			function(actor, task)
				--paimon:EnableInteraction(true)
            end
            )
            self:EnterSceneLookCamera(paimonData.Pos2, 0, 2, true) 
        end
    )

    self:NarratorOnlyTask(self.clientData.NarratorData.Story2, nil, "Story")
    globalActor:EnablePlayerInput(false)
    self:CallDelay(2,
        function()
            globalActor:EnablePlayerInput(true)
        end
    )
end

function Quest358:OnSubFinish35801(quest)
	print("35801 Finish : Creat NPC")
	
	local QinData = self.clientData.QinData
	self:CreateQuestNpc(quest, QinData.QinID, 0)
	local AmborData = self.clientData.AmborData
	self:CreateQuestNpc(quest, AmborData.AmborID, 0)
	local GaiaData = self.clientData.GaiaData
	self:CreateQuestNpc(quest, GaiaData.GaiaID, 0)
	local LisaData = self.clientData.LisaData
	self:CreateQuestNpc(quest, LisaData.LisaID, 0)
	local PaimonData = self.clientData.PaimonData
	self:CreateQuestNpc(quest, PaimonData.PaimonID, 0)
	
	self:PlayCutsceneIndex(35801, 
	function (self)
		self:RequestInteraction("Qin")
	end
)
end

function Quest358:OnSubFinish35802(quest)
	print("35802 Finish : Paimon Vanish")
	self:ActionSafeCall(
		function (self)
			local paimon = self:GetQuestNpcActor("Paimon")
			if paimon ~= nil then
				paimon:DestroyWithDisappear(false)
			end
		end
	)
end   

--@endregion

function Quest358:Start()
end

function Quest358:OnDestroy()
end

return Quest358