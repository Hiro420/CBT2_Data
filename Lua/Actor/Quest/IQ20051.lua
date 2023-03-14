require('Actor/ActorCommon')

local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest20051 = class("Quest20051", questActorProxy)

Quest20051.defaultAlias = "Quest20051"

--local q20051cfg = require('Quest/Client/Q20051ClientConfig')
--util.do_require('Quest/Share/Q20051ShareConfig')

local q20051cfg
local NPC1Data
local NPC2Data
local NPC3Data
local NPC4Data
local Drink20051

local DrinkData
local DrinkResult
local DrinkResult_MM
local DrinkAward
local RectificationStep
print("20051start")

function Quest20051:OnDataLoaded()
	q20051cfg = self.clientData
	NPC1Data = q20051cfg.NPC1Data
	NPC2Data = q20051cfg.NPC2Data
	NPC3Data = q20051cfg.NPC3Data
	NPC4Data = q20051cfg.NPC4Data
	Drink20051 = q20051cfg.Rectification:new()
	Drink20051.Drink = 0
	DrinkData = q20051cfg.DrinkData
	DrinkResult = q20051cfg.DrinkResult
	DrinkResult_MM = q20051cfg.DrinkResult_MM
	DrinkAward = q20051cfg.DrinkAward
	RectificationStep = 0
end


-- Generated
function Quest20051:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["2005101"] = self.OnSubStart2005101
	self.subStartHandlers["2005102"] = self.OnSubStart2005102
	self.subStartHandlers["2005103"] = self.OnSubStart2005103
	self.subStartHandlers["2005104"] = self.OnSubStart2005104
	self.subStartHandlers["2005105"] = self.OnSubStart2005105
	self.subStartHandlers["2005106"] = self.OnSubStart2005106
	self.subStartHandlers["2005166"] = self.OnSubStart2005166
	self.subStartHandlers["2005108"] = self.OnSubStart2005108
	self.subStartHandlers["2005109"] = self.OnSubStart2005109
	self.subStartHandlers["2005110"] = self.OnSubStart2005110
	self.subStartHandlers["2005111"] = self.OnSubStart2005111
	self.subStartHandlers["2005112"] = self.OnSubStart2005112
	self.subStartHandlers["2005113"] = self.OnSubStart2005113
	self.subStartHandlers["2005114"] = self.OnSubStart2005114
	self.subStartHandlers["2005115"] = self.OnSubStart2005115
	self.subStartHandlers["2005124"] = self.OnSubStart2005124
	self.subStartHandlers["2005125"] = self.OnSubStart2005125
	self.subStartHandlers["2005107"] = self.OnSubStart2005107
	self.subStartHandlers["2005116"] = self.OnSubStart2005116
	self.subStartHandlers["2005117"] = self.OnSubStart2005117
	self.subStartHandlers["2005118"] = self.OnSubStart2005118
	self.subStartHandlers["2005119"] = self.OnSubStart2005119
	self.subStartHandlers["2005120"] = self.OnSubStart2005120
	self.subStartHandlers["2005121"] = self.OnSubStart2005121
	self.subStartHandlers["2005122"] = self.OnSubStart2005122
	self.subStartHandlers["2005123"] = self.OnSubStart2005123
	self.subStartHandlers["2005137"] = self.OnSubStart2005137
	self.subStartHandlers["2005138"] = self.OnSubStart2005138
	self.subStartHandlers["2005139"] = self.OnSubStart2005139
	self.subStartHandlers["2005140"] = self.OnSubStart2005140
	self.subStartHandlers["2005141"] = self.OnSubStart2005141
	self.subStartHandlers["2005142"] = self.OnSubStart2005142
	self.subStartHandlers["2005143"] = self.OnSubStart2005143
	self.subStartHandlers["2005144"] = self.OnSubStart2005144
	self.subStartHandlers["2005163"] = self.OnSubStart2005163
	self.subStartHandlers["2005145"] = self.OnSubStart2005145
	self.subStartHandlers["2005146"] = self.OnSubStart2005146
	self.subStartHandlers["2005147"] = self.OnSubStart2005147
	self.subStartHandlers["2005148"] = self.OnSubStart2005148
	self.subStartHandlers["2005164"] = self.OnSubStart2005164
	self.subStartHandlers["2005165"] = self.OnSubStart2005165
	self.subStartHandlers["2005149"] = self.OnSubStart2005149
	self.subStartHandlers["2005150"] = self.OnSubStart2005150
	self.subStartHandlers["2005151"] = self.OnSubStart2005151
	self.subStartHandlers["2005152"] = self.OnSubStart2005152
	self.subStartHandlers["2005153"] = self.OnSubStart2005153
	self.subStartHandlers["2005154"] = self.OnSubStart2005154
	self.subStartHandlers["2005155"] = self.OnSubStart2005155
	self.subStartHandlers["2005156"] = self.OnSubStart2005156
	self.subStartHandlers["2005157"] = self.OnSubStart2005157
	self.subStartHandlers["2005159"] = self.OnSubStart2005159
	self.subStartHandlers["2005170"] = self.OnSubStart2005170
	self.subStartHandlers["2005171"] = self.OnSubStart2005171
	self.subStartHandlers["2005172"] = self.OnSubStart2005172
	self.subStartHandlers["2005173"] = self.OnSubStart2005173
	self.subStartHandlers["2005174"] = self.OnSubStart2005174
	self.subStartHandlers["2005175"] = self.OnSubStart2005175
	self.subStartHandlers["2005176"] = self.OnSubStart2005176
	self.subStartHandlers["2005177"] = self.OnSubStart2005177
	self.subStartHandlers["2005178"] = self.OnSubStart2005178
	self.subStartHandlers["2005179"] = self.OnSubStart2005179
	self.subStartHandlers["2005180"] = self.OnSubStart2005180
	self.subStartHandlers["2005181"] = self.OnSubStart2005181
	self.subStartHandlers["2005182"] = self.OnSubStart2005182
	self.subStartHandlers["2005183"] = self.OnSubStart2005183
	self.subStartHandlers["2005184"] = self.OnSubStart2005184
	self.subStartHandlers["2005185"] = self.OnSubStart2005185
	self.subStartHandlers["2005186"] = self.OnSubStart2005186
	self.subStartHandlers["2005187"] = self.OnSubStart2005187
	self.subStartHandlers["2005188"] = self.OnSubStart2005188
	self.subStartHandlers["2005189"] = self.OnSubStart2005189
	self.subStartHandlers["2005158"] = self.OnSubStart2005158

