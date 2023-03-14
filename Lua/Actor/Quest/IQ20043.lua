require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest20043 = class("Quest20043", questActorProxy)

Quest20043.defaultAlias = "Quest20043"

local DailyNpcManager = require('Actor/DailyNPCManager')
local q20043Cfg
local MichelleData
local QuinnData
local paimonData

function Quest20043:OnDataLoaded()
	q20043Cfg = self.clientData
	MichelleData = q20043Cfg.MichelleData
	QuinnData = q20043Cfg.QuinnData
	paimonData = q20043Cfg.paimonData
end



-- Generated
function Quest20043:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["2004301"] = self.OnSubStart2004301
	self.subStartHandlers["2004302"] = self.OnSubStart2004302
	self.subStartHandlers["2004303"] = self.OnSubStart2004303
	self.subStartHandlers["2004304"] = self.OnSubStart2004304
	self.subStartHandlers["2004305"] = self.OnSubStart2004305
	self.subStartHandlers["2004306"] = self.OnSubStart2004306
	self.subStartHandlers["2004307"] = self.OnSubStart2004307


end

function Quest20043:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["2004301"] = self.OnSubFinish2004301
	self.subFinishHandlers["2004302"] = self.OnSubFinish2004302
	self.subFinishHandlers["2004303"] = self.OnSubFinish2004303
	self.subFinishHandlers["2004304"] = self.OnSubFinish2004304
	self.subFinishHandlers["2004305"] = self.OnSubFinish2004305
	self.subFinishHandlers["2004306"] = self.OnSubFinish2004306
	self.subFinishHandlers["2004307"] = self.OnSubFinish2004307


end

function Quest20043:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["2004301"] = self.OnSubFailed2004301
	self.subFailedHandlers["2004302"] = self.OnSubFailed2004302
	self.subFailedHandlers["2004303"] = self.OnSubFailed2004303
	self.subFailedHandlers["2004304"] = self.OnSubFailed2004304
	self.subFailedHandlers["2004305"] = self.OnSubFailed2004305
	self.subFailedHandlers["2004306"] = self.OnSubFailed2004306
	self.subFailedHandlers["2004307"] = self.OnSubFailed2004307



end

---sub start & finish 内调用的函数



--@region sub start & finish handlers
---按流程触发顺序

function Quest20043:OnSubStart2004301(quest)
	self:CreateQuestNpc(quest, MichelleData.NpcID, 1)
	self:CreateQuestNpc(quest, QuinnData.NpcID, 2)
  self:NotifyTo("Npc1421", DailyNpcManager.NpcEventType.HIDESELF, true)
  self:NotifyTo("Npc1403", DailyNpcManager.NpcEventType.HIDESELF, true)


  local Michelle = self:GetQuestNpcActor(MichelleData.Npc)
  local Quinn = self:GetQuestNpcActor(QuinnData.Npc)

  Michelle:Standby()
	Michelle:DoFreeStateTrigger()
	Quinn:Standby()
	Quinn:DoFreeStateTrigger()


end

function Quest20043:OnSubFinish2004301(quest)
	local Paimon = self:GetQuestNpcActor(paimonData.Npc)
	Paimon:DestroyWithDisappear()
	local Quinn = self:GetQuestNpcActor(QuinnData.Npc)
	self:CreateSpeechBubbleTask(Quinn, 200430701,2,true,3,2)
end


