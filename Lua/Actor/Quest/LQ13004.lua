require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest13004 = class("Quest13004", questActorProxy)

Quest13004.defaultAlias = "Quest13004"

local q13004Cfg = require('Quest/Client/Q13004ClientConfig')
local PaimonData=q13004Cfg.PaimonData

-- Generated
function Quest13004:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["1300401"] = self.OnSubStart1300401
	self.subStartHandlers["1300402"] = self.OnSubStart1300402
	self.subStartHandlers["1300403"] = self.OnSubStart1300403
	self.subStartHandlers["1300404"] = self.OnSubStart1300404
	self.subStartHandlers["1300405"] = self.OnSubStart1300405
	self.subStartHandlers["1300406"] = self.OnSubStart1300406
	self.subStartHandlers["1300407"] = self.OnSubStart1300407
	self.subStartHandlers["1300408"] = self.OnSubStart1300408
	self.subStartHandlers["1300409"] = self.OnSubStart1300409
	self.subStartHandlers["1300410"] = self.OnSubStart1300410

end

function Quest13004:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["1300401"] = self.OnSubFinish1300401
	self.subFinishHandlers["1300402"] = self.OnSubFinish1300402
	self.subFinishHandlers["1300403"] = self.OnSubFinish1300403
	self.subFinishHandlers["1300404"] = self.OnSubFinish1300404
	self.subFinishHandlers["1300405"] = self.OnSubFinish1300405
	self.subFinishHandlers["1300406"] = self.OnSubFinish1300406
	self.subFinishHandlers["1300407"] = self.OnSubFinish1300407
	self.subFinishHandlers["1300408"] = self.OnSubFinish1300408
	self.subFinishHandlers["1300409"] = self.OnSubFinish1300409
	self.subFinishHandlers["1300410"] = self.OnSubFinish1300410

end


---sub start & finish 内调用的函数
function Quest13004:PaimonVanish()
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
function Quest13004:OnSubStart1300401(quest)
	print("********1300401 start")
	
end

function Quest13004:OnSubFinish1300401(quest)

end

function Quest13004:OnSubStart1300402(quest)
	print("********1300402 start")
	
end
function Quest13004:OnSubFinish1300402(quest)
end


function Quest13004:OnSubStart1300403(quest)
	print("********1300403 start")
end


function Quest13004:OnSubFinish1300403(quest)
	print("********1300403 Finish")

end

function Quest13004:OnSubStart1300404(quest)
	print("********1300403 start")
end


function Quest13004:OnSubFinish1300404(quest)
	print("********1300403 Finish")

end

function Quest13004:OnSubStart1300405(quest)
	print("********1300403 start")
end


function Quest13004:OnSubFinish1300405(quest)
	print("********1300403 Finish")

end
function Quest13004:OnSubStart1300406(quest)
	print("********1300403 start")
end


function Quest13004:OnSubFinish1300406(quest)
	print("********1300403 Finish")

end

function Quest13004:OnSubStart1300407(quest)
	print("********1300403 start")
end


function Quest13004:OnSubFinish1300407(quest)
	print("********1300403 Finish")

end
function Quest13004:OnSubStart1300408(quest)
	print("********1300403 start")
end


function Quest13004:OnSubFinish1300408(quest)
	print("********1300403 Finish")

end
function Quest13004:OnSubStart1300409(quest)
	print("********1300403 start")
end


function Quest13004:OnSubFinish1300409(quest)
	print("********1300403 Finish")

end
function Quest13004:OnSubStart1300410(quest)
	print("********1300403 start")
end


function Quest13004:OnSubFinish1300410(quest)
	print("********1300403 Finish")

end
--@endregion

function Quest13004:Start()
end

function Quest13004:OnDestroy()
end

return Quest13004