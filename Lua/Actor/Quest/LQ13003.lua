require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest13003 = class("Quest13003", questActorProxy)

Quest13003.defaultAlias = "Quest13003"

local q13003Cfg = require('Quest/Client/Q13003ClientConfig')
local PaimonData=q13003Cfg.PaimonData

-- Generated
function Quest13003:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["1300301"] = self.OnSubStart1300301
	self.subStartHandlers["1300302"] = self.OnSubStart1300302
	self.subStartHandlers["1300303"] = self.OnSubStart1300303
	self.subStartHandlers["1300304"] = self.OnSubStart1300304
	self.subStartHandlers["1300305"] = self.OnSubStart1300305
	self.subStartHandlers["1300306"] = self.OnSubStart1300306
	self.subStartHandlers["1300307"] = self.OnSubStart1300307
	self.subStartHandlers["1300308"] = self.OnSubStart1300308
	self.subStartHandlers["1300309"] = self.OnSubStart1300309
	self.subStartHandlers["1300310"] = self.OnSubStart1300310

end

function Quest13003:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["1300301"] = self.OnSubFinish1300301
	self.subFinishHandlers["1300302"] = self.OnSubFinish1300302
	self.subFinishHandlers["1300303"] = self.OnSubFinish1300303
	self.subFinishHandlers["1300304"] = self.OnSubFinish1300304
	self.subFinishHandlers["1300305"] = self.OnSubFinish1300305
	self.subFinishHandlers["1300306"] = self.OnSubFinish1300306
	self.subFinishHandlers["1300307"] = self.OnSubFinish1300307
	self.subFinishHandlers["1300308"] = self.OnSubFinish1300308
	self.subFinishHandlers["1300309"] = self.OnSubFinish1300309
	self.subFinishHandlers["1300310"] = self.OnSubFinish1300310

end


---sub start & finish 内调用的函数
function Quest13003:PaimonVanish()
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
function Quest13003:OnSubStart1300301(quest)
	print("********1300301 start")
	
end

function Quest13003:OnSubFinish1300301(quest)

end

function Quest13003:OnSubStart1300302(quest)
	print("********1300302 start")
	
end
function Quest13003:OnSubFinish1300302(quest)
end


function Quest13003:OnSubStart1300303(quest)
	print("********1300303 start")
end


function Quest13003:OnSubFinish1300303(quest)
	print("********1300303 Finish")

end

function Quest13003:OnSubStart1300304(quest)
	print("********1300303 start")
end


function Quest13003:OnSubFinish1300304(quest)
	print("********1300303 Finish")

end

function Quest13003:OnSubStart1300305(quest)
	print("********1300303 start")
end


function Quest13003:OnSubFinish1300305(quest)
	print("********1300303 Finish")

end
function Quest13003:OnSubStart1300306(quest)
	print("********1300303 start")
end


function Quest13003:OnSubFinish1300306(quest)
	print("********1300303 Finish")

end

function Quest13003:OnSubStart1300307(quest)
	print("********1300303 start")
end


function Quest13003:OnSubFinish1300307(quest)
	print("********1300303 Finish")

end
function Quest13003:OnSubStart1300308(quest)
	print("********1300303 start")
end


function Quest13003:OnSubFinish1300308(quest)
	print("********1300303 Finish")

end
function Quest13003:OnSubStart1300309(quest)
	print("********1300303 start")
end


function Quest13003:OnSubFinish1300309(quest)
	print("********1300303 Finish")

end
function Quest13003:OnSubStart1300310(quest)
	print("********1300303 start")
end


function Quest13003:OnSubFinish1300310(quest)
	print("********1300303 Finish")

end
--@endregion

function Quest13003:Start()
end

function Quest13003:OnDestroy()
end

return Quest13003