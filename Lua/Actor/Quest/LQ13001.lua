require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest13001 = class("Quest13001", questActorProxy)

Quest13001.defaultAlias = "Quest13001"

local q13001Cfg = require('Quest/Client/Q13001ClientConfig')
local PaimonData=q13001Cfg.PaimonData

-- Generated
function Quest13001:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["1300101"] = self.OnSubStart1300101
	self.subStartHandlers["1300102"] = self.OnSubStart1300102
	self.subStartHandlers["1300103"] = self.OnSubStart1300103
	self.subStartHandlers["1300104"] = self.OnSubStart1300104
	self.subStartHandlers["1300105"] = self.OnSubStart1300105
	self.subStartHandlers["1300106"] = self.OnSubStart1300106
	self.subStartHandlers["1300107"] = self.OnSubStart1300107
	self.subStartHandlers["1300108"] = self.OnSubStart1300108
	self.subStartHandlers["1300109"] = self.OnSubStart1300109
	self.subStartHandlers["1300110"] = self.OnSubStart1300110

end

function Quest13001:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["1300101"] = self.OnSubFinish1300101
	self.subFinishHandlers["1300102"] = self.OnSubFinish1300102
	self.subFinishHandlers["1300103"] = self.OnSubFinish1300103
	self.subFinishHandlers["1300104"] = self.OnSubFinish1300104
	self.subFinishHandlers["1300105"] = self.OnSubFinish1300105
	self.subFinishHandlers["1300106"] = self.OnSubFinish1300106
	self.subFinishHandlers["1300107"] = self.OnSubFinish1300107
	self.subFinishHandlers["1300108"] = self.OnSubFinish1300108
	self.subFinishHandlers["1300109"] = self.OnSubFinish1300109
	self.subFinishHandlers["1300110"] = self.OnSubFinish1300110

end


---sub start & finish 内调用的函数
function Quest13001:PaimonVanish()
	print("paimon vanish")
	local paimon = actorMgr:GetActor(PaimonData.Alias)
	paimon:AirModeOff()
	--paimon:VanishKeep()
	if paimon ~= nil then
		paimon:DestroyWithDisappear(false)
	end
end



--@region sub sxtart & finish handlers
---按流程触发顺序
function Quest13001:OnSubStart1300101(quest)
	print("********1300101 start")
	
end

function Quest13001:OnSubFinish1300101(quest)

end

function Quest13001:OnSubStart1300102(quest)
	print("********1300102 start")
	
end
function Quest13001:OnSubFinish1300102(quest)
end


function Quest13001:OnSubStart1300103(quest)
	print("********1300103 start")
end


function Quest13001:OnSubFinish1300103(quest)
	print("********1300103 Finish")

end

function Quest13001:OnSubStart1300104(quest)
	print("********1300103 start")
end


function Quest13001:OnSubFinish1300104(quest)
	print("********1300103 Finish")

end

function Quest13001:OnSubStart1300105(quest)
	print("********1300103 start")
end


function Quest13001:OnSubFinish1300105(quest)
	print("********1300103 Finish")

end
function Quest13001:OnSubStart1300106(quest)
	print("********1300103 start")
end


function Quest13001:OnSubFinish1300106(quest)
	print("********1300103 Finish")

end

function Quest13001:OnSubStart1300107(quest)
	print("********1300103 start")
end


function Quest13001:OnSubFinish1300107(quest)
	print("********1300103 Finish")

end
function Quest13001:OnSubStart1300108(quest)
	print("********1300103 start")
end


function Quest13001:OnSubFinish1300108(quest)
	print("********1300103 Finish")

end
function Quest13001:OnSubStart1300109(quest)
	print("********1300103 start")
end


function Quest13001:OnSubFinish1300109(quest)
	print("********1300103 Finish")

end
function Quest13001:OnSubStart1300110(quest)
	print("********1300103 start")
end


function Quest13001:OnSubFinish1300110(quest)
	print("********1300103 Finish")

end
--@endregion

function Quest13001:Start()
end

function Quest13001:OnDestroy()
end

return Quest13001