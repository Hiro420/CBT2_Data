require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest21016 = class("Quest21016", questActorProxy)

Quest21016.defaultAlias = "Quest21016"

local q21016Cfg
local PosData

function Quest21016:OnDataLoaded()
	q21016Cfg = self.clientData
	PosData = q21016Cfg.PosData
end

-- Generated
--@region sub start & finish handlers
function Quest21016:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["2101601"] = self.OnSubStart2101601
	self.subStartHandlers["2101602"] = self.OnSubStart2101602
	self.subStartHandlers["2101603"] = self.OnSubStart2101603
	self.subStartHandlers["2101604"] = self.OnSubStart2101604
	self.subStartHandlers["2101605"] = self.OnSubStart2101605
	self.subStartHandlers["2101606"] = self.OnSubStart2101606
	self.subStartHandlers["2101607"] = self.OnSubStart2101607
	self.subStartHandlers["2101608"] = self.OnSubStart2101608
	self.subStartHandlers["2101609"] = self.OnSubStart2101609
	self.subStartHandlers["2101610"] = self.OnSubStart2101610
	self.subStartHandlers["2101611"] = self.OnSubStart2101611
	self.subStartHandlers["2101612"] = self.OnSubStart2101612
end

function Quest21016:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["2101601"] = self.OnSubFinish2101601
	self.subFinishHandlers["2101602"] = self.OnSubFinish2101602
	self.subFinishHandlers["2101603"] = self.OnSubFinish2101603
	self.subFinishHandlers["2101604"] = self.OnSubFinish2101604
	self.subFinishHandlers["2101605"] = self.OnSubFinish2101605
	self.subFinishHandlers["2101606"] = self.OnSubFinish2101606
	self.subFinishHandlers["2101607"] = self.OnSubFinish2101607
	self.subFinishHandlers["2101608"] = self.OnSubFinish2101608
	self.subFinishHandlers["2101609"] = self.OnSubFinish2101609
	self.subFinishHandlers["2101610"] = self.OnSubFinish2101610
	self.subFinishHandlers["2101611"] = self.OnSubFinish2101611
	self.subFinishHandlers["2101612"] = self.OnSubFinish2101612
end

function Quest21016:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["2101601"] = self.OnSubFailed2101601
	self.subFailedHandlers["2101602"] = self.OnSubFailed2101602
	self.subFailedHandlers["2101603"] = self.OnSubFailed2101603
	self.subFailedHandlers["2101604"] = self.OnSubFailed2101604
	self.subFailedHandlers["2101605"] = self.OnSubFailed2101605
	self.subFailedHandlers["2101606"] = self.OnSubFailed2101606
	self.subFailedHandlers["2101607"] = self.OnSubFailed2101607
	self.subFailedHandlers["2101608"] = self.OnSubFailed2101608
	self.subFailedHandlers["2101609"] = self.OnSubFailed2101609
	self.subFailedHandlers["2101610"] = self.OnSubFailed2101610
	self.subFailedHandlers["2101611"] = self.OnSubFailed2101611
	self.subFailedHandlers["2101612"] = self.OnSubFailed2101612
end

--[[
    @desc: 传送相关逻辑
    author:{yejz}
    time:2019-10-16 17:59:59
    @return:
]]
---------------------------------------------------------------------------
function Quest21016:StartTransmit()
	self:EnablePlayerInput(false)
	self:CallDelay(2,
	function()
		self:TransmitPlayer(3,PosData.BornPos, PosData.BornDir,self.TransmitCallback)
	end
	)
end

function Quest21016:TransmitCallback(quest)
	self:CallDelay(1,self.StartCount)
end

function Quest21016:StartCount()
    self:CountDownUIStart(0, 0, 3)
    self:CallDelay(3, self.CountDown)
end

function Quest21016:CountDown()
	self:EnablePlayerInput(true)
	local quest = actorMgr:GetActor(q21016Cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuest(false, nil)
	end
end

function Quest21016:FinishTransmit()
	self:CallDelay(2,self.Transmit)
end

function Quest21016:FailTransmit()
	self:CallDelay(2,self.Transmit)
end

function Quest21016:Transmit()
	self:TransmitPlayer(3,PosData.BornPos, PosData.BornDir)
end

---------------------------------------------------------------------------------------------

---sub start & finish 内调用的函数
function Quest21016:OnSubStart2101601(quest)
	
end

function Quest21016:OnSubFinish2101601(quest)
    
end

function Quest21016:OnSubFailed2101601(quest)
	
end

function Quest21016:OnSubStart2101602(quest)

end

function Quest21016:OnSubFinish2101602(quest)
	self:FinishTransmit()
end

function Quest21016:OnSubFailed2101602(quest)
	self:FailTransmit()
end

function Quest21016:OnSubStart2101604(quest)

end

function Quest21016:OnSubFinish2101604(quest)
	self:FinishTransmit()
end

function Quest21016:OnSubFailed2101604(quest)
	self:FailTransmit()
end

function Quest21016:OnSubStart2101606(quest)

end

function Quest21016:OnSubFinish2101606(quest)
	self:FinishTransmit()
end

function Quest21016:OnSubFailed2101606(quest)
	self:FailTransmit()
end

function Quest21016:OnSubStart2101608(quest)

end

function Quest21016:OnSubFinish2101608(quest)
	self:FinishTransmit()
end

function Quest21016:OnSubFailed2101608(quest)
	self:FailTransmit()
end

function Quest21016:OnSubStart2101609(quest)
	self:StartTransmit()
end

function Quest21016:OnSubStart2101610(quest)
	self:StartTransmit()
end

function Quest21016:OnSubStart2101611(quest)
	self:StartTransmit()
end

function Quest21016:OnSubStart2101612(quest)
	self:StartTransmit()
end

--@endregion

function Quest21016:Start()
end

function Quest21016:OnDestroy()
end

return Quest21016