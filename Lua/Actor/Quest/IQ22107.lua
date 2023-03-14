require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest22107 = class("Quest22107", questActorProxy)
Quest22107.defaultAlias = "Quest22107"

local q22107Cfg
local MainID
local ActorAlias
local SubIDs
local Actors
local Datas
local NPCData
local NPCData1
local isFirst = 0
local ValA = 0
local ValB = 0
local ValC = 0
local ValD = 0
local ValE = 0

function Quest22107:OnDataLoaded()
	q22107Cfg = self.clientData
	MainID =  22107
	NPCData = q22107Cfg.NPCData
	NPCData1 = q22107Cfg.NPCData1
	ActorAlias = q22107Cfg.ActorAlias
	SubIDs = q22107Cfg.SubIDs
	Actors = q22107Cfg.Actors
	Datas = q22107Cfg.Datas


end

---local quest = actorMgr:GetActor(q22107Cfg.ActorAlias)
function Quest22107:OnSubStartHandlerBuild()
	self.subStartHandlers = 
	{
		["2210701"] = self.OnSubStart2210701,
		["2210702"] = self.OnSubStart2210702,
		["2210703"] = self.OnSubStart2210703,
		["2210704"] = self.OnSubStart2210704,
		["2210705"] = self.OnSubStart2210705,
		["2210706"] = self.OnSubStart2210706,
		["2210707"] = self.OnSubStart2210707,
		["2210708"] = self.OnSubStart2210708,
		["2210709"] = self.OnSubStart2210709,
		["2210710"] = self.OnSubStart2210710,
		["2210711"] = self.OnSubStart2210711,
		["2210712"] = self.OnSubStart2210712,
		["2210713"] = self.OnSubStart2210713,
		["2210714"] = self.OnSubStart2210714,
		["2210715"] = self.OnSubStart2210715,
		["2210716"] = self.OnSubStart2210716,
		["2210717"] = self.OnSubStart2210717,
		["2210718"] = self.OnSubStart2210718,
		["2210719"] = self.OnSubStart2210719,
		["2210720"] = self.OnSubStart2210720,
		["2210721"] = self.OnSubStart2210721,
	}
end

function Quest22107:OnSubFinishHandlerBuild()
	self.subFinishHandlers = 
	{
		["2210701"] = self.OnSubFinish2210701,
		["2210702"] = self.OnSubFinish2210702,
		["2210703"] = self.OnSubFinish2210703,
		["2210704"] = self.OnSubFinish2210704,
		["2210705"] = self.OnSubFinish2210705,
		["2210706"] = self.OnSubFinish2210706,
		["2210707"] = self.OnSubFinish2210707,
		["2210708"] = self.OnSubFinish2210708,
		["2210709"] = self.OnSubFinish2210709,
		["2210710"] = self.OnSubFinish2210710,
		["2210711"] = self.OnSubFinish2210711,
		["2210712"] = self.OnSubFinish2210712,
		["2210713"] = self.OnSubFinish2210713,
		["2210714"] = self.OnSubFinish2210714,
		["2210715"] = self.OnSubFinish2210715,
		["2210716"] = self.OnSubFinish2210716,
		["2210717"] = self.OnSubFinish2210717,
		["2210718"] = self.OnSubFinish2210718,
		["2210719"] = self.OnSubFinish2210719,
		["2210720"] = self.OnSubFinish2210720,
		["2210721"] = self.OnSubFinish2210721,
	}
end

function Quest22107:OnSubFailedHandlerBuild()
	self.subFailedHandlers = 
	{
		["2210701"] = self.OnSubFailed2210701,
		["2210702"] = self.OnSubFailed2210702,
		["2210703"] = self.OnSubFailed2210703,
		["2210704"] = self.OnSubFailed2210704,
		["2210705"] = self.OnSubFailed2210705,
		["2210706"] = self.OnSubFailed2210706,
		["2210707"] = self.OnSubFailed2210707,
		["2210708"] = self.OnSubFailed2210708,
		["2210709"] = self.OnSubFailed2210709,
		["2210710"] = self.OnSubFailed2210710,
		["2210711"] = self.OnSubFailed2210711,
		["2210712"] = self.OnSubFailed2210712,
		["2210713"] = self.OnSubFailed2210713,
		["2210714"] = self.OnSubFailed2210714,
		["2210715"] = self.OnSubFailed2210715,
		["2210716"] = self.OnSubFailed2210716,
		["2210717"] = self.OnSubFailed2210717,
		["2210718"] = self.OnSubFailed2210718,
		["2210719"] = self.OnSubFailed2210719,
		["2210720"] = self.OnSubFailed2210720,
		["2210721"] = self.OnSubFailed2210721,


	}
