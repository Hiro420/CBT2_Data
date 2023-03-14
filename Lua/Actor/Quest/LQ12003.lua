require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest12003 = class("Quest12003", questActorProxy)

Quest12003.defaultAlias = "Quest12003"
util.do_require('Quest/Share/Q12003ShareConfig')
local q12003Cfg = require('Quest/Client/Q12003ClientConfig')
local PaimonData=q12003Cfg.PaimonData
local XingQiuData=q12003Cfg.XingQiuData
local WlyData=q12003Cfg.WlyData
local GuardData01=q12003Cfg.GuardData01
local GuardData02=q12003Cfg.GuardData02
local GuardData03=q12003Cfg.GuardData03
local GuardData04=q12003Cfg.GuardData04
local JiaDingData=q12003Cfg.JiaDingData
local CollectorsData=q12003Cfg.CollectorsData


-- Generated
function Quest12003:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["1200301"] = self.OnSubStart1200301
	self.subStartHandlers["1200302"] = self.OnSubStart1200302
	self.subStartHandlers["1200303"] = self.OnSubStart1200303
	self.subStartHandlers["1200304"] = self.OnSubStart1200304
	self.subStartHandlers["1200305"] = self.OnSubStart1200305
	self.subStartHandlers["1200306"] = self.OnSubStart1200306
	self.subStartHandlers["1200307"] = self.OnSubStart1200307
	self.subStartHandlers["1200308"] = self.OnSubStart1200308
	self.subStartHandlers["1200309"] = self.OnSubStart1200309
	self.subStartHandlers["1200310"] = self.OnSubStart1200310
	self.subStartHandlers["1200311"] = self.OnSubStart1200311
end

function Quest12003:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["1200301"] = self.OnSubFinish1200301
	self.subFinishHandlers["1200302"] = self.OnSubFinish1200302
	self.subFinishHandlers["1200303"] = self.OnSubFinish1200303
	self.subFinishHandlers["1200304"] = self.OnSubFinish1200304
	self.subFinishHandlers["1200305"] = self.OnSubFinish1200305
	self.subFinishHandlers["1200306"] = self.OnSubFinish1200306
	self.subFinishHandlers["1200307"] = self.OnSubFinish1200307
	self.subFinishHandlers["1200308"] = self.OnSubFinish1200308
	self.subFinishHandlers["1200309"] = self.OnSubFinish1200309
	self.subFinishHandlers["1200310"] = self.OnSubFinish1200310
	self.subFinishHandlers["1200311"] = self.OnSubFinish1200311
end


---sub start & finish 内调用的函数
function Quest12003:PaimonVanish()
	print("paimon vanish")
	local paimon = self:GetQuestNpcActor(PaimonData.Alias)
	paimon:AirModeOff()
	--paimon:VanishKeep()
	if paimon ~= nil then
		paimon:DestroyWithDisappear(false)
	end
end

function Quest12003:XingQiuDestroy()
    local XingQiu = self:GetQuestNpcActor(XingQiuData.Alias)
    XingQiu:EnableHeadCtrl(true)
	if XingQiu ~= nil then
		XingQiu:Destroy(false)
	end
end
function Quest12003:WlyDestroy()
    local Wly = self:GetQuestNpcActor(WlyData.Alias)
    Wly:EnableHeadCtrl(true)
	if Wly ~= nil then
		Wly:Destroy(false)
	end
end
function Quest12003:CollectorsDestroy()
    local Collectors = self:GetQuestNpcActor(CollectorsData.Alias)
    Collectors:EnableHeadCtrl(true)
	if Collectors ~= nil then
		Collectors:Destroy(false)
	end
end

function Quest12003:JiaDingDestroy()
    local JiaDing = self:GetQuestNpcActor(JiaDingData.Alias)
	if JiaDing ~= nil then
		JiaDing:Destroy(false)
	end
end
function Quest12003:Guard01Destroy()
    local Guard01 = self:GetQuestNpcActor(GuardData01.Alias)
    Guard01:EnableHeadCtrl(true)
	if Guard01 ~= nil then
		Guard01:Destroy(false)
	end
end
function Quest12003:Guard02Destroy()
    local Guard02 = self:GetQuestNpcActor(GuardData02.Alias)
    Guard02:EnableHeadCtrl(true)
	if Guard02 ~= nil then
		Guard02:Destroy(false)
	end
end
function Quest12003:Guard03Destroy()
    local Guard03 = self:GetQuestNpcActor(GuardData03.Alias)
    Guard03:EnableHeadCtrl(true)
	if Guard03 ~= nil then
		Guard03:Destroy(false)
	end
