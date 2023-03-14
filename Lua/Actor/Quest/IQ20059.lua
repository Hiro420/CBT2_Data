require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest20059 = class("Quest20059", questActorProxy)

Quest20059.defaultAlias = "Quest20059"

--local q20059Cfg = require('Quest/Client/Q20059ClientConfig')

local q20059Cfg
local globalvalue200590
local globalvalue200591
local globalvalue200592
local globalvalue200593
local TreasureGiven
local TreasureGivenQuest
local NPCData01
local NPCData01Id

function Quest20059:OnDataLoaded()
	q20059Cfg = self.clientData
	globalvalue200590 = 0
	globalvalue200591 = 0
	globalvalue200592 = 0
	globalvalue200593 = 0
	TreasureGiven = q20059Cfg.TreasureGiven
	TreasureGivenQuest = q20059Cfg.TreasureGivenQuest
	NPCData01=q20059Cfg.NPCData01
	NPCData01Id =q20059Cfg.NPCData01Id
end
-- Generated
--@region sub start & finish handlers
function Quest20059:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["2005901"] = self.OnSubStart2005901
	self.subStartHandlers["2005902"] = self.OnSubStart2005902
	self.subStartHandlers["2005903"] = self.OnSubStart2005903
	self.subStartHandlers["2005904"] = self.OnSubStart2005904
	self.subStartHandlers["2005905"] = self.OnSubStart2005905
	self.subStartHandlers["2005906"] = self.OnSubStart2005906
	self.subStartHandlers["2005907"] = self.OnSubStart2005907
	self.subStartHandlers["2005908"] = self.OnSubStart2005908
	self.subStartHandlers["2005909"] = self.OnSubStart2005909
	self.subStartHandlers["2005910"] = self.OnSubStart2005910
	self.subStartHandlers["2005920"] = self.OnSubStart2005920
	self.subStartHandlers["2005930"] = self.OnSubStart2005930
	self.subStartHandlers["2005950"] = self.OnSubStart2005950
	self.subStartHandlers["2005970"] = self.OnSubStart2005970
	self.subStartHandlers["2005990"] = self.OnSubStart2005990
	self.subStartHandlers["2005999"] = self.OnSubStart2005999
end

function Quest20059:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["2005901"] = self.OnSubFinish2005901
	self.subFinishHandlers["2005902"] = self.OnSubFinish2005902
	self.subFinishHandlers["2005903"] = self.OnSubFinish2005903
	self.subFinishHandlers["2005904"] = self.OnSubFinish2005904
	self.subFinishHandlers["2005905"] = self.OnSubFinish2005905
	self.subFinishHandlers["2005906"] = self.OnSubFinish2005906
	self.subFinishHandlers["2005907"] = self.OnSubFinish2005907
	self.subFinishHandlers["2005908"] = self.OnSubFinish2005908
	self.subFinishHandlers["2005909"] = self.OnSubFinish2005909
	self.subFinishHandlers["2005910"] = self.OnSubFinish2005910
	self.subFinishHandlers["2005920"] = self.OnSubFinish2005920
	self.subFinishHandlers["2005930"] = self.OnSubFinish2005930
	self.subFinishHandlers["2005950"] = self.OnSubFinish2005950
	self.subFinishHandlers["2005970"] = self.OnSubFinish2005970
	self.subFinishHandlers["2005990"] = self.OnSubFinish2005990	
	self.subFinishHandlers["2005999"] = self.OnSubFinish2005999
end

