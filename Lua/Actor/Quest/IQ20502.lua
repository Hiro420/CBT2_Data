require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest20502 = class("Quest20502", questActorProxy)

Quest20502.defaultAlias = "Quest20502"

local q20502Cfg = require('Quest/Client/Q20502ClientConfig')

-- Generated
function Quest20502:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["2050201"] = self.OnSubStart2050201
	self.subStartHandlers["2050202"] = self.OnSubStart2050202
end

function Quest20502:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["2050201"] = self.OnSubFinish2050201
	self.subFinishHandlers["2050202"] = self.OnSubFinish2050202
end

---sub start & finish 内调用的函数


--@region sub start & finish handlers
---按流程触发顺序
function Quest20502:OnSubStart2050201(quest)
    print("2050205 finish:CreatNPC & Talk")
	globalActor:StartGuide("GuideAdventureDungeon")  
end

function Quest20502:OnSubFinish2050202(quest)
    print("2050205 finish:CreatNPC & Talk")
	globalActor:StartGuide("GuideProud")  
end
--@endregion

function Quest20502:Start()
end

function Quest20502:OnDestroy()
end

return Quest20502