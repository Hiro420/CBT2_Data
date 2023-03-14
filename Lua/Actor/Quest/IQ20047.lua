require('Actor/ActorCommon')

local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest20047 = class("Quest20047", questActorProxy)

Quest20047.defaultAlias = "Quest20047"

local q20047cfg = require('Quest/Client/Q20047ClientConfig')

-- Generated
function Quest20047:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["2004701"] = self.OnSubStart2004701
	self.subStartHandlers["2004702"] = self.OnSubStart2004702
	self.subStartHandlers["2004703"] = self.OnSubStart2004703
    self.subStartHandlers["2004704"] = self.OnSubStart2004704
    self.subStartHandlers["2004705"] = self.OnSubStart2004705
	self.subStartHandlers["2004706"] = self.OnSubStart2004706
	self.subStartHandlers["2004707"] = self.OnSubStart2004707
	self.subStartHandlers["2004708"] = self.OnSubStart2004708

    
end

function Quest20047:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["2004701"] = self.OnSubFinish2004701
	self.subFinishHandlers["2004702"] = self.OnSubFinish2004702
	self.subFinishHandlers["2004703"] = self.OnSubFinish2004703
    self.subFinishHandlers["2004704"] = self.OnSubFinish2004704
    self.subFinishHandlers["2004705"] = self.OnSubFinish2004705
	self.subFinishHandlers["2004706"] = self.OnSubFinish2004706
	self.subFinishHandlers["2004707"] = self.OnSubFinish2004707
	self.subFinishHandlers["2004708"] = self.OnSubFinish2004708
	
end

function Quest20047:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["2004701"] = self.OnSubFailed2004701
	self.subFailedHandlers["2004702"] = self.OnSubFailed2004702
	self.subFailedHandlers["2004703"] = self.OnSubFailed2004703
    self.subFailedHandlers["2004704"] = self.OnSubFailed2004704
    self.subFailedHandlers["2004705"] = self.OnSubFailed2004705
	self.subFailedHandlers["2004706"] = self.OnSubFailed2004706
	self.subFailedHandlers["2004707"] = self.OnSubFailed2004707
	self.subFailedHandlers["2004708"] = self.OnSubFailed2004708

end

---sub start & finish 内调用的函数


--@region sub start & finish handlers
---按流程触发顺序
function Quest20047:InvokeOnInteraction(param)
    if param == 1 then
        print("showblackscreen")
        self:ShowBlackScreen(0.5, 1, 0.5)
    end
end

function Quest20047:OnSubStart2004701(quest)
    print("2004701 start")
end
   
function Quest20047:OnSubFinish2004701(quest)
	print("2004701 finish")
end
   
function Quest20047:OnSubFailed2004701(quest)
end

function Quest20047:OnSubStart2004702(quest)
	print("2004702 start")
end

function Quest20047:OnSubFinish2004702(quest)
    print("2004702 finish")
end

function Quest20047:OnSubFailed2004702(quest)
end

function Quest20047:OnSubStart2004703(quest)
	print("2004703 start")
end

function Quest20047:OnSubFinish2004703(quest)
    print("2004703 finished")
end

function Quest20047:OnSubFailed2004703(quest)
	print("2004703 fail")
end

function Quest20047:OnSubStart2004704(quest)
	print("2004704 start")
end

function Quest20047:OnSubFinish2004704(quest)
	print("2004704 finish")
end
	
function Quest20047:OnSubFailed2004704(quest)
	print("2004704 failed")
end

function Quest20047:OnSubStart2004705(quest)
	print("2004705 start")
end

function Quest20047:OnSubFinish2004705(quest)
	print("2004705 finish")
end
	
function Quest20047:OnSubFailed2004705(quest)
	print("2004705 failed")
end

function Quest20047:OnSubStart2004706(quest)
	print("2004706 start")
end

function Quest20047:OnSubFinish2004706(quest)
	print("2004706 finish")
	local quest = actorMgr:GetActor(q20047cfg.ActorAlias)
    if quest ~= nil then
        quest:FinishQuestID(false, 2004708)
    end
end
	
function Quest20047:OnSubFailed2004706(quest)
	print("2004706 failed")
end

function Quest20047:OnSubStart2004707(quest)
	print("2004707 start")
end

function Quest20047:OnSubFinish2004707(quest)
	print("2004707 finish")
end
	
function Quest20047:OnSubFailed2004707(quest)
	print("2004707 failed")
end

--@endregion


function Quest20047:Start()
end

function Quest20047:OnDestroy()
end

return Quest20047