function Quest20059:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["2005901"] = self.OnSubFailed2005901
	self.subFailedHandlers["2005902"] = self.OnSubFailed2005902
	self.subFailedHandlers["2005903"] = self.OnSubFailed2005903
	self.subFailedHandlers["2005904"] = self.OnSubFailed2005904
	self.subFailedHandlers["2005905"] = self.OnSubFailed2005905
	self.subFailedHandlers["2005906"] = self.OnSubFailed2005906
	self.subFailedHandlers["2005907"] = self.OnSubFailed2005907
	self.subFailedHandlers["2005908"] = self.OnSubFailed2005908
	self.subFailedHandlers["2005909"] = self.OnSubFailed2005909
	self.subFailedHandlers["2005910"] = self.OnSubFailed2005910
	self.subFailedHandlers["2005920"] = self.OnSubFailed2005920
	self.subFailedHandlers["2005930"] = self.OnSubFailed2005930
	self.subFailedHandlers["2005950"] = self.OnSubFailed2005950
	self.subFailedHandlers["2005970"] = self.OnSubFailed2005970
	self.subFailedHandlers["2005990"] = self.OnSubFailed2005990
	self.subFailedHandlers["2005999"] = self.OnSubFailed2005999
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
function Quest20059:OnSubStart2005901(quest)
	globalvalue200590 = self:SetQuestVarWithInterval(quest.QuestConfigId, 0, 20, 20)
	print(globalvalue200590)
	globalvalue200591 = self:SetQuestVar(quest.QuestConfigId, 1, 0)
	globalvalue200592 = self:SetQuestVar(quest.QuestConfigId, 2, 0)
	globalvalue200593 = self:SetQuestVar(quest.QuestConfigId, 3, 0)
end

function Quest20059:OnSubFinish2005901(quest)

end

function Quest20059:OnSubFailed2005901(quest)

end

function Quest20059:OnSubStart2005902(quest)
	if self:GetQuestVar(quest.QuestConfigId, 3) == 0 then
	self.uActor:RequestInteraction("Npc1435")
	end
	self:SetQuestVar(quest.QuestConfigId, 3, 1)
end

function Quest20059:OnSubFinish2005902(quest)

end

function Quest20059:OnSubFailed2005902(quest)

end

function Quest20059:OnSubStart2005903(quest)
	
end

function Quest20059:OnSubFinish2005903(quest)

end

function Quest20059:OnSubFailed2005903(quest)

end

function Quest20059:OnSubStart2005904(quest)
	globalvalue200591 = self:GetQuestVar(quest.QuestConfigId,1)
	local NpcId = NPCData01Id[tostring(globalvalue200591)]
		if NpcId ~= nil then
			self:NotifyTo("Npc"..tostring(NpcId*100+1), NpcUtil.NpcEventType.HIDESELF, true)  
		else
			print("没有要销毁的NPC")
		end
	self:ShowBlackScreen(0.5, 1, 0.5,
		function (self)
			self:CreateQuestNpc(quest, NpcId*100+1) 
		end
		)
	self.uActor:RequestInteraction("Npc1435")
end

function Quest20059:OnSubFinish2005904(quest)

end

function Quest20059:OnSubFailed2005904(quest)
	globalvalue200591 = self:GetQuestVar(quest.QuestConfigId,1)
	if globalvalue200591~= nil then
		local NpcId = NPCData01Id[tostring(globalvalue200591)]
		if NpcId ~= nil then
			local npc_alias = self:GetQuestNpcActor("Npc"..tostring(NpcId*100+1))
			npc_alias:Destroy(false)
			self:NotifyTo("Npc"..tostring(NpcId), NpcUtil.NpcEventType.STARTDAILY, true)  
		else
			print("没有要销毁的NPC")
		end
	else
		print("不存在可用的1号全局变量")
	end
end

function Quest20059:OnSubStart2005905(quest)
	
end

function Quest20059:OnSubFinish2005905(quest)
	globalvalue200591 = self:GetQuestVar(quest.QuestConfigId,1)
	local NpcId = NPCData01Id[tostring(globalvalue200591)]		
	self:ShowBlackScreen(0.5, 1, 0.5,
		function (self)
			if NpcId ~= nil then
				local npc_alias = self:GetQuestNpcActor("Npc"..tostring(NpcId*100+1))
				npc_alias:Destroy(false)
				self:NotifyTo("Npc"..tostring(NpcId), NpcUtil.NpcEventType.STARTDAILY, true)   
			else
				print("没有要销毁的NPC")
			end
		end
		)
