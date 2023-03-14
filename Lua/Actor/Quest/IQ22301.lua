require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest22301 = class("Quest22301", questActorProxy)

Quest22301.defaultAlias = "Quest22301"

--local q22301Cfg = require('Quest/Client/Q22301ClientConfig')
local q22301Cfg
local TaleTypeMatch
local TaleWantMatch
local NPCData01
local NPCData02
local NPCData03
local NPCData04

function Quest22301:OnDataLoaded()
	q22301Cfg = self.clientData
	TaleTypeMatch = q22301Cfg.TaleType
	TaleWantMatch = q22301Cfg.TaleWant
	NPCData01=q22301Cfg.NPCData01
	NPCData02=q22301Cfg.NPCData02
	NPCData03=q22301Cfg.NPCData03
	NPCData04=q22301Cfg.NPCData04
end


-- Generated
--@region sub start & finish handlers
function Quest22301:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["2230101"] = self.OnSubStart2230101
	self.subStartHandlers["2230191"] = self.OnSubStart2230191
	self.subStartHandlers["2230192"] = self.OnSubStart2230192
	self.subStartHandlers["2230193"] = self.OnSubStart2230193
	self.subStartHandlers["2230102"] = self.OnSubStart2230102
	self.subStartHandlers["2230111"] = self.OnSubStart2230111
	self.subStartHandlers["2230112"] = self.OnSubStart2230112
	self.subStartHandlers["2230113"] = self.OnSubStart2230113
	self.subStartHandlers["2230121"] = self.OnSubStart2230121
	self.subStartHandlers["2230122"] = self.OnSubStart2230122
	self.subStartHandlers["2230123"] = self.OnSubStart2230123
	self.subStartHandlers["2230161"] = self.OnSubStart2230161
	self.subStartHandlers["2230162"] = self.OnSubStart2230162
	self.subStartHandlers["2230163"] = self.OnSubStart2230163
	self.subStartHandlers["2230103"] = self.OnSubStart2230103
	self.subStartHandlers["2230104"] = self.OnSubStart2230104
	self.subStartHandlers["2230105"] = self.OnSubStart2230105
	self.subStartHandlers["2230106"] = self.OnSubStart2230106
	self.subStartHandlers["2230107"] = self.OnSubStart2230107
	self.subStartHandlers["2230108"] = self.OnSubStart2230108
	self.subStartHandlers["2230109"] = self.OnSubStart2230109
end

function Quest22301:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["2230101"] = self.OnSubFinish2230101
	self.subFinishHandlers["2230191"] = self.OnSubFinish2230191
	self.subFinishHandlers["2230192"] = self.OnSubFinish2230192
	self.subFinishHandlers["2230193"] = self.OnSubFinish2230193
	self.subFinishHandlers["2230102"] = self.OnSubFinish2230102
	self.subFinishHandlers["2230111"] = self.OnSubFinish2230111
	self.subFinishHandlers["2230112"] = self.OnSubFinish2230112
	self.subFinishHandlers["2230113"] = self.OnSubFinish2230113
	self.subFinishHandlers["2230121"] = self.OnSubFinish2230121
	self.subFinishHandlers["2230122"] = self.OnSubFinish2230122
	self.subFinishHandlers["2230123"] = self.OnSubFinish2230123
	self.subFinishHandlers["2230161"] = self.OnSubFinish2230161
	self.subFinishHandlers["2230162"] = self.OnSubFinish2230162
	self.subFinishHandlers["2230163"] = self.OnSubFinish2230163
	self.subFinishHandlers["2230103"] = self.OnSubFinish2230103
	self.subFinishHandlers["2230104"] = self.OnSubFinish2230104
	self.subFinishHandlers["2230105"] = self.OnSubFinish2230105
	self.subFinishHandlers["2230106"] = self.OnSubFinish2230106
	self.subFinishHandlers["2230107"] = self.OnSubFinish2230107
	self.subFinishHandlers["2230108"] = self.OnSubFinish2230108
	self.subFinishHandlers["2230109"] = self.OnSubFinish2230109		
end