function Quest20043:OnSubStart2004306(quest)
	self:NotifyTo("Npc1421", DailyNpcManager.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc1403", DailyNpcManager.NpcEventType.HIDESELF, true)
end



function Quest20043:OnSubFinish2004306(quest)
	local paimonPos = actorUtils.GetAvatarPos()
	local playerVector = actorUtils.GetAvatarForward()
	local paimonVector = playerVector
	paimonPos.x = paimonPos.x + 1
	paimonPos.z = paimonPos.z - 0.5
	self:CreateQuestNpcByIdWithPos(2004306, paimonData.NpcID, 3, paimonPos, M.Dir2Euler(paimonVector))
	self:RequestInteractionForceAlias("Paimon20043")
end

function Quest20043:OnSubFinish2004307(quest)
	local Paimon = self:GetQuestNpcActor(paimonData.Npc)
	Paimon:DestroyWithDisappear()
end


function Quest20043:OnSubFailed2004301(quest)
	self:NotifyTo("Npc1421", DailyNpcManager.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1403", DailyNpcManager.NpcEventType.STARTDAILY, true)
end

function Quest20043:OnSubStart2004302(quest)
	self:NotifyTo("Npc1421", DailyNpcManager.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc1403", DailyNpcManager.NpcEventType.HIDESELF, true)

end

function Quest20043:OnSubFinish2004302(quest)
	local Paimon = self:GetQuestNpcActor(paimonData.Npc)
	Paimon:DestroyWithDisappear()
end

function Quest20043:OnSubFailed2004302(quest)
	self:NotifyTo("Npc1421", DailyNpcManager.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1403", DailyNpcManager.NpcEventType.STARTDAILY, true)
end

function Quest20043:OnSubStart2004303(quest)
	self:NotifyTo("Npc1421", DailyNpcManager.NpcEventType.HIDESELF, true)
  self:NotifyTo("Npc1403", DailyNpcManager.NpcEventType.HIDESELF, true)

end


function Quest20043:OnSubFinish2004303(quest)
end

function Quest20043:OnSubFailed2004303(quest)
	self:NotifyTo("Npc1421", DailyNpcManager.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1403", DailyNpcManager.NpcEventType.STARTDAILY, true)
end



function Quest20043:OnSubStart2004304(quest)
	self:NotifyTo("Npc1421", DailyNpcManager.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc1403", DailyNpcManager.NpcEventType.HIDESELF, true)

end

function Quest20043:OnSubFinish2004304(quest)
	local Paimon = self:GetQuestNpcActor(paimonData.Npc)
	Paimon:DestroyWithDisappear()
	self:NarratorOnlyTask(q20043Cfg.NarratorData.Story1)
end

function Quest20043:OnSubFailed2004304(quest)
	self:NotifyTo("Npc1421", DailyNpcManager.NpcEventType.STARTDAILY, true)
  self:NotifyTo("Npc1403", DailyNpcManager.NpcEventType.STARTDAILY, true)
end

function Quest20043:OnSubStart2004305(quest)
	self:NotifyTo("Npc1421", DailyNpcManager.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc1403", DailyNpcManager.NpcEventType.HIDESELF, true)

end

function Quest20043:OnSubFinish2004305(quest)
	local Paimon = self:GetQuestNpcActor(paimonData.Npc)
	Paimon:DestroyWithDisappear()

  local Michelle = self:GetQuestNpcActor(MichelleData.Npc)
  Michelle:WalkToTask(MichelleData.NPCLeavePos,
    function(actor, task)
        actor:DestroyWithDither(false, 1)
    end
  )
  local Quinn = self:GetQuestNpcActor(QuinnData.Npc)
  Quinn:DestroyWithDither(false, 1)
  self:NotifyTo("Npc1421", DailyNpcManager.NpcEventType.STARTDAILY, true)
  self:NotifyTo("Npc1403", DailyNpcManager.NpcEventType.STARTDAILY, true)

end

function Quest20043:OnSubFailed2004305(quest)
	self:NotifyTo("Npc1421", DailyNpcManager.NpcEventType.STARTDAILY, true)
  self:NotifyTo("Npc1403", DailyNpcManager.NpcEventType.STARTDAILY, true)
end

function Quest20043:InvokeOnInteraction(param)
	if param == 1 then
		print("paimon create")

		local paimonPos = actorUtils.GetAvatarPos()
		local playerVector = actorUtils.GetAvatarForward()
		local paimonVector = playerVector
		paimonVector.x = MichelleData.NPCPos.x - paimonPos.x
		paimonVector.z = MichelleData.NPCPos.z - paimonPos.z
		local paimonVectorlength = (paimonVector.x^2+paimonVector.y^2+paimonVector.z^2)^0.5
		paimonVector.x = paimonVector.x/paimonVectorlength
		paimonVector.z = paimonVector.z/paimonVectorlength
		local paimonVectorx = paimonVector.x
		paimonVector.x = paimonVector.z * -1
		paimonVector.z = paimonVectorx
		paimonPos.x = 0.5*(paimonPos.x + MichelleData.NPCPos.x)+paimonVector.x*1
		paimonPos.z = 0.5*(paimonPos.z + MichelleData.NPCPos.z)+paimonVector.z*1
		paimonVector.x = MichelleData.NPCPos.x - paimonPos.x
		paimonVector.z = MichelleData.NPCPos.z - paimonPos.z
		self:CreateQuestNpcByIdWithPos(2004301, paimonData.NpcID, 3, paimonPos, M.Dir2Euler(paimonVector))


		print("paimon created")

	elseif param == 2 then
		self:ClearSpeechBubbleTask()

		local paimonPos = actorUtils.GetAvatarPos()
		local playerVector = actorUtils.GetAvatarForward()
		local paimonVector = playerVector
		paimonVector.x = QuinnData.NPCPos.x - paimonPos.x
		paimonVector.z = QuinnData.NPCPos.z - paimonPos.z
		local paimonVectorlength = (paimonVector.x^2+paimonVector.y^2+paimonVector.z^2)^0.5
		paimonVector.x = paimonVector.x/paimonVectorlength
		paimonVector.z = paimonVector.z/paimonVectorlength
		local paimonVectorx = paimonVector.x
		paimonVector.x = paimonVector.z * -1
		paimonVector.z = paimonVectorx
		paimonPos.x = 0.5*(paimonPos.x + QuinnData.NPCPos.x)+paimonVector.x*1
		paimonPos.z = 0.5*(paimonPos.z + QuinnData.NPCPos.z)+paimonVector.z*1
		paimonVector.x = QuinnData.NPCPos.x - paimonPos.x
		paimonVector.z = QuinnData.NPCPos.z - paimonPos.z
		self:CreateQuestNpcByIdWithPos(2004306, paimonData.NpcID, 3, paimonPos, M.Dir2Euler(paimonVector))

		print("paimon create")
	elseif param == 3 then

		local paimonPos = actorUtils.GetAvatarPos()
		local playerVector = actorUtils.GetAvatarForward()
		local paimonVector = playerVector
		paimonVector.x = QuinnData.NPCPos.x - paimonPos.x
		paimonVector.z = QuinnData.NPCPos.z - paimonPos.z
		local paimonVectorlength = (paimonVector.x^2+paimonVector.y^2+paimonVector.z^2)^0.5
		paimonVector.x = paimonVector.x/paimonVectorlength
		paimonVector.z = paimonVector.z/paimonVectorlength
		local paimonVectorx = paimonVector.x
		paimonVector.x = paimonVector.z * -1
		paimonVector.z = paimonVectorx
		paimonPos.x = 0.5*(paimonPos.x + QuinnData.NPCPos.x)+paimonVector.x*1
		paimonPos.z = 0.5*(paimonPos.z + QuinnData.NPCPos.z)+paimonVector.z*1
		paimonVector.x = QuinnData.NPCPos.x - paimonPos.x
		paimonVector.z = QuinnData.NPCPos.z - paimonPos.z
		self:CreateQuestNpcByIdWithPos(2004306, paimonData.NpcID, 3, paimonPos, M.Dir2Euler(paimonVector))

		print("paimon created")
	elseif param == 4 then
		print("paimon create")
		local paimonPos = actorUtils.GetAvatarPos()
		local playerVector = actorUtils.GetAvatarForward()
		local paimonVector = playerVector
		paimonVector.x = MichelleData.NPCPos.x - paimonPos.x
		paimonVector.z = MichelleData.NPCPos.z - paimonPos.z
		local paimonVectorlength = (paimonVector.x^2+paimonVector.y^2+paimonVector.z^2)^0.5
		paimonVector.x = paimonVector.x/paimonVectorlength
		paimonVector.z = paimonVector.z/paimonVectorlength
		local paimonVectorx = paimonVector.x
		paimonVector.x = paimonVector.z * -1
		paimonVector.z = paimonVectorx
		paimonPos.x = 0.5*(paimonPos.x + MichelleData.NPCPos.x)+paimonVector.x*1
		paimonPos.z = 0.5*(paimonPos.z + MichelleData.NPCPos.z)+paimonVector.z*1
		paimonVector.x = MichelleData.NPCPos.x - paimonPos.x
		paimonVector.z = MichelleData.NPCPos.z - paimonPos.z
		self:CreateQuestNpcByIdWithPos(2004306, paimonData.NpcID, 3, paimonPos, M.Dir2Euler(paimonVector))
		print("paimon created")

	end
end


--@endregion

function Quest20043:Start()
end

function Quest20043:OnDestroy()
end

return Quest20043