end

function Quest20059:OnSubFailed2005905(quest)
	globalvalue200591 = self:GetQuestVar(quest.QuestConfigId,1)
	if globalvalue200591~= nil then
		local NpcId = NPCData01Id[tostring(globalvalue200591)]
		if NpcId ~= nil then
			local npc_alias = self:GetQuestNpcActor("Npc"..tostring(NpcId*100+1))
			npc_alias:Destroy(false)
			self:NotifyTo("Npc"..tostring(NpcId), NpcUtil.NpcEventType.STARTDAILY, true)  
		else
			print("没有要销毁的NPC")
		end
	else
		print("不存在可用的1号全局变量")
	end
end

function Quest20059:OnSubStart2005906(quest)

end

function Quest20059:OnSubFinish2005906(quest)

end

function Quest20059:OnSubFailed2005906(quest)
	globalvalue200591 = self:GetQuestVar(quest.QuestConfigId,1)
	if globalvalue200591~= nil then
		local NpcId = NPCData01Id[tostring(globalvalue200591)]
		if NpcId ~= nil then
			local npc_alias = self:GetQuestNpcActor("Npc"..tostring(NpcId*100+1))
			npc_alias:Destroy(false)
			self:NotifyTo("Npc"..tostring(NpcId), NpcUtil.NpcEventType.STARTDAILY, true)  
		else
			print("没有要销毁的NPC")
		end
	else
		print("不存在可用的1号全局变量")
	end
end

function Quest20059:OnSubStart2005907(quest)

end

function Quest20059:OnSubFinish2005907(quest)

end

function Quest20059:OnSubFailed2005907(quest)
	globalvalue200591 = self:GetQuestVar(quest.QuestConfigId,1)
	if globalvalue200591~= nil then
		local NpcId = NPCData01Id[tostring(globalvalue200591)]
		if NpcId ~= nil then
			local npc_alias = self:GetQuestNpcActor("Npc"..tostring(NpcId*100+1))
			npc_alias:Destroy(false)
			self:NotifyTo("Npc"..tostring(NpcId), NpcUtil.NpcEventType.STARTDAILY, true)  
		else
			print("没有要销毁的NPC")
		end
	else
		print("不存在可用的1号全局变量")
	end
end

function Quest20059:OnSubStart2005908(quest)

end

function Quest20059:OnSubFinish2005908(quest)

end

function Quest20059:OnSubFailed2005908(quest)
	globalvalue200591 = self:GetQuestVar(quest.QuestConfigId,1)
	if globalvalue200591~= nil then
		local NpcId = NPCData01Id[tostring(globalvalue200591)]
		if NpcId ~= nil then
			local npc_alias = self:GetQuestNpcActor("Npc"..tostring(NpcId*100+1))
			npc_alias:Destroy(false)
			self:NotifyTo("Npc"..tostring(NpcId), NpcUtil.NpcEventType.STARTDAILY, true)  
		else
			print("没有要销毁的NPC")
		end
	else
		print("不存在可用的1号全局变量")
	end
end

function Quest20059:OnSubStart2005909(quest)


end

function Quest20059:OnSubFinish2005909(quest)

end
function Quest20059:OnSubFailed2005909(quest)
	globalvalue200591 = self:GetQuestVar(quest.QuestConfigId,1)
	if globalvalue200591~= nil then
		local NpcId = NPCData01Id[tostring(globalvalue200591)]
		if NpcId ~= nil then
			local npc_alias = self:GetQuestNpcActor("Npc"..tostring(NpcId*100+1))
			npc_alias:Destroy(false)
			self:NotifyTo("Npc"..tostring(NpcId), NpcUtil.NpcEventType.STARTDAILY, true)  
		else
			print("没有要销毁的NPC")
		end
	else
		print("不存在可用的1号全局变量")
	end