function Quest22301:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["2230101"] = self.OnSubFailed2230101
	self.subFailedHandlers["2230191"] = self.OnSubFailed2230191
	self.subFailedHandlers["2230192"] = self.OnSubFailed2230192
	self.subFailedHandlers["2230193"] = self.OnSubFailed2230193
	self.subFailedHandlers["2230102"] = self.OnSubFailed2230102
	self.subFailedHandlers["2230111"] = self.OnSubFailed2230111
	self.subFailedHandlers["2230112"] = self.OnSubFailed2230112
	self.subFailedHandlers["2230113"] = self.OnSubFailed2230113
	self.subFailedHandlers["2230121"] = self.OnSubFailed2230121
	self.subFailedHandlers["2230122"] = self.OnSubFailed2230122
	self.subFailedHandlers["2230123"] = self.OnSubFailed2230123
	self.subFailedHandlers["2230161"] = self.OnSubFailed2230161
	self.subFailedHandlers["2230162"] = self.OnSubFailed2230162
	self.subFailedHandlers["2230163"] = self.OnSubFailed2230163
	self.subFailedHandlers["2230103"] = self.OnSubFailed2230103
	self.subFailedHandlers["2230104"] = self.OnSubFailed2230104
	self.subFailedHandlers["2230105"] = self.OnSubFailed2230105
	self.subFailedHandlers["2230106"] = self.OnSubFailed2230106
	self.subFailedHandlers["2230107"] = self.OnSubFailed2230107
	self.subFailedHandlers["2230108"] = self.OnSubFailed2230108	
	self.subFailedHandlers["2230109"] = self.OnSubFailed2230109	
end

--[[
    @desc: 传送相关逻辑
    author:{yejz}
    time:2019-10-16 17:59:59
    @return:
]]
---------------------------------------------------------------------------
function Quest22301:QuestInitialize(quest)
	self:SetQuestVar(2230101, 4, 0)
--	self:NotifyTo("Npc2010", DailyNpcManager.NpcEventType.BANDAILY, true)
--	self:NotifyTo("Npc1626", DailyNpcManager.NpcEventType.BANDAILY, true)
	self:NotifyTo("Npc2026", DailyNpcManager.NpcEventType.BANDAILY, true)
--	self:NotifyTo("Npc2011", DailyNpcManager.NpcEventType.BANDAILY, true)
	local QuestNpcRandom = 0

	QuestNpcRandom = math.random( 1,3 )
	local QuestNpcQuestID = {2230191,2230192,2230193}
	table.remove(QuestNpcQuestID, QuestNpcRandom )
	local quest_Actor = actorMgr:GetActor(q22301Cfg.ActorAlias)
	if quest_Actor ~= nil then
		quest_Actor:FinishQuestID(false, QuestNpcQuestID[1])
		quest_Actor:FinishQuestID(false, QuestNpcQuestID[2])
	end
	local QuestNovalRandom = 0
	QuestNovalRandom = math.random( 1,1 )
	local QuestVar2 = TaleTypeMatch[tostring(QuestNpcQuestID[1]*10+QuestNovalRandom)]
	self:SetQuestVar(2230101, 2, QuestVar2)
	QuestNovalRandom = math.random( 1,1 )
	local QuestVar3 = TaleTypeMatch[tostring(QuestNpcQuestID[2]*10+QuestNovalRandom)]
	self:SetQuestVar(2230101, 3, QuestVar3)
	self:SetQuestVar(2230101, 4, 1)
end

