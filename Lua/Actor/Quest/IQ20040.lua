require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest20040 = class("Quest20040", questActorProxy)

Quest20040.defaultAlias = "Quest20040"

local q20040cfg
local NPCData
local MainID

function Quest20040:OnDataLoaded()
	q20040cfg = self.clientData
	MainID =  20040
	NPCData = q20040cfg.NPCData

end

-- Generated
function Quest20040:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["2004001"] = self.OnSubStart2004001
	self.subStartHandlers["2004002"] = self.OnSubStart2004002
	self.subStartHandlers["2004003"] = self.OnSubStart2004003
	self.subStartHandlers["2004004"] = self.OnSubStart2004004
	self.subStartHandlers["2004007"] = self.OnSubStart2004007
end

function Quest20040:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["2004001"] = self.OnSubFinish2004001
	self.subFinishHandlers["2004002"] = self.OnSubFinish2004002
	self.subFinishHandlers["2004003"] = self.OnSubFinish2004003
	self.subFinishHandlers["2004004"] = self.OnSubFinish2004004
	self.subFinishHandlers["2004007"] = self.OnSubFinish2004007
end

function Quest20040:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["2004001"] = self.OnSubFailed2004001
	self.subFailedHandlers["2004002"] = self.OnSubFailed2004002
	self.subFailedHandlers["2004003"] = self.OnSubFailed2004003
	self.subFailedHandlers["2004004"] = self.OnSubFailed2004004
	self.subFailedHandlers["2004007"] = self.OnSubFailed2004007
end

function Quest20040:InvokeOnInteraction(param)
	if param == 1 then
		local quest20040 = actorMgr:GetActor("20040")
		local EventNPC = quest20040:GetQuestNpcActor(NPCData.Npc)
		EventNPC:DoFreeStateTrigger()
		EventNPC:WalkToRouteTask(q20040cfg.RoutePoints3,
		function(actor, task)
			print("npc get end")
		end,function(actor, task)
			
			EventNPC:Standby(true)
		end
		)
		self:ShowPaimonDoWay()
	end
	if param == 2 then

	end

	if param == 3 then
		local quest20040 = actorMgr:GetActor("20040")
		quest20040:PaimonVanish()
	end

end

function Quest20040:ShowPaimonDoWay( )
	local quest20040 = actorMgr:GetActor("20040")
	local PaimonData = quest20040.clientData.PaimonData
	local paimonPos = actorUtils.GetAvatarPos()
	local playerVector = actorUtils.GetAvatarForward()
	local distance = 1.5
	print(playerVector.x .. "," .. playerVector.y .. "," .. playerVector.z)
	paimonPos.x = paimonPos.x + playerVector.x * distance + 0.7
	paimonPos.z = paimonPos.z + playerVector.z * distance - 0.7

	local paimonVector = playerVector
	paimonVector.x = paimonVector.x * -1
	paimonVector.z = paimonVector.z * -1
	quest20040:CreateQuestNpcByIdWithPos(2004001, PaimonData.PaimonID, 2, paimonPos, M.Dir2Euler(paimonVector))
	local paimon = quest20040:GetQuestNpcActor(PaimonData.Paimon)
	paimon:AirModeOn()
	---paimon:AddPriorityInter(InterTimingType.BTN, q20040cfg.InterData.NoReplyInter1)	
	quest20040:CallDelay(1,
		function (self)
			self:RequestInteraction("Paimon")
		end
	)
	---self:CallDelay(3,self.PaimonVanish)
end

function Quest20040:PaimonVanish()
	--local quest20040 = actorMgr:GetActor("20040")
	local PaimonData = self.clientData.PaimonData
	local paimon = self:GetQuestNpcActor(PaimonData.Paimon)
	---paimon:ClearPriorityInter(InterTimingType.BTN)
	if paimon ~= nil then
		paimon:DestroyWithDisappear(false)
	end