end

function Quest20051:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["2005101"] = self.OnSubFinish2005101
	self.subFinishHandlers["2005102"] = self.OnSubFinish2005102
	self.subFinishHandlers["2005103"] = self.OnSubFinish2005103
	self.subFinishHandlers["2005104"] = self.OnSubFinish2005104
	self.subFinishHandlers["2005105"] = self.OnSubFinish2005105
	self.subFinishHandlers["2005106"] = self.OnSubFinish2005106
	self.subFinishHandlers["2005166"] = self.OnSubFinish2005166
	self.subFinishHandlers["2005108"] = self.OnSubFinish2005108
	self.subFinishHandlers["2005109"] = self.OnSubFinish2005109
	self.subFinishHandlers["2005110"] = self.OnSubFinish2005110
	self.subFinishHandlers["2005111"] = self.OnSubFinish2005111
	self.subFinishHandlers["2005112"] = self.OnSubFinish2005112
	self.subFinishHandlers["2005113"] = self.OnSubFinish2005113
	self.subFinishHandlers["2005114"] = self.OnSubFinish2005114
	self.subFinishHandlers["2005115"] = self.OnSubFinish2005115
	self.subFinishHandlers["2005124"] = self.OnSubFinish2005124
	self.subFinishHandlers["2005125"] = self.OnSubFinish2005125
	self.subFinishHandlers["2005107"] = self.OnSubFinish2005107
	self.subFinishHandlers["2005116"] = self.OnSubFinish2005116
	self.subFinishHandlers["2005117"] = self.OnSubFinish2005117
	self.subFinishHandlers["2005118"] = self.OnSubFinish2005118
	self.subFinishHandlers["2005119"] = self.OnSubFinish2005119
	self.subFinishHandlers["2005120"] = self.OnSubFinish2005120
	self.subFinishHandlers["2005121"] = self.OnSubFinish2005121
	self.subFinishHandlers["2005122"] = self.OnSubFinish2005122
	self.subFinishHandlers["2005123"] = self.OnSubFinish2005123
	self.subFinishHandlers["2005137"] = self.OnSubFinish2005137
	self.subFinishHandlers["2005138"] = self.OnSubFinish2005138
	self.subFinishHandlers["2005139"] = self.OnSubFinish2005139
	self.subFinishHandlers["2005140"] = self.OnSubFinish2005140
	self.subFinishHandlers["2005141"] = self.OnSubFinish2005141
	self.subFinishHandlers["2005142"] = self.OnSubFinish2005142
	self.subFinishHandlers["2005143"] = self.OnSubFinish2005143
	self.subFinishHandlers["2005144"] = self.OnSubFinish2005144
	self.subFinishHandlers["2005163"] = self.OnSubFinish2005163
	self.subFinishHandlers["2005145"] = self.OnSubFinish2005145
	self.subFinishHandlers["2005146"] = self.OnSubFinish2005146
	self.subFinishHandlers["2005147"] = self.OnSubFinish2005147
	self.subFinishHandlers["2005148"] = self.OnSubFinish2005148
	self.subFinishHandlers["2005164"] = self.OnSubFinish2005164
	self.subFinishHandlers["2005165"] = self.OnSubFinish2005165
	self.subFinishHandlers["2005149"] = self.OnSubFinish2005149
	self.subFinishHandlers["2005150"] = self.OnSubFinish2005150
	self.subFinishHandlers["2005151"] = self.OnSubFinish2005151
	self.subFinishHandlers["2005152"] = self.OnSubFinish2005152
	self.subFinishHandlers["2005153"] = self.OnSubFinish2005153
	self.subFinishHandlers["2005154"] = self.OnSubFinish2005154
	self.subFinishHandlers["2005155"] = self.OnSubFinish2005155
	self.subFinishHandlers["2005156"] = self.OnSubFinish2005156
	self.subFinishHandlers["2005157"] = self.OnSubFinish2005157
	self.subFinishHandlers["2005159"] = self.OnSubFinish2005159
	self.subFinishHandlers["2005170"] = self.OnSubFinish2005170
	self.subFinishHandlers["2005171"] = self.OnSubFinish2005171
	self.subFinishHandlers["2005172"] = self.OnSubFinish2005172
	self.subFinishHandlers["2005173"] = self.OnSubFinish2005173
	self.subFinishHandlers["2005174"] = self.OnSubFinish2005174
	self.subFinishHandlers["2005175"] = self.OnSubFinish2005175
	self.subFinishHandlers["2005176"] = self.OnSubFinish2005176
	self.subFinishHandlers["2005177"] = self.OnSubFinish2005177
	self.subFinishHandlers["2005178"] = self.OnSubFinish2005178
	self.subFinishHandlers["2005179"] = self.OnSubFinish2005179
	self.subFinishHandlers["2005180"] = self.OnSubFinish2005180
	self.subFinishHandlers["2005181"] = self.OnSubFinish2005181
	self.subFinishHandlers["2005182"] = self.OnSubFinish2005182
	self.subFinishHandlers["2005183"] = self.OnSubFinish2005183
	self.subFinishHandlers["2005184"] = self.OnSubFinish2005184
	self.subFinishHandlers["2005185"] = self.OnSubFinish2005185
	self.subFinishHandlers["2005186"] = self.OnSubFinish2005186
	self.subFinishHandlers["2005187"] = self.OnSubFinish2005187
	self.subFinishHandlers["2005188"] = self.OnSubFinish2005188
	self.subFinishHandlers["2005189"] = self.OnSubFinish2005189
	self.subFinishHandlers["2005158"] = self.OnSubFinish2005158

end