function Quest22301:Rewind_NPC(quest)
	self:NotifyTo("Npc2010", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc2062", NpcUtil.NpcEventType.HIDESELF, true)		
	if self:GetSubQuestState(2230192) == 3 then
		self:NotifyTo("Npc2011", NpcUtil.NpcEventType.HIDESELF, true)  

		local NPCActor = self:GetQuestNpcActorNoDummy(NPCData03.Npc)
		if NPCActor == nil then
		self:CreateQuestNpc(quest,NPCData03.NpcID)
		end
	end
	if self:GetSubQuestState(2230191) == 3 then
		self:NotifyTo("Npc1626", NpcUtil.NpcEventType.HIDESELF, true)  

		local NPCActor = self:GetQuestNpcActorNoDummy(NPCData02.Npc)
		if NPCActor == nil then
		self:CreateQuestNpc(quest,NPCData02.NpcID)
		end
	end
end

-----------------------------------------------------------------------------------------

---sub start & finish 内调用的函数
function Quest22301:OnSubStart2230101(quest)
	self:CreateQuestNpc(quest,NPCData04.NpcID)
	self:NotifyTo("Npc1626", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc2011", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc2010", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc2062", NpcUtil.NpcEventType.HIDESELF, true)	
end
function Quest22301:OnSubFinish2230101(quest)
	if self:GetQuestVar(quest.QuestConfigId, 4) == 0 then
		self:QuestInitialize(quest)
	end
end
function Quest22301:OnSubFailed2230101(quest)
end
function Quest22301:OnSubStart2230102(quest)
	self:NotifyTo("Npc2026", DailyNpcManager.NpcEventType.BANDAILY, true)
	self:Rewind_NPC(quest)
end
function Quest22301:OnSubFinish2230102(quest)
	local quest_Actor = actorMgr:GetActor(q22301Cfg.ActorAlias)
	if quest_Actor ~= nil then
		quest_Actor:FinishQuestID(false, 2230109)
	end
end
function Quest22301:OnSubFailed2230102(quest)
end
function Quest22301:OnSubStart2230103(quest)
	self:Rewind_NPC(quest)
end
function Quest22301:OnSubFinish2230103(quest)
	local quest01 = actorMgr:GetActor(q22301Cfg.ActorAlias)
	local GivingRecord = 0
	if quest01 ~= nil then
		GivingRecord =  quest01:GetGivingRecord(2230103)
	end
	self:SetQuestVar(quest.QuestConfigId, 0, GivingRecord)
	local QuestVar1 = 1
	if TaleWantMatch[tostring(self:GetQuestVar(quest.QuestConfigId,2))] == GivingRecord then
		QuestVar1 = QuestVar1 + 1
	end
	if TaleWantMatch[tostring(self:GetQuestVar(quest.QuestConfigId,3))] == GivingRecord then
		QuestVar1 = QuestVar1 + 1
	end
	self:SetQuestVar(quest.QuestConfigId,1,QuestVar1)

end
function Quest22301:OnSubFailed2230103(quest)
end
function Quest22301:OnSubStart2230104(quest)
	self:ShowBlackScreen(0.5, 1, 0.5,
	function(self)
		self:NotifyTo("Npc2026", NpcUtil.NpcEventType.HIDESELF, true)
		self:NotifyTo("Npc1626", NpcUtil.NpcEventType.HIDESELF, true)
		self:NotifyTo("Npc2011", NpcUtil.NpcEventType.HIDESELF, true)
		self:CreateQuestNpc(quest,NPCData01.NpcID)
		self:CreateQuestNpc(quest,NPCData02.NpcID)
		self:CreateQuestNpc(quest,NPCData03.NpcID)
	end
)
	print("OnSubStart2230104 create speech bubble")
	self:CreateSpeechBubbleTask(202601,223019901, 5, true, 5, 10)
	self:CreateSpeechBubbleTask(162601,223019902, 5, true, 5, 10)
	self:CreateSpeechBubbleTask(201101,223019903, 5, true, 5, 10)

	if self:GetQuestVar(quest.QuestconfigId,4) < 4 then
		self:RequestInteraction("Npc201001")
	end
	self:SetQuestVar(quest.QuestConfigId,4,4)
end
function Quest22301:OnSubFinish2230104(quest)
	print("OnSubFinish2230104 create speech bubble")
	self:ClearSpeechBubbleTask()
	self:CreateSpeechBubbleTask(202601,223019904, 5, true, 5, 10)
	self:CreateSpeechBubbleTask(162601,223019905, 5, true, 5, 10)
	self:CreateSpeechBubbleTask(201101,223019906, 5, true, 5, 10)
end
function Quest22301:OnSubFailed2230104(quest)
end
function Quest22301:OnSubStart2230105(quest)
end
function Quest22301:OnSubFinish2230105(quest)
end
function Quest22301:OnSubFailed2230105(quest)
end
function Quest22301:OnSubStart2230106(quest)
end
function Quest22301:OnSubFinish2230106(quest)
end
function Quest22301:OnSubFailed2230106(quest)
end
function Quest22301:OnSubStart2230107(quest)
end
function Quest22301:OnSubFinish2230107(quest)
end
function Quest22301:OnSubFailed2230107(quest)
end
function Quest22301:OnSubStart2230108(quest)
end
function Quest22301:OnSubFinish2230108(quest)
	self:ClearSpeechBubbleTask()
	self:ShowBlackScreen(0.5, 1, 0.5,
	function(self)
		print("startdaily")
		local npc_alias = self:GetQuestNpcActor(NPCData01.Npc,22301)
		npc_alias:Destroy(false)
		npc_alias = self:GetQuestNpcActor(NPCData02.Npc,22301)
		npc_alias:Destroy(false)
		npc_alias = self:GetQuestNpcActor(NPCData03.Npc,22301)
		npc_alias:Destroy(false)
		npc_alias = self:GetQuestNpcActor(NPCData04.Npc,22301)
		npc_alias:Destroy(false)		
		self:NotifyTo("Npc2026", NpcUtil.NpcEventType.STARTDAILY, true)
		self:NotifyTo("Npc1626", NpcUtil.NpcEventType.STARTDAILY, true)
		self:NotifyTo("Npc2011", NpcUtil.NpcEventType.STARTDAILY, true)
		self:NotifyTo("Npc2010", NpcUtil.NpcEventType.STARTDAILY, true)
		self:NotifyTo("Npc2062", NpcUtil.NpcEventType.STARTDAILY, true)
	end
)

end
function Quest22301:OnSubFailed2230108(quest)
end
function Quest22301:OnSubStart2230111(quest)
end
function Quest22301:OnSubFinish2230111(quest)
end
function Quest22301:OnSubFailed2230111(quest)
end
function Quest22301:OnSubStart2230112(quest)
end
function Quest22301:OnSubFinish2230112(quest)
end
function Quest22301:OnSubFailed2230112(quest)
end
function Quest22301:OnSubStart2230113(quest)
end
function Quest22301:OnSubFinish2230113(quest)
end
function Quest22301:OnSubFailed2230113(quest)
end
function Quest22301:OnSubStart2230121(quest)
end
function Quest22301:OnSubFinish2230121(quest)
end
function Quest22301:OnSubFailed2230121(quest)
end
function Quest22301:OnSubStart2230122(quest)
end
function Quest22301:OnSubFinish2230122(quest)
end
function Quest22301:OnSubFailed2230122(quest)
end
function Quest22301:OnSubStart2230123(quest)
end
function Quest22301:OnSubFinish2230123(quest)
end
function Quest22301:OnSubFailed2230123(quest)
end
function Quest22301:OnSubStart2230161(quest)
--	self:Rewind_NPC(quest)
end
function Quest22301:OnSubFinish2230161(quest)
	
end
function Quest22301:OnSubFailed2230161(quest)
end
function Quest22301:OnSubStart2230162(quest)
--	self:Rewind_NPC(quest)
end
function Quest22301:OnSubFinish2230162(quest)
end
function Quest22301:OnSubFailed2230162(quest)
end
function Quest22301:OnSubStart2230163(quest)
--	self:Rewind_NPC(quest)
end
function Quest22301:OnSubFinish2230163(quest)
end
function Quest22301:OnSubFailed2230163(quest)
end
function Quest22301:OnSubStart2230191(quest)
end
function Quest22301:OnSubFinish2230191(quest)
	self:CreateQuestNpc(quest,NPCData02.NpcID)
end
function Quest22301:OnSubFailed2230191(quest)
end
function Quest22301:OnSubStart2230192(quest)
	self:CreateQuestNpc(quest,NPCData03.NpcID)
end
function Quest22301:OnSubFinish2230192(quest)
end
function Quest22301:OnSubFailed2230192(quest)
end
function Quest22301:OnSubStart2230193(quest)
end
function Quest22301:OnSubFinish2230193(quest)
end
function Quest22301:OnSubFailed2230193(quest)
end

function Quest22301:InvokeOnInteraction(param)
	if param == 1 then

	end
end
--@endregion

function Quest22301:OnMainFinished(quest)
	print("main finished " .. tostring(quest.QuestMainId))
end

function Quest22301:OnMainFailed(quest)
	print("main failed " .. tostring(quest.QuestMainId))
	local npc_alias = self:GetQuestNpcActor(NPCData01.Npc,22301)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPCData02.Npc,22301)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPCData03.Npc,22301)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPCData04.Npc,22301)
	npc_alias:Destroy(false)		
	self:NotifyTo("Npc2026", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1626", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc2011", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc2010", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc2062", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest22301:OnMainCanceled(quest)
	print("main canceled " .. tostring(quest.QuestMainId))
	local npc_alias = self:GetQuestNpcActor(NPCData01.Npc,22301)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPCData02.Npc,22301)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPCData03.Npc,22301)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPCData04.Npc,22301)
	npc_alias:Destroy(false)		
	self:NotifyTo("Npc2026", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1626", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc2011", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc2010", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc2062", NpcUtil.NpcEventType.STARTDAILY, true)
end


function Quest22301:Start()
end

function Quest22301:OnDestroy()
end

return Quest22301