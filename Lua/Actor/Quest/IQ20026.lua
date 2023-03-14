require('Actor/ActorCommon')

local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest20026 = class("Quest20026", questActorProxy)

Quest20026.defaultAlias = "Quest20026"


local DeliverTime = 120
local ison = 1
local q20026cfg
local subIDs


function Quest20026:OnDataLoaded(  )
	q20026cfg = self.clientData
	subIDs = q20026cfg.SubIDs

end

-- Generated
function Quest20026:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["2002601"] = self.OnSubStart2002601
	self.subStartHandlers["2002602"] = self.OnSubStart2002602
	self.subStartHandlers["2002603"] = self.OnSubStart2002603
	self.subStartHandlers["2002604"] = self.OnSubStart2002604
	self.subStartHandlers["2002605"] = self.OnSubStart2002605
	self.subStartHandlers["2002606"] = self.OnSubStart2002606
	self.subStartHandlers["2002607"] = self.OnSubStart2002607
	self.subStartHandlers["2002608"] = self.OnSubStart2002608
end

function Quest20026:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["2002601"] = self.OnSubFinish2002601
	self.subFinishHandlers["2002602"] = self.OnSubFinish2002602
	self.subFinishHandlers["2002603"] = self.OnSubFinish2002603
	self.subFinishHandlers["2002604"] = self.OnSubFinish2002604
	self.subFinishHandlers["2002605"] = self.OnSubFinish2002605
	self.subFinishHandlers["2002606"] = self.OnSubFinish2002606
	self.subFinishHandlers["2002607"] = self.OnSubFinish2002607
	self.subFinishHandlers["2002608"] = self.OnSubFinish2002608
end

function Quest20026:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["2002601"] = self.OnSubFailed2002601
	self.subFailedHandlers["2002602"] = self.OnSubFailed2002602
	self.subFailedHandlers["2002603"] = self.OnSubFailed2002603
	self.subFailedHandlers["2002604"] = self.OnSubFailed2002604
	self.subFailedHandlers["2002605"] = self.OnSubFailed2002605
	self.subFailedHandlers["2002606"] = self.OnSubFailed2002606
	self.subFailedHandlers["2002607"] = self.OnSubFailed2002607
	self.subFailedHandlers["2002608"] = self.OnSubFailed2002608
end

---sub start & finish 内调用的函数
function Quest20026:StartCount()
	print("快递StartCount")
	print(numb)
    self:CountDownUIStart(DeliverTime, 20, 3)
    self:CallDelay(DeliverTime+4,self.CountDown)
end

function Quest20026:CountDown()
	print("CountDown Finished")
	if ison ==1 then  
		self:ShowPaimonDoWay1()
		ison = 0
	end

	local quest = actorMgr:GetActor(q20026cfg.ActorAlias)
    if quest ~= nil then
       print("deliver fail")
	   quest:FinishQuestID(true, 2002605)  
    end
end

--trigger paimon's dialog
function Quest20026:ShowPaimonDoWay1( )
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
	self:CreateQuestNpcByIdWithPos(2002605, PaimonData.PaimonID, 1, paimonPos, M.Dir2Euler(paimonVector))
	globalActor:EnablePlayerInput(false)
	local paimon = self:GetQuestNpcActor(q20026cfg.PaimonData.Paimon)
	paimon:AirModeOn()
	paimon:AddPriorityInter(InterTimingType.BTN, q20026cfg.InterData.NoReplyInter1)	
	self:CallDelay(1,
		function (self)
			self:RequestInteraction(q20026cfg.PaimonData.Paimon)
		end
	)
	self:CallDelay(3,self.PaimonVanish)
end

