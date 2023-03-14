require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest22302 = class("Quest22302", questActorProxy)

Quest22302.defaultAlias = "Quest22302"

--local q22302Cfg = require('Quest/Client/Q22302ClientConfig')
local q22302Cfg
local NPCData01

function Quest22302:OnDataLoaded()
	q22302Cfg = self.clientData
	NPCData01 = q22302Cfg.NPCData01
end


-- Generated
--@region sub start & finish handlers
function Quest22302:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["2230201"] = self.OnSubStart2230201
	self.subStartHandlers["2230202"] = self.OnSubStart2230202
	self.subStartHandlers["2230203"] = self.OnSubStart2230203
	self.subStartHandlers["2230204"] = self.OnSubStart2230204
end

function Quest22302:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["2230201"] = self.OnSubFinish2230201
	self.subFinishHandlers["2230202"] = self.OnSubFinish2230202
	self.subFinishHandlers["2230203"] = self.OnSubFinish2230203
	self.subFinishHandlers["2230204"] = self.OnSubFinish2230204
end

function Quest22302:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["2230201"] = self.OnSubFailed2230201
	self.subFailedHandlers["2230202"] = self.OnSubFailed2230202
	self.subFailedHandlers["2230203"] = self.OnSubFailed2230203
	self.subFailedHandlers["2230204"] = self.OnSubFailed2230204
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
function Quest22302:OnSubStart2230201(quest)
	self:NotifyTo("Npc1624", DailyNpcManager.NpcEventType.BANDAILY, true)
	self:NotifyTo("Npc1627", DailyNpcManager.NpcEventType.BANDAILY, true)
end

function Quest22302:OnSubFinish2230201(quest)

end

function Quest22302:OnSubFailed2230201(quest)

end

function Quest22302:OnSubStart2230202(quest)
	self:NotifyTo("Npc1624", DailyNpcManager.NpcEventType.BANDAILY, true)
	self:NotifyTo("Npc1627", DailyNpcManager.NpcEventType.BANDAILY, true)
end

function Quest22302:OnSubFinish2230202(quest)
	self:CreateQuestNpc(quest, NPCData01.NpcID)
end

function Quest22302:OnSubFailed2230202(quest)

end

function Quest22302:OnSubStart2230203(quest)
	self:NotifyTo("Npc1624", DailyNpcManager.NpcEventType.BANDAILY, true)
	self:NotifyTo("Npc1627", DailyNpcManager.NpcEventType.BANDAILY, true)
end

function Quest22302:OnSubFinish2230203(quest)
	

end

function Quest22302:OnSubFailed2230203(quest)

end
function Quest22302:OnSubStart2230204(quest)
	self:RequestInteraction(self.clientData.NPCData01.Npc)
	self:NotifyTo("Npc1624", DailyNpcManager.NpcEventType.BANDAILY, true)
	self:NotifyTo("Npc1627", DailyNpcManager.NpcEventType.BANDAILY, true)
end

function Quest22302:OnSubFinish2230204(quest)
	local npc_alias = self:GetQuestNpcActor(self.clientData.NPCData01.Npc)
	npc_alias:DestroyWithDisappear(false)
end

function Quest22302:OnSubFailed2230204(quest)
	local npc_alias = self:GetQuestNpcActor(self.clientData.NPCData01.Npc)
	npc_alias:DestroyWithDisappear(false)
end

function Quest22302:InvokeOnInteraction(param)
	if param == 1 then
		self:ShowReadingDialog(100387)
	end
end

function Quest22302:OnMainFinished(quest)
	print("main finished " .. tostring(quest.QuestMainId))
	self:NotifyTo("Npc1624", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1627", NpcUtil.NpcEventType.STARTDAILY, true) 
end

function Quest22302:OnMainFailed(quest)
	print("main failed " .. tostring(quest.QuestMainId))
	self:NotifyTo("Npc1624", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1627", NpcUtil.NpcEventType.STARTDAILY, true)  
end

function Quest22302:OnMainCanceled(quest)
	print("main canceled " .. tostring(quest.QuestMainId))
	self:NotifyTo("Npc1624", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1627", NpcUtil.NpcEventType.STARTDAILY, true) 
end

--@endregion

function Quest22302:Start()
end

function Quest22302:OnDestroy()
end

return Quest22302