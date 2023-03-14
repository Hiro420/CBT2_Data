require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest13002 = class("Quest13002", questActorProxy)

Quest13002.defaultAlias = "Quest13002"

local q13002Cfg = require('Quest/Client/Q13002ClientConfig')
local PaimonData=q13002Cfg.PaimonData

-- Generated
function Quest13002:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["1300201"] = self.OnSubStart1300201
	self.subStartHandlers["1300202"] = self.OnSubStart1300202
	self.subStartHandlers["1300203"] = self.OnSubStart1300203
	self.subStartHandlers["1300204"] = self.OnSubStart1300204
	self.subStartHandlers["1300205"] = self.OnSubStart1300205
	self.subStartHandlers["1300206"] = self.OnSubStart1300206
	self.subStartHandlers["1300207"] = self.OnSubStart1300207
	self.subStartHandlers["1300208"] = self.OnSubStart1300208
	self.subStartHandlers["1300209"] = self.OnSubStart1300209
	self.subStartHandlers["1300210"] = self.OnSubStart1300210

end

function Quest13002:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["1300201"] = self.OnSubFinish1300201
	self.subFinishHandlers["1300202"] = self.OnSubFinish1300202
	self.subFinishHandlers["1300203"] = self.OnSubFinish1300203
	self.subFinishHandlers["1300204"] = self.OnSubFinish1300204
	self.subFinishHandlers["1300205"] = self.OnSubFinish1300205
	self.subFinishHandlers["1300206"] = self.OnSubFinish1300206
	self.subFinishHandlers["1300207"] = self.OnSubFinish1300207
	self.subFinishHandlers["1300208"] = self.OnSubFinish1300208
	self.subFinishHandlers["1300209"] = self.OnSubFinish1300209
	self.subFinishHandlers["1300210"] = self.OnSubFinish1300210

end


---sub start & finish 内调用的函数
function Quest13002:PaimonVanish()
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
function Quest13002:OnSubStart1300201(quest)
	print("********1300201 start")
	
end

function Quest13002:OnSubFinish1300201(quest)

end

function Quest13002:OnSubStart1300202(quest)
	print("********1300202 start")
	
end
function Quest13002:OnSubFinish1300202(quest)
end


function Quest13002:OnSubStart1300203(quest)
	print("********1300203 start")
end


function Quest13002:OnSubFinish1300203(quest)
	print("********1300203 Finish")

end

function Quest13002:OnSubStart1300204(quest)
	print("********1300203 start")
end


function Quest13002:OnSubFinish1300204(quest)
	print("********1300203 Finish")

end

function Quest13002:OnSubStart1300205(quest)
	print("********1300203 start")
end


function Quest13002:OnSubFinish1300205(quest)
	print("********1300203 Finish")

end
function Quest13002:OnSubStart1300206(quest)
	print("********1300203 start")
end


function Quest13002:OnSubFinish1300206(quest)
	print("********1300203 Finish")

end

function Quest13002:OnSubStart1300207(quest)
	print("********1300203 start")
end


function Quest13002:OnSubFinish1300207(quest)
	print("********1300203 Finish")

end
function Quest13002:OnSubStart1300208(quest)
	print("********1300203 start")
end


function Quest13002:OnSubFinish1300208(quest)
	print("********1300203 Finish")

end
function Quest13002:OnSubStart1300209(quest)
	print("********1300203 start")
end


function Quest13002:OnSubFinish1300209(quest)
	print("********1300203 Finish")

end
function Quest13002:OnSubStart1300210(quest)
	print("********1300203 start")
end


function Quest13002:OnSubFinish1300210(quest)
	print("********1300203 Finish")

end
--@endregion

function Quest13002:Start()
end

function Quest13002:OnDestroy()
end

return Quest13002