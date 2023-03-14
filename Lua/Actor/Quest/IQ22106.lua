require('Actor/ActorCommon')

local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest22106 = class("Quest22106", questActorProxy)

Quest22106.defaultAlias = "Quest22106"

local q22106Cfg
local Actors
local MainID

function Quest22106:OnDataLoaded()
	q22106Cfg = self.clientData
	MainID =  22112
	Actors = q22106Cfg.Actors

end

-- Generated
function Quest22106:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["2210601"] = self.OnSubStart2210601
	self.subStartHandlers["2210602"] = self.OnSubStart2210602
	self.subStartHandlers["2210603"] = self.OnSubStart2210603
	self.subStartHandlers["2210604"] = self.OnSubStart2210604
	self.subStartHandlers["2210605"] = self.OnSubStart2210605
	self.subStartHandlers["2210606"] = self.OnSubStart2210606
	self.subStartHandlers["2210607"] = self.OnSubStart2210607
	self.subStartHandlers["2210608"] = self.OnSubStart2210608
	self.subStartHandlers["2210609"] = self.OnSubStart2210609
	self.subStartHandlers["2210610"] = self.OnSubStart2210610
	self.subStartHandlers["2210611"] = self.OnSubStart2210611
	self.subStartHandlers["2210612"] = self.OnSubStart2210612
	self.subStartHandlers["2210613"] = self.OnSubStart2210613
	self.subStartHandlers["2210614"] = self.OnSubStart2210614
end

function Quest22106:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["2210601"] = self.OnSubFinish2210601
	self.subFinishHandlers["2210602"] = self.OnSubFinish2210602
	self.subFinishHandlers["2210603"] = self.OnSubFinish2210603
	self.subFinishHandlers["2210604"] = self.OnSubFinish2210604
	self.subFinishHandlers["2210605"] = self.OnSubFinish2210605
	self.subFinishHandlers["2210606"] = self.OnSubFinish2210606
	self.subFinishHandlers["2210607"] = self.OnSubFinish2210607
	self.subFinishHandlers["2210608"] = self.OnSubFinish2210608
	self.subFinishHandlers["2210609"] = self.OnSubFinish2210609
	self.subFinishHandlers["2210610"] = self.OnSubFinish2210610
	self.subFinishHandlers["2210611"] = self.OnSubFinish2210611
	self.subFinishHandlers["2210612"] = self.OnSubFinish2210612
	self.subFinishHandlers["2210613"] = self.OnSubFinish2210613
	self.subFinishHandlers["2210614"] = self.OnSubFinish2210614
	
end

function Quest22106:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["2210601"] = self.OnSubFailed2210601
	self.subFailedHandlers["2210602"] = self.OnSubFailed2210602
	self.subFailedHandlers["2210603"] = self.OnSubFailed2210603
	self.subFailedHandlers["2210604"] = self.OnSubFailed2210604
	self.subFailedHandlers["2210605"] = self.OnSubFailed2210605
	self.subFailedHandlers["2210606"] = self.OnSubFailed2210606
	self.subFailedHandlers["2210607"] = self.OnSubFailed2210607
	self.subFailedHandlers["2210608"] = self.OnSubFailed2210608
	self.subFailedHandlers["2210609"] = self.OnSubFailed2210609
	self.subFailedHandlers["2210610"] = self.OnSubFailed2210610
	self.subFailedHandlers["2210611"] = self.OnSubFailed2210611
	self.subFailedHandlers["2210612"] = self.OnSubFailed2210612
	self.subFailedHandlers["2210613"] = self.OnSubFailed2210613
	self.subFailedHandlers["2210614"] = self.OnSubFailed2210614
end


function Quest22106:InvokeOnInteraction(param)
	local quest = actorMgr:GetActor("22106")
	
	if param == 1 then
		if quest ~= nil then
			quest:FinishQuestID(false, 2210611)
		end
		
	end

	if param == 2 then
		if quest ~= nil then
			quest:FinishQuestID(true, 2210611)
			quest:FinishQuestID(false, 2210612)
		end
		
	end

end

function Quest22106:Blackscreen()
	print("Blackscreen")
	self:ShowBlackScreen(0.5, 1, 0.5, self.Cleardata)
end

