require('Actor/ActorCommon')

local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest20016 = class("Quest20016", questActorProxy)

Quest20016.defaultAlias = "Quest20016"

local DeliverTime = 240
local ison = 1
local q20016cfg
local subIDs
local NPC1Data
local NPC2Data
local NPC3Data


function Quest20016:OnDataLoaded(  )
	q20016cfg = self.clientData
	subIDs = q20016cfg.SubIDs
	NPC1Data = q20016cfg.NPC1Data
	NPC2Data = q20016cfg.NPC2Data
	NPC3Data = q20016cfg.NPC3Data

end

--generate the random number for quest NPC branches
math.randomseed(tostring(os.time()):reverse():sub(1, 7))
local numb = (math.random(1,3))

-- Generated
function Quest20016:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["2001601"] = self.OnSubStart2001601
	self.subStartHandlers["2001602"] = self.OnSubStart2001602
	self.subStartHandlers["2001603"] = self.OnSubStart2001603
	self.subStartHandlers["2001604"] = self.OnSubStart2001604
	self.subStartHandlers["2001605"] = self.OnSubStart2001605
	self.subStartHandlers["2001606"] = self.OnSubStart2001606
	self.subStartHandlers["2001607"] = self.OnSubStart2001607
	self.subStartHandlers["2001608"] = self.OnSubStart2001608
	self.subStartHandlers["2001609"] = self.OnSubStart2001609
	self.subStartHandlers["2001610"] = self.OnSubStart2001610
	self.subStartHandlers["2001611"] = self.OnSubStart2001611
end

function Quest20016:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["2001601"] = self.OnSubFinish2001601
	self.subFinishHandlers["2001602"] = self.OnSubFinish2001602
	self.subFinishHandlers["2001603"] = self.OnSubFinish2001603
	self.subFinishHandlers["2001604"] = self.OnSubFinish2001604
	self.subFinishHandlers["2001605"] = self.OnSubFinish2001605
	self.subFinishHandlers["2001606"] = self.OnSubFinish2001606
	self.subFinishHandlers["2001607"] = self.OnSubFinish2001607
	self.subFinishHandlers["2001608"] = self.OnSubFinish2001608
	self.subFinishHandlers["2001609"] = self.OnSubFinish2001609
	self.subFinishHandlers["2001610"] = self.OnSubFinish2001610
	self.subFinishHandlers["2001611"] = self.OnSubFinish2001611
	
end

function Quest20016:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["2001601"] = self.OnSubFailed2001601
	self.subFailedHandlers["2001602"] = self.OnSubFailed2001602
	self.subFailedHandlers["2001603"] = self.OnSubFailed2001603
	self.subFailedHandlers["2001604"] = self.OnSubFailed2001604
	self.subFailedHandlers["2001605"] = self.OnSubFailed2001605
	self.subFailedHandlers["2001606"] = self.OnSubFailed2001606
	self.subFailedHandlers["2001607"] = self.OnSubFailed2001607
	self.subFailedHandlers["2001608"] = self.OnSubFailed2001608
	self.subFailedHandlers["2001609"] = self.OnSubFailed2001609
	self.subFailedHandlers["2001610"] = self.OnSubFailed2001610
	self.subFailedHandlers["2001611"] = self.OnSubFailed2001611
end

---sub start & finish 内调用的函数
function Quest20016:StartCount()
	print("快递StartCount")
	print(numb)
    self:CountDownUIStart(DeliverTime, 20, 3)
    self:CallDelay(DeliverTime+4,self.CountDown)
end

function Quest20016:CountDown()
	print("CountDown Finished")
	if ison ==1 then  
		self:ShowPaimonDoWay1()
		ison = 0
	end

	local quest = actorMgr:GetActor(q20016cfg.ActorAlias)
    if quest ~= nil then
       print("deliver fail")
	   quest:FinishQuestID(true, 2001603)  
    end
end

