require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest20003 = class("Quest20003", questActorProxy)

Quest20003.defaultAlias = "Quest20003"

local q20003Cfg
local PosData

function Quest20003:OnDataLoaded()
	q20003Cfg = self.clientData
	PosData = q20003Cfg.PosData
end

-- Generated
--@region sub start & finish handlers
function Quest20003:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["2000301"] = self.OnSubStart2000301
	self.subStartHandlers["2000302"] = self.OnSubStart2000302
	self.subStartHandlers["2000303"] = self.OnSubStart2000303
	self.subStartHandlers["2000304"] = self.OnSubStart2000304
	self.subStartHandlers["2000305"] = self.OnSubStart2000305
	self.subStartHandlers["2000306"] = self.OnSubStart2000306
	self.subStartHandlers["2000307"] = self.OnSubStart2000307
	self.subStartHandlers["2000308"] = self.OnSubStart2000308
	self.subStartHandlers["2000309"] = self.OnSubStart2000309
	self.subStartHandlers["2000310"] = self.OnSubStart2000310
	self.subStartHandlers["2000311"] = self.OnSubStart2000311
	self.subStartHandlers["2000312"] = self.OnSubStart2000312
end

function Quest20003:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["2000301"] = self.OnSubFinish2000301
	self.subFinishHandlers["2000302"] = self.OnSubFinish2000302
	self.subFinishHandlers["2000303"] = self.OnSubFinish2000303
	self.subFinishHandlers["2000304"] = self.OnSubFinish2000304
	self.subFinishHandlers["2000305"] = self.OnSubFinish2000305
	self.subFinishHandlers["2000306"] = self.OnSubFinish2000306
	self.subFinishHandlers["2000307"] = self.OnSubFinish2000307
	self.subFinishHandlers["2000308"] = self.OnSubFinish2000308
	self.subFinishHandlers["2000309"] = self.OnSubFinish2000309
	self.subFinishHandlers["2000310"] = self.OnSubFinish2000310
	self.subFinishHandlers["2000311"] = self.OnSubFinish2000311
	self.subFinishHandlers["2000312"] = self.OnSubFinish2000312
end

function Quest20003:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["2000301"] = self.OnSubFailed2000301
	self.subFailedHandlers["2000302"] = self.OnSubFailed2000302
	self.subFailedHandlers["2000303"] = self.OnSubFailed2000303
	self.subFailedHandlers["2000304"] = self.OnSubFailed2000304
	self.subFailedHandlers["2000305"] = self.OnSubFailed2000305
	self.subFailedHandlers["2000306"] = self.OnSubFailed2000306
	self.subFailedHandlers["2000307"] = self.OnSubFailed2000307
	self.subFailedHandlers["2000308"] = self.OnSubFailed2000308
	self.subFailedHandlers["2000309"] = self.OnSubFailed2000309
	self.subFailedHandlers["2000310"] = self.OnSubFailed2000310
	self.subFailedHandlers["2000311"] = self.OnSubFailed2000311
	self.subFailedHandlers["2000312"] = self.OnSubFailed2000312
end

--[[
    @desc: 传送相关逻辑
    author:{yejz}
    time:2019-10-16 17:59:59
    @return:
]]
---------------------------------------------------------------------------
function Quest20003:StartTransmit()
	self:EnablePlayerInput(false)
	self:CallDelay(2,
	function()
		self:TransmitPlayer(3,PosData.BornPos, PosData.BornDir,self.TransmitCallback)
	end
	)
end

function Quest20003:TransmitCallback(quest)
	self:CallDelay(1,self.StartCount)
end

function Quest20003:StartCount()
    self:CountDownUIStart(0, 0, 3)
    self:CallDelay(3, self.CountDown)
end

function Quest20003:CountDown()
	self:EnablePlayerInput(true)
	local quest = actorMgr:GetActor(q20003Cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuest(false, nil)
	end
end

function Quest20003:FinishTransmit()
	self:CallDelay(2,self.Transmit)
end

function Quest20003:FailTransmit()
	self:CallDelay(2,self.Transmit)
end

function Quest20003:Transmit()
	self:TransmitPlayer(3,PosData.BornPos, PosData.BornDir)
end

---------------------------------------------------------------------------------------------

---sub start & finish 内调用的函数
function Quest20003:OnSubStart2000301(quest)
	
end

function Quest20003:OnSubFinish2000301(quest)
    
end

function Quest20003:OnSubFailed2000301(quest)
	
end

function Quest20003:OnSubStart2000302(quest)

end

function Quest20003:OnSubFinish2000302(quest)
	self:FinishTransmit()
end

function Quest20003:OnSubFailed2000302(quest)
	self:FailTransmit()
end

function Quest20003:OnSubStart2000304(quest)

end

function Quest20003:OnSubFinish2000304(quest)
	self:FinishTransmit()
end

function Quest20003:OnSubFailed2000304(quest)
	self:FailTransmit()
end

function Quest20003:OnSubStart2000306(quest)

end

function Quest20003:OnSubFinish2000306(quest)
	self:FinishTransmit()
end

function Quest20003:OnSubFailed2000306(quest)
	self:FailTransmit()
end

function Quest20003:OnSubStart2000308(quest)

end

function Quest20003:OnSubFinish2000308(quest)
	self:FinishTransmit()
end

function Quest20003:OnSubFailed2000308(quest)
	self:FailTransmit()
end

function Quest20003:OnSubStart2000309(quest)
	self:StartTransmit()
end

function Quest20003:OnSubStart2000310(quest)
	self:StartTransmit()
end

function Quest20003:OnSubStart2000311(quest)
	self:StartTransmit()
end

function Quest20003:OnSubStart2000312(quest)
	self:StartTransmit()
end

--@endregion

function Quest20003:Start()
end

function Quest20003:OnDestroy()
end

return Quest20003