end
--@region sub sxtart & finish handlers
---按流程触发顺序
function Quest12003:OnSubStart1200301(quest)
	print("********1200301 start")

end

function Quest12003:OnSubFinish1200301(quest)
	self:ActionSafeCall(self.PaimonVanish)
end

function Quest12003:OnSubStart1200302(quest)
	print("********1200302 start")


end

function Quest12003:OnSubFinish1200302(quest)
	self:ActionSafeCall(self.XingQiuDestroy)
	self:ActionSafeCall(self.PaimonVanish)
	globalActor:UnSpawn("XQbook")
end


function Quest12003:OnSubStart1200303(quest)
	print("********1200303 start")

    actorMgr:CreateActorWithPos("Q1200303Trigger", "Actor/Gadget/Q1200303Trigger", 70900002, 0, sceneData:GetDummyPoint(3,"Q1200207Trigger").pos, sceneData:GetDummyPoint(3,"Q1200207Trigger").rot, true, false)
	self:CreateQuestNpc(quest, XingQiuData.ID)
end


function Quest12003:OnSubFinish1200303(quest)
	print("********1200303 Finish")
	
end

function Quest12003:OnSubStart1200304(quest)
	print("********1200304 start")


end

function Quest12003:OnSubFinish1200304(quest)
    print("********1200304 Finish")
	self:ActionSafeCall(self.XingQiuDestroy)
	self:ActionSafeCall(self.WlyDestroy)
	self:ActionSafeCall(self.Guard01Destroy)
	self:ActionSafeCall(self.Guard02Destroy)
	self:ActionSafeCall(self.Guard03Destroy)
	self:ActionSafeCall(self.PaimonVanish)
end

function Quest12003:OnSubStart1200305(quest)

	actorMgr:CreateActorWithPos("Q1200310FailTrigger", "Actor/Gadget/Q1200310FailTrigger", 70900002, 0, sceneData:GetDummyPoint(3,"Q12003Battle").pos, sceneData:GetDummyPoint(3,"Q12003Battle").rot, true, false)

end

function Quest12003:OnSubFinish1200305(quest)

	self:NarratorOnlyTask(q12003Cfg.NarratorData.story1)
	
end



function Quest12003:OnSubStart1200307(quest)
	actorMgr:CreateActorWithPos("Q1200311FailTrigger", "Actor/Gadget/Q1200311FailTrigger", 70900002, 0, sceneData:GetDummyPoint(3,"Q12003Battle").pos, sceneData:GetDummyPoint(3,"Q12003Battle").rot, true, false)


end

function Quest12003:OnSubFinish1200307(quest)


end
function Quest12003:OnSubStart1200308(quest)
	local task = curtainUtils.CreateEntityCreateTask({XingQiuData.Alias})
	self:CallDelay(2,
	function(self)
		self:TransmitPlayer(3, sceneData:GetDummyPoint(3, "Q1200308Born").pos, sceneData:GetDummyPoint(3, "Q1200308Born").rot, nil,
		function (self)
			self:ShowBlackScreen(0.5, 0.5, 0.5, 
			function(self)
				self:CreateQuestNpc(quest, XingQiuData.ID)
				self:RequestInteraction("Npc10045")
				print("SHOW BLACK SCREEN 12000")
			end,
			nil, task, "QUEST_Black_Q1200010") 
		end
		)
	end
)
end

function Quest12003:OnSubFinish1200308(quest)
	self:ActionSafeCall(self.XingQiuDestroy)
	self:ActionSafeCall(self.PaimonVanish)
	self:ActionSafeCall(self.JiaDingDestroy)
	self:ActionSafeCall(self.CollectorsDestroy)
	self:ActionSafeCall(self.WlyDestroy)
end
function Quest12003:OnSubStart1200309(quest)

end

function Quest12003:OnSubFinish1200309(quest)
	self:ActionSafeCall(self.PaimonVanish)
end

function Quest12003:OnSubStart1200310(quest)
	print("********战斗失败")
	local quest = actorMgr:GetActor(q12003Cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuest(false, nil)
	end
	--self:NarratorOnlyTask(q12003Cfg.NarratorData1)
end

function Quest12003:OnSubFinish1200310(quest)

end
function Quest12003:OnSubStart1200311(quest)
	print("********战斗失败")
	local quest = actorMgr:GetActor(q12003Cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuest(false, nil)
	end
	--self:NarratorOnlyTask(q12003Cfg.NarratorData2)
end

function Quest12003:OnSubFinish1200311(quest)

end
--@endregion

function Quest12003:Start()
end

function Quest12003:OnDestroy()
end

return Quest12003