function Quest22106:Cleardata()
	print("Cleardata")
	self:DestroyQuestNpcActor(Actors.Lulu.alias, 3)
	self:DestroyQuestNpcActor(Actors.Meng.alias, 3)
	self:DestroyQuestNpcActor(Actors.Fei.alias, 3)
	local quest22106 = actorMgr:GetActor("22106")
	local Lulu = quest22106:GetQuestNpcActor(Actors.Lulu.alias)
	if Lulu ~= nil then
    	Lulu:Destroy(false)
	end
	local Meng = quest22106:GetQuestNpcActor(Actors.Meng.alias)
	if Meng ~= nil then
    	Meng:Destroy(false)
	end
	local Fei = quest22106:GetQuestNpcActor(Actors.Fei.alias)
	if Fei ~= nil then
    	Fei:Destroy(false)
    end
	self:NotifyTo("Npc2074", 0, true)
	self:NotifyTo("Npc2030", 0, true)
	self:NotifyTo("Npc2031", 0, true)
end

function Quest22106:OnSubStart2210601(quest)
	

end

function Quest22106:OnSubFinish2210601(quest)
	local VarA = self:GetQuestVar(quest.QuestConfigId,0)
	self:SetQuestVarWithInterval(quest.QuestConfigId,0,1,3)
	local VarB = self:GetQuestVar(quest.QuestConfigId,1)
	self:SetQuestVarWithInterval(quest.QuestConfigId,1,1,3)
	local VarC = self:GetQuestVar(quest.QuestConfigId,2)
	self:SetQuestVarWithInterval(quest.QuestConfigId,2,1,3)
	VarA = self:GetQuestVar(quest.QuestConfigId,0)
	VarB = self:GetQuestVar(quest.QuestConfigId,1)
	VarC = self:GetQuestVar(quest.QuestConfigId,2)
	print("VarA is "..VarA)
	print("VarB is "..VarB)
	print("VarC is "..VarC)
	
	self:NotifyTo("Npc2074",1,true)
	self:NotifyTo("Npc2030",1,true)
	self:NotifyTo("Npc2031",1,true)
end

function Quest22106:OnSubFailed2210601(quest)

end

function Quest22106:OnSubStart2210602(quest)
	self:CreateQuestNpc(quest, Actors.Lulu.id,1)
	self:CreateQuestNpc(quest, Actors.Meng.id,2)
	self:CreateQuestNpc(quest, Actors.Fei.id,3)
	self:NotifyTo("Npc2074",1,true)
	self:NotifyTo("Npc2030",1,true)
	self:NotifyTo("Npc2031",1,true)

end

function Quest22106:OnSubFinish2210602(quest)

end

function Quest22106:OnSubFailed2210602(quest)
	self:NotifyTo("Npc2074", 0, true)
	self:NotifyTo("Npc2030", 0, true)
	self:NotifyTo("Npc2031", 0, true)
end


function Quest22106:OnSubStart2210603(quest)
	self:CreateQuestNpc(quest, Actors.Lulu.id,1)
	self:CreateQuestNpc(quest, Actors.Meng.id,2)
	self:CreateQuestNpc(quest, Actors.Fei.id,3)
	self:NotifyTo("Npc2074", 1, true)
	self:NotifyTo("Npc2030", 1, true)
	self:NotifyTo("Npc2031", 1, true)

end

function Quest22106:OnSubFinish2210603(quest)

end

function Quest22106:OnSubFailed2210603(quest)
	self:NotifyTo("Npc2074", 0, true)
	self:NotifyTo("Npc2030", 0, true)
	self:NotifyTo("Npc2031", 0, true)
end

function Quest22106:OnSubStart2210604(quest)
	self:CreateQuestNpc(quest, Actors.Lulu.id,1)
	self:CreateQuestNpc(quest, Actors.Meng.id,2)
	self:CreateQuestNpc(quest, Actors.Fei.id,3)
	self:NotifyTo("Npc2074", 1, true)
	self:NotifyTo("Npc2030", 1, true)
	self:NotifyTo("Npc2031", 1, true)

end

function Quest22106:OnSubFinish2210604(quest)

end

function Quest22106:OnSubFailed2210604(quest)
	self:NotifyTo("Npc2074", 0, true)
	self:NotifyTo("Npc2030", 0, true)
	self:NotifyTo("Npc2031", 0, true)