function Quest20051:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["2005101"] = self.OnFailedStart2005101
	self.subFailedHandlers["2005102"] = self.OnFailedStart2005102
	self.subFailedHandlers["2005103"] = self.OnFailedStart2005103
	self.subFailedHandlers["2005104"] = self.OnFailedStart2005104
	self.subFailedHandlers["2005105"] = self.OnFailedStart2005105
	self.subFailedHandlers["2005106"] = self.OnFailedStart2005106
	self.subFailedHandlers["2005166"] = self.OnFailedStart2005166
	self.subFailedHandlers["2005108"] = self.OnFailedStart2005108
	self.subFailedHandlers["2005109"] = self.OnFailedStart2005109
	self.subFailedHandlers["2005110"] = self.OnFailedStart2005110
	self.subFailedHandlers["2005111"] = self.OnFailedStart2005111
	self.subFailedHandlers["2005112"] = self.OnFailedStart2005112
	self.subFailedHandlers["2005113"] = self.OnFailedStart2005113
	self.subFailedHandlers["2005114"] = self.OnFailedStart2005114
	self.subFailedHandlers["2005115"] = self.OnFailedStart2005115
	self.subFailedHandlers["2005124"] = self.OnFailedStart2005124
	self.subFailedHandlers["2005125"] = self.OnFailedStart2005125
	self.subFailedHandlers["2005107"] = self.OnFailedStart2005107
	self.subFailedHandlers["2005116"] = self.OnFailedStart2005116
	self.subFailedHandlers["2005117"] = self.OnFailedStart2005117
	self.subFailedHandlers["2005118"] = self.OnFailedStart2005118
	self.subFailedHandlers["2005119"] = self.OnFailedStart2005119
	self.subFailedHandlers["2005120"] = self.OnFailedStart2005120
	self.subFailedHandlers["2005121"] = self.OnFailedStart2005121
	self.subFailedHandlers["2005122"] = self.OnFailedStart2005122
	self.subFailedHandlers["2005123"] = self.OnFailedStart2005123
	self.subFailedHandlers["2005137"] = self.OnFailedStart2005137
	self.subFailedHandlers["2005138"] = self.OnFailedStart2005138
	self.subFailedHandlers["2005139"] = self.OnFailedStart2005139
	self.subFailedHandlers["2005140"] = self.OnFailedStart2005140
	self.subFailedHandlers["2005141"] = self.OnFailedStart2005141
	self.subFailedHandlers["2005142"] = self.OnFailedStart2005142
	self.subFailedHandlers["2005143"] = self.OnFailedStart2005143
	self.subFailedHandlers["2005144"] = self.OnFailedStart2005144
	self.subFailedHandlers["2005163"] = self.OnFailedStart2005163
	self.subFailedHandlers["2005145"] = self.OnFailedStart2005145
	self.subFailedHandlers["2005146"] = self.OnFailedStart2005146
	self.subFailedHandlers["2005147"] = self.OnFailedStart2005147
	self.subFailedHandlers["2005148"] = self.OnFailedStart2005148
	self.subFailedHandlers["2005164"] = self.OnFailedStart2005164
	self.subFailedHandlers["2005165"] = self.OnFailedStart2005165
	self.subFailedHandlers["2005149"] = self.OnFailedStart2005149
	self.subFailedHandlers["2005150"] = self.OnFailedStart2005150
	self.subFailedHandlers["2005151"] = self.OnFailedStart2005151
	self.subFailedHandlers["2005152"] = self.OnFailedStart2005152
	self.subFailedHandlers["2005153"] = self.OnFailedStart2005153
	self.subFailedHandlers["2005154"] = self.OnFailedStart2005154
	self.subFailedHandlers["2005155"] = self.OnFailedStart2005155
	self.subFailedHandlers["2005156"] = self.OnFailedStart2005156
	self.subFailedHandlers["2005157"] = self.OnFailedStart2005157
	self.subFailedHandlers["2005159"] = self.OnFailedStart2005159
	self.subFailedHandlers["2005170"] = self.OnFailedStart2005170
	self.subFailedHandlers["2005171"] = self.OnFailedStart2005171
	self.subFailedHandlers["2005172"] = self.OnFailedStart2005172
	self.subFailedHandlers["2005173"] = self.OnFailedStart2005173
	self.subFailedHandlers["2005174"] = self.OnFailedStart2005174
	self.subFailedHandlers["2005175"] = self.OnFailedStart2005175
	self.subFailedHandlers["2005176"] = self.OnFailedStart2005176
	self.subFailedHandlers["2005177"] = self.OnFailedStart2005177
	self.subFailedHandlers["2005178"] = self.OnFailedStart2005178
	self.subFailedHandlers["2005179"] = self.OnFailedStart2005179
	self.subFailedHandlers["2005180"] = self.OnFailedStart2005180
	self.subFailedHandlers["2005181"] = self.OnFailedStart2005181
	self.subFailedHandlers["2005182"] = self.OnFailedStart2005182
	self.subFailedHandlers["2005183"] = self.OnFailedStart2005183
	self.subFailedHandlers["2005184"] = self.OnFailedStart2005184
	self.subFailedHandlers["2005185"] = self.OnFailedStart2005185
	self.subFailedHandlers["2005186"] = self.OnFailedStart2005186
	self.subFailedHandlers["2005187"] = self.OnFailedStart2005187
	self.subFailedHandlers["2005188"] = self.OnFailedStart2005188
	self.subFailedHandlers["2005189"] = self.OnFailedStart2005189
	self.subFailedHandlers["2005158"] = self.OnFailedStart2005158

end

function Quest20051:Rewind_NPC(quest)
	local NPC = {}


	if self:GetSubQuestState(2005108) == 3 then
		NPC = NPC1Data
		self:NotifyTo("Npc1403", NpcUtil.NpcEventType.HIDESELF, true)  
		self:NotifyTo("Npc1404", NpcUtil.NpcEventType.HIDESELF, true) 	
	elseif self:GetSubQuestState(2005109) == 3 then	
		NPC = NPC2Data
		self:NotifyTo("Npc1431", NpcUtil.NpcEventType.HIDESELF, true)  
	elseif self:GetSubQuestState(2005110) == 3 then
		NPC = NPC3Data
		self:NotifyTo("Npc1537", NpcUtil.NpcEventType.HIDESELF, true)  
	elseif self:GetSubQuestState(2005111) == 3 then
		NPC = NPC4Data
		self:NotifyTo("Npc1413", NpcUtil.NpcEventType.HIDESELF, true) 
		self:NotifyTo("Npc1414", NpcUtil.NpcEventType.HIDESELF, true)  
	end


	local NPCActor = self:GetQuestNpcActorNoDummy(NPC.Npc)

	if NPCActor == nil then
	self:CreateQuestNpc(quest, NPC.NpcID)
	NPCActor = self:GetQuestNpcActor(NPC.Npc)
	self:CallDelay(3,
	function()
		NPCActor:SitOnChair(8020)
		NPCActor:EnableInteraction(true)
	end
	)
	end

