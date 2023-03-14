require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest21005 = class("Quest21005", questActorProxy)

Quest21005.defaultAlias = "Quest21005"

local q21005Cfg
local PosData

function Quest21005:OnDataLoaded()
	q21005Cfg = self.clientData
	PosData = q21005Cfg.PosData
end

-- Generated
--@region sub start & finish handlers
function Quest21005:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["2100501"] = self.OnSubStart2100501
	self.subStartHandlers["2100502"] = self.OnSubStart2100502
	self.subStartHandlers["2100503"] = self.OnSubStart2100503
	self.subStartHandlers["2100504"] = self.OnSubStart2100504
	self.subStartHandlers["2100505"] = self.OnSubStart2100505
	self.subStartHandlers["2100506"] = self.OnSubStart2100506
	self.subStartHandlers["2100507"] = self.OnSubStart2100507
	self.subStartHandlers["2100508"] = self.OnSubStart2100508
	self.subStartHandlers["2100509"] = self.OnSubStart2100509
	self.subStartHandlers["2100510"] = self.OnSubStart2100510
	self.subStartHandlers["2100511"] = self.OnSubStart2100511
	self.subStartHandlers["2100512"] = self.OnSubStart2100512
end

function Quest21005:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["2100501"] = self.OnSubFinish2100501
	self.subFinishHandlers["2100502"] = self.OnSubFinish2100502
	self.subFinishHandlers["2100503"] = self.OnSubFinish2100503
	self.subFinishHandlers["2100504"] = self.OnSubFinish2100504
	self.subFinishHandlers["2100505"] = self.OnSubFinish2100505
	self.subFinishHandlers["2100506"] = self.OnSubFinish2100506
	self.subFinishHandlers["2100507"] = self.OnSubFinish2100507
	self.subFinishHandlers["2100508"] = self.OnSubFinish2100508
	self.subFinishHandlers["2100509"] = self.OnSubFinish2100509
	self.subFinishHandlers["2100510"] = self.OnSubFinish2100510
	self.subFinishHandlers["2100511"] = self.OnSubFinish2100511
	self.subFinishHandlers["2100512"] = self.OnSubFinish2100512
end

function Quest21005:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["2100501"] = self.OnSubFailed2100501
	self.subFailedHandlers["2100502"] = self.OnSubFailed2100502
	self.subFailedHandlers["2100503"] = self.OnSubFailed2100503
	self.subFailedHandlers["2100504"] = self.OnSubFailed2100504
	self.subFailedHandlers["2100505"] = self.OnSubFailed2100505
	self.subFailedHandlers["2100506"] = self.OnSubFailed2100506
	self.subFailedHandlers["2100507"] = self.OnSubFailed2100507
	self.subFailedHandlers["2100508"] = self.OnSubFailed2100508
	self.subFailedHandlers["2100509"] = self.OnSubFailed2100509
	self.subFailedHandlers["2100510"] = self.OnSubFailed2100510
	self.subFailedHandlers["2100511"] = self.OnSubFailed2100511
	self.subFailedHandlers["2100512"] = self.OnSubFailed2100512
end

--[[
    @desc: 传送相关逻辑
    author:{yejz}
    time:2019-10-16 17:59:59
    @return:
]]
---------------------------------------------------------------------------
function Quest21005:On2100501CutSceneFinish()
	-- body	
	--self:TransmitPlayer(3,PosData.BornPos, PosData.BornDir,self.TransmitCallback)
	--self:StartCount
	self:TransmitPlayer(3,PosData.BornPos, PosData.BornDir,self.StartCount)
end



function Quest21005:StartTransmit()
	self:EnablePlayerInput(false)
	--self:PlayCutsceneIndex(2100501, self.On2100501CutSceneFinish)
	self:ActionSafeCall(
		function(self)
			self:CallDelay(0,
				function()
				self:PlayCutsceneIndex(2100501, self.On2100501CutSceneFinish)
				--self:TransmitPlayer(3,PosData.BornPos, PosData.BornDir,self.TransmitCallback)
				end)
		end
	)

end

function Quest21005:TransmitCallback(quest)
	self:CallDelay(0,
		function()
			self:PlayCutsceneIndex(2100501, self.StartCount)
		end
		)
	--self:CallDelay(1,self.StartCount)
end

function Quest21005:StartCount()
    self:CountDownUIStart(0, 0, 3)
    self:CallDelay(3, self.CountDown)
end

function Quest21005:CountDown()
	self:EnablePlayerInput(true)
	local quest = actorMgr:GetActor(q21005Cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuest(false, nil)
	end
end

function Quest21005:FinishTransmit()
	self:CallDelay(2,self.Transmit)
end

function Quest21005:FailTransmit()
	self:CallDelay(2,self.Transmit)
end

function Quest21005:Transmit()
	self:TransmitPlayer(3,PosData.BornPos, PosData.BornDir)
end

---------------------------------------------------------------------------------------------

---sub start & finish 内调用的函数
function Quest21005:OnSubStart2100501(quest)
	
end

function Quest21005:OnSubFinish2100501(quest)
    
end

function Quest21005:OnSubFailed2100501(quest)
	
end

function Quest21005:OnSubStart2100502(quest)

end

function Quest21005:OnSubFinish2100502(quest)
	self:FinishTransmit()
end

function Quest21005:OnSubFailed2100502(quest)
	self:FailTransmit()
end

function Quest21005:OnSubStart2100504(quest)

end

function Quest21005:OnSubFinish2100504(quest)
	self:FinishTransmit()
end

function Quest21005:OnSubFailed2100504(quest)
	self:FailTransmit()
end

function Quest21005:OnSubStart2100506(quest)

end

function Quest21005:OnSubFinish2100506(quest)
	self:FinishTransmit()
end

function Quest21005:OnSubFailed2100506(quest)
	self:FailTransmit()
end

function Quest21005:OnSubStart2100508(quest)

end

function Quest21005:OnSubFinish2100508(quest)
	self:FinishTransmit()
end

function Quest21005:OnSubFailed2100508(quest)
	self:FailTransmit()
end

function Quest21005:OnSubStart2100509(quest)
	self:StartTransmit()
end

function Quest21005:OnSubStart2100510(quest)
	self:StartTransmit()
end

function Quest21005:OnSubStart2100511(quest)
	self:StartTransmit()
end

function Quest21005:OnSubStart2100512(quest)
	self:StartTransmit()
end

--@endregion

function Quest21005:Start()
end

function Quest21005:OnDestroy()
end

return Quest21005