end

function Quest22106:OnSubStart2210605(quest)
	self:CreateQuestNpc(quest, Actors.Lulu.id,1)
	self:CreateQuestNpc(quest, Actors.Meng.id,2)
	self:CreateQuestNpc(quest, Actors.Fei.id,3)
	self:NotifyTo("Npc2074", 1, true)
	self:NotifyTo("Npc2030", 1, true)
	self:NotifyTo("Npc2031", 1, true)

end

function Quest22106:OnSubFinish2210605(quest)

end

function Quest22106:OnSubFailed2210605(quest)
	self:NotifyTo("Npc2074", 0, true)
	self:NotifyTo("Npc2030", 0, true)
	self:NotifyTo("Npc2031", 0, true)
end

function Quest22106:OnSubStart2210606(quest)
	self:CreateQuestNpc(quest, Actors.Lulu.id,1)
	self:CreateQuestNpc(quest, Actors.Meng.id,2)
	self:CreateQuestNpc(quest, Actors.Fei.id,3)
	self:NotifyTo("Npc2074", 1, true)
	self:NotifyTo("Npc2030", 1, true)
	self:NotifyTo("Npc2031", 1, true)

end

function Quest22106:OnSubFinish2210606(quest)

end

function Quest22106:OnSubFailed2210606(quest)
	self:NotifyTo("Npc2074", 0, true)
	self:NotifyTo("Npc2030", 0, true)
	self:NotifyTo("Npc2031", 0, true)
end

function Quest22106:OnSubStart2210607(quest)
	self:CreateQuestNpc(quest, Actors.Lulu.id,1)
	self:CreateQuestNpc(quest, Actors.Meng.id,2)
	self:CreateQuestNpc(quest, Actors.Fei.id,3)
	self:NotifyTo("Npc2074", 1, true)
	self:NotifyTo("Npc2030", 1, true)
	self:NotifyTo("Npc2031", 1, true)

end

function Quest22106:OnSubFinish2210607(quest)

end

function Quest22106:OnSubFailed2210607(quest)
	self:NotifyTo("Npc2074", 0, true)
	self:NotifyTo("Npc2030", 0, true)
	self:NotifyTo("Npc2031", 0, true)
end

function Quest22106:OnSubStart2210608(quest)
	self:CreateQuestNpc(quest, Actors.Lulu.id,1)
	self:CreateQuestNpc(quest, Actors.Meng.id,2)
	self:CreateQuestNpc(quest, Actors.Fei.id,3)
	self:NotifyTo("Npc2074", 1, true)
	self:NotifyTo("Npc2030", 1, true)
	self:NotifyTo("Npc2031", 1, true)

end

function Quest22106:OnSubFinish2210608(quest)

end

function Quest22106:OnSubFailed2210608(quest)
	self:NotifyTo("Npc2074", 0, true)
	self:NotifyTo("Npc2030", 0, true)
	self:NotifyTo("Npc2031", 0, true)
end

function Quest22106:OnSubStart2210609(quest)
	self:CreateQuestNpc(quest, Actors.Lulu.id,1)
	self:CreateQuestNpc(quest, Actors.Meng.id,2)
	self:CreateQuestNpc(quest, Actors.Fei.id,3)
	self:NotifyTo("Npc2074", 1, true)
	self:NotifyTo("Npc2030", 1, true)
	self:NotifyTo("Npc2031", 1, true)

end

function Quest22106:OnSubFinish2210609(quest)

end

function Quest22106:OnSubFailed2210609(quest)
	self:NotifyTo("Npc2074", 0, true)
	self:NotifyTo("Npc2030", 0, true)
	self:NotifyTo("Npc2031", 0, true)
end

function Quest22106:OnSubStart22106010(quest)
	self:CreateQuestNpc(quest, Actors.Lulu.id,1)
	self:CreateQuestNpc(quest, Actors.Meng.id,2)
	self:CreateQuestNpc(quest, Actors.Fei.id,3)
	self:NotifyTo("Npc2074", 1, true)
	self:NotifyTo("Npc2030", 1, true)
	self:NotifyTo("Npc2031", 1, true)

end

function Quest22106:OnSubFinish22106010(quest)

end

