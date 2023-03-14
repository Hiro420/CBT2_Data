require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest311 = class("Quest311", questActorProxy)

Quest311.defaultAlias = "Quest311"

local q311Cfg = require('Quest/Client/Q311ClientConfig')
local paimonData = q311Cfg.PaimonData

-- Generated
function Quest311:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["31101"] = self.OnSubStart31101
	self.subStartHandlers["31102"] = self.OnSubStart31102
	self.subStartHandlers["31103"] = self.OnSubStart31103
	self.subStartHandlers["31104"] = self.OnSubStart31104
end

function Quest311:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["31101"] = self.OnSubFinish31101
	self.subFinishHandlers["31102"] = self.OnSubFinish31102
	self.subFinishHandlers["31103"] = self.OnSubFinish31103
	self.subFinishHandlers["31104"] = self.OnSubFinish31104
end

---sub start & finish 内调用的函数

--@region sub start & finish handlers
---按流程触发顺序
function Quest311:OnSubStart31101(quest)
	print("31101 Start : Creat Paimon")
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
	--actorMgr:CreateActorWithPos(PaimonData.Paimon, PaimonData.PaimonScript, PaimonData.PaimonID, 0, paimonPos, M.Dir2Euler(paimonVector), true, false)
	self:CreateQuestNpcWithPos(quest, PaimonData.PaimonID, 0, paimonPos, M.Dir2Euler(paimonVector), true, false)
	globalActor:EnablePlayerInput(false)

	self:CallDelay(1,
		function (self)
			self:RequestInteraction(paimonData.Paimon)
		end
    )
end

function Quest311:OnSubFinish31101(quest)
	print("31101 Finish : Paimon Vanish")
	local paimon = self:GetQuestNpcActor(paimonData.Paimon)
	if paimon ~= nil then
		paimon:DestroyWithDisappear(false)
	end
	--[[self:CallDelay(3,
		function (self)
			globalActor:StartGuide("GuideViewHelp")
		end
		)]]--
	globalActor:StartGuide("GuidePlayerLV1")
end

function Quest311:InvokeOnInteraction(param)
	if param == 1 then
		print("311 Invoke : ")
		globalActor:EnablePlayerInput(true)
	end
end
--@endregion

function Quest311:Start()
end

function Quest311:OnDestroy()
end

return Quest311
