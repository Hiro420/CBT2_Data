require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest22307 = class("Quest22307", questActorProxy)

Quest22307.defaultAlias = "Quest22307"

--local q22307Cfg = require('Quest/Client/Q22307ClientConfig')

local q22307Cfg

function Quest22307:OnDataLoaded()
	q22307Cfg = self.clientData
end

-- Generated
--@region sub start & finish handlers
function Quest22307:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["2230701"] = self.OnSubStart2230701
	self.subStartHandlers["2230702"] = self.OnSubStart2230702
	self.subStartHandlers["2230703"] = self.OnSubStart2230703
	self.subStartHandlers["2230704"] = self.OnSubStart2230704
	self.subStartHandlers["2230705"] = self.OnSubStart2230705
	self.subStartHandlers["2230711"] = self.OnSubStart2230711
	self.subStartHandlers["2230712"] = self.OnSubStart2230712
	self.subStartHandlers["2230713"] = self.OnSubStart2230713
	self.subStartHandlers["2230721"] = self.OnSubStart2230721
	self.subStartHandlers["2230722"] = self.OnSubStart2230722
	self.subStartHandlers["2230723"] = self.OnSubStart2230723
	self.subStartHandlers["2230731"] = self.OnSubStart2230731
	self.subStartHandlers["2230732"] = self.OnSubStart2230732
	self.subStartHandlers["2230733"] = self.OnSubStart2230733
	self.subStartHandlers["2230741"] = self.OnSubStart2230741
	self.subStartHandlers["2230742"] = self.OnSubStart2230742
	self.subStartHandlers["2230743"] = self.OnSubStart2230743
	self.subStartHandlers["2230751"] = self.OnSubStart2230751
end

function Quest22307:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["2230701"] = self.OnSubFinish2230701
	self.subFinishHandlers["2230702"] = self.OnSubFinish2230702
	self.subFinishHandlers["2230703"] = self.OnSubFinish2230703
	self.subFinishHandlers["2230704"] = self.OnSubFinish2230704
	self.subFinishHandlers["2230705"] = self.OnSubFinish2230705
	self.subFinishHandlers["2230711"] = self.OnSubFinish2230711
	self.subFinishHandlers["2230712"] = self.OnSubFinish2230712
	self.subFinishHandlers["2230713"] = self.OnSubFinish2230713
	self.subFinishHandlers["2230721"] = self.OnSubFinish2230721
	self.subFinishHandlers["2230722"] = self.OnSubFinish2230722
	self.subFinishHandlers["2230723"] = self.OnSubFinish2230723
	self.subFinishHandlers["2230731"] = self.OnSubFinish2230731
	self.subFinishHandlers["2230732"] = self.OnSubFinish2230732
	self.subFinishHandlers["2230733"] = self.OnSubFinish2230733
	self.subFinishHandlers["2230741"] = self.OnSubFinish2230741
	self.subFinishHandlers["2230742"] = self.OnSubFinish2230742
	self.subFinishHandlers["2230743"] = self.OnSubFinish2230743
	self.subFinishHandlers["2230751"] = self.OnSubFinish2230751
end

function Quest22307:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["2230701"] = self.OnSubFailed2230701
	self.subFailedHandlers["2230702"] = self.OnSubFailed2230702
	self.subFailedHandlers["2230703"] = self.OnSubFailed2230703
	self.subFailedHandlers["2230704"] = self.OnSubFailed2230704
	self.subFailedHandlers["2230705"] = self.OnSubFailed2230705
	self.subFailedHandlers["2230711"] = self.OnSubFailed2230711
	self.subFailedHandlers["2230712"] = self.OnSubFailed2230712
	self.subFailedHandlers["2230713"] = self.OnSubFailed2230713
	self.subFailedHandlers["2230721"] = self.OnSubFailed2230721
	self.subFailedHandlers["2230722"] = self.OnSubFailed2230722
	self.subFailedHandlers["2230723"] = self.OnSubFailed2230723
	self.subFailedHandlers["2230731"] = self.OnSubFailed2230731
	self.subFailedHandlers["2230732"] = self.OnSubFailed2230732
	self.subFailedHandlers["2230733"] = self.OnSubFailed2230733	
	self.subFailedHandlers["2230741"] = self.OnSubFailed2230741
	self.subFailedHandlers["2230742"] = self.OnSubFailed2230742
	self.subFailedHandlers["2230743"] = self.OnSubFailed2230743	
	self.subFailedHandlers["2230751"] = self.OnSubFailed2230751	
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
function Quest22307:OnSubStart2230701(quest)
	self:SetQuestVarWithInterval(quest.QuestConfigId,0,1,3)
