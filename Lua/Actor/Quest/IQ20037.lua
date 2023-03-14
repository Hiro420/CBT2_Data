require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest20037 = class("Quest20037", questActorProxy)

Quest20037.defaultAlias = "Quest20037"

--local q20037Cfg = require('Quest/Client/Q20037ClientConfig')
--util.do_require('Quest/Share/Q20037ShareConfig')

--读参数
--local NPCData01=q20037Cfg.NPCData01
--local PaimonData=q20037Cfg.NPCData02

-- Generated
function Quest20037:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["2003701"] = self.OnSubStart2003701 --触发事件（走到古德温附近）	
	self.subStartHandlers["2003702"] = self.OnSubStart2003702 --听古德温的故事
	self.subStartHandlers["2003703"] = self.OnSubStart2003703 --交互，给葛罗丽念信（前）
	self.subStartHandlers["2003704"] = self.OnSubStart2003704 --交互，给葛罗丽念信（念信）
	self.subStartHandlers["2003705"] = self.OnSubStart2003705 --交互，给葛罗丽念信（后）
	self.subStartHandlers["2003706"] = self.OnSubStart2003706 --给古德温回复葛罗丽的感想
	self.subStartHandlers["2003707"] = self.OnSubStart2003707 --古德温消失
end

function Quest20037:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["2003701"] = self.OnSubFinish2003701--触发事件（走到古德温附近）	
	self.subFinishHandlers["2003702"] = self.OnSubFinish2003702--听古德温的故事
	self.subFinishHandlers["2003703"] = self.OnSubFinish2003703--交互，给葛罗丽念信
	self.subFinishHandlers["2003704"] = self.OnSubFinish2003704--交互，给葛罗丽念信
	self.subFinishHandlers["2003705"] = self.OnSubFinish2003705--交互，给葛罗丽念信		
	self.subFinishHandlers["2003706"] = self.OnSubFinish2003706--给古德温回复葛罗丽的感想
	self.subFinishHandlers["2003707"] = self.OnSubFinish2003707--古德温消失
end

function Quest20037:OnSubFailedHandlerBuild() --这任务失败不了
	self.subFailedHandlers = {}
	self.subFailedHandlers["2003701"] = self.OnSubFailed2003701
	self.subFailedHandlers["2003702"] = self.OnSubFailed2003702
	self.subFailedHandlers["2003703"] = self.OnSubFailed2003703
	self.subFailedHandlers["2003704"] = self.OnSubFailed2003704
	self.subFailedHandlers["2003705"] = self.OnSubFailed2003705
	self.subFailedHandlers["2003706"] = self.OnSubFailed2003706
	self.subFailedHandlers["2003707"] = self.OnSubFailed2003707
end

---sub start & finish 内调用的函数

function Quest20037:NPCDestroy(quest)
--	print("startdestroy")
	local avatarPos = actorUtils.GetAvatarPos()
--	print(avatarPos.x)
	local npc_pos = self.clientData.NPCData01.NPCBornPos
	local X = avatarPos.x - npc_pos.x
--	print(X)	
	local Y = avatarPos.y - npc_pos.y
--	print(Y)
	local distance = X*X+Y*Y
--	print(distance)
	if distance > 400 then
--		print("startdestorynpc")
--		print(NPCData01.Npc)
		local npc_alias = self:GetQuestNpcActor(self.clientData.NPCData01.Npc)
--		print("********20037****")
		if npc_alias ~= nil then
			npc_alias:DestroyWithDither(false,5)
--			print("********20037NPC***Destroy:****")
			self:NotifyTo("Npc1553", NpcUtil.NpcEventType.STARTDAILY, true)  
		end
	else
		self:CallDelay(10,self.NPCDestroy)
	end
end

--@region sub start & finish handlers
---按流程触发顺序
function Quest20037:OnSubStart2003701(quest)--触发事件（走到古德温附近）
	self:NotifyTo("Npc1553", NpcUtil.NpcEventType.HIDESELF, true)
	self:CreateQuestNpc(quest, self.clientData.NPCData01.NpcID)      		
--	actorMgr:CreateActorWithPos(NPCData01.Npc, NPCData01.NPCScript, NPCData01.NpcID, 0, NPCData01.NPCBornPos, NPCData01.NPCBornDir, true, false,3)
	--创建NPC 古德温复制人

end

function Quest20037:OnSubFinish2003701(quest)
    
	
end

function Quest20037:OnSubFailed2003701(quest)
	local npc_alias = self:GetQuestNpcActor(self.clientData.NPCData01.Npc)
	npc_alias:Destroy(false)
	self:NotifyTo("Npc1553", NpcUtil.NpcEventType.STARTDAILY, true)  
end



function Quest20037:OnSubStart2003702(quest)--听古德温的故事
	self:NotifyTo("Npc1553", NpcUtil.NpcEventType.HIDESELF, true)  
end

function Quest20037:OnSubFinish2003702(quest)
	local npc_alias = self:GetQuestNpcActor(self.clientData.NPCData02.Npc)
	npc_alias:DestroyWithDisappear(false)
