require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest20031 = class("Quest20031", questActorProxy)

Quest20031.defaultAlias = "Quest20031"

local q20031Cfg = require('Quest/Client/Q20031ClientConfig')

-- Generated
function Quest20031:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["2003101"] = self.OnSubStart2003101
	self.subStartHandlers["2003102"] = self.OnSubStart2003102
    self.subStartHandlers["2003103"] = self.OnSubStart2003103
    self.subStartHandlers["2003104"] = self.OnSubStart2003104
	self.subStartHandlers["2003105"] = self.OnSubStart2003105
	self.subStartHandlers["2003106"] = self.OnSubStart2003106
	self.subStartHandlers["2003107"] = self.OnSubStart2003107

end

function Quest20031:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["2003101"] = self.OnSubFinish2003101
	self.subFinishHandlers["2003102"] = self.OnSubFinish2003102
    self.subFinishHandlers["2003103"] = self.OnSubFinish2003103
    self.subFinishHandlers["2003104"] = self.OnSubFinish2003104
	self.subFinishHandlers["2003105"] = self.OnSubFinish2003105
	self.subFinishHandlers["2003106"] = self.OnSubFinish2003106
	self.subFinishHandlers["2003107"] = self.OnSubFinish2003107

end

function Quest20031:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["2003101"] = self.OnSubFailed2003101
    self.subFailedHandlers["2003102"] = self.OnSubFailed2003102
    self.subFailedHandlers["2003103"] = self.OnSubFailed2003103
    self.subFailedHandlers["2003104"] = self.OnSubFailed2003104
	self.subFailedHandlers["2003105"] = self.OnSubFailed2003105
	self.subFailedHandlers["2003106"] = self.OnSubFailed2003106
	self.subFailedHandlers["2003107"] = self.OnSubFailed2003107
end

---sub start & finish 内调用的函数

--@region sub start & finish handlers
---按流程触发顺序
function Quest20031:OnSubFinish2003102(quest)
--让【玩家到等级自动开启且做完全部固定事件】和【玩家到等级自动开启但是没做完固定事件】互斥
	self:ActionSafeCall(self.ShowTutorial)
	if  self:GetSubQuestState(2003105) == 2 then
        self:FinishQuestID(true, 2003105)
        print("let 2003105 fail1")
    end
end

function Quest20031:ShowTutorial(quest)
	self:ShowTutorialDialog(234,
    function ()
        globalActor:StartGuide("GuideAdventureDailyTask") 
    end
)
end

function Quest20031:OnSubFinish2003103(quest)
	self:ActionSafeCall(
		function (self)
			self:RequestInteractionForceAlias("NPC1512")
		end
	)
end

function Quest20031:OnSubStart2003105(quest)
end

function Quest20031:OnSubFinish2003105(quest)
	self:ActionSafeCall(
				function (self)
					self:RequestInteractionForceAlias("NPC1512")
				end
		)
	if  self:GetSubQuestState(2003102) == 2 then
			self:FinishQuestID(true, 2003102)
			print("let 2003102 fail1")
	end
end

function Quest20031:OnSubFinish2003106(quest)
	self:ActionSafeCall(self.ShowTutorial)
end

--@endregion

function Quest20031:Start()
end

function Quest20031:OnDestroy()
end

return Quest20031