require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest20058 = class("Quest20058", questActorProxy)

Quest20058.defaultAlias = "Quest20058"

--local q20058Cfg = require('Quest/Client/Q20058ClientConfig')
--util.do_require('Quest/Share/Q20058ShareConfig')


local PosData
local NPCData01
local NPCData03
local NPCData04
local q20058Cfg

function Quest20058:OnDataLoaded()
	q20058Cfg = self.clientData
	PosData=q20058Cfg.PosData
	NPCData01=q20058Cfg.NPCData01
	NPCData03=q20058Cfg.NPCData03
	NPCData04=q20058Cfg.NPCData04
end

-- Generated
--@region sub start & finish handlers
function Quest20058:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["2005801"] = self.OnSubStart2005801
	self.subStartHandlers["2005802"] = self.OnSubStart2005802
	self.subStartHandlers["2005803"] = self.OnSubStart2005803
	self.subStartHandlers["2005804"] = self.OnSubStart2005804
	self.subStartHandlers["2005805"] = self.OnSubStart2005805
	self.subStartHandlers["2005806"] = self.OnSubStart2005806
	self.subStartHandlers["2005807"] = self.OnSubStart2005807
	self.subStartHandlers["2005808"] = self.OnSubStart2005808
	self.subStartHandlers["2005809"] = self.OnSubStart2005809
end

function Quest20058:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["2005801"] = self.OnSubFinish2005801
	self.subFinishHandlers["2005802"] = self.OnSubFinish2005802
	self.subFinishHandlers["2005803"] = self.OnSubFinish2005803
	self.subFinishHandlers["2005804"] = self.OnSubFinish2005804
	self.subFinishHandlers["2005805"] = self.OnSubFinish2005805
	self.subFinishHandlers["2005806"] = self.OnSubFinish2005806
	self.subFinishHandlers["2005807"] = self.OnSubFinish2005807
	self.subFinishHandlers["2005808"] = self.OnSubFinish2005808
	self.subFinishHandlers["2005809"] = self.OnSubFinish2005809
end

function Quest20058:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["2005801"] = self.OnSubFailed2005801
	self.subFailedHandlers["2005802"] = self.OnSubFailed2005802
	self.subFailedHandlers["2005803"] = self.OnSubFailed2005803
	self.subFailedHandlers["2005804"] = self.OnSubFailed2005804
	self.subFailedHandlers["2005805"] = self.OnSubFailed2005805
	self.subFailedHandlers["2005806"] = self.OnSubFailed2005806
	self.subFailedHandlers["2005807"] = self.OnSubFailed2005807
	self.subFailedHandlers["2005808"] = self.OnSubFailed2005808
	self.subFailedHandlers["2005809"] = self.OnSubFailed2005809
end

--[[
    @desc: 传送相关逻辑
    author:{yejz}
    time:2019-10-16 17:59:59
    @return:
]]
---------------------------------------------------------------------------
function Quest20058:StartTransmit()
	self:EnablePlayerInput(false)
	self:CallDelay(2,
	function()
		self:TransmitPlayer(3,PosData.BornPos, PosData.BornDir,self.TransmitCallback)
	end
	)
end

function Quest20058:TransmitCallback(quest)
	self:CallDelay(1,self.StartCount)
end

function Quest20058:StartCount()
	self:EnablePlayerInput(false)
    self:CountDownUIStart(0, 0, 3)
    self:CallDelay(3, self.CountDown)
end