end

--@region sub start & finish handlers
---按流程触发顺序
function Quest20040:OnSubStart2004001(quest)
	---actorMgr:CreateActorWithPos(NPCData.Npc, NPCData.NPCScript, NPCData.NpcID, 0, NPCData.NPCBornPos, NPCData.NPCBornDir, true, false,3)
	self:CreateQuestNpc(quest, NPCData.NpcID)
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:Standby()
	self:NotifyTo("Npc1581", NpcUtil.NpcEventType.HIDESELF, true)
	print("01 start")

end

function Quest20040:DoFreeStyle(quest)
  print("delay start dofreestyle")
  
end

function Quest20040:OnSubFinish2004001(quest)
	
    print("01 finish")
	
end

function Quest20040:OnSubFailed2004001(quest)
	self:NotifyTo("Npc1581", NpcUtil.NpcEventType.STARTDAILY, true) 

end

function Quest20040:OnSubStart2004002(quest)
	print("02 start")
	self:NotifyTo("Npc1581", NpcUtil.NpcEventType.HIDESELF, true)
	

end

function Quest20040:OnSubFinish2004002(quest)

  
    print("02 finish")
end

function Quest20040:OnSubFailed2004002(quest)
	self:NotifyTo("Npc1581", NpcUtil.NpcEventType.STARTDAILY, true) 

end

function Quest20040:OnSubStart2004003(quest)
	print("03 start")
	self:NotifyTo("Npc1581", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest20040:OnSubFinish2004003(quest)

		print("03 finish")
end

function Quest20040:OnSubFailed2004003(quest)
	print("03 fail")
	self:NotifyTo("Npc1581", NpcUtil.NpcEventType.STARTDAILY, true) 
end

function Quest20040:OnSubStart2004004(quest)
	self:NotifyTo("Npc1581", NpcUtil.NpcEventType.HIDESELF, true)
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)

    EventNPC:DoFreeStateTrigger()

	EventNPC:WalkToRouteTask(q20040cfg.RoutePoints1,
	function(actor, task)
		
	  local quest = actorMgr:GetActor(q20040cfg.ActorAlias)
	  if quest ~= nil then
		  quest:FinishQuestID(false, 2004004)
		  print("finish 2004004")
	  end

	  ---actor:DestroyWithDither(false, 1)

	  self:ShowBlackScreen(0.5, 1, 0.5,
	    function (self)
		  self:CallDelay(0.5,
				function (self)
					local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
					EventNPC:SetPos(sceneData:GetDummyPoint(3,"Event_20600_07").pos)
					EventNPC:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3,"Event_20600_07").rot))
			    end
		  )
	    end,EventNPC:Standby()
	  )

	end
	)


	print("04 start")

end

function Quest20040:OnSubFinish2004004(quest)


		print("04 finish")
end

function Quest20040:OnSubFailed2004004(quest)
	print("04 fail")
	self:NotifyTo("Npc1581", NpcUtil.NpcEventType.STARTDAILY, true) 
end


function Quest20040:OnSubStart2004007(quest)
	print("07 start")
	self:NotifyTo("Npc1581", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest20040:OnSubFinish2004007(quest)
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)

	EventNPC:DoFreeStateTrigger()
	
	self:ShowBlackScreen(0.5, 1, 0.5,
	function (self)
	  self:CallDelay(0.2,
			function (self)
			
				EventNPC:DestroyWithDither(false, 1)
				self:NotifyTo("Npc1581", NpcUtil.NpcEventType.STARTDAILY, true) 	
			end
	  )
	end
  )

		print("07 finish")
end

function Quest20040:OnSubFailed2004007(quest)
	print("07 fail")
	self:NotifyTo("Npc1581", NpcUtil.NpcEventType.STARTDAILY, true) 
end

--@endregion

function Quest20040:Start()
end

function Quest20040:OnDestroy()
end

return Quest20040