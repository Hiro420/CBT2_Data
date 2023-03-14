require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest21004 = class("Quest21004", questActorProxy)

Quest21004.defaultAlias = "Quest21004"

local q21004Cfg = require('Quest/Client/Q21004ClientConfig')


-- Generated
function Quest21004:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["2100401"] = self.OnSubStart2100401
	self.subStartHandlers["2100402"] = self.OnSubStart2100402
	self.subStartHandlers["2100403"] = self.OnSubStart2100403
	self.subStartHandlers["2100410"] = self.OnSubStart2100410
	self.subStartHandlers["2100411"] = self.OnSubStart2100411
	self.subStartHandlers["2100412"] = self.OnSubStart2100412
	self.subStartHandlers["2100413"] = self.OnSubStart2100413
	self.subStartHandlers["2100420"] = self.OnSubStart2100420
	self.subStartHandlers["2100421"] = self.OnSubStart2100421
	self.subStartHandlers["2100430"] = self.OnSubStart2100430
	self.subStartHandlers["2100440"] = self.OnSubStart2100440
	self.subStartHandlers["2100450"] = self.OnSubStart2100450

end

function Quest21004:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["2100401"] = self.OnSubFinish2100401
	self.subFinishHandlers["2100402"] = self.OnSubFinish2100402
	self.subFinishHandlers["2100403"] = self.OnSubFinish2100403
	self.subFinishHandlers["2100410"] = self.OnSubFinish2100410
	self.subFinishHandlers["2100411"] = self.OnSubFinish2100411
	self.subFinishHandlers["2100412"] = self.OnSubFinish2100412
	self.subFinishHandlers["2100413"] = self.OnSubFinish2100413
	self.subFinishHandlers["2100420"] = self.OnSubFinish2100420
	self.subFinishHandlers["2100421"] = self.OnSubFinish2100421
	self.subFinishHandlers["2100430"] = self.OnSubFinish2100430
	self.subFinishHandlers["2100440"] = self.OnSubFinish2100440
	self.subFinishHandlers["2100450"] = self.OnSubFinish2100450

end

function Quest21004:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["2100401"] = self.OnSubFailed2100401
	self.subFailedHandlers["2100402"] = self.OnSubFailed2100402
	self.subFailedHandlers["2100403"] = self.OnSubFailed2100403
	self.subFailedHandlers["2100410"] = self.OnSubFailed2100410
	self.subFailedHandlers["2100411"] = self.OnSubFailed2100411
	self.subFailedHandlers["2100412"] = self.OnSubFailed2100412
	self.subFailedHandlers["2100413"] = self.OnSubFailed2100413
	self.subFailedHandlers["2100420"] = self.OnSubFailed2100420
	self.subFailedHandlers["2100421"] = self.OnSubFailed2100421
	self.subFailedHandlers["2100430"] = self.OnSubFailed2100430
	self.subFailedHandlers["2100440"] = self.OnSubFailed2100440
	self.subFailedHandlers["2100450"] = self.OnSubFailed2100450

end



--@region sub start & finish handlers
---按流程触发顺序

function Quest21004:OnSubFinish2100430(quest)
	self:PlayCutscene(q21004Cfg.InterData.Cutscene1)
end

function Quest21004:OnSubStart2100440(quest)
	
end

function Quest21004:OnSubFinish2100440(quest)
	
end

function Quest21004:OnSubFailed2100400(quest)
	

end

--@endregion

function Quest21004:Start()
end

function Quest21004:OnDestroy()
end

return Quest21004