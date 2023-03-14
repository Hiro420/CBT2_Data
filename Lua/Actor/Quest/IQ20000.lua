require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest20000 = class("Quest20000", questActorProxy)

Quest20000.defaultAlias = "Quest20000"

local q20000Cfg
local PosData

function Quest20000:OnDataLoaded()
	q20000Cfg = self.clientData
	PosData = q20000Cfg.PosData
end
	

-- Generated
--@region sub start & finish handlers
function Quest20000:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["2000001"] = self.OnSubStart2000001
	self.subStartHandlers["2000002"] = self.OnSubStart2000002
	self.subStartHandlers["2000003"] = self.OnSubStart2000003
	self.subStartHandlers["2000004"] = self.OnSubStart2000004
	self.subStartHandlers["2000005"] = self.OnSubStart2000005
	self.subStartHandlers["2000006"] = self.OnSubStart2000006
	self.subStartHandlers["2000007"] = self.OnSubStart2000007
	self.subStartHandlers["2000008"] = self.OnSubStart2000008
	self.subStartHandlers["2000009"] = self.OnSubStart2000009
	self.subStartHandlers["2000010"] = self.OnSubStart2000010
	self.subStartHandlers["2000011"] = self.OnSubStart2000011
	self.subStartHandlers["2000012"] = self.OnSubStart2000012
end

function Quest20000:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["2000001"] = self.OnSubFinish2000001
	self.subFinishHandlers["2000002"] = self.OnSubFinish2000002
	self.subFinishHandlers["2000003"] = self.OnSubFinish2000003
	self.subFinishHandlers["2000004"] = self.OnSubFinish2000004
	self.subFinishHandlers["2000005"] = self.OnSubFinish2000005
	self.subFinishHandlers["2000006"] = self.OnSubFinish2000006
	self.subFinishHandlers["2000007"] = self.OnSubFinish2000007
	self.subFinishHandlers["2000008"] = self.OnSubFinish2000008
	self.subFinishHandlers["2000009"] = self.OnSubFinish2000009
	self.subFinishHandlers["2000010"] = self.OnSubFinish2000010
	self.subFinishHandlers["2000011"] = self.OnSubFinish2000011
	self.subFinishHandlers["2000012"] = self.OnSubFinish2000012
end

function Quest20000:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["2000001"] = self.OnSubFailed2000001
	self.subFailedHandlers["2000002"] = self.OnSubFailed2000002
	self.subFailedHandlers["2000003"] = self.OnSubFailed2000003
	self.subFailedHandlers["2000004"] = self.OnSubFailed2000004
	self.subFailedHandlers["2000005"] = self.OnSubFailed2000005
	self.subFailedHandlers["2000006"] = self.OnSubFailed2000006
	self.subFailedHandlers["2000007"] = self.OnSubFailed2000007
	self.subFailedHandlers["2000008"] = self.OnSubFailed2000008
	self.subFailedHandlers["2000009"] = self.OnSubFailed2000009
	self.subFailedHandlers["2000010"] = self.OnSubFailed2000010
	self.subFailedHandlers["2000011"] = self.OnSubFailed2000011
	self.subFailedHandlers["2000012"] = self.OnSubFailed2000012
end

--[[
    @desc: 传送相关逻辑
    author:{yejz}
    time:2019-10-16 17:59:59
    @return:
]]
---------------------------------------------------------------------------
function Quest20000:StartTransmit()
	self:EnablePlayerInput(false)
	self:CallDelay(2,
	function()
		self:TransmitPlayer(3,PosData.BornPos, PosData.BornDir,self.TransmitCallback)
	end
	)
end

function Quest20000:TransmitCallback(quest)
	self:CallDelay(1,self.StartCount)
end

function Quest20000:StartCount()
    self:CountDownUIStart(0, 0, 3)
    self:CallDelay(3, self.CountDown)
end

function Quest20000:CountDown()
	self:EnablePlayerInput(true)
	local quest = actorMgr:GetActor(q20000Cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuest(false, nil)
	end
end

function Quest20000:FinishTransmit()
	self:CallDelay(2,self.Transmit)
end

function Quest20000:FailTransmit()
	self:CallDelay(2,self.Transmit)
end

function Quest20000:Transmit()
	self:TransmitPlayer(3,PosData.BornPos, PosData.BornDir)
end

---------------------------------------------------------------------------------------------

---sub start & finish 内调用的函数
function Quest20000:OnSubStart2000001(quest)
	
end

function Quest20000:OnSubFinish2000001(quest)
    
end

function Quest20000:OnSubFailed2000001(quest)
	
end

function Quest20000:OnSubStart2000002(quest)

end

function Quest20000:OnSubFinish2000002(quest)
	self:FinishTransmit()
end

function Quest20000:OnSubFailed2000002(quest)
	self:FailTransmit()
end

function Quest20000:OnSubStart2000004(quest)

end

function Quest20000:OnSubFinish2000004(quest)
	self:FinishTransmit()
end

function Quest20000:OnSubFailed2000004(quest)
	self:FailTransmit()
end

function Quest20000:OnSubStart2000006(quest)

end

function Quest20000:OnSubFinish2000006(quest)
	self:FinishTransmit()
end

function Quest20000:OnSubFailed2000006(quest)
	self:FailTransmit()
end

function Quest20000:OnSubStart2000008(quest)

end

function Quest20000:OnSubFinish2000008(quest)
	self:FinishTransmit()
end

function Quest20000:OnSubFailed2000008(quest)
	self:FailTransmit()
end

function Quest20000:OnSubStart2000009(quest)
	self:StartTransmit()
end

function Quest20000:OnSubStart2000010(quest)
	self:StartTransmit()
end

function Quest20000:OnSubStart2000011(quest)
	self:StartTransmit()
end

function Quest20000:OnSubStart2000012(quest)
	self:StartTransmit()
end

--@endregion

function Quest20000:Start()
end

function Quest20000:OnDestroy()
end

return Quest20000