end
function Quest22307:OnSubFinish2230701(quest)
end
function Quest22307:OnSubFailed2230701(quest)
end
function Quest22307:OnSubStart2230702(quest)
end
function Quest22307:OnSubFinish2230702(quest)

end
function Quest22307:OnSubFailed2230702(quest)
end
function Quest22307:OnSubStart2230703(quest)
end
function Quest22307:OnSubFinish2230703(quest)
end
function Quest22307:OnSubFailed2230703(quest)
end
function Quest22307:OnSubStart2230704(quest)
end
function Quest22307:OnSubFinish2230704(quest)
end
function Quest22307:OnSubFailed2230704(quest)
end
function Quest22307:OnSubStart2230705(quest)
end
function Quest22307:OnSubFinish2230705(quest)
end
function Quest22307:OnSubFailed2230705(quest)
end
function Quest22307:OnSubStart2230711(quest)
end
function Quest22307:OnSubFinish2230711(quest)
end
function Quest22307:OnSubFailed2230711(quest)
end
function Quest22307:OnSubStart2230712(quest)
end
function Quest22307:OnSubFinish2230712(quest)
end
function Quest22307:OnSubFailed2230712(quest)
end
function Quest22307:OnSubStart2230713(quest)
end
function Quest22307:OnSubFinish2230713(quest)
end
function Quest22307:OnSubFailed2230713(quest)
end
function Quest22307:OnSubStart2230721(quest)
end
function Quest22307:OnSubFinish2230721(quest)
end
function Quest22307:OnSubFailed2230721(quest)
end
function Quest22307:OnSubStart2230722(quest)
end
function Quest22307:OnSubFinish2230722(quest)
end
function Quest22307:OnSubFailed2230722(quest)
end
function Quest22307:OnSubStart2230723(quest)
end
function Quest22307:OnSubFinish2230723(quest)
end
function Quest22307:OnSubFailed2230723(quest)
end
function Quest22307:OnSubStart2230731(quest)
end
function Quest22307:OnSubFinish2230731(quest)
end
function Quest22307:OnSubFailed2230731(quest)
end
function Quest22307:OnSubStart2230732(quest)
end
function Quest22307:OnSubFinish2230732(quest)
end
function Quest22307:OnSubFailed2230732(quest)
end
function Quest22307:OnSubStart2230733(quest)
end
function Quest22307:OnSubFinish2230733(quest)
end
function Quest22307:OnSubFailed2230733(quest)
end
function Quest22307:OnSubStart2230741(quest)
end
function Quest22307:OnSubFinish2230741(quest)
end
function Quest22307:OnSubFailed2230741(quest)
end
function Quest22307:OnSubStart2230742(quest)
end
function Quest22307:OnSubFinish2230742(quest)
end
function Quest22307:OnSubFailed2230742(quest)
end
function Quest22307:OnSubStart2230743(quest)
end
function Quest22307:OnSubFinish2230743(quest)
end
function Quest22307:OnSubFailed2230743(quest)
end
function Quest22307:OnSubStart2230751(quest)
end
function Quest22307:OnSubFinish2230751(quest)
	globalActor:StartGuide("RandomTaskElementViewGuideIOS")
end
function Quest22307:OnSubFailed2230751(quest)
end

function Quest22307:InvokeOnInteraction(param)
	if param == 1 then
		if self:GetQuestVar(2230702, 0) == 1 then
			self:ShowReadingDialog(100417)
		elseif self:GetQuestVar(2230702, 0) == 2 then
			self:ShowReadingDialog(100418)
		elseif self:GetQuestVar(2230702, 0) == 3 then
			self:ShowReadingDialog(100419)
		end
	end
end
--@endregion

function Quest22307:Start()
end

function Quest22307:OnDestroy()
end

return Quest22307