function Quest22106:OnSubFailed22106010(quest)
	self:NotifyTo("Npc2074", 0, true)
	self:NotifyTo("Npc2030", 0, true)
	self:NotifyTo("Npc2031", 0, true)
end

function Quest22106:OnSubStart22106012(quest)
	self:NotifyTo("Npc2074", 1, true)
	self:NotifyTo("Npc2030", 1, true)
	self:NotifyTo("Npc2031", 1, true)

end

function Quest22106:OnSubFinish22106012(quest)

end

function Quest22106:OnSubFailed22106012(quest)
	self:NotifyTo("Npc2074", 0, true)
	self:NotifyTo("Npc2030", 0, true)
	self:NotifyTo("Npc2031", 0, true)
end

function Quest22106:OnSubStart2210611(quest)
	self:NotifyTo("Npc2074", 1, true)
	self:NotifyTo("Npc2030", 1, true)
	self:NotifyTo("Npc2031", 1, true)
	local VarA = self:GetQuestVar(quest.QuestConfigId,0)
	local VarB = self:GetQuestVar(quest.QuestConfigId,1)
	local VarC = self:GetQuestVar(quest.QuestConfigId,2)
	
	local c_VarA = 0
    local c_VarB = 0
    local c_VarC = 0

	 VarA = self:GetQuestVar(quest.QuestConfigId,0)
	 VarB = self:GetQuestVar(quest.QuestConfigId,1)
	 VarC = self:GetQuestVar(quest.QuestConfigId,2)
	 print("11 VarA is "..VarA)
	 print("11 VarB is "..VarB)
	 print("11 VarC is "..VarC)
    if VarA == 1 then
		c_VarA = 1
	end
	if VarA == 2 then
		c_VarA = 2
    end
	if VarA == 3 then
		c_VarA = 0
    end

	if VarB == 1 then
		c_VarB = -1
    end
	if VarB == 2 then
		c_VarB = 2
    end
	if VarB == 3 then
		c_VarB = 3
    end

	if VarC == 1 then
		c_VarC = 0
    end
	if VarC == 2 then
		c_VarC = -1
    end
	if VarC == 3 then
		c_VarC = 3
    end

   local c_total = c_VarA + c_VarB + c_VarC + 10
   local VarD = self:GetQuestVar(quest.QuestConfigId,3)
   self:SetQuestVar(quest.QuestConfigId,3,c_total)
   local VarD = self:GetQuestVar(quest.QuestConfigId,3)
   print("VarD is ".. VarD)



    self:SetQuestVar(quest.QuestConfigId,0,0)
	self:SetQuestVar(quest.QuestConfigId,1,0)
	self:SetQuestVar(quest.QuestConfigId,2,0)
end

function Quest22106:OnSubFinish2210611(quest)



end

function Quest22106:OnSubFailed2210611(quest)
	self:NotifyTo("Npc2074", 0, true)
	self:NotifyTo("Npc2030", 0, true)
	self:NotifyTo("Npc2031", 0, true)
end

function Quest22106:OnSubStart2210613(quest)
	self:NotifyTo("Npc2074", 1, true)
	self:NotifyTo("Npc2030", 1, true)
	self:NotifyTo("Npc2031", 1, true)
end

function Quest22106:OnSubFinish2210613(quest)
	local quest = actorMgr:GetActor("22106")
	if quest ~= nil then
		quest:FinishQuestID(false, 2210614)
	end
	self:CallDelay(2, self.Blackscreen)


end

function Quest22106:OnSubFailed2210613(quest)
	self:NotifyTo("Npc2074", 0, true)
	self:NotifyTo("Npc2030", 0, true)
	self:NotifyTo("Npc2031", 0, true)
end

function Quest22106:OnSubStart2210614(quest)
	self:NotifyTo("Npc2074", 1, true)
	self:NotifyTo("Npc2030", 1, true)
	self:NotifyTo("Npc2031", 1, true)
end

function Quest22106:OnSubFinish2210614(quest)


end

function Quest22106:OnSubFailed2210614(quest)
	self:NotifyTo("Npc2074", 0, true)
	self:NotifyTo("Npc2030", 0, true)
	self:NotifyTo("Npc2031", 0, true)
end

function Quest22106:Start()
end

function Quest22106:OnDestroy()
end


return Quest22106