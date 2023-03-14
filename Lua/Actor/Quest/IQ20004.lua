require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest20004 = class("Quest20004", questActorProxy)

Quest20004.defaultAlias = "Quest20004"

local q20004Cfg
local PosData

function Quest20004:OnDataLoaded()
	q20004Cfg = self.clientData
	PosData = q20004Cfg.PosData
end

-- Generated
function Quest20004:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["2000401"] = self.OnSubStart2000401
	self.subStartHandlers["2000402"] = self.OnSubStart2000402
	self.subStartHandlers["2000403"] = self.OnSubStart2000403
	self.subStartHandlers["2000404"] = self.OnSubStart2000404
	self.subStartHandlers["2000405"] = self.OnSubStart2000405
	self.subStartHandlers["2000406"] = self.OnSubStart2000406
	self.subStartHandlers["2000407"] = self.OnSubStart2000407
	self.subStartHandlers["2000408"] = self.OnSubStart2000408
end

function Quest20004:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["2000401"] = self.OnSubFinish2000401
	self.subFinishHandlers["2000402"] = self.OnSubFinish2000402
	self.subFinishHandlers["2000403"] = self.OnSubFinish2000403
	self.subFinishHandlers["2000404"] = self.OnSubFinish2000404
	self.subFinishHandlers["2000405"] = self.OnSubFinish2000405
	self.subFinishHandlers["2000406"] = self.OnSubFinish2000406
	self.subFinishHandlers["2000407"] = self.OnSubFinish2000407
	self.subFinishHandlers["2000408"] = self.OnSubFinish2000408
end

function Quest20004:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["2000401"] = self.OnSubFailed2000401
	self.subFailedHandlers["2000402"] = self.OnSubFailed2000402
	self.subFailedHandlers["2000403"] = self.OnSubFailed2000403
	self.subFailedHandlers["2000404"] = self.OnSubFailed2000404
	self.subFailedHandlers["2000405"] = self.OnSubFailed2000405
	self.subFailedHandlers["2000406"] = self.OnSubFailed2000406
	self.subFailedHandlers["2000407"] = self.OnSubFailed2000407
	self.subFailedHandlers["2000408"] = self.OnSubFailed2000408
end

---sub start & finish 内调用的函数
function Quest20004:StartTransmit()
	self:CallDelay(2,self.Transmit)
end

function Quest20004:FinishTransmit()
	self:CallDelay(8,self.Transmit)
end

function Quest20004:FailTransmit()
	self:CallDelay(4,self.Transmit)
end

function Quest20004:Transmit()
	self:TransmitPlayer(3,PosData.BornPos, PosData.BornDir)
end

--@region sub start & finish handlers
---按流程触发顺序
function Quest20004:OnSubStart2000401(quest)
	
end

function Quest20004:OnSubFinish2000401(quest)
    
	
end

function Quest20004:OnSubFailed2000401(quest)
	

end

function Quest20004:OnSubStart2000402(quest)
	self:StartTransmit()
end

function Quest20004:OnSubFinish2000402(quest)
	self:FinishTransmit()
end

function Quest20004:OnSubFailed2000402(quest)
	self:FailTransmit()
end

function Quest20004:OnSubStart2000404(quest)
	self:StartTransmit()
end

function Quest20004:OnSubFinish2000404(quest)
	self:FinishTransmit()
end

function Quest20004:OnSubFailed2000404(quest)
	self:FailTransmit()
end

function Quest20004:OnSubStart2000406(quest)
	self:StartTransmit()
end

function Quest20004:OnSubFinish2000406(quest)
	self:FinishTransmit()
end

function Quest20004:OnSubFailed2000406(quest)
	self:FailTransmit()
end

function Quest20004:OnSubStart2000408(quest)
	self:StartTransmit()
end

function Quest20004:OnSubFinish2000408(quest)
	self:FinishTransmit()
end

function Quest20004:OnSubFailed2000408(quest)
	self:FailTransmit()
end




--@endregion

function Quest20004:Start()
end

function Quest20004:OnDestroy()
end

return Quest20004