--trigger paimon's dialog
function Quest20016:ShowPaimonDoWay1( )
	local PaimonData = self.clientData.PaimonData
	local paimonPos = actorUtils.GetAvatarPos()
	local playerVector = actorUtils.GetAvatarForward()
	local distance = 1.5
	print(playerVector.x .. "," .. playerVector.y .. "," .. playerVector.z)
	paimonPos.x = paimonPos.x + playerVector.x * distance
	paimonPos.z = paimonPos.z + playerVector.z * distance

	local paimonVector = playerVector
	paimonVector.x = paimonVector.x * -1
	paimonVector.z = paimonVector.z * -1
	self:CreateQuestNpcByIdWithPos(2001603, PaimonData.PaimonID, 1, paimonPos, M.Dir2Euler(paimonVector))
	globalActor:EnablePlayerInput(false)
	local paimon = self:GetQuestNpcActor(q20016cfg.PaimonData.Paimon)
	paimon:AirModeOn()
	paimon:AddPriorityInter(InterTimingType.BTN, q20016cfg.InterData.NoReplyInter1)	
	self:CallDelay(1,
		function (self)
			self:RequestInteraction(q20016cfg.PaimonData.Paimon)
		end
	)
	self:CallDelay(3,self.PaimonVanish)
end

function Quest20016:ShowPaimonDoWay2( )
	local PaimonData = self.clientData.PaimonData
	local paimonPos = actorUtils.GetAvatarPos()
	local playerVector = actorUtils.GetAvatarForward()
	local distance = 1.5
	print(playerVector.x .. "," .. playerVector.y .. "," .. playerVector.z)
	paimonPos.x = paimonPos.x + playerVector.x * distance
	paimonPos.z = paimonPos.z + playerVector.z * distance

	local paimonVector = playerVector
	paimonVector.x = paimonVector.x * -1
	paimonVector.z = paimonVector.z * -1
	self:CreateQuestNpcByIdWithPos(2001603, PaimonData.PaimonID, 1, paimonPos, M.Dir2Euler(paimonVector))
	globalActor:EnablePlayerInput(false)
	--local paimon = actorMgr:GetActor(q20016cfg.PaimonData.Paimon)
	local paimon = self:GetQuestNpcActor(q20016cfg.PaimonData.Paimon)
	paimon:AirModeOn()
	paimon:AddPriorityInter(InterTimingType.BTN, q20016cfg.InterData.NoReplyInter2)	
	self:CallDelay(1,
		function (self)
			self:RequestInteraction(q20016cfg.PaimonData.Paimon)
		end
	)
	self:CallDelay(3,self.PaimonVanish)
end

function Quest20016:PaimonVanish()
	local paimon = self:GetQuestNpcActor(q20016cfg.PaimonData.Paimon)
	paimon:ClearPriorityInter(InterTimingType.BTN)
	if paimon ~= nil then
		paimon:DestroyWithDisappear(false)
	end
	globalActor:EnablePlayerInput(true)
end

--@region sub start & finish handlers
---按流程触发顺序
function Quest20016:OnSubStart2001601(quest)
	print("快递01 start")
end
   
function Quest20016:OnSubFinish2001601(quest)
	print("快递01 finish")
end
   
function Quest20016:OnSubFailed2001601(quest)
end

function Quest20016:OnSubStart2001602(quest)
	print("快递02 start")
    ison = 1
end

function Quest20016:OnSubFinish2001602(quest)
	local NPCArray = {NPC1Data,NPC2Data,NPC3Data}
	for i,v in ipairs(NPCArray) do
		local NPCData = v
		print(NPCData)
		self:CreateQuestNpc(quest, NPCData.NpcID, i)
		print("NPCArray")
	end
	self:NotifyTo("Npc1573", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc1575", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc1577", NpcUtil.NpcEventType.HIDESELF, true)
    print("快递02 finish")
end

function Quest20016:OnSubFailed2001602(quest)
	self:NotifyTo("Npc1573", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1575", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1577", NpcUtil.NpcEventType.STARTDAILY, true) 
end

function Quest20016:OnSubStart2001603(quest)
	print("快递03 start")
	self:ActionSafeCall(self.StartCount)
end

function Quest20016:OnSubFinish2001603(quest)

 print("快递03 finished")
    self:CountDownUITerminate()
    self:CountNumUITerminate()	
    self:UnCallFunc(self.CountDown)
end

function Quest20016:OnSubFailed2001603(quest)
	self:NotifyTo("Npc1573", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1575", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1577", NpcUtil.NpcEventType.STARTDAILY, true) 
	print("快递03 fail")
end

function Quest20016:OnSubStart2001604(quest)
	print("快递04 start")
	local quest = actorMgr:GetActor(q20016cfg.ActorAlias)
	if quest ~= nil then
		if numb == 1 then
			quest:FinishQuestID(false, 2001604)
		else
			quest:FinishQuestID(true, 2001604)
		end
	end

end

function Quest20016:OnSubFinish2001604(quest)
	print("快递04 finish")
end
	
function Quest20016:OnSubFailed2001604(quest)
	self:NotifyTo("Npc1573", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1575", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1577", NpcUtil.NpcEventType.STARTDAILY, true) 
	print("快递04 failed")
