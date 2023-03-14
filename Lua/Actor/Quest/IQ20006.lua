require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest20006 = class("Quest20006", questActorProxy)

Quest20006.defaultAlias = "Quest20006"

local DeliverTime = 180
local ison = 1
local q20006cfg
local subIDs
local NPCData


function Quest20006:OnDataLoaded(  )
	q20006cfg = self.clientData
	subIDs = q20006cfg.SubIDs
	NPCData = q20006cfg.NPCData

end
-- Generated
function Quest20006:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["2000601"] = self.OnSubStart2000601
	self.subStartHandlers["2000602"] = self.OnSubStart2000602
	self.subStartHandlers["2000603"] = self.OnSubStart2000603
	self.subStartHandlers["2000604"] = self.OnSubStart2000604
	self.subStartHandlers["2000605"] = self.OnSubStart2000605
	self.subStartHandlers["2000606"] = self.OnSubStart2000606
	self.subStartHandlers["2000607"] = self.OnSubStart2000607
	self.subStartHandlers["2000608"] = self.OnSubStart2000608
	self.subStartHandlers["2000609"] = self.OnSubStart2000609
	self.subStartHandlers["2000610"] = self.OnSubStart2000610

end

function Quest20006:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["2000601"] = self.OnSubFinish2000601
	self.subFinishHandlers["2000602"] = self.OnSubFinish2000602
	self.subFinishHandlers["2000603"] = self.OnSubFinish2000603
	self.subFinishHandlers["2000604"] = self.OnSubFinish2000604
	self.subFinishHandlers["2000605"] = self.OnSubFinish2000605
	self.subFinishHandlers["2000606"] = self.OnSubFinish2000606
	self.subFinishHandlers["2000607"] = self.OnSubFinish2000607
	self.subFinishHandlers["2000608"] = self.OnSubFinish2000608
	self.subFinishHandlers["2000609"] = self.OnSubFinish2000609
	self.subFinishHandlers["2000610"] = self.OnSubFinish2000610

end

function Quest20006:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["2000601"] = self.OnSubFailed2000601
	self.subFailedHandlers["2000602"] = self.OnSubFailed2000602
	self.subFailedHandlers["2000603"] = self.OnSubFailed2000603
	self.subFailedHandlers["2000604"] = self.OnSubFailed2000604
	self.subFailedHandlers["2000605"] = self.OnSubFailed2000605
	self.subFailedHandlers["2000606"] = self.OnSubFailed2000606
	self.subFailedHandlers["2000607"] = self.OnSubFailed2000607
	self.subFailedHandlers["2000608"] = self.OnSubFailed2000608
	self.subFailedHandlers["2000609"] = self.OnSubFailed2000609
	self.subFailedHandlers["2000610"] = self.OnSubFailed2000610

end

---sub start & finish 内调用的函数

function Quest20006:StartCount()
    print("StartCount")
    self:CountDownUIStart(DeliverTime, 20, 3)
    self:CallDelay(DeliverTime+4,self.CountDown)
end

function Quest20006:CountDown()
	print("CountDown Finished")
	if ison ==1 then  
		self:ShowPaimonDoWay1()
		ison = 0
	  end


    local quest = actorMgr:GetActor(q20006cfg.ActorAlias)
    if quest ~= nil then
       print("deliver fail")
	   quest:FinishQuestID(true, 2000603)


	  
    end

end

function Quest20006:ShowPaimonDoWay1( )
	local PaimonData = self.clientData.PaimonData
	local paimonPos = actorUtils.GetAvatarPos()
	local playerVector = actorUtils.GetAvatarForward()
	local distance = 1.5
	print(playerVector.x .. "," .. playerVector.y .. "," .. playerVector.z)
	paimonPos.x = paimonPos.x + playerVector.x * distance + 0.7
	paimonPos.z = paimonPos.z + playerVector.z * distance - 0.7

	local paimonVector = playerVector
	paimonVector.x = paimonVector.x * -1
	paimonVector.z = paimonVector.z * -1
	self:CreateQuestNpcByIdWithPos(2000604, PaimonData.PaimonID, 1, paimonPos, M.Dir2Euler(paimonVector))
	globalActor:EnablePlayerInput(false)
	local paimon = self:GetQuestNpcActor(q20006cfg.PaimonData.Paimon)
	paimon:AirModeOn()
	paimon:AddPriorityInter(InterTimingType.BTN, q20006cfg.InterData.NoReplyInter1)	
	self:CallDelay(1,
		function (self)
			self:RequestInteraction(q20006cfg.PaimonData.Paimon)
		end
	)
	self:CallDelay(3,self.PaimonVanish)
end

function Quest20006:ShowPaimonDoWay2( )
	local PaimonData = self.clientData.PaimonData
	local paimonPos = actorUtils.GetAvatarPos()
	local playerVector = actorUtils.GetAvatarForward()
	local distance = 1.5
	print(playerVector.x .. "," .. playerVector.y .. "," .. playerVector.z)
	paimonPos.x = paimonPos.x + playerVector.x * distance + 0.7
	paimonPos.z = paimonPos.z + playerVector.z * distance - 0.7 

	local paimonVector = playerVector
	paimonVector.x = paimonVector.x * -1
	paimonVector.z = paimonVector.z * -1
	self:CreateQuestNpcByIdWithPos(2000604, PaimonData.PaimonID, 1, paimonPos, M.Dir2Euler(paimonVector))
	globalActor:EnablePlayerInput(false)
	local paimon = self:GetQuestNpcActor(q20006cfg.PaimonData.Paimon,20006)
	paimon:AirModeOn()
	paimon:AddPriorityInter(InterTimingType.BTN, q20006cfg.InterData.NoReplyInter2)	
	self:CallDelay(1,
		function (self)
			self:RequestInteraction(q20006cfg.PaimonData.Paimon)
		end
	)
	self:CallDelay(3,self.PaimonVanish)
