require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest22304 = class("Quest22304", questActorProxy)

Quest22304.defaultAlias = "Quest22304"

--local q22304Cfg = require('Quest/Client/Q22304ClientConfig')
local q22304Cfg

function Quest22304:OnDataLoaded()
	q22304Cfg = self.clientData
end


-- Generated
--@region sub start & finish handlers
function Quest22304:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["2230401"] = self.OnSubStart2230401
	self.subStartHandlers["2230402"] = self.OnSubStart2230402
	self.subStartHandlers["2230403"] = self.OnSubStart2230403
	self.subStartHandlers["2230404"] = self.OnSubStart2230404
	self.subStartHandlers["2230405"] = self.OnSubStart2230405
	self.subStartHandlers["2230411"] = self.OnSubStart2230411
	self.subStartHandlers["2230412"] = self.OnSubStart2230412
	self.subStartHandlers["2230413"] = self.OnSubStart2230413
	self.subStartHandlers["2230421"] = self.OnSubStart2230421
	self.subStartHandlers["2230422"] = self.OnSubStart2230422
	self.subStartHandlers["2230423"] = self.OnSubStart2230423
	self.subStartHandlers["2230431"] = self.OnSubStart2230431
	self.subStartHandlers["2230432"] = self.OnSubStart2230432
	self.subStartHandlers["2230433"] = self.OnSubStart2230433
	self.subStartHandlers["2230441"] = self.OnSubStart2230441
	self.subStartHandlers["2230442"] = self.OnSubStart2230442
	self.subStartHandlers["2230443"] = self.OnSubStart2230443
	self.subStartHandlers["2230451"] = self.OnSubStart2230451
end

function Quest22304:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["2230401"] = self.OnSubFinish2230401
	self.subFinishHandlers["2230402"] = self.OnSubFinish2230402
	self.subFinishHandlers["2230403"] = self.OnSubFinish2230403
	self.subFinishHandlers["2230404"] = self.OnSubFinish2230404
	self.subFinishHandlers["2230405"] = self.OnSubFinish2230405
	self.subFinishHandlers["2230411"] = self.OnSubFinish2230411
	self.subFinishHandlers["2230412"] = self.OnSubFinish2230412
	self.subFinishHandlers["2230413"] = self.OnSubFinish2230413
	self.subFinishHandlers["2230421"] = self.OnSubFinish2230421
	self.subFinishHandlers["2230422"] = self.OnSubFinish2230422
	self.subFinishHandlers["2230423"] = self.OnSubFinish2230423
	self.subFinishHandlers["2230431"] = self.OnSubFinish2230431
	self.subFinishHandlers["2230432"] = self.OnSubFinish2230432
	self.subFinishHandlers["2230433"] = self.OnSubFinish2230433
	self.subFinishHandlers["2230441"] = self.OnSubFinish2230441
	self.subFinishHandlers["2230442"] = self.OnSubFinish2230442
	self.subFinishHandlers["2230443"] = self.OnSubFinish2230443
	self.subFinishHandlers["2230451"] = self.OnSubFinish2230451
end

function Quest22304:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["2230401"] = self.OnSubFailed2230401
	self.subFailedHandlers["2230402"] = self.OnSubFailed2230402
	self.subFailedHandlers["2230403"] = self.OnSubFailed2230403
	self.subFailedHandlers["2230404"] = self.OnSubFailed2230404
	self.subFailedHandlers["2230405"] = self.OnSubFailed2230405
	self.subFailedHandlers["2230411"] = self.OnSubFailed2230411
	self.subFailedHandlers["2230412"] = self.OnSubFailed2230412
	self.subFailedHandlers["2230413"] = self.OnSubFailed2230413
	self.subFailedHandlers["2230421"] = self.OnSubFailed2230421
	self.subFailedHandlers["2230422"] = self.OnSubFailed2230422
	self.subFailedHandlers["2230423"] = self.OnSubFailed2230423
	self.subFailedHandlers["2230431"] = self.OnSubFailed2230431
	self.subFailedHandlers["2230432"] = self.OnSubFailed2230432
	self.subFailedHandlers["2230433"] = self.OnSubFailed2230433	
	self.subFailedHandlers["2230441"] = self.OnSubFailed2230441
	self.subFailedHandlers["2230442"] = self.OnSubFailed2230442
	self.subFailedHandlers["2230443"] = self.OnSubFailed2230443	
	self.subFailedHandlers["2230451"] = self.OnSubFailed2230451	
