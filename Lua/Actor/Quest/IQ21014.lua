require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest21014 = class("Quest21014", questActorProxy)

Quest21014.defaultAlias = "Quest21014"

local q21014Cfg = require('Quest/Client/Q21014ClientConfig')


-- Generated
function Quest21014:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["2101400"] = self.OnSubStart2101400

end

function Quest21014:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["2101400"] = self.OnSubFinish2101400

end

function Quest21014:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["2101400"] = self.OnSubFailed2101400

end



--@region sub start & finish handlers
---按流程触发顺序
function Quest21014:OnSubStart2101400(quest)
	actorMgr:CreateActorWithPos("Q2101400Trigger", "Actor/Gadget/Q2101400Trigger", 70900002, 0, sceneData:GetDummyPoint(3,"Q21014_ShowLiYueCutScene").pos, sceneData:GetDummyPoint(3,"Q21014_ShowLiYueCutScene").rot, true, false)
	
end

function Quest21014:OnSubFinish2101400(quest)
	
	self:PlayCutscene(q21014Cfg.InterData.Cutscene1)
    
	
end

function Quest21014:OnSubFailed2101400(quest)
	

end

--@endregion

function Quest21014:Start()
end

function Quest21014:OnDestroy()
end

return Quest21014