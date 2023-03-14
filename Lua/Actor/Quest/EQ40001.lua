require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest40001 = class("Quest40001", questActorProxy)

Quest40001.defaultAlias = "Quest40001"

local q40001Cfg
local playerData
local paimonData
local boLaiData
local narratorData

function Quest40001:OnDataLoaded()
	q40001Cfg = self.clientData
	playerData = q40001Cfg.PlayerData
    paimonData = q40001Cfg.PaimonData
    boLaiData = q40001Cfg.BoLaiData
    narratorData = q40001Cfg.NarratorData
end

--@region Generated
function Quest40001:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["4000100"] = self.OnSubStart4000100
    self.subStartHandlers["4000101"] = self.OnSubStart4000101
    self.subStartHandlers["4000102"] = self.OnSubStart4000102
	self.subStartHandlers["4000103"] = self.OnSubStart4000103
	self.subStartHandlers["4000104"] = self.OnSubStart4000104
	self.subStartHandlers["4000105"] = self.OnSubStart4000105
	self.subStartHandlers["4000106"] = self.OnSubStart4000106
	self.subStartHandlers["4000107"] = self.OnSubStart4000107
	self.subStartHandlers["4000108"] = self.OnSubStart4000108
	self.subStartHandlers["4000109"] = self.OnSubStart4000109
	self.subStartHandlers["4000110"] = self.OnSubStart4000110
	self.subStartHandlers["4000111"] = self.OnSubStart4000111
end

function Quest40001:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["4000100"] = self.OnSubFinish4000100
	self.subFinishHandlers["4000101"] = self.OnSubFinish4000101
    self.subFinishHandlers["4000102"] = self.OnSubFinish4000102
	self.subFinishHandlers["4000103"] = self.OnSubFinish4000103
	self.subFinishHandlers["4000104"] = self.OnSubFinish4000104
	self.subFinishHandlers["4000105"] = self.OnSubFinish4000105
	self.subFinishHandlers["4000106"] = self.OnSubFinish4000106
	self.subFinishHandlers["4000107"] = self.OnSubFinish4000107
	self.subFinishHandlers["4000108"] = self.OnSubFinish4000108
	self.subFinishHandlers["4000109"] = self.OnSubFinish4000109
	self.subFinishHandlers["4000110"] = self.OnSubFinish4000110
	self.subFinishHandlers["4000111"] = self.OnSubFinish4000111
end
--@endregion

--@region sub start & finish 内调用的函数
function Quest40001:NarratorStory1()
	self:CallDelay(3,
	    function (self)
			self:NarratorOnlyTask(narratorData.Story1, self.NarratorStory2, "Story")
		end
	)
end

function Quest40001:NarratorStory2()
	self:CallDelay(3,
	    function (self)
			self:NarratorOnlyTask(narratorData.Story2, self.NarratorStory3, "Story")
		end
	)
end

function Quest40001:NarratorStory3()
	self:CallDelay(3,
	    function (self)
			self:NarratorOnlyTask(narratorData.Story3, self.NarratorStory4, "Story")
		end
	)
end

function Quest40001:NarratorStory4()
	self:CallDelay(3,
	    function (self)
			self:NarratorOnlyTask(narratorData.Story4, nil, "Story")
		end
	)
end
--@endregion


--@region sub start & finish handlers
function Quest40001:OnSubStart4000100(quest)
	print("4000100 OnStart")
	local quest = actorMgr:GetActor(q40001Cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuest(false, nil)
	end
end

function Quest40001:OnSubStart4000111(quest)
	print("4000111 OnStart")
    globalActor:StartGuide("GuideSeaLamp")
end

function Quest40001:OnSubFinish4000100(quest)
	print("4000101 OnFinished")
	self:NarratorStory1()
end

function Quest40001:OnSubFinish4000101(quest)
    print("4000101 OnFinished")
	local task = self.CreateQuestNpcCreateTask({paimonData.Alias})

    self:TransmitPlayer(3, playerData.BornPos, playerData.BornDir, nil, 
        function (self)
			-- actorMgr:CreateActorWithPos(paimonData.Alias, paimonData.Script, paimonData.ID, 0, paimonData.BornPos, paimonData.BornDir, true)  
			self:CreateQuestNpc(quest, paimonData.ID)
        end, task
	)
	
	self:ClearNarratorTask()
	self:UnCallFunc(self.NarratorStory1)
	self:UnCallFunc(self.NarratorStory2)
	self:UnCallFunc(self.NarratorStory3)
	self:UnCallFunc(self.NarratorStory4)
end

function Quest40001:OnSubFinish4000102(quest)
	print("4000102 OnFinished")
	self:ActionSafeCall(
		function(self)
			local paimon = self:GetQuestNpcActor(paimonData.Alias)
			if paimon ~= nil then
				paimon:DestroyWithDisappear(false)
			end
			
			local bolai = self:GetQuestNpcActor(boLaiData.Alias)
			if bolai ~= nil then
				bolai:Destroy(false)
			end
		end
	)
end

function Quest40001:OnSubFinish4000110(quest)
	print("4000110 OnFinished")
end

function Quest40001:OnSubFinish4000103(quest)
    print("4000103 OnFinished")

	-- local paimon = actorMgr:GetActor(paimonData.Alias)
	local paimon = self:GetQuestNpcActor(paimonData.Alias)
	if paimon ~= nil then
        paimon:DestroyWithDisappear(false)
    end
end

function Quest40001:OnSubFinish4000104(quest)
    print("4000104 OnFinished")
end

function Quest40001:OnSubFinish4000105(quest)
    print("4000105 OnFinished")
    self:ActionSafeCall(
		function(self)
			self:ShowTutorialDialog(252)
		end
	)
end

function Quest40001:OnSubFinish4000107(quest)
    print("4000101 OnFinished")
	local quest = actorMgr:GetActor(q40001Cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuestID(false, 4000108)
	end

	self:ActionSafeCall(
	    function (self)
			self:NarratorOnlyTask(narratorData.Story5, nil, "Story")
		end
	)
end
--@endregion

function Quest40001:Start()
end

function Quest40001:OnDestroy()
end

return Quest40001