require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest20064 = class("Quest20064", questActorProxy)

Quest20064.defaultAlias = "Quest20064"

local q20064Cfg
local MainID

function Quest20064:OnDataLoaded()
	q20064Cfg = self.clientData
	MainID =  20064

end

-- Generated
function Quest20064:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["2006401"] = self.OnSubStart2006401




end

function Quest20064:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["2006401"] = self.OnSubFinish2006401



end

function Quest20064:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["2006401"] = self.OnSubFailed2006401




end

---sub start & finish 内调用的函数



--@region sub start & finish handlers
---按流程触发顺序

function Quest20064:OnSubStart2006401(quest)


end


function Quest20064:OnSubFinish2006401(quest)
	self:CallDelay(1,
	function (self)
		self.uActor:RequestInteraction("Npc1605")
	end
)
	
	---self:RequestInteraction("Npc1605")

end

function Quest20064:OnSubFailed2006401(quest)

end


--@endregion

function Quest20064:Start()
end

function Quest20064:OnDestroy()
end

return Quest20064