end

--[[
    @desc: 传送相关逻辑
    author:{yejz}
    time:2019-10-16 17:59:59
    @return:
]]
---------------------------------------------------------------------------

---------------------------------------------------------------------------------------------

---sub start & finish 内调用的函数
function Quest22304:OnSubStart2230401(quest)
	self:SetQuestVarWithInterval(quest.QuestConfigId,0,1,3)
end
function Quest22304:OnSubFinish2230401(quest)
end
function Quest22304:OnSubFailed2230401(quest)
end
function Quest22304:OnSubStart2230402(quest)
end
function Quest22304:OnSubFinish2230402(quest)

end
function Quest22304:OnSubFailed2230402(quest)
end
function Quest22304:OnSubStart2230403(quest)
end
function Quest22304:OnSubFinish2230403(quest)
end
function Quest22304:OnSubFailed2230403(quest)
end
function Quest22304:OnSubStart2230404(quest)
end
function Quest22304:OnSubFinish2230404(quest)
end
function Quest22304:OnSubFailed2230404(quest)
end
function Quest22304:OnSubStart2230405(quest)
end
function Quest22304:OnSubFinish2230405(quest)
end
function Quest22304:OnSubFailed2230405(quest)
end
function Quest22304:OnSubStart2230411(quest)
end
function Quest22304:OnSubFinish2230411(quest)
end
function Quest22304:OnSubFailed2230411(quest)
end
function Quest22304:OnSubStart2230412(quest)
end
function Quest22304:OnSubFinish2230412(quest)
end
function Quest22304:OnSubFailed2230412(quest)
end
function Quest22304:OnSubStart2230413(quest)
end
function Quest22304:OnSubFinish2230413(quest)
end
function Quest22304:OnSubFailed2230413(quest)
end
function Quest22304:OnSubStart2230421(quest)
end
function Quest22304:OnSubFinish2230421(quest)
end
function Quest22304:OnSubFailed2230421(quest)
end
function Quest22304:OnSubStart2230422(quest)
end
function Quest22304:OnSubFinish2230422(quest)
end
function Quest22304:OnSubFailed2230422(quest)
end
function Quest22304:OnSubStart2230423(quest)
end
function Quest22304:OnSubFinish2230423(quest)
end
function Quest22304:OnSubFailed2230423(quest)
end
function Quest22304:OnSubStart2230431(quest)
end
function Quest22304:OnSubFinish2230431(quest)
end
function Quest22304:OnSubFailed2230431(quest)
end
function Quest22304:OnSubStart2230432(quest)
end
function Quest22304:OnSubFinish2230432(quest)
end
function Quest22304:OnSubFailed2230432(quest)
end
function Quest22304:OnSubStart2230433(quest)
end
function Quest22304:OnSubFinish2230433(quest)
end
function Quest22304:OnSubFailed2230433(quest)
end
function Quest22304:OnSubStart2230441(quest)
end
function Quest22304:OnSubFinish2230441(quest)
end
function Quest22304:OnSubFailed2230441(quest)
end
function Quest22304:OnSubStart2230442(quest)
end
function Quest22304:OnSubFinish2230442(quest)
end
function Quest22304:OnSubFailed2230442(quest)
end
function Quest22304:OnSubStart2230443(quest)
end
function Quest22304:OnSubFinish2230443(quest)
end
function Quest22304:OnSubFailed2230443(quest)
end
function Quest22304:OnSubStart2230451(quest)	
end
function Quest22304:OnSubFinish2230451(quest)
	globalActor:StartGuide("RandomTaskElementViewGuideIOS")
end
function Quest22304:OnSubFailed2230451(quest)
end

function Quest22304:InvokeOnInteraction(param)
	if param == 1 then
		if self:GetQuestVar(2230402, 0) == 1 then
			self:ShowReadingDialog(100392)
		elseif self:GetQuestVar(2230402, 0) == 2 then
			self:ShowReadingDialog(100393)
		elseif self:GetQuestVar(2230402, 0) == 3 then
			self:ShowReadingDialog(100394)
		end
	end
end
--@endregion

function Quest22304:Start()
end

function Quest22304:OnDestroy()
end

return Quest22304