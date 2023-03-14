require('Actor/ActorCommon')

local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest20030 = class("Quest20030", questActorProxy)

Quest20030.defaultAlias = "Quest20030"

local q20030cfg = require('Quest/Client/Q20030ClientConfig')
local paimonData = q20030cfg.PaimonData

-- Generated
function Quest20030:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["2003001"] = self.OnSubStart2003001
	self.subStartHandlers["2003002"] = self.OnSubStart2003002
	self.subStartHandlers["2003003"] = self.OnSubStart2003003

end

function Quest20030:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["2003001"] = self.OnSubFinish2003001
	self.subFinishHandlers["2003002"] = self.OnSubFinish2003002
	self.subFinishHandlers["2003003"] = self.OnSubFinish2003003

end

function Quest20030:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["2003001"] = self.OnSubFailed2003001
	self.subFailedHandlers["2003002"] = self.OnSubFailed2003002
	self.subFailedHandlers["2003003"] = self.OnSubFailed2003003

end

function Quest20030:OnSubStart2003001(quest)
    print("2003001 start")
	
end
   
function Quest20030:OnSubFinish2003001(quest)
	print("2003001 finish")

	local Katheryne = actorMgr:GetActor("NPC1512")
    Katheryne:DoFreeStateTrigger()
	Katheryne:DoFreeStyle(1200)
	print("do greet")


	local PaimonData = self.clientData.PaimonData


	local playerPos = actorUtils.GetAvatarPos()
	--获得玩家的坐标--
	local playerVector = actorUtils.GetAvatarForward()
	--获得玩家的向量--

	local KatherynePos = Katheryne:GetPos()
	--获得凯瑟琳的坐标--
	local KatheryneVector = Katheryne:GetForward()
	--获得凯瑟琳的向量--


	local Vector = playerVector
	local Distance = M.Dist(KatherynePos, playerPos)
	Vector.x = (KatherynePos.x - playerPos.x) / Distance
	Vector.z = (KatherynePos.z - playerPos.z) / Distance
	print(Vector.x .. "," .. Vector.y .. "," .. Vector.z)

	--计算派蒙的坐标--
	local paimonPos = playerPos
	local rate1 = 1
	local rate2 = -1
	paimonPos.x = paimonPos.x + Vector.x * rate1 
	paimonPos.z = paimonPos.z + Vector.z * rate1 
	print(paimonPos.x .. "," .. paimonPos.y .. "," .. paimonPos.z)

	--计算派蒙的向量--
	
	local paimonVector = playerVector
	paimonVector.z = (KatherynePos.x - paimonPos.x) / Distance
	paimonVector.x = -(KatherynePos.z - paimonPos.z) / Distance
	print(paimonVector.x .. "," .. paimonVector.y .. "," .. paimonVector.z)
	
	paimonPos.x = paimonPos.x + paimonVector.x * rate2 
	paimonPos.z = paimonPos.z + paimonVector.z * rate2 

	self:CreateQuestNpcByIdWithPos(2003001, PaimonData.PaimonID, 1, paimonPos, M.Dir2Euler(paimonVector))
	local Paimon = self:GetQuestNpcActor(q20030cfg.PaimonData.Paimon)
	Paimon:DoFreeStyle(1140)
	
	self:NarratorOnlyTask(q20030cfg.NarratorData.Story1)
	self:EnterSceneLookCamera(sceneData:GetDummyPoint(3,"Q20030CamTarget").pos, -0.5, 4, true)
	globalActor:EnablePlayerInput(false)
    self:CallDelay(4,
       	function()
			   globalActor:EnablePlayerInput(true)
			
				if Paimon ~= nil then
					Paimon:DestroyWithDisappear(false)
				end

				local Katheryne = actorMgr:GetActor("NPC1512")
    			Katheryne:DoFreeStateTrigger()
        end
    )
end
   
function Quest20030:OnSubFailed2003001(quest)
    print("2003001 fail")
end

function Quest20030:OnSubStart2003002(quest)
	print("2003002 start")
end
   
function Quest20030:OnSubFinish2003002(quest)
	self:ActionSafeCall(
		function (self)
			self:RequestInteractionForceAlias("NPC1512")
		end
	)
	print("2003002 finish")
end
   
function Quest20030:OnSubFailed2003002(quest)
    print("2003002 fail")
end

function Quest20030:OnSubFinish2003003(quest)
	self:ActionSafeCall(
		function (self)
			globalActor:StartGuide("GuideViewHelp") 
		end
	)
	print("2003003 finish")
end


--@endregion

function Quest20030:Start()
end

function Quest20030:OnDestroy()
end

return Quest20030