end
function Quest20059:OnSubStart2005910(quest)

end

function Quest20059:OnSubFinish2005910(quest)
	self:CallDelay(300, function()
		local quest = actorMgr:GetActor(q20059Cfg.ActorAlias)
		if quest ~= nil then
			quest:FinishQuestID(false, 2005910)
		end
	end
	)
	
end
function Quest20059:OnSubFailed2005910(quest)
	globalvalue200591 = self:GetQuestVar(quest.QuestConfigId,1)
	if globalvalue200591~= nil then
		local NpcId = NPCData01Id[tostring(globalvalue200591)]
		if NpcId ~= nil then
			local npc_alias = self:GetQuestNpcActor("Npc"..tostring(NpcId*100+1))
			npc_alias:Destroy(false)
			self:NotifyTo("Npc"..tostring(NpcId), NpcUtil.NpcEventType.STARTDAILY, true)  
		else
			print("没有要销毁的NPC")
		end
	else
		print("不存在可用的1号全局变量")
	end
end
function Quest20059:OnSubStart2005920(quest)

end

function Quest20059:OnSubFinish2005920(quest)
	local treasuregivencurrent = self:GetGivingRecord(2005920)
	if treasuregivencurrent ~= nil then
	globalvalue200591 = self:SetQuestVar(quest.QuestConfigId,1,TreasureGiven[tostring(treasuregivencurrent)])
	else
		print("givingdata有误")
	end
end
function Quest20059:OnSubFailed2005920(quest)
	globalvalue200591 = self:GetQuestVar(quest.QuestConfigId,1)
	if globalvalue200591~= nil then
		local NpcId = NPCData01Id[tostring(globalvalue200591)]
		if NpcId ~= nil then
			local npc_alias = self:GetQuestNpcActor("Npc"..tostring(NpcId*100+1))
			npc_alias:Destroy(false)
			self:NotifyTo("Npc"..tostring(NpcId), NpcUtil.NpcEventType.STARTDAILY, true)  
		else
			print("没有要销毁的NPC")
		end
	else
		print("不存在可用的1号全局变量")
	end
end
function Quest20059:OnSubStart2005930(quest)

end

function Quest20059:OnSubFinish2005930(quest)

end
function Quest20059:OnSubFailed2005930(quest)
	globalvalue200591 = self:GetQuestVar(quest.QuestConfigId,1)
	if globalvalue200591~= nil then
		local NpcId = NPCData01Id[tostring(globalvalue200591)]
		if NpcId ~= nil then
			local npc_alias = self:GetQuestNpcActor("Npc"..tostring(NpcId*100+1))
			npc_alias:Destroy(false)
			self:NotifyTo("Npc"..tostring(NpcId), NpcUtil.NpcEventType.STARTDAILY, true)  
		else
			print("没有要销毁的NPC")
		end
	else
		print("不存在可用的1号全局变量")
	end
end
function Quest20059:OnSubStart2005950(quest)

end

function Quest20059:OnSubFinish2005950(quest)

end
function Quest20059:OnSubFailed2005950(quest)
	globalvalue200591 = self:GetQuestVar(quest.QuestConfigId,1)
	if globalvalue200591~= nil then
		local NpcId = NPCData01Id[tostring(globalvalue200591)]
		if NpcId ~= nil then
			local npc_alias = self:GetQuestNpcActor("Npc"..tostring(NpcId*100+1))
			npc_alias:Destroy(false)
			self:NotifyTo("Npc"..tostring(NpcId), NpcUtil.NpcEventType.STARTDAILY, true)  
		else
			print("没有要销毁的NPC")
		end
	else
		print("不存在可用的1号全局变量")
	end