end

function Quest20016:OnSubStart2001605(quest)
	local quest = actorMgr:GetActor(q20016cfg.ActorAlias)
	if quest ~= nil then
		if numb == 2 then
			quest:FinishQuestID(false, 2001605)
		else
			quest:FinishQuestID(true, 2001605)
		end
	end
	
end
	
function Quest20016:OnSubFinish2001605(quest)
	print("快递05 finish")
end
	
function Quest20016:OnSubFailed2001605(quest)
	self:NotifyTo("Npc1573", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1575", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1577", NpcUtil.NpcEventType.STARTDAILY, true) 
	print("快递05 failed")	
end

function Quest20016:OnSubStart2001606(quest)
	print("快递06 start")
	local quest = actorMgr:GetActor(q20016cfg.ActorAlias)
	if quest ~= nil then
		if numb == 3 then
			quest:FinishQuestID(false, 2001606)
		else
			quest:FinishQuestID(true, 2001606)
		end
	end
end
	
function Quest20016:OnSubFinish2001606(quest)
	print("快递06 finish")
	--self:CallDelay(2,self.DoFreeStyle)
end
	
function Quest20016:OnSubFailed2001606(quest)
	self:NotifyTo("Npc1573", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1575", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1577", NpcUtil.NpcEventType.STARTDAILY, true) 
	print("快递06 failed")
end

function Quest20016:OnSubStart2001607(quest)
	print("快递07 start")
end
	
function Quest20016:OnSubFinish2001607(quest)
	print("快递07 finish")
end
	
function Quest20016:OnSubFailed2001607(quest)
	self:NotifyTo("Npc1573", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1575", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1577", NpcUtil.NpcEventType.STARTDAILY, true) 
	print("快递07 failed")
end

function Quest20016:OnSubStart2001608(quest)
	print("快递08 start")
end
	
function Quest20016:OnSubFinish2001608(quest)
	print("快递08 finish")
end
	
function Quest20016:OnSubFailed2001608(quest)
	self:NotifyTo("Npc1573", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1575", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1577", NpcUtil.NpcEventType.STARTDAILY, true) 
	print("快递08 failed")
end

function Quest20016:OnSubStart2001609(quest)
	print("快递09 start")
end
	
function Quest20016:OnSubFinish2001609(quest)
	print("快递09 finish")
end
	
function Quest20016:OnSubFailed2001609(quest)
	self:NotifyTo("Npc1573", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1575", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1577", NpcUtil.NpcEventType.STARTDAILY, true)
	print("快递09 failed")
end

		
function Quest20016:OnSubStart2001610(quest)
	print("快递10 start")

	local quest = actorMgr:GetActor(q20016cfg.ActorAlias)
	if quest ~= nil then
		print("快递2001603 fail")
	   quest:FinishQuestID(true, 2001603)
    end

	print("快递05 start")
	self:CountDownUITerminate()
	self:CountNumUITerminate()	
	self:UnCallFunc(self.CountDown)

	if ison == 1 then
		self:ShowPaimonDoWay2()
	end
	
--true means failed (not unfinished)
	local quest = actorMgr:GetActor(q20016cfg.ActorAlias)
    if quest ~= nil then
       print("快递20016 fail")
       quest:FinishQuestID(true, 2001610)
    end
end
	
function Quest20016:OnSubFinish2001610(quest)
	print("快递10 finish")
end
	
function Quest20016:OnSubFailed2001610(quest)
	self:NotifyTo("Npc1573", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1575", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1577", NpcUtil.NpcEventType.STARTDAILY, true) 
	print("快递10 failed")
end

function Quest20016:OnSubStart2001611(quest)

end
	
function Quest20016:OnSubFinish2001611(quest)
	self:DestroyQuestNpcActor(NPC1Data.Npc, 3)
	self:DestroyQuestNpcActor(NPC2Data.Npc, 3)
	self:DestroyQuestNpcActor(NPC3Data.Npc, 3)
	self:NotifyTo("Npc1573", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1575", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1577", NpcUtil.NpcEventType.STARTDAILY, true)
	print("快递11 finish")
end
	
function Quest20016:OnSubFailed2001611(quest)
	self:NotifyTo("Npc1573", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1575", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1577", NpcUtil.NpcEventType.STARTDAILY, true)
	print("快递11 failed")
end
--@endregion

function Quest20016:Start()
end

function Quest20016:OnDestroy()
end

return Quest20016