end

function Quest20037:OnSubFailed2003702(quest)
	local npc_alias = self:GetQuestNpcActor(self.clientData.NPCData01.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(self.clientData.NPCData02.Npc)
	npc_alias:Destroy(false)
	self:NotifyTo("Npc1553", NpcUtil.NpcEventType.STARTDAILY, true)  
end

function Quest20037:OnSubStart2003703(quest)--交互，给葛罗丽念信(前)


end

function Quest20037:OnSubFinish2003703(quest)
	

end

function Quest20037:OnSubFailed2003703(quest)
	local npc_alias = self:GetQuestNpcActor(self.clientData.NPCData01.Npc)
	npc_alias:Destroy(false)
	self:NotifyTo("Npc1553", NpcUtil.NpcEventType.STARTDAILY, true)  
end

function Quest20037:OnSubStart2003704(quest)--交互，给葛罗丽念信（交互）	
	print("念信")
	local quest = actorMgr:GetActor(self.clientData.ActorAlias)
	if quest ~= nil then
		quest:FinishQuestID(false, 2003704)
		print("finish 2003704")
	end
end

function Quest20037:OnSubFinish2003704(quest)

end

function Quest20037:OnSubFailed2003704(quest)
	local npc_alias = self:GetQuestNpcActor(self.clientData.NPCData01.Npc)
	npc_alias:Destroy(false)
	self:NotifyTo("Npc1553", NpcUtil.NpcEventType.STARTDAILY, true)  
end

function Quest20037:OnSubStart2003705(quest)--交互，给葛罗丽念信（结束）

end

function Quest20037:OnSubFinish2003705(quest)

	
end

function Quest20037:OnSubFailed2003705(quest)
	local npc_alias = self:GetQuestNpcActor(self.clientData.NPCData01.Npc)
	npc_alias:Destroy(false)
	self:NotifyTo("Npc1553", NpcUtil.NpcEventType.STARTDAILY, true)  
end

function Quest20037:OnSubStart2003706(quest)--回复古德温
	self:NotifyTo("Npc1553", NpcUtil.NpcEventType.HIDESELF, true) 
end



function Quest20037:OnSubFinish2003706(quest)
	local npc_alias = self:GetQuestNpcActor(self.clientData.NPCData02.Npc)
	npc_alias:DestroyWithDisappear(false)
	self:NPCDestroy(quest)--古德温消失

end

function Quest20037:OnSubFailed2003706(quest)
	local npc_alias = self:GetQuestNpcActor(self.clientData.NPCData01.Npc)
	npc_alias:Destroy(false)
	npc_alias = self:GetQuestNpcActor(self.clientData.NPCData02.Npc)
	npc_alias:Destroy(false)
	self:NotifyTo("Npc1553", NpcUtil.NpcEventType.STARTDAILY, true)  
end

function Quest20037:OnSubStart2003707(quest)--古德温消失（已经不用了）
	
end

function Quest20037:OnSubFinish2003707(quest)
		
end

function Quest20037:OnSubFailed2003707(quest)

end

function Quest20037:InvokeOnInteraction(param)
	if param == 1 then
		print("paimon creat")
		local paimonPos = actorUtils.GetAvatarPos()
		local playerVector = actorUtils.GetAvatarForward()
		local paimonVector = playerVector
		paimonVector.x = self.clientData.NPCData01.NPCBornPos.x - paimonPos.x
--		paimonVector.y = self.clientData.NPCData01.NPCBornPos.y - paimonPos.y 
		paimonVector.z = self.clientData.NPCData01.NPCBornPos.z - paimonPos.z 
		local paimonVectorlength = (paimonVector.x^2+paimonVector.y^2+paimonVector.z^2)^0.5
		paimonVector.x = paimonVector.x/paimonVectorlength
--		paimonVector.y = paimonVector.y/paimonVectorlength
		paimonVector.z = paimonVector.z/paimonVectorlength
		local paimonVectorx = paimonVector.x
		paimonVector.x = paimonVector.z * -1
		paimonVector.z = paimonVectorx
		paimonPos.x = 0.5*(paimonPos.x + self.clientData.NPCData01.NPCBornPos.x)+paimonVector.x*1
		paimonPos.z = 0.5*(paimonPos.z + self.clientData.NPCData01.NPCBornPos.z)+paimonVector.z*1
		paimonVector.x = self.clientData.NPCData01.NPCBornPos.x - paimonPos.x
--		paimonVector.y = self.clientData.NPCData01.NPCBornPos.y - paimonPos.y 
		paimonVector.z = self.clientData.NPCData01.NPCBornPos.z - paimonPos.z  
		self:CreateQuestNpcByIdWithPos(2003701,self.clientData.NPCData02.NpcID, 0, paimonPos, M.Dir2Euler(paimonVector))

		print("paimon created") 
	elseif param == 2 then
		print("开始读书100348")
		self:ShowReadingDialog(100348)
	end
end

--@endregion

function Quest20037:Start()
end

function Quest20037:OnDestroy()

end

return Quest20037