function Quest20026:ShowPaimonDoWay2( )
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
	self:CreateQuestNpcByIdWithPos(2002605, PaimonData.PaimonID, 1, paimonPos, M.Dir2Euler(paimonVector))
	globalActor:EnablePlayerInput(false)
	local paimon = self:GetQuestNpcActor(q20026cfg.PaimonData.Paimon)
	paimon:AirModeOn()
	paimon:AddPriorityInter(InterTimingType.BTN, q20026cfg.InterData.NoReplyInter2)	
	self:CallDelay(1,
		function (self)
			self:RequestInteraction(q20026cfg.PaimonData.Paimon)
		end
	)
	self:CallDelay(3,self.PaimonVanish)
end

function Quest20026:PaimonVanish()
	local paimon = self:GetQuestNpcActor(q20026cfg.PaimonData.Paimon)
	paimon:ClearPriorityInter(InterTimingType.BTN)
	if paimon ~= nil then
		paimon:DestroyWithDisappear(false)
	end
	globalActor:EnablePlayerInput(true)
end

--@region sub start & finish handlers
---按流程触发顺序
function Quest20026:OnSubStart2002601(quest)
	print("快递01 start")
end
   
function Quest20026:OnSubFinish2002601(quest)
	print("快递01 finish")
end
   
function Quest20026:OnSubFailed2002601(quest)
end

function Quest20026:OnSubStart2002602(quest)
	print("快递02 start")
end

function Quest20026:OnSubFinish2002602(quest)
    print("快递02 finish")
end

function Quest20026:OnSubFailed2002602(quest)
end

function Quest20026:OnSubStart2002603(quest)
	print("快递03 start")
end

function Quest20026:OnSubFinish2002603(quest)
 print("快递03 finished")
end

function Quest20026:OnSubFailed2002603(quest)
end

function Quest20026:OnSubStart2002604(quest)
	ison = 1
	print("快递04 start")
end

function Quest20026:OnSubFinish2002604(quest)
	--actorMgr:CreateActorWithPos(NPCData.Npc, NPCData.NPCScript, NPCData.NpcID, 0, NPCData.NPCBornPos, NPCData.NPCBornDir, true, false,3)
	--local EventNPC = actorMgr:GetActor(NPCData.Npc)
	print("快递04 finish")
end
	
function Quest20026:OnSubFailed2002604(quest)
	print("快递04 failed")
end

function Quest20026:OnSubStart2002605(quest)
	self:ActionSafeCall(self.StartCount)
	print("快递05 start")
end
	
function Quest20026:OnSubFinish2002605(quest)
	print("快递05 finish")
	self:CountDownUITerminate()
    self:CountNumUITerminate()	
    self:UnCallFunc(self.CountDown)
end
	
function Quest20026:OnSubFailed2002605(quest)
	print("快递05 failed")	
end

function Quest20026:OnSubStart2002606(quest)
	local quest = actorMgr:GetActor(q20026cfg.ActorAlias)
    if quest ~= nil then     
	   quest:FinishQuestID(true, 2002607)
	   print("2002607 failed")
    end
	self:CountDownUITerminate()
	self:CountNumUITerminate()	
	self:UnCallFunc(self.CountDown)
	if ison == 1 then
		self:ShowPaimonDoWay2()
	end 
	local quest = actorMgr:GetActor(q20026cfg.ActorAlias)
    if quest ~= nil then
       quest:FinishQuestID(true, 2002606) 
    end
	print("快递06 start")
end
	
function Quest20026:OnSubFinish2002606(quest)
	print("快递06 finish")
end
	
function Quest20026:OnSubFailed2002606(quest)
	print("快递06 failed")
end

function Quest20026:OnSubStart2002607(quest)
	print("快递07 start")
end
	
function Quest20026:OnSubFinish2002607(quest)
	print("快递07 finish")
end
	
function Quest20026:OnSubFailed2002607(quest)
	print("快递07 failed")
end

function Quest20026:OnSubStart2002608(quest)
	print("快递08 start")
end
	
function Quest20026:OnSubFinish2002608(quest)
	print("快递08 finish")
end
	
function Quest20026:OnSubFailed2002608(quest)
	print("快递08 failed")
end

--@endregion

function Quest20026:Start()
end

function Quest20026:OnDestroy()
end

return Quest20026