end

function Quest20051:NPCReInteractionProtected(quest,questid,queststatus,npcalias,delaytime)
	if self:GetSubQuestState(questid) == queststatus then
		self:RequestInteractionForceAlias(npcalias)
	else
		self:CallDelay(delaytime,self.NPCReInteractionProtected)
	end
end



---sub start & finish 内调用的函数
function Quest20051:OnSubStart2005101(quest)
	print("20051start")
	self:SetQuestVar(quest.QuestConfigId, 4, 1)
	self:NotifyTo("Npc1403", DailyNpcManager.NpcEventType.BANDAILY, true)
	self:NotifyTo("Npc1431", DailyNpcManager.NpcEventType.BANDAILY, true)
	self:NotifyTo("Npc1537", DailyNpcManager.NpcEventType.BANDAILY, true)
	self:NotifyTo("Npc1413", DailyNpcManager.NpcEventType.BANDAILY, true)
	self:NotifyTo("Npc1461", DailyNpcManager.NpcEventType.BANDAILY, true)
	self:NotifyTo("Npc1404", NpcUtil.NpcEventType.HIDESELF, true) 
	self:NotifyTo("Npc1414", NpcUtil.NpcEventType.HIDESELF, true) 	
	
end
function Quest20051:OnSubFinish2005101(quest)

end
function Quest20051:OnSubFailed2005101(quest)
	self:NotifyTo("Npc1403", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1431", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1537", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1413", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1414", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1404", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1461", NpcUtil.NpcEventType.STARTDAILY, true) 
end
function Quest20051:OnSubStart2005102(quest)
	print("renwuwanchen")
end
function Quest20051:OnSubFinish2005102(quest)
end
function Quest20051:OnSubFailed2005102(quest)
end
function Quest20051:OnSubStart2005103(quest)
end
function Quest20051:OnSubFinish2005103(quest)
	local quest01 = actorMgr:GetActor(q20051cfg.ActorAlias)
	if quest01 ~= nil then
		quest01:FinishQuestID(false, 2005108) 
		quest01:FinishQuestID(true, 2005104) 
		self:NotifyTo("Npc1431", NpcUtil.NpcEventType.STARTDAILY, true)
		quest01:FinishQuestID(true, 2005105) 
		self:NotifyTo("Npc1537", NpcUtil.NpcEventType.STARTDAILY, true)
		quest01:FinishQuestID(true, 2005106) 
		self:NotifyTo("Npc1413", NpcUtil.NpcEventType.STARTDAILY, true)
		self:SetQuestVar(quest.QuestConfigId, 3, 1)

	end

end
function Quest20051:OnSubFailed2005103(quest)
end
function Quest20051:OnSubStart2005104(quest)
end
function Quest20051:OnSubFinish2005104(quest)
	local quest01 = actorMgr:GetActor(q20051cfg.ActorAlias)
	if quest01 ~= nil then
		quest01:FinishQuestID(false, 2005109) 
		quest01:FinishQuestID(true, 2005103) 
		self:NotifyTo("Npc1403", NpcUtil.NpcEventType.STARTDAILY, true)
		quest01:FinishQuestID(true, 2005105) 
		self:NotifyTo("Npc1537", NpcUtil.NpcEventType.STARTDAILY, true)
		quest01:FinishQuestID(true, 2005106) 
		self:NotifyTo("Npc1413", NpcUtil.NpcEventType.STARTDAILY, true)
		self:SetQuestVar(quest.QuestConfigId, 3, 2)
	end
end
function Quest20051:OnSubFailed2005104(quest)
end
function Quest20051:OnSubStart2005105(quest)
end
function Quest20051:OnSubFinish2005105(quest)
	local quest01 = actorMgr:GetActor(q20051cfg.ActorAlias)
	if quest01 ~= nil then
		quest01:FinishQuestID(false, 2005110) 
		quest01:FinishQuestID(true, 2005103)
		self:NotifyTo("Npc1403", NpcUtil.NpcEventType.STARTDAILY, true) 
		quest01:FinishQuestID(true, 2005104) 
		self:NotifyTo("Npc1431", NpcUtil.NpcEventType.STARTDAILY, true)
		quest01:FinishQuestID(true, 2005106) 
		self:NotifyTo("Npc1413", NpcUtil.NpcEventType.STARTDAILY, true)
		self:SetQuestVar(quest.QuestConfigId, 3,3)
	end
end
function Quest20051:OnSubFailed2005105(quest)
end
function Quest20051:OnSubStart2005106(quest)
end
function Quest20051:OnSubFinish2005106(quest)
	local quest01 = actorMgr:GetActor(q20051cfg.ActorAlias)
	if quest01 ~= nil then
		quest01:FinishQuestID(false, 2005111) 
		quest01:FinishQuestID(true, 2005103) 
		self:NotifyTo("Npc1403", NpcUtil.NpcEventType.STARTDAILY, true)
		quest01:FinishQuestID(true, 2005104) 
		self:NotifyTo("Npc1431", NpcUtil.NpcEventType.STARTDAILY, true)
		quest01:FinishQuestID(true, 2005105) 
		self:NotifyTo("Npc1537", NpcUtil.NpcEventType.STARTDAILY, true)
		self:SetQuestVar(quest.QuestConfigId, 3,4)
	end
end
function Quest20051:OnSubFailed2005106(quest)
end
function Quest20051:OnSubStart2005166(quest)
	self:NotifyTo("Npc1404", NpcUtil.NpcEventType.HIDESELF, true) 
	self:NotifyTo("Npc1414", NpcUtil.NpcEventType.HIDESELF, true) 
end
function Quest20051:OnSubFinish2005166(quest)

