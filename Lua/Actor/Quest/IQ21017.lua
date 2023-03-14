require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest21017 = class("Quest21017", questActorProxy)

Quest21017.defaultAlias = "Quest21017"

local q21017Cfg
local PosData

function Quest21017:OnDataLoaded()
	q21017Cfg = self.clientData
	PosData = q21017Cfg.PosData
end

-- Generated
--@region sub start & finish handlers
function Quest21017:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["2101701"] = self.OnSubStart2101701
	self.subStartHandlers["2101702"] = self.OnSubStart2101702
	self.subStartHandlers["2101703"] = self.OnSubStart2101703
	self.subStartHandlers["2101704"] = self.OnSubStart2101704
	self.subStartHandlers["2101705"] = self.OnSubStart2101705
	self.subStartHandlers["2101706"] = self.OnSubStart2101706
	self.subStartHandlers["2101707"] = self.OnSubStart2101707
	self.subStartHandlers["2101708"] = self.OnSubStart2101708
	self.subStartHandlers["2101709"] = self.OnSubStart2101709
	self.subStartHandlers["2101710"] = self.OnSubStart2101710
	self.subStartHandlers["2101711"] = self.OnSubStart2101711
	self.subStartHandlers["2101712"] = self.OnSubStart2101712
end

function Quest21017:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["2101701"] = self.OnSubFinish2101701
	self.subFinishHandlers["2101702"] = self.OnSubFinish2101702
	self.subFinishHandlers["2101703"] = self.OnSubFinish2101703
	self.subFinishHandlers["2101704"] = self.OnSubFinish2101704
	self.subFinishHandlers["2101705"] = self.OnSubFinish2101705
	self.subFinishHandlers["2101706"] = self.OnSubFinish2101706
	self.subFinishHandlers["2101707"] = self.OnSubFinish2101707
	self.subFinishHandlers["2101708"] = self.OnSubFinish2101708
	self.subFinishHandlers["2101709"] = self.OnSubFinish2101709
	self.subFinishHandlers["2101710"] = self.OnSubFinish2101710
	self.subFinishHandlers["2101711"] = self.OnSubFinish2101711
	self.subFinishHandlers["2101712"] = self.OnSubFinish2101712
end

function Quest21017:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["2101701"] = self.OnSubFailed2101701
	self.subFailedHandlers["2101702"] = self.OnSubFailed2101702
	self.subFailedHandlers["2101703"] = self.OnSubFailed2101703
	self.subFailedHandlers["2101704"] = self.OnSubFailed2101704
	self.subFailedHandlers["2101705"] = self.OnSubFailed2101705
	self.subFailedHandlers["2101706"] = self.OnSubFailed2101706
	self.subFailedHandlers["2101707"] = self.OnSubFailed2101707
	self.subFailedHandlers["2101708"] = self.OnSubFailed2101708
	self.subFailedHandlers["2101709"] = self.OnSubFailed2101709
	self.subFailedHandlers["2101710"] = self.OnSubFailed2101710
	self.subFailedHandlers["2101711"] = self.OnSubFailed2101711
	self.subFailedHandlers["2101712"] = self.OnSubFailed2101712
end

--[[
    @desc: 传送相关逻辑
    author:{yejz}
    time:2019-10-16 17:59:59
    @return:
]]
---------------------------------------------------------------------------
function Quest21017:StartTransmit()
	self:EnablePlayerInput(false)
	self:CallDelay(2,
	function()
		self:TransmitPlayer(3,PosData.BornPos, PosData.BornDir,self.TransmitCallback)
	end
	)
end

function Quest21017:TransmitCallback(quest)
	self:CallDelay(1,self.StartCount)
end

function Quest21017:StartCount()
    self:CountDownUIStart(0, 0, 3)
    self:CallDelay(3, self.CountDown)
end

function Quest21017:CountDown()
	self:EnablePlayerInput(true)
	local quest = actorMgr:GetActor(q21017Cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuest(false, nil)
	end
end

function Quest21017:FinishTransmit()
	self:CallDelay(2,self.Transmit)
end

function Quest21017:FailTransmit()
	self:CallDelay(2,self.Transmit)
end

function Quest21017:Transmit()
	self:TransmitPlayer(3,PosData.BornPos, PosData.BornDir)
end

---------------------------------------------------------------------------------------------

---sub start & finish 内调用的函数
function Quest21017:OnSubStart2101701(quest)
	
end

function Quest21017:OnSubFinish2101701(quest)
    
end

function Quest21017:OnSubFailed2101701(quest)
	
end

function Quest21017:OnSubStart2101702(quest)

end

function Quest21017:OnSubFinish2101702(quest)
	self:FinishTransmit()
end

function Quest21017:OnSubFailed2101702(quest)
	self:FailTransmit()
end

function Quest21017:OnSubStart2101704(quest)

end

function Quest21017:OnSubFinish2101704(quest)
	self:FinishTransmit()
end

function Quest21017:OnSubFailed2101704(quest)
	self:FailTransmit()
end

function Quest21017:OnSubStart2101706(quest)

end

function Quest21017:OnSubFinish2101706(quest)
	self:FinishTransmit()
end

function Quest21017:OnSubFailed2101706(quest)
	self:FailTransmit()
end

function Quest21017:OnSubStart2101708(quest)

end

function Quest21017:OnSubFinish2101708(quest)
	self:FinishTransmit()
end

function Quest21017:OnSubFailed2101708(quest)
	self:FailTransmit()
end

function Quest21017:OnSubStart2101709(quest)
	self:StartTransmit()
end

function Quest21017:OnSubStart2101710(quest)
	self:StartTransmit()
end

function Quest21017:OnSubStart2101711(quest)
	self:StartTransmit()
end

function Quest21017:OnSubStart2101712(quest)
	self:StartTransmit()
end

--@endregion

function Quest21017:Start()
end

function Quest21017:OnDestroy()
end

return Quest21017