end
function Quest20059:OnSubStart2005970(quest)

end

function Quest20059:OnSubFinish2005970(quest)

end
function Quest20059:OnSubFailed2005970(quest)
	globalvalue200591 = self:GetQuestVar(quest.QuestConfigId,1)
	if globalvalue200591~= nil then
		local NpcId = NPCData01Id[tostring(globalvalue200591)]
		if NpcId ~= nil then
			local npc_alias = self:GetQuestNpcActor("Npc"..tostring(NpcId*100+1))
			npc_alias:Destroy(false)
			self:NotifyTo("Npc"..tostring(NpcId), NpcUtil.NpcEventType.STARTDAILY, true)  
		else
			print("没有要销毁的NPC")
		end
	else
		print("不存在可用的1号全局变量")
	end
end
function Quest20059:OnSubStart2005990(quest)

end

function Quest20059:OnSubFinish2005990(quest)

end
function Quest20059:OnSubFailed2005990(quest)
	globalvalue200591 = self:GetQuestVar(quest.QuestConfigId,1)
	if globalvalue200591~= nil then
		local NpcId = NPCData01Id[tostring(globalvalue200591)]
		if NpcId ~= nil then
			local npc_alias = self:GetQuestNpcActor("Npc"..tostring(NpcId*100+1))
			npc_alias:Destroy(false)
			self:NotifyTo("Npc"..tostring(NpcId), NpcUtil.NpcEventType.STARTDAILY, true)  
		else
			print("没有要销毁的NPC")
		end
	else
		print("不存在可用的1号全局变量")
	end
end


function Quest20059:InvokeOnInteraction(param)

	globalvalue200591 = self:GetQuestVar(2005999,1)
	if globalvalue200591~= nil then
		if param == 0 then
			self:SetQuestVar(2005999,3, 2005904)
		elseif param == 1 then
			local quest = actorMgr:GetActor(q20059Cfg.ActorAlias)
			if quest ~= nil then
				quest:FinishQuestID(false, 2005906)
				quest:FinishQuestID(false, 2005904)
			end
		elseif param == 2 then
			local quest = actorMgr:GetActor(q20059Cfg.ActorAlias)
			if quest ~= nil then
				quest:FinishQuestID(false, 2005907)
				quest:FinishQuestID(false, 2005904)
			end
		elseif param == 3 then
			local quest = actorMgr:GetActor(q20059Cfg.ActorAlias)
			if quest ~= nil then
				quest:FinishQuestID(false, 2005908)
				quest:FinishQuestID(false, 2005904)
			end
		elseif param == 99 then
			local quest = actorMgr:GetActor(q20059Cfg.ActorAlias)
			local finishquestid = TreasureGivenQuest[tostring(10*globalvalue200591 + 1)]
			if quest ~= nil then
				quest:FinishQuestID(false, finishquestid)
			end
		elseif param == 100 then
			local quest = actorMgr:GetActor(q20059Cfg.ActorAlias)
			local finishquestid = TreasureGivenQuest[tostring(10*globalvalue200591 + 2)]
			if quest ~= nil then
				quest:FinishQuestID(false, finishquestid)
			end
		elseif param == 101 then
			local quest = actorMgr:GetActor(q20059Cfg.ActorAlias)
			local finishquestid = TreasureGivenQuest[tostring(10*globalvalue200591 + 3)]
			if quest ~= nil then
				quest:FinishQuestID(false, finishquestid)
			end
		elseif param == 102 then
			local quest = actorMgr:GetActor(q20059Cfg.ActorAlias)
			local finishquestid = TreasureGivenQuest[tostring(10*globalvalue200591 + 4)]
			if quest ~= nil then
				quest:FinishQuestID(false, finishquestid)
			end
		end
	else
		print("找不到全局变量20059：1")
	end
end
--@endregion

function Quest20059:Start()
end

function Quest20059:OnDestroy()
end

return Quest20059