end
function Quest20051:OnSubFailed2005166(quest)
	self:NotifyTo("Npc1403", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1431", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1537", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1413", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1414", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1404", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1401", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1461", NpcUtil.NpcEventType.STARTDAILY, true) 
end
function Quest20051:OnSubStart2005107(quest)
	if self:GetQuestVar(quest.QuestConfigId, 4) >= 18 then
		self:Rewind_NPC(quest)
	end
end
function Quest20051:OnSubFinish2005107(quest)
	if self:GetQuestVar(quest.QuestConfigId, 4) >= 18 then
		self:Rewind_NPC(quest)
	end
	self:SetQuestVar(quest.QuestConfigId, 4, 18)
end
function Quest20051:OnSubFailed2005107(quest)
	self:NotifyTo("Npc1403", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1431", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1537", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1413", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1414", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1404", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1401", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1461", NpcUtil.NpcEventType.STARTDAILY, true) 
end
function Quest20051:OnSubStart2005108(quest)
end
function Quest20051:OnSubFinish2005108(quest)
end
function Quest20051:OnSubFailed2005108(quest)
end
function Quest20051:OnSubStart2005109(quest)
end
function Quest20051:OnSubFinish2005109(quest)
end
function Quest20051:OnSubFailed2005109(quest)
end
function Quest20051:OnSubStart2005110(quest)
end
function Quest20051:OnSubFinish2005110(quest)
end
function Quest20051:OnSubFailed2005110(quest)
end
function Quest20051:OnSubStart2005111(quest)
end
function Quest20051:OnSubFinish2005111(quest)
end
function Quest20051:OnSubFailed2005111(quest)
end
function Quest20051:OnSubStart2005112(quest)
end
function Quest20051:OnSubFinish2005112(quest)
end
function Quest20051:OnSubFailed2005112(quest)
end
function Quest20051:OnSubStart2005113(quest)
end
function Quest20051:OnSubFinish2005113(quest)
end
function Quest20051:OnSubFailed2005113(quest)
end
function Quest20051:OnSubStart2005114(quest)
end
function Quest20051:OnSubFinish2005114(quest)
end
function Quest20051:OnSubFailed2005114(quest)
end
function Quest20051:OnSubStart2005115(quest)
end
function Quest20051:OnSubFinish2005115(quest)
end
function Quest20051:OnSubFailed2005115(quest)
end
function Quest20051:OnSubStart2005116(quest)
end
function Quest20051:OnSubFinish2005116(quest)
end
function Quest20051:OnSubFailed2005116(quest)
end
function Quest20051:OnSubStart2005117(quest)
end
function Quest20051:OnSubFinish2005117(quest)
end
function Quest20051:OnSubFailed2005117(quest)
end
function Quest20051:OnSubStart2005118(quest)
end
function Quest20051:OnSubFinish2005118(quest)
end
function Quest20051:OnSubFailed2005118(quest)
end
function Quest20051:OnSubStart2005119(quest)
end
function Quest20051:OnSubFinish2005119(quest)
end
function Quest20051:OnSubFailed2005119(quest)
end
function Quest20051:OnSubStart2005120(quest)
end
function Quest20051:OnSubFinish2005120(quest)
end
function Quest20051:OnSubFailed2005120(quest)
end
function Quest20051:OnSubStart2005121(quest)
end
function Quest20051:OnSubFinish2005121(quest)
end
function Quest20051:OnSubFailed2005121(quest)
end
function Quest20051:OnSubStart2005122(quest)
end
function Quest20051:OnSubFinish2005122(quest)
end
function Quest20051:OnSubFailed2005122(quest)
end
function Quest20051:OnSubStart2005123(quest)
end
function Quest20051:OnSubFinish2005123(quest)
end
function Quest20051:OnSubFailed2005123(quest)
end
function Quest20051:OnSubStart2005124(quest)

end
function Quest20051:OnSubFinish2005124(quest)
	local NPC = {}

	print(self:GetSubQuestState(2005108))
	if self:GetSubQuestState(2005108) == 3 then
		NPC = NPC1Data
		self:NotifyTo("Npc1403", NpcUtil.NpcEventType.HIDESELF, true) 
		self:NotifyTo("Npc1401", NpcUtil.NpcEventType.HIDESELF, true)  	
	elseif self:GetSubQuestState(2005109) == 3 then	
		NPC = NPC2Data
		self:NotifyTo("Npc1431", NpcUtil.NpcEventType.HIDESELF, true)  
	elseif self:GetSubQuestState(2005110) == 3 then
		NPC = NPC3Data
		self:NotifyTo("Npc1537", NpcUtil.NpcEventType.HIDESELF, true)  
	elseif self:GetSubQuestState(2005111) == 3 then
		NPC = NPC4Data
		self:NotifyTo("Npc1413", NpcUtil.NpcEventType.HIDESELF, true) 
	end
	local task = self:CreateQuestNpcCreateTask({NPC.Npc})
	self:ShowBlackScreen(1, 1, 0.5,
    function (self)
		self:CreateQuestNpc(quest, NPC.NpcID)
		local NPCActor = self:GetQuestNpcActor(NPC.Npc)
		if NPCActor ~= nil then 
			NPCActor:SitOnChair(8020)
			NPCActor:EnableInteraction(true)
		end
	end
	,nil,task
    )
end
function Quest20051:OnSubFailed2005124(quest)
	local npc_alias = self:GetQuestNpcActor(NPC1Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC2Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC3Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC4Data.Npc)
	npc_alias:Destroy(false)
	self:NotifyTo("Npc1403", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1431", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1537", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1413", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1414", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1404", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1401", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1461", NpcUtil.NpcEventType.STARTDAILY, true) 
end
function Quest20051:OnSubStart2005125(quest)
	self:Rewind_NPC(quest)
	self:RequestInteractionForceAlias("Npc1465")
	self:SetQuestVar(quest.QuestConfigId, 4, 18)
end
function Quest20051:OnSubFinish2005125(quest)


	
end
function Quest20051:OnSubFailed2005125(quest)
	local npc_alias = self:GetQuestNpcActor(NPC1Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC2Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC3Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC4Data.Npc)
	npc_alias:Destroy(false)
	self:NotifyTo("Npc1403", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1431", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1537", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1413", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1414", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1404", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1401", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1461", NpcUtil.NpcEventType.STARTDAILY, true) 
end

function Quest20051:OnSubStart2005137(quest)
	Drink20051.Drink = 0
	RectificationStep = 0
	if self:GetQuestVar(quest.QuestConfigId,4) < 37 then
		self:RequestInteractionForceAlias("Npc1465")
		self:Rewind_NPC(quest)
	else
		self:Rewind_NPC(quest)
	end
	self:SetQuestVar(quest.QuestConfigId, 4, 37)

end
function Quest20051:OnSubFinish2005137(quest)
end
function Quest20051:OnSubFailed2005137(quest)
	local npc_alias = self:GetQuestNpcActor(NPC1Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC2Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC3Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC4Data.Npc)
	npc_alias:Destroy(false)
	self:NotifyTo("Npc1403", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1431", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1537", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1413", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1414", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1404", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1401", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1461", NpcUtil.NpcEventType.STARTDAILY, true) 
end
function Quest20051:OnSubStart2005138(quest)
end
function Quest20051:OnSubFinish2005138(quest)
	Drink20051:BaseLiquor(1)
end
function Quest20051:OnSubFailed2005138(quest)
end
function Quest20051:OnSubStart2005139(quest)
end
function Quest20051:OnSubFinish2005139(quest)
	Drink20051:BaseLiquor(2)
end
function Quest20051:OnSubFailed2005139(quest)
end
function Quest20051:OnSubStart2005140(quest)
end
function Quest20051:OnSubFinish2005140(quest)
	Drink20051:BaseLiquor(3)
end
function Quest20051:OnSubFailed2005140(quest)
end
function Quest20051:OnSubStart2005141(quest)
end
function Quest20051:OnSubFinish2005141(quest)
	Drink20051:BaseLiquor(4)
end
function Quest20051:OnSubFailed2005141(quest)
end
function Quest20051:OnSubStart2005142(quest)
end
function Quest20051:OnSubFinish2005142(quest)
	self:RequestInteractionForceAlias("Npc1465")
end
function Quest20051:OnSubFailed2005142(quest)
	local npc_alias = self:GetQuestNpcActor(NPC1Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC2Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC3Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC4Data.Npc)
	npc_alias:Destroy(false)
	self:NotifyTo("Npc1403", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1431", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1537", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1413", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1414", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1404", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1401", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1461", NpcUtil.NpcEventType.STARTDAILY, true) 
end


function Quest20051:OnSubStart2005163(quest)
	if Drink20051.Drink == 0 then
		local quest = actorMgr:GetActor(q20051cfg.ActorAlias)
		if quest ~= nil then
			quest:FinishQuestID(false, 2005163) 
		end
	end
end
function Quest20051:OnSubFinish2005163(quest)
end
function Quest20051:OnSubFailed2005163(quest)
end
function Quest20051:OnSubStart2005164(quest)
end
function Quest20051:OnSubFinish2005164(quest)
end
function Quest20051:OnSubFailed2005164(quest)
	local npc_alias = self:GetQuestNpcActor(NPC1Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC2Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC3Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC4Data.Npc)
	npc_alias:Destroy(false)
	self:NotifyTo("Npc1403", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1431", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1537", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1413", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1414", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1404", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1401", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1461", NpcUtil.NpcEventType.STARTDAILY, true) 
end
function Quest20051:OnSubStart2005165(quest)
end
function Quest20051:OnSubFinish2005165(quest)
end
function Quest20051:OnSubFailed2005165(quest)
end

function Quest20051:OnSubStart2005143(quest)
	self:Rewind_NPC(quest)
end
function Quest20051:OnSubFinish2005143(quest)
end
function Quest20051:OnSubFailed2005143(quest)
	local npc_alias = self:GetQuestNpcActor(NPC1Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC2Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC3Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC4Data.Npc)
	npc_alias:Destroy(false)
	self:NotifyTo("Npc1403", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1431", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1537", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1413", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1414", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1404", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1401", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1461", NpcUtil.NpcEventType.STARTDAILY, true) 
end
function Quest20051:OnSubStart2005144(quest)
	self:Rewind_NPC(quest)
end
function Quest20051:OnSubFinish2005144(quest)
end
function Quest20051:OnSubFailed2005144(quest)
	local npc_alias = self:GetQuestNpcActor(NPC1Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC2Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC3Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC4Data.Npc)
	npc_alias:Destroy(false)
	self:NotifyTo("Npc1403", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1431", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1537", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1413", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1414", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1404", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1401", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1461", NpcUtil.NpcEventType.STARTDAILY, true) 
end
function Quest20051:OnSubStart2005145(quest)
end
function Quest20051:OnSubFinish2005145(quest)
	if RectificationStep == 0 then
		Drink20051:Step1(1)
	elseif RectificationStep == 1 then
		Drink20051:Step2(1)
	elseif RectificationStep == 2 then
		Drink20051:Step3(1)
	elseif RectificationStep == 3 then
		Drink20051:Step4(1)
	end
	RectificationStep = RectificationStep + 1	
	self:SetQuestVar(quest.QuestConfigId, 4, RectificationStep+37)
end
function Quest20051:OnSubFailed2005145(quest)

end
function Quest20051:OnSubStart2005146(quest)
end
function Quest20051:OnSubFinish2005146(quest)
	if RectificationStep == 0 then
		Drink20051:Step1(2)
	elseif RectificationStep == 1 then
		Drink20051:Step2(2)
	elseif RectificationStep == 2 then
		Drink20051:Step3(2)
	elseif RectificationStep == 3 then
		Drink20051:Step4(2)
	end
	RectificationStep = RectificationStep + 1	
	self:SetQuestVar(quest.QuestConfigId, 4, RectificationStep+37)
end
function Quest20051:OnSubFailed2005146(quest)

end
function Quest20051:OnSubStart2005147(quest)
end
function Quest20051:OnSubFinish2005147(quest)
	if RectificationStep == 0 then
		Drink20051:Step1(3)
	elseif RectificationStep == 1 then
		Drink20051:Step2(3)
	elseif RectificationStep == 2 then
		Drink20051:Step3(3)
	elseif RectificationStep == 3 then
		Drink20051:Step4(3)
	end
	RectificationStep = RectificationStep + 1
	self:SetQuestVar(quest.QuestConfigId, 4, RectificationStep+37)
end
function Quest20051:OnSubFailed2005147(quest)

end
function Quest20051:OnSubStart2005148(quest)
end
function Quest20051:OnSubFinish2005148(quest)
	if RectificationStep == 0 then
		Drink20051:Step1(4)
	elseif RectificationStep == 1 then
		Drink20051:Step2(4)
	elseif RectificationStep == 2 then
		Drink20051:Step3(4)
	elseif RectificationStep == 3 then
		Drink20051:Step4(4)
	end
	RectificationStep = RectificationStep + 1
	self:SetQuestVar(quest.QuestConfigId, 4, RectificationStep+37)
end
function Quest20051:OnSubFailed2005148(quest)

end
function Quest20051:OnSubStart2005149(quest)
	self:Rewind_NPC(quest)
	print(quest.QuestConfigId)
	self:SetQuestVar(quest.QuestConfigId, 2, 0)
	print("咋没执行呢？？？")
	print("Drink20051.Drink")
	local quest01 = actorMgr:GetActor(q20051cfg.ActorAlias)
	local GivingRecord = 0
	if quest01 ~= nil then
		GivingRecord =  quest01:GetGivingRecord(2005124)
	end
	print(GivingRecord)
	  GivingRecord = math.fmod(GivingRecord,100)
	print(GivingRecord)
	Drink20051:AdditionalMaterial(GivingRecord)
	print("咋没执行呢？？？")	

	print("咋没执行呢？？？")
	print(Drink20051.Drink)
	local DrinkDropid = DrinkResult[tostring(Drink20051.Drink)]

	if DrinkDropid == nil then
		local DrinkDropid = DrinkResult_MM[tostring(math.modf(Drink20051.Drink/10000))]
		self:SetQuestVar(quest.QuestConfigId, 0, 2)
		print(quest.QuestConfigId)
		print(self:GetQuestVar(quest.QuestConfigId, 0))
	else
		self:SetQuestVar(quest.QuestConfigId, 0, 1)		
		print(quest.QuestConfigId)
		print(self:GetQuestVar(quest.QuestConfigId, 0))
	end
	print(DrinkDropid)
	if DrinkDropid == nil then
		DrinkDropid = 100330
	end
	self:SetQuestVar(quest.QuestConfigId, 2, DrinkDropid)

end

function Quest20051:OnSubFinish2005149(quest)	
	local DrinkDropid = self:GetQuestVar(quest.QuestConfigId, 2)
	if DrinkDropid ~= nil then
		self:SpawnItem(quest, DrinkDropid, DrinkDropid - 100315)
	else
		DrinkDropid = 100330
		self:SpawnItem(quest, DrinkDropid, DrinkDropid - 100315)	
	end
	print("做出来的酒的id是")
	print(DrinkDropid)
	print("这种酒")
end
function Quest20051:OnSubFailed2005149(quest)
	local npc_alias = self:GetQuestNpcActor(NPC1Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC2Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC3Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC4Data.Npc)
	npc_alias:Destroy(false)
	self:NotifyTo("Npc1403", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1431", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1537", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1413", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1414", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1404", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1401", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1461", NpcUtil.NpcEventType.STARTDAILY, true) 
end
function Quest20051:OnSubStart2005150(quest)
	self:Rewind_NPC(quest)
end
function Quest20051:OnSubFinish2005150(quest)

end
function Quest20051:OnSubFailed2005150(quest)
	local npc_alias = self:GetQuestNpcActor(NPC1Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC2Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC3Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC4Data.Npc)
	npc_alias:Destroy(false)
	self:NotifyTo("Npc1403", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1431", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1537", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1413", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1414", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1404", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1401", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1461", NpcUtil.NpcEventType.STARTDAILY, true)   
end
function Quest20051:OnSubStart2005151(quest)
	self:Rewind_NPC(quest)
end
function Quest20051:OnSubFinish2005151(quest)
end
function Quest20051:OnSubFailed2005151(quest)
	local npc_alias = self:GetQuestNpcActor(NPC1Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC2Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC3Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC4Data.Npc)
	npc_alias:Destroy(false)
	self:NotifyTo("Npc1403", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1431", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1537", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1413", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1414", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1404", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1401", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1461", NpcUtil.NpcEventType.STARTDAILY, true) 
end
function Quest20051:OnSubStart2005152(quest)
	self:Rewind_NPC(quest)
end
function Quest20051:OnSubFinish2005152(quest)
end
function Quest20051:OnSubFailed2005152(quest)
	local npc_alias = self:GetQuestNpcActor(NPC1Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC2Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC3Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC4Data.Npc)
	npc_alias:Destroy(false)
	self:NotifyTo("Npc1403", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1431", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1537", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1413", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1414", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1404", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1401", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1461", NpcUtil.NpcEventType.STARTDAILY, true) 
end
function Quest20051:OnSubStart2005153(quest)
	self:Rewind_NPC(quest)
end
function Quest20051:OnSubFinish2005153(quest)
end
function Quest20051:OnSubFailed2005153(quest)
	local npc_alias = self:GetQuestNpcActor(NPC1Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC2Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC3Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC4Data.Npc)
	npc_alias:Destroy(false)
	self:NotifyTo("Npc1403", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1431", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1537", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1413", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1414", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1404", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1401", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1461", NpcUtil.NpcEventType.STARTDAILY, true) 
end
function Quest20051:OnSubStart2005154(quest)
	self:Rewind_NPC(quest)
end
function Quest20051:OnSubFinish2005154(quest)
end
function Quest20051:OnSubFailed2005154(quest)
	local npc_alias = self:GetQuestNpcActor(NPC1Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC2Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC3Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC4Data.Npc)
	npc_alias:Destroy(false)
	self:NotifyTo("Npc1403", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1431", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1537", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1413", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1414", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1404", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1401", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1461", NpcUtil.NpcEventType.STARTDAILY, true) 
end
function Quest20051:OnSubStart2005155(quest)
	self:Rewind_NPC(quest)
end
function Quest20051:OnSubFinish2005155(quest)
end
function Quest20051:OnSubFailed2005155(quest)
	local npc_alias = self:GetQuestNpcActor(NPC1Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC2Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC3Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC4Data.Npc)
	npc_alias:Destroy(false)
	self:NotifyTo("Npc1403", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1431", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1537", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1413", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1414", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1404", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1401", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1461", NpcUtil.NpcEventType.STARTDAILY, true) 
end
function Quest20051:OnSubStart2005156(quest)
	self:Rewind_NPC(quest)
end
function Quest20051:OnSubFinish2005156(quest)
end
function Quest20051:OnSubFailed2005156(quest)
	local npc_alias = self:GetQuestNpcActor(NPC1Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC2Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC3Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC4Data.Npc)
	npc_alias:Destroy(false)
	self:NotifyTo("Npc1403", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1431", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1537", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1413", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1414", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1404", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1401", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1461", NpcUtil.NpcEventType.STARTDAILY, true) 
end
function Quest20051:OnSubStart2005157(quest)
	self:Rewind_NPC(quest)
end
function Quest20051:OnSubFinish2005157(quest)
end
function Quest20051:OnSubFailed2005157(quest)
	local npc_alias = self:GetQuestNpcActor(NPC1Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC2Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC3Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC4Data.Npc)
	npc_alias:Destroy(false)
	self:NotifyTo("Npc1403", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1431", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1537", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1413", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1414", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1404", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1401", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1461", NpcUtil.NpcEventType.STARTDAILY, true) 
end

function Quest20051:OnSubStart2005158(quest)
	self:Rewind_NPC(quest)
end
function Quest20051:OnSubFinish2005158(quest)
	self:ShowBlackScreen(0.5, 1, 0.5,
	function(self)
		local npc_alias = self:GetQuestNpcActor(NPC1Data.Npc)
		npc_alias:Destroy(false)
		npc_alias = self:GetQuestNpcActor(NPC2Data.Npc)
		npc_alias:Destroy(false)
		npc_alias = self:GetQuestNpcActor(NPC3Data.Npc)
		npc_alias:Destroy(false)
		npc_alias = self:GetQuestNpcActor(NPC4Data.Npc)
		npc_alias:Destroy(false)
	end
)
	self:NotifyTo("Npc1403", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1431", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1537", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1413", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1414", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1404", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1401", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1461", NpcUtil.NpcEventType.STARTDAILY, true)  


end
function Quest20051:OnSubFailed2005158(quest)
	local npc_alias = self:GetQuestNpcActor(NPC1Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC2Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC3Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC4Data.Npc)
	npc_alias:Destroy(false)
	self:NotifyTo("Npc1403", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1431", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1537", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1413", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1414", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1404", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1401", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1461", NpcUtil.NpcEventType.STARTDAILY, true) 
end

function Quest20051:OnSubStart2005159(quest)
	self:Rewind_NPC(quest)
end
function Quest20051:OnSubFinish2005159(quest)
end
function Quest20051:OnSubFailed2005159(quest)
	local npc_alias = self:GetQuestNpcActor(NPC1Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC2Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC3Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC4Data.Npc)
	npc_alias:Destroy(false)
	self:NotifyTo("Npc1403", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1431", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1537", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1413", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1414", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1404", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1401", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1461", NpcUtil.NpcEventType.STARTDAILY, true) 
end
function Quest20051:OnSubStart2005160(quest)
	self:Rewind_NPC(quest)
end
function Quest20051:OnSubFinish2005160(quest)
end
function Quest20051:OnSubFailed2005160(quest)
	local npc_alias = self:GetQuestNpcActor(NPC1Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC2Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC3Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC4Data.Npc)
	npc_alias:Destroy(false)
	self:NotifyTo("Npc1403", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1431", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1537", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1413", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1414", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1404", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1401", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1461", NpcUtil.NpcEventType.STARTDAILY, true) 
end
function Quest20051:OnSubStart2005161(quest)
	self:Rewind_NPC(quest)
end
function Quest20051:OnSubFinish2005161(quest)
end
function Quest20051:OnSubFailed2005161(quest)
	local npc_alias = self:GetQuestNpcActor(NPC1Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC2Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC3Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC4Data.Npc)
	npc_alias:Destroy(false)
	self:NotifyTo("Npc1403", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1431", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1537", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1413", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1414", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1404", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1401", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1461", NpcUtil.NpcEventType.STARTDAILY, true) 
end
function Quest20051:OnSubStart2005162(quest)
	self:Rewind_NPC(quest)
end
function Quest20051:OnSubFinish2005162(quest)
	
end
function Quest20051:OnSubFailed2005162(quest)
	local npc_alias = self:GetQuestNpcActor(NPC1Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC2Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC3Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC4Data.Npc)
	npc_alias:Destroy(false)
	self:NotifyTo("Npc1403", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1431", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1537", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1413", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1414", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1404", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1401", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1461", NpcUtil.NpcEventType.STARTDAILY, true) 
end

--@region sub start & finish handlers
---按流程触发顺序
function Quest20051:InvokeOnInteraction(param)
	if(param) == 1 then
		local DrinkDropid = self:GetQuestVar(2005150, 2)
		DrinkDropid = DrinkDropid + self:GetQuestVar(2005150, 3)*1000000
		print(DrinkDropid)
		self:SetQuestVar(2005150, 1, DrinkAward[tostring(DrinkDropid)])
	end
end


function Quest20051:OnMainFinished(quest)
--[[
local npc_alias = self:GetQuestNpcActor(NPC1Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC2Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC3Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC4Data.Npc)
	npc_alias:Destroy(false)
	self:NotifyTo("Npc1403", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1431", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1537", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1413", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1414", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1404", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1401", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1461", NpcUtil.NpcEventType.STARTDAILY, true) 
	]]	
end

function Quest20051:OnMainFailed()
--[[
local npc_alias = self:GetQuestNpcActor(NPC1Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC2Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC3Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC4Data.Npc)
	npc_alias:Destroy(false)
	self:NotifyTo("Npc1403", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1431", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1537", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1413", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1414", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1404", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1401", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1461", NpcUtil.NpcEventType.STARTDAILY, true) 
]]
end

function Quest20051:OnMainCanceled()
--[[
local npc_alias = self:GetQuestNpcActor(NPC1Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC2Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC3Data.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(NPC4Data.Npc)
	npc_alias:Destroy(false)
	self:NotifyTo("Npc1403", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1431", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1537", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1413", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1414", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1404", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1401", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1461", NpcUtil.NpcEventType.STARTDAILY, true) 
]]
end



--@endregion

function Quest20051:Start()
	
end

function Quest20051:OnDestroy()
	
end

return Quest20051