end

function Quest22107:InvokeOnInteraction(param)
	
	
	if param == 1 then
		--self:SetQuestVar(2210715,0,0)
	end

	if param == 2 then
		--self:SetQuestVar(2210715,1,0)
	end

	if param == 3 then
	--	self:SetQuestVar(2210715,2,0)
	end

	if param == 4 then
		--self:SetQuestVar(2210715,3,0)
	end

	if param == 5 then
	--	self:SetQuestVar(2210715,4,0)
	end

	print("talkA is "..self:GetQuestVar(2210715,0))
	print("talkB is "..self:GetQuestVar(2210715,1))
	print("talkC is "..self:GetQuestVar(2210715,2))
	print("talkD is "..self:GetQuestVar(2210715,3))
	print("talkE is "..self:GetQuestVar(2210715,4))



end

function Quest22107:Start()
	print("Start")
end

function Quest22107:OnDestroy()
	print("OnDestroy")
end

function Quest22107:OnSubStart2210701(quest)

	self:CreateQuestNpc(quest, NPCData.NpcID)
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:Standby()
	self:NotifyTo("Npc2001", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc2015", NpcUtil.NpcEventType.HIDESELF, true)
	print("OnSubStart2210701")
end

function Quest22107:OnSubFinish2210701(quest)
 ValA = self:GetQuestVar(quest.QuestConfigId, 0)
 ValB = self:GetQuestVar(quest.QuestConfigId, 1)
 ValC = self:GetQuestVar(quest.QuestConfigId, 2)
 ValD = self:GetQuestVar(quest.QuestConfigId, 3)
 ValE = self:GetQuestVar(quest.QuestConfigId, 4)

	print("OnSubFinish2210701")
	self:SetQuestVarWithInterval(quest.QuestConfigId,0,1,5)
	print("01A is "..self:GetQuestVar(quest.QuestConfigId,0))
	
end

function Quest22107:OnSubFailed2210701(quest)
	print("OnSubFailed2210701")
end

function Quest22107:OnSubStart2210702(quest)
	self:NotifyTo("Npc2001", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc2015", NpcUtil.NpcEventType.HIDESELF, true)
	print("OnSubStart2210702")
end

function Quest22107:OnSubFinish2210702(quest)
	print("OnSubFinish2210702")
end

function Quest22107:OnSubFailed2210702(quest)
	print("OnSubFailed2210702")
end

function Quest22107:OnSubStart2210703(quest)
	self:NotifyTo("Npc2001", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc2015", NpcUtil.NpcEventType.HIDESELF, true)

	self:CreateQuestNpc(quest, NPCData1.NpcID)
	local EventNPC = self:GetQuestNpcActor(NPCData1.Npc)
	EventNPC:Standby()
	self:NotifyTo("Npc2092", NpcUtil.NpcEventType.HIDESELF, true)
	self:CreateSpeechBubbleTask(209201, 221072001,5,true,1,2)
	print("OnSubStart2210703")
end

function Quest22107:OnSubFinish2210703(quest)
	print("OnSubFinish2210703")
end

function Quest22107:OnSubFailed2210703(quest)
	print("OnSubFailed2210703")
end

function Quest22107:OnSubStart2210704(quest)
	self:NotifyTo("Npc2001", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc2015", NpcUtil.NpcEventType.HIDESELF, true)
	print("OnSubStart2210704")
end

function Quest22107:OnSubFinish2210704(quest)
	print("OnSubFinish2210704")
end

function Quest22107:OnSubFailed2210704(quest)
	print("OnSubFailed2210704")
end

function Quest22107:OnSubStart2210705(quest)
	self:NotifyTo("Npc2001", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc2015", NpcUtil.NpcEventType.HIDESELF, true)
	print("OnSubStart2210705")
end

function Quest22107:OnSubFinish2210705(quest)
	print("OnSubFinish2210705")
end

function Quest22107:OnSubFailed2210705(quest)
	print("OnSubFailed2210705")
end

function Quest22107:OnSubStart2210706(quest)
	self:NotifyTo("Npc2001", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc2015", NpcUtil.NpcEventType.HIDESELF, true)
	print("OnSubStart2210706")
end

function Quest22107:OnSubFinish2210706(quest)
	print("OnSubFinish2210706")
end

function Quest22107:OnSubFailed2210706(quest)
	print("OnSubFailed2210706")
end

function Quest22107:OnSubStart2210707(quest)
	self:NotifyTo("Npc2001", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc2015", NpcUtil.NpcEventType.HIDESELF, true)
	print("OnSubStart2210707")
end

function Quest22107:OnSubFinish2210707(quest)


	if self:GetQuestVar(quest.QuestConfigId,0) == 1 then
		self:SetQuestVar(quest.QuestConfigId,0,1)
	 end
 
	 
	 if self:GetQuestVar(quest.QuestConfigId,0) == 2 then
		 self:SetQuestVar(quest.QuestConfigId,1,1)
	 end
 
	 if self:GetQuestVar(quest.QuestConfigId,0) == 3 then
		 self:SetQuestVar(quest.QuestConfigId,2,1)
	 end
 
	 if self:GetQuestVar(quest.QuestConfigId,0) == 4 then
		 self:SetQuestVar(quest.QuestConfigId,3,1)
	 end
 
	 if self:GetQuestVar(quest.QuestConfigId,0) == 5 then
	 self:SetQuestVar(quest.QuestConfigId,4,1)
	 end
 
	 print("07A is "..self:GetQuestVar(quest.QuestConfigId,0))
	 print("07B is "..self:GetQuestVar(quest.QuestConfigId,1))
	 print("07C is "..self:GetQuestVar(quest.QuestConfigId,2))
	 print("07D is "..self:GetQuestVar(quest.QuestConfigId,3))
	 print("07E is "..self:GetQuestVar(quest.QuestConfigId,4))

	ValA = self:GetQuestVar(quest.QuestConfigId,0)

	if ValA == 1 then
		isFirst = 1
	end

 local c_table = {}
 c_table = {1,2,3,4,5}
	 
 table.remove(c_table,ValA)
math.randomseed(os.time())
local i = math.random(1,4) 
local c_ValA = c_table[i]
self:SetQuestVar(quest.QuestConfigId,0,c_ValA)


if self:GetQuestVar(quest.QuestConfigId,0) == 1 then
	self:SetQuestVar(quest.QuestConfigId,0,1)
 end

 
 if self:GetQuestVar(quest.QuestConfigId,0) == 2 then
	 self:SetQuestVar(quest.QuestConfigId,1,1)
 end

 if self:GetQuestVar(quest.QuestConfigId,0) == 3 then
	 self:SetQuestVar(quest.QuestConfigId,2,1)
 end

 if self:GetQuestVar(quest.QuestConfigId,0) == 4 then
	 self:SetQuestVar(quest.QuestConfigId,3,1)
 end

 if self:GetQuestVar(quest.QuestConfigId,0) == 5 then
 self:SetQuestVar(quest.QuestConfigId,4,1)
 end

	print("07A is "..self:GetQuestVar(quest.QuestConfigId,0))


	print("OnSubFinish2210707")
end

function Quest22107:OnSubFailed2210707(quest)
	print("OnSubFailed2210707")
end

function Quest22107:OnSubStart2210708(quest)
	self:NotifyTo("Npc2001", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc2015", NpcUtil.NpcEventType.HIDESELF, true)
	print("OnSubStart2210708")
end

function Quest22107:OnSubFinish2210708(quest)
	print("OnSubFinish2210708")
end

function Quest22107:OnSubFailed2210708(quest)
	print("OnSubFailed2210708")
end

function Quest22107:OnSubStart2210709(quest)

	self:NotifyTo("Npc2001", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc2015", NpcUtil.NpcEventType.HIDESELF, true)

	if self:GetQuestVar(quest.QuestConfigId,0) == 1 then
       self:SetQuestVar(quest.QuestConfigId,0,1)
	end

	
	if self:GetQuestVar(quest.QuestConfigId,0) == 2 then
		self:SetQuestVar(quest.QuestConfigId,1,1)
	end

	if self:GetQuestVar(quest.QuestConfigId,0) == 3 then
		self:SetQuestVar(quest.QuestConfigId,2,1)
	end

	if self:GetQuestVar(quest.QuestConfigId,0) == 4 then
		self:SetQuestVar(quest.QuestConfigId,3,1)
	end

	if self:GetQuestVar(quest.QuestConfigId,0) == 5 then
	self:SetQuestVar(quest.QuestConfigId,4,1)
	end

	if isFirst == 1 then 
    self:SetQuestVar(quest.QuestConfigId,0,1)
	end

	print("09A is "..self:GetQuestVar(quest.QuestConfigId,0))
	print("09B is "..self:GetQuestVar(quest.QuestConfigId,1))
	print("09C is "..self:GetQuestVar(quest.QuestConfigId,2))
	print("09D is "..self:GetQuestVar(quest.QuestConfigId,3))
	print("09E is "..self:GetQuestVar(quest.QuestConfigId,4))

	print("OnSubStart2210709")
end

function Quest22107:OnSubFinish2210709(quest)
	print("OnSubFinish2210709")
end

function Quest22107:OnSubFailed2210709(quest)
	print("OnSubFailed2210709")
end

function Quest22107:OnSubStart2210710(quest)
	self:NotifyTo("Npc2001", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc2015", NpcUtil.NpcEventType.HIDESELF, true)
	print("OnSubStart2210710")
end

function Quest22107:OnSubFinish2210710(quest)
	print("OnSubFinish2210710")
end

function Quest22107:OnSubFailed2210710(quest)

	self:SetQuestVar(quest.QuestConfigId,0,100)




	print("OnSubFailed2210710")
end

function Quest22107:OnSubStart2210711(quest)
	self:NotifyTo("Npc2001", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc2015", NpcUtil.NpcEventType.HIDESELF, true)
	print("OnSubStart2210711")
end

function Quest22107:OnSubFinish2210711(quest)

	
	print("OnSubFinish2210711")



end

function Quest22107:OnSubFailed2210711(quest)
	print("OnSubFailed2210711")
end

function Quest22107:OnSubStart2210712(quest)
	self:NotifyTo("Npc2001", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc2015", NpcUtil.NpcEventType.HIDESELF, true)
	print("OnSubStart2210712")
end

function Quest22107:OnSubFinish2210712(quest)
	print("OnSubFinish2210712")
end

function Quest22107:OnSubFailed2210712(quest)

	self:SetQuestVar(quest.QuestConfigId,2,100)

	print("12failA is "..self:GetQuestVar(quest.QuestConfigId,0))
	print("12failB is "..self:GetQuestVar(quest.QuestConfigId,1))
	print("12failC is "..self:GetQuestVar(quest.QuestConfigId,2))
	print("12failD is "..self:GetQuestVar(quest.QuestConfigId,3))
	print("12failE is "..self:GetQuestVar(quest.QuestConfigId,4))
	print("OnSubFailed2210712")
end

function Quest22107:OnSubStart2210713(quest)
	self:NotifyTo("Npc2001", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc2015", NpcUtil.NpcEventType.HIDESELF, true)
	print("OnSubStart2210713")
end

function Quest22107:OnSubFinish2210713(quest)
	print("OnSubFinish2210713")
end

function Quest22107:OnSubFailed2210713(quest)
	self:SetQuestVar(quest.QuestConfigId,3,100)

	print("13failA is "..self:GetQuestVar(quest.QuestConfigId,0))
	print("13failB is "..self:GetQuestVar(quest.QuestConfigId,1))
	print("13failC is "..self:GetQuestVar(quest.QuestConfigId,2))
	print("13failD is "..self:GetQuestVar(quest.QuestConfigId,3))
	print("13failE is "..self:GetQuestVar(quest.QuestConfigId,4))

	print("OnSubFailed2210713")
end

function Quest22107:OnSubStart2210714(quest)
	self:NotifyTo("Npc2001", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc2015", NpcUtil.NpcEventType.HIDESELF, true)
	print("OnSubStart2210714")
end

function Quest22107:OnSubFinish2210714(quest)
	print("OnSubFinish2210714")
end

function Quest22107:OnSubFailed2210714(quest)
	self:SetQuestVar(quest.QuestConfigId,4,100)

	print("14failA is "..self:GetQuestVar(quest.QuestConfigId,0))
	print("14failB is "..self:GetQuestVar(quest.QuestConfigId,1))
	print("14failC is "..self:GetQuestVar(quest.QuestConfigId,2))
	print("14failD is "..self:GetQuestVar(quest.QuestConfigId,3))
	print("14failE is "..self:GetQuestVar(quest.QuestConfigId,4))

	print("OnSubFailed2210714")
end

function Quest22107:OnSubStart2210715(quest)
	self:NotifyTo("Npc2001", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc2015", NpcUtil.NpcEventType.HIDESELF, true)
	print("OnSubStart2210715")
end

function Quest22107:OnSubFinish2210715(quest)
	self:NotifyTo("Npc2001", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc2015", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc2092", NpcUtil.NpcEventType.STARTDAILY, true)
	print("OnSubFinish2210715")
end

function Quest22107:OnSubFailed2210715(quest)
	self:NotifyTo("Npc2001", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc2015", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc2092", NpcUtil.NpcEventType.STARTDAILY, true)
	print("OnSubFailed2210715")
end

function Quest22107:OnSubStart2210716(quest)
	self:NotifyTo("Npc2001", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc2015", NpcUtil.NpcEventType.HIDESELF, true)
	print("OnSubStart2210716")
end

function Quest22107:OnSubFinish2210716(quest)
	print("OnSubFinish2210716")
end

function Quest22107:OnSubFailed2210716(quest)
	self:NotifyTo("Npc2001", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc2015", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc2092", NpcUtil.NpcEventType.STARTDAILY, true)
	print("OnSubFailed2210716")
end
function Quest22107:OnSubStart2210717(quest)
	self:NotifyTo("Npc2001", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc2015", NpcUtil.NpcEventType.HIDESELF, true)
	print("OnSubStart2210717")
end

function Quest22107:OnSubFinish2210717(quest)
	print("OnSubFinish2210717")
end

function Quest22107:OnSubFailed2210717(quest)
	self:NotifyTo("Npc2001", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc2015", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc2092", NpcUtil.NpcEventType.STARTDAILY, true)
	print("OnSubFailed2210717")
end

function Quest22107:OnSubStart2210718(quest)
	self:NotifyTo("Npc2001", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc2015", NpcUtil.NpcEventType.HIDESELF, true)
	print("OnSubStart2210718")
end

function Quest22107:OnSubFinish2210718(quest)
	print("OnSubFinish2210718")
end

function Quest22107:OnSubFailed2210718(quest)
	self:NotifyTo("Npc2001", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc2015", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc2092", NpcUtil.NpcEventType.STARTDAILY, true)
	print("OnSubFailed2210718")
end

function Quest22107:OnSubStart2210719(quest)
	self:NotifyTo("Npc2001", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc2015", NpcUtil.NpcEventType.HIDESELF, true)
	print("OnSubStart2210719")
end

function Quest22107:OnSubFinish2210719(quest)
	print("OnSubFinish2210719")
end

function Quest22107:OnSubFailed2210719(quest)
	self:NotifyTo("Npc2001", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc2015", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc2092", NpcUtil.NpcEventType.STARTDAILY, true)
	print("OnSubFailed2210719")
end

function Quest22107:OnSubStart2210720(quest)
	self:NotifyTo("Npc2001", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc2015", NpcUtil.NpcEventType.HIDESELF, true)
	print("OnSubStart2210720")
end

function Quest22107:OnSubFinish2210720(quest)
	print("OnSubFinish2210720")
end

function Quest22107:OnSubFailed2210720(quest)
	self:NotifyTo("Npc2001", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc2015", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc2092", NpcUtil.NpcEventType.STARTDAILY, true)
	print("OnSubFailed2210720")
end

function Quest22107:OnSubStart2210721(quest)
	self:NotifyTo("Npc2001", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc2015", NpcUtil.NpcEventType.HIDESELF, true)
	print("OnSubStart2210721")
end

function Quest22107:OnSubFinish2210721(quest)
	print("OnSubFinish2210721")
end

function Quest22107:OnSubFailed2210721(quest)
	self:NotifyTo("Npc2001", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc2015", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc2092", NpcUtil.NpcEventType.STARTDAILY, true)
	print("OnSubFailed2210721")
end


return Quest22107