function Quest20058:CountDown()
	self:EnablePlayerInput(true)
	local quest = actorMgr:GetActor(q20058Cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuestID(false, 2005809) 
	end
end

function Quest20058:FinishTransmit()
	self:CallDelay(8,self.Transmit)
end

function Quest20058:FailTransmit()
	self:CallDelay(4,self.Transmit)
end

function Quest20058:Transmit()
	self:TransmitPlayer(3,PosData.BornPos, PosData.BornDir)
end

---------------------------------------------------------------------------------------------

---sub start & finish 内调用的函数
function Quest20058:OnSubStart2005801(quest)
	self:NotifyTo("Npc1601", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1601", NpcUtil.NpcEventType.BANDAILY, true) 
	self:NotifyTo("Npc1429", NpcUtil.NpcEventType.HIDESELF, true) 
	self:SetQuestVar(quest.QuestConfigId, 0, 0)
	self:SetQuestVar(quest.QuestConfigId, 1, 0)
	self:SetQuestVar(quest.QuestConfigId, 2, 0)
end

function Quest20058:OnSubFinish2005801(quest)
	local npc_alias = self:GetQuestNpcActor(NPCData04.Npc)
	self:ShowBlackScreen(1, 1, 0.5,
    function (self)
		if npc_alias ~= nil then
			npc_alias:Destroy(false)
		end
    end
    )
end

function Quest20058:OnSubFailed2005801(quest)
	local npc_alias = self:GetQuestNpcActor(NPCData04.Npc)
	if npc_alias ~= nil then
		npc_alias:Destroy(false)
	end
end

function Quest20058:OnSubStart2005802(quest)
	self:NotifyTo("Npc1429", NpcUtil.NpcEventType.STARTDAILY, true) 
	if self:GetQuestVar(quest.QuestConfigId , 2) < 2 then
		self.uActor:RequestInteraction("Npc1601")
		self:SetQuestVar(quest.QuestConfigId, 2, 2)
	end
end

function Quest20058:OnSubFinish2005802(quest)
	self:SetQuestVar(quest.QuestConfigId, 0, 1)
end

function Quest20058:OnSubFailed2005802(quest)
	self:NotifyTo("Npc1601", NpcUtil.NpcEventType.STARTDAILY, true) 
end

function Quest20058:OnSubStart2005803(quest)
	
end

function Quest20058:OnSubFinish2005803(quest)
	local record = globalActor:GetChallengeRecordCurrValue(10)
	local quest = actorMgr:GetActor(q20058Cfg.ActorAlias)
	print(record)
	if record == nil then
		print("nochallengevalue")
	else
		if record <= 120000 then		
			if quest ~= nil then
				quest:FinishQuestID(false, 2005810) 
			end
		else 		
			if quest ~= nil then
				quest:FinishQuestID(false, 2005811) 
			end
		end
	end
end

function Quest20058:OnSubFailed2005803(quest)

end

function Quest20058:OnSubStart2005804(quest)
	local NPCActor = self:GetQuestNpcActorNoDummy(NPCData01.Npc)
	if NPCActor == nil then
		self:NotifyTo("Npc1601", NpcUtil.NpcEventType.HIDESELF, true)  
		self:CreateQuestNpc(quest, NPCData03.NpcID)
	end
end

function Quest20058:OnSubFinish2005804(quest)
	local npc_alias = self:GetQuestNpcActor(NPCData01.Npc)
	self:ShowBlackScreen(1, 1, 0.5,
    function (self)
		if npc_alias ~= nil then
			npc_alias:Destroy(false)
		end
    end
    )
	self:NotifyTo("Npc1601", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:SetQuestVar(quest.QuestConfigId, 0, 1)
end

function Quest20058:OnSubFailed2005804(quest)
	local npc_alias = self:GetQuestNpcActor(NPCData01.Npc)
	if npc_alias ~= nil then
		npc_alias:Destroy(false)
	end
	self:NotifyTo("Npc1601", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:SetQuestVar(quest.QuestConfigId, 1, 1)
end

function Quest20058:OnSubStart2005805(quest)
	local NPCActor = self:GetQuestNpcActorNoDummy(NPCData01.Npc)
	if NPCActor == nil then
		self:NotifyTo("Npc1601", NpcUtil.NpcEventType.HIDESELF, true)  
		self:CreateQuestNpc(quest, NPCData03.NpcID)
	end
end

function Quest20058:OnSubFinish2005805(quest)
	self:SetQuestVar(quest.QuestConfigId, 0, 1)
	self:SetQuestVar(quest.QuestConfigId, 1, 1)
end

function Quest20058:OnSubFailed2005805(quest)
	local npc_alias = self:GetQuestNpcActor(NPCData01.Npc)
	if npc_alias ~= nil then
		npc_alias:DestroyWithDither(false,5)
	end
end

function Quest20058:OnSubStart2005806(quest)
	self:NotifyTo("Npc1601", NpcUtil.NpcEventType.HIDESELF, true)  
end

function Quest20058:OnSubFinish2005806(quest)
	self:NotifyTo("Npc1601", NpcUtil.NpcEventType.STARTDAILY, true) 
end

function Quest20058:OnSubFailed2005806(quest)

	local npc_alias = self:GetQuestNpcActor(NPCData01.Npc)
	if npc_alias ~= nil then
		npc_alias:DestroyWithDither(false,5)
	end
	self:NotifyTo("Npc1601", NpcUtil.NpcEventType.STARTDAILY, true) 

end

function Quest20058:OnSubStart2005807(quest)
	self:NotifyTo("Npc1601", NpcUtil.NpcEventType.HIDESELF, true)  
end

function Quest20058:OnSubFinish2005807(quest)

end

function Quest20058:OnSubFailed2005807(quest)
	local npc_alias = self:GetQuestNpcActor(NPCData01.Npc)
	if npc_alias ~= nil then
		npc_alias:DestroyWithDither(false,5)
	end
	self:NotifyTo("Npc1601", NpcUtil.NpcEventType.STARTDAILY, true) 
end

function Quest20058:OnSubStart2005808(quest)
	if(self:GetQuestVar(quest.QuestConfigId, 1)==1) then
		local quest = actorMgr:GetActor(q20058Cfg.ActorAlias)
		if quest ~= nil then
			quest:FinishQuestID(false, 2005808) 
			self:SetQuestVar(quest.QuestConfigId, 1, 0)
		end
	end
end

function Quest20058:OnSubFinish2005808(quest)
	self:SetQuestVar(quest.QuestConfigId, 0, 1)
end

function Quest20058:OnSubFailed2005808(quest)

end

function Quest20058:OnSubStart2005809(quest)	
	self:StartTransmit()
	
end

function Quest20058:OnSubFinish2005809(quest)
	local npc_alias = self:GetQuestNpcActor(NPCData01.Npc)
	if npc_alias ~= nil then
		npc_alias:Destroy(false)
	end
	self:NotifyTo("Npc1601", NpcUtil.NpcEventType.HIDESELF, true)  
	self:CreateQuestNpc(quest, NPCData03.NpcID)
	self:SetQuestVar(quest.QuestConfigId, 0, 0)
end
function Quest20058:OnSubFailed2005809(quest)

end
function Quest20058:InvokeOnInteraction(param)
	if param == 1 then
		local NPC01 = self:GetQuestNpcActor("NPC1601")
		local NPCData04 = self.clientData.NPCData04

		local playerPos = actorUtils.GetAvatarPos()
		--获得玩家的坐标--
		local playerVector = actorUtils.GetAvatarForward()
		--获得玩家的向量--

		local NPC01Pos = NPC01:GetPos()
		local cameraeuler = self:GetCameraEuler()
		local Vector = playerVector
		local Distance = M.Dist(NPC01, playerPos)
		Vector.x = (NPC01Pos.x - playerPos.x) / Distance
		Vector.z = (NPC01Pos.z - playerPos.z) / Distance
		print(Vector.x .. "," .. Vector.y .. "," .. Vector.z)


		local NPCData04Pos = playerPos
		local rate1 = 0.5
		local rate2 = 5
		local rate3 = -4
		NPCData04Pos.x = NPCData04Pos.x + Vector.x * rate1 
		NPCData04Pos.z = NPCData04Pos.z + Vector.z * rate1 
	


		
		local NPCData04Vector = playerVector
		NPCData04Vector.z = -M.Euler2DirXZ(cameraeuler).z
		NPCData04Vector.x = -M.Euler2DirXZ(cameraeuler).x
		print(NPCData04Vector.x .. "," .. NPCData04Vector.y .. "," .. NPCData04Vector.z)
		
		NPCData04Pos.x = NPCData04Pos.x + NPCData04Vector.x * rate2 
		NPCData04Pos.z = NPCData04Pos.z + NPCData04Vector.z * rate2 
		print(NPCData04Pos.x .. "," .. NPCData04Pos.y .. "," .. NPCData04Pos.z)
		self:CreateQuestNpcByIdWithPos(2005801, NPCData04.NpcID, 1, NPCData04Pos, M.Dir2Euler(NPCData04Vector))
		print(NPCData04Pos.x .. "," .. NPCData04Pos.y .. "," .. NPCData04Pos.z)
		NPCData04Pos.x = NPCData04Pos.x + NPCData04Vector.x * rate3 
		NPCData04Pos.z = NPCData04Pos.z + NPCData04Vector.z * rate3 

		local NPC04 = self:GetQuestNpcActor(NPCData04.Npc)

		NPC04:WalkToTask(NPCData04Pos)

	end	
end	
--@endregion

function Quest20058:Start()
end

function Quest20058:OnDestroy()
end

return Quest20058