end

function Quest20006:PaimonVanish()
	local paimon = self:GetQuestNpcActor(q20006cfg.PaimonData.Paimon)
	paimon:ClearPriorityInter(InterTimingType.BTN)
	if paimon ~= nil then
		paimon:DestroyWithDisappear(false)
	end
	globalActor:EnablePlayerInput(true)
end

function Quest20006:Transmit()
	self:TransmitPlayer(3, NPCData.PlayerPos, NPCData.PlayerDir)
end



--@region sub start & finish handlers
---按流程触发顺序
function Quest20006:OnSubStart2000601(quest)
  
 print("01 start")
end

function Quest20006:OnSubFinish2000601(quest)
    print("01 finish")

end

function Quest20006:OnSubFailed2000601(quest)
	

end

function Quest20006:OnSubStart2000602(quest)
	print("02 start")

    ison = 1
end

function Quest20006:OnSubFinish2000602(quest)

	self:CreateQuestNpc(quest, NPCData.NpcID, 1)
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:Standby()
	EventNPC:DoFreeStyle(4190, true)

    print("02 finish")
end

function Quest20006:DoFreeStyle(quest)
  print("delay start dofreestyle")

  local EventNPC = self:GetQuestNpcActor(NPCData.Npc) 
  EventNPC:Standby()
  EventNPC:DoFreeStyle(4190, true)


end

function Quest20006:OnSubFailed2000602(quest)


end

function Quest20006:OnSubStart2000603(quest)
	print("03 start")

	self:ActionSafeCall(self.StartCount)


end

function Quest20006:OnSubFinish2000603(quest)

 print("03 finished")
    self:CountDownUITerminate()
    self:CountNumUITerminate()	
    self:UnCallFunc(self.CountDown)
end

function Quest20006:OnSubFailed2000603(quest)
	print("03 fail ！03 fail ！03 fail ！03 fail ！03 fail ！")

end


function Quest20006:OnSubStart2000604(quest)
	print("04 start")

	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:Standby()
	EventNPC:DoFreeStyle(1300, true)
end

function Quest20006:OnSubFinish2000604(quest)

	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:Standby(true)
    EventNPC:Standby()

	EventNPC:WalkToRouteTask(q20006cfg.RoutePoints1,
	function(actor, task)
		actor:DestroyWithDither(false, 1)
	end,function(actor, task)
		EventNPC:Standby(true)
	end
	)


print("04 finish")
end

function Quest20006:OnSubFailed2000604(quest)
print("04 failed")
	
	

end

function Quest20006:OnSubStart2000605(quest)

	local quest = actorMgr:GetActor(q20006cfg.ActorAlias)
    if quest ~= nil then
      
	   quest:FinishQuestID(true, 2000604)
    end

	print("05 start")
	self:CountDownUITerminate()
	self:CountNumUITerminate()	
	self:UnCallFunc(self.CountDown)

	if ison == 1 then
		self:ShowPaimonDoWay2()
	end
	
	 
	local quest = actorMgr:GetActor(q20006cfg.ActorAlias)
    if quest ~= nil then
       print("20005 fail")
       quest:FinishQuestID(true, 2000605)
	  
    end
	
	end
	
	function Quest20006:OnSubFinish2000605(quest)
	print("05 finish")
	end
	
	function Quest20006:OnSubFailed2000605(quest)
	print("05 failed")
		
	end

	
function Quest20006:OnSubStart2000606(quest)
	print("06 start")
	
	end
	
	function Quest20006:OnSubFinish2000606(quest)
	print("06 finish")
	self:CallDelay(2,self.DoFreeStyle)
	end
	
	function Quest20006:OnSubFailed2000606(quest)
	print("06 failed")
		
		
	
	end

	
function Quest20006:OnSubStart2000607(quest)
	print("07 start")
	self:TriggerNpcSpeechBubble(NPCData.NpcID, 200080501)
	end
	
	function Quest20006:OnSubFinish2000607(quest)
	print("07 finish")
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:DoFreeStateTrigger()
	self:ClearNpcSpeechBubble(NPCData.NpcID)
	end
	
	function Quest20006:OnSubFailed2000607(quest)
	print("07 failed")

	end

	
	function Quest20006:OnSubStart2000608(quest)
		print("08 start")
		
		end
		
		function Quest20006:OnSubFinish2000608(quest)
		print("08 finish")
	
		end
		
		function Quest20006:OnSubFailed2000608(quest)
		print("08 failed")
	
		end

			
function Quest20006:OnSubStart2000609(quest)
	print("09 start")
	
	end
	
	function Quest20006:OnSubFinish2000609(quest)
	print("09 finish")

	end
	
	function Quest20006:OnSubFailed2000609(quest)
	print("09 failed")

	end

		
function Quest20006:OnSubStart2000610(quest)
	print("10 start")
	
	end
	
	function Quest20006:OnSubFinish2000610(quest)
	print("10 finish")

	end
	
	function Quest20006:OnSubFailed2000610(quest)
	print("10 failed")

	end
--@endregion

function Quest20006:Start()
end

function Quest20006:OnDestroy()
end

return Quest20006