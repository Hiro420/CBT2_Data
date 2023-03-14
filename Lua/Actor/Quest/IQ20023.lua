require('Actor/ActorCommon')

local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest20023 = class("Quest20023", questActorProxy)

Quest20023.defaultAlias = "Quest20023"

local q20023cfg
local subIDs
local NPC1Data
local NPC2Data
local NPC3Data

function Quest20023:OnDataLoaded(  )
	q20023cfg = self.clientData
	subIDs = q20023cfg.SubIDs
	NPC1Data = q20023cfg.NPC1Data
	NPC2Data = q20023cfg.NPC2Data
	NPC3Data = q20023cfg.NPC3Data
end

-- Generated
function Quest20023:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["2002301"] = self.OnSubStart2002301
	self.subStartHandlers["2002302"] = self.OnSubStart2002302
	self.subStartHandlers["2002303"] = self.OnSubStart2002303
	self.subStartHandlers["2002304"] = self.OnSubStart2002304
    self.subStartHandlers["2002305"] = self.OnSubStart2002305
    self.subStartHandlers["2002306"] = self.OnSubStart2002306
	self.subStartHandlers["2002307"] = self.OnSubStart2002307
	self.subStartHandlers["2002308"] = self.OnSubStart2002308
    
end

function Quest20023:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["2002301"] = self.OnSubFinish2002301
	self.subFinishHandlers["2002302"] = self.OnSubFinish2002302
	self.subFinishHandlers["2002303"] = self.OnSubFinish2002303
	self.subFinishHandlers["2002304"] = self.OnSubFinish2002304
    self.subFinishHandlers["2002305"] = self.OnSubFinish2002305
    self.subFinishHandlers["2002306"] = self.OnSubFinish2002306
	self.subFinishHandlers["2002307"] = self.OnSubFinish2002307
	self.subFinishHandlers["2002308"] = self.OnSubFinish2002308
	
end

function Quest20023:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["2002301"] = self.OnSubFailed2002301
	self.subFailedHandlers["2002302"] = self.OnSubFailed2002302
	self.subFailedHandlers["2002303"] = self.OnSubFailed2002303
	self.subFailedHandlers["2002304"] = self.OnSubFailed2002304
	self.subFailedHandlers["2002305"] = self.OnSubFailed2002305
	self.subFailedHandlers["2002306"] = self.OnSubFailed2002306
	self.subFailedHandlers["2002307"] = self.OnSubFailed2002307
	self.subFailedHandlers["2002308"] = self.OnSubFailed2002308
end

---sub start & finish 内调用的函数


--@region sub start & finish handlers
---按流程触发顺序

function Quest20023:OnSubStart2002301(quest)
	self:CreateQuestNpc(quest, NPC3Data.NpcID, 1)
	self:NotifyTo("Npc1471", NpcUtil.NpcEventType.HIDESELF, true)
	local QuestVar = self:GetQuestVar(quest.QuestConfigId, 1)
    print("2002301全局变量为",QuestVar)
	self:SetQuestVarWithInterval(quest.QuestConfigId, 1, 1, 2)
	--self:SetQuestVar(quest.QuestConfigId, 1, 2)
    local QuestVar = self:GetQuestVar(quest.QuestConfigId, 1)
    print("2002301全局变量为",QuestVar)
    print("2002301 start")
end
   
function Quest20023:OnSubFinish2002301(quest)
    self:NotifyTo("Npc1461", NpcUtil.NpcEventType.HIDESELF, true)
    local QuestVar = self:GetQuestVar(quest.QuestConfigId, 1)
    print("2002301全局变量为",QuestVar)
    print("2002301 finish")
    
    --分支一
    if QuestVar == 1 then
		self:CreateQuestNpc(quest, NPC1Data.NpcID, 2)
		local EventNPC1 = self:GetQuestNpcActor(NPC1Data.Npc)
	    EventNPC1:SitOnChair(8010)
        

    --分支二
    elseif QuestVar == 2 then
		self:NotifyTo("Npc1403", NpcUtil.NpcEventType.HIDESELF, true)
		self:NotifyTo("Npc1471", NpcUtil.NpcEventType.HIDESELF, true)
		self:CreateQuestNpc(quest, NPC1Data.NpcID, 3)
		self:CreateQuestNpc(quest, NPC2Data.NpcID, 4)
    end
end
   
function Quest20023:OnSubFailed2002301(quest)
	self:NotifyTo("Npc1461", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1471", NpcUtil.NpcEventType.STARTDAILY, true) 
end

function Quest20023:OnSubStart2002302(quest)
	local QuestVar = self:GetQuestVar(quest.QuestConfigId, 1)
    print("2002302全局变量为",QuestVar)
	print("2002302 start")
	self:NotifyTo("Npc1461", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc1471", NpcUtil.NpcEventType.HIDESELF, true)
	globalActor:UnSpawn("Q20023WinebowlShell")
	--globalActor:SpawnGadget(70710037, sceneData:GetDummyPoint(1009,"Q20023Winebowl").pos, sceneData:GetDummyPoint(1009,"Q20023Winebowl").rot, "Q20023WinebowlShell", 1009,nil,nil,1)
	self:SpawnGadget(quest, 70710037, 1)
end

function Quest20023:OnSubFinish2002302(quest)
	print("2002302 finish")
end

function Quest20023:OnSubFailed2002302(quest)
	self:NotifyTo("Npc1461", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1471", NpcUtil.NpcEventType.STARTDAILY, true) 
end

function Quest20023:OnSubStart2002303(quest)
	local QuestVar = self:GetQuestVar(quest.QuestConfigId, 1)
    print("2002302全局变量为",QuestVar)
    self:NarratorOnlyTask(q20023cfg.NarratorData.Story1)
	self:NotifyTo("Npc1461", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc1471", NpcUtil.NpcEventType.HIDESELF, true)
	globalActor:UnSpawn("Q20023WinebowlShell")
	--globalActor:SpawnGadget(70710037, sceneData:GetDummyPoint(1009,"Q20023Winebowl").pos, sceneData:GetDummyPoint(1009,"Q20023Winebowl").rot, "Q20023WinebowlShell", 1009,nil,nil,1)
	self:SpawnGadget(quest, 70710037, 1)
	globalActor:UnSpawn("Q20023Winebowl")
	--globalActor:SpawnGadget(70710028, sceneData:GetDummyPoint(1009,"Q20023Winebowl").pos, sceneData:GetDummyPoint(1009,"Q20023Winebowl").rot, "Q20023Winebowl", 1009,nil,nil,1)
	self:SpawnGadget(quest, 70710028, 2)
	print("2002303 start")
end

function Quest20023:OnSubFinish2002303(quest)
    print("2002303 finished")
    self:NarratorOnlyTask(q20023cfg.NarratorData.Story2)
end

function Quest20023:OnSubFailed2002303(quest)
	self:NotifyTo("Npc1461", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1471", NpcUtil.NpcEventType.STARTDAILY, true) 
	print("2002303 fail")
end

function Quest20023:OnSubStart2002304(quest)
	local QuestVar = self:GetQuestVar(quest.QuestConfigId, 1)
    print("2002302全局变量为",QuestVar)
	self:NotifyTo("Npc1461", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc1471", NpcUtil.NpcEventType.HIDESELF, true)
	print("2002304 start")
end

function Quest20023:OnSubFinish2002304(quest)
	print("2002304 finish")
    self:NarratorOnlyTask(q20023cfg.NarratorData.Story3)
end
	
function Quest20023:OnSubFailed2002304(quest)
	self:NotifyTo("Npc1461", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1471", NpcUtil.NpcEventType.STARTDAILY, true) 
	print("2002304 failed")
end

function Quest20023:OnSubStart2002305(quest)
	self:NotifyTo("Npc1461", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc1471", NpcUtil.NpcEventType.HIDESELF, true)
	print("2002305 start")
end

function Quest20023:OnSubFinish2002305(quest)
	print("2002305 finish")
	self:CallDelay(2,
	function(self)
		self:ShowBlackScreen(0.5, 1, 0.5,
			function (self)
				self:DestroyQuestNpcActor(NPC1Data.Npc, 1009)
				self:DestroyQuestNpcActor(NPC3Data.Npc, 3)
				globalActor:UnSpawn("Q20023Winebowl")
				globalActor:UnSpawn("Q20023WinebowlShell")
				self:NotifyTo("Npc1461", NpcUtil.NpcEventType.STARTDAILY, true) 
			end
			)
	end
	)
end
	
function Quest20023:OnSubFailed2002305(quest)
	self:NotifyTo("Npc1461", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1471", NpcUtil.NpcEventType.STARTDAILY, true) 
	print("2002305 failed")
end

function Quest20023:OnSubStart2002306(quest)
	self:NotifyTo("Npc1461", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc1403", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc1471", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc1401", NpcUtil.NpcEventType.HIDESELF, true) 
	actorMgr:CreateActorWithPos("Q20023trigger", "Actor/Gadget/Q20023Trigger", 70900002, 0, sceneData:GetDummyPoint(3,"Event22600NPCSpawn2").pos, sceneData:GetDummyPoint(3,"Event22600NPCSpawn2").rot, true, false)
	print("2002306 start")
end

function Quest20023:OnSubFailed2002306(quest)
	self:NotifyTo("Npc1461", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1403", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1471", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1401", NpcUtil.NpcEventType.STARTDAILY, true) 
	print("2002306 fail")
end

function Quest20023:OnSubStart2002307(quest)
	self:NotifyTo("Npc1461", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc1403", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc1471", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc1401", NpcUtil.NpcEventType.HIDESELF, true) 
	
	self:CallDelay(16,
	function()
		if  self:GetSubQuestState(2002307) == 2 then
			self:FinishQuestID(false, 2002307)
			print("let 2002307 finish")
		end
	end)

	local Quinn = self:GetQuestNpcActor("Npc140301")
    Quinn:DoFreeStateTrigger()
	Quinn:DoFreeStyle(1170)

	local Nimrod = self:GetQuestNpcActor("Npc146101")
    Nimrod:DoFreeStateTrigger()
	Nimrod:DoFreeStyle(1180)
	
	
	--self:TriggerNpcSpeechBubble(140301, 200230801)
	self:CreateSpeechBubbleTask(140301, 200230801, 1, false, 0, 0)
	self:CallDelay(2.0,
	function()
		--self:ClearNpcSpeechBubble(140301)
		self:ClearSpeechBubbleTask()
	end)
	self:CallDelay(2.5,
	function()
		--self:TriggerNpcSpeechBubble(140301, 200230802)
		self:CreateSpeechBubbleTask(140301, 200230802, 1, false, 0, 0)
	end)
	self:CallDelay(4.5,
	function()
		--self:ClearNpcSpeechBubble(140301)
		self:ClearSpeechBubbleTask()
	end)
	self:CallDelay(5,
	function()
		--self:TriggerNpcSpeechBubble(146101, 200230803)
		self:CreateSpeechBubbleTask(146101, 200230803, 1, false, 0, 0)
	end)
	self:CallDelay(7,
	function()
		--self:ClearNpcSpeechBubble(146101)
		self:ClearSpeechBubbleTask()
	end)
	self:CallDelay(7.5,
	function()
		--self:TriggerNpcSpeechBubble(140301, 200230804)
		self:CreateSpeechBubbleTask(140301, 200230804, 1, false, 0, 0)
	end)
	self:CallDelay(9.5,
	function()
		--self:ClearNpcSpeechBubble(140301)
		self:ClearSpeechBubbleTask()
	end)
	self:CallDelay(10,
	function()
		--self:TriggerNpcSpeechBubble(146101, 200230805)
		self:CreateSpeechBubbleTask(146101, 200230805, 1, false, 0, 0)
	end)
	self:CallDelay(12,
	function()
		--self:ClearNpcSpeechBubble(146101)
		self:ClearSpeechBubbleTask()
	end)
	self:CallDelay(12.5,
	function()
		--self:TriggerNpcSpeechBubble(140301, 200230806)
		self:CreateSpeechBubbleTask(140301, 200230806, 1, false, 0, 0)
	end)
	self:CallDelay(14.5,
	function()
		--self:ClearNpcSpeechBubble(140301)
		self:ClearSpeechBubbleTask()
	end)
	self:CallDelay(15,
	function()
		--self:TriggerNpcSpeechBubble(146101, 200230807)
		self:CreateSpeechBubbleTask(146101, 200230807, 1, false, 0, 0)
	end)
	self:CallDelay(17,
	function()
		--self:ClearNpcSpeechBubble(146101)
		self:ClearSpeechBubbleTask()
	end)

	
	print("2002307 start")
	self:EnterSceneLookCamera(sceneData:GetDummyPoint(3,"Q20023CamTarget").pos, 0, 2, true)
	globalActor:EnablePlayerInput(false)
	self:CallDelay(2,
	function()
		globalActor:EnablePlayerInput(true)
 	end
	)
end

function Quest20023:OnSubFinish2002307(quest)
	print("2002307 finish")
end

function Quest20023:OnSubFailed2002307(quest)
	self:NotifyTo("Npc1461", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1403", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1471", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1401", NpcUtil.NpcEventType.STARTDAILY, true) 
	print("2002307 fail")
end

function Quest20023:OnSubStart2002308(quest)
	self:NotifyTo("Npc1461", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc1403", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc1471", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc1401", NpcUtil.NpcEventType.HIDESELF, true) 
	print("2002308 start")
end

function Quest20023:OnSubFinish2002308(quest)
	self:CallDelay(2,
	function(self)
		self:ShowBlackScreen(0.5, 1, 0.5,
			function (self)
				self:DestroyQuestNpcActor(NPC1Data.Npc, 3)
				self:DestroyQuestNpcActor(NPC2Data.Npc, 3)
				self:DestroyQuestNpcActor(NPC3Data.Npc, 3)
				self:NotifyTo("Npc1461", NpcUtil.NpcEventType.STARTDAILY, true) 
				self:NotifyTo("Npc1403", NpcUtil.NpcEventType.STARTDAILY, true) 
				self:NotifyTo("Npc1471", NpcUtil.NpcEventType.STARTDAILY, true) 
				self:NotifyTo("Npc1401", NpcUtil.NpcEventType.STARTDAILY, true) 
			end
			)
	end
	)
end

function Quest20023:OnSubFailed2002308(quest)
	self:NotifyTo("Npc1461", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1403", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1471", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1401", NpcUtil.NpcEventType.STARTDAILY, true) 
	print("2002308 fail")
end
--@endregion


function Quest20023:Start()
end

function Quest20023:OnDestroy()
end

return Quest20023