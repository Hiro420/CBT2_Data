require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest20062 = class("Quest20062", questActorProxy)

Quest20062.defaultAlias = "Quest20062"

local q20062Cfg
local PaimonData
local MainID

function Quest20062:OnDataLoaded()
	q20062Cfg = self.clientData
	MainID =  22112
	PaimonData = q20062Cfg.PaimonData

end

-- Generated
--@region sub start & finish handlers
function Quest20062:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["2006201"] = self.OnSubStart2006201
	self.subStartHandlers["2006202"] = self.OnSubStart2006202
	self.subStartHandlers["2006203"] = self.OnSubStart2006203
	self.subStartHandlers["2006204"] = self.OnSubStart2006204
	self.subStartHandlers["2006205"] = self.OnSubStart2006205
	self.subStartHandlers["2006206"] = self.OnSubStart2006206
	self.subStartHandlers["2006207"] = self.OnSubStart2006207
end

function Quest20062:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["2006201"] = self.OnSubFinish2006201
	self.subFinishHandlers["2006202"] = self.OnSubFinish2006202
	self.subFinishHandlers["2006203"] = self.OnSubFinish2006203
	self.subFinishHandlers["2006204"] = self.OnSubFinish2006204
	self.subFinishHandlers["2006205"] = self.OnSubFinish2006205
	self.subFinishHandlers["2006206"] = self.OnSubFinish2006206
	self.subFinishHandlers["2006207"] = self.OnSubFinish2006207
end

function Quest20062:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["2006201"] = self.OnSubFailed2006201
	self.subFailedHandlers["2006202"] = self.OnSubFailed2006202
	self.subFailedHandlers["2006203"] = self.OnSubFailed2006203
	self.subFailedHandlers["2006204"] = self.OnSubFailed2006204
	self.subFailedHandlers["2006205"] = self.OnSubFailed2006205
	self.subFailedHandlers["2006206"] = self.OnSubFailed2006206
	self.subFailedHandlers["2006207"] = self.OnSubFailed2006207
end

--[[
    @desc: 传送相关逻辑
    author:{yejz}
    time:2019-10-16 17:59:59
    @return:
]]
---------------------------------------------------------------------------

---------------------------------------------------------------------------------------------

---sub start & finish 内调用的函数

function Quest20062:InvokeOnInteraction(param)
	if param == 1 then
		self:ShowBlackScreen(0.5, 1.0, 0.5, self.SummonGadget01)
	end
	if param == 2 then
		self:ShowBlackScreen(0.5, 1.0, 0.5, self.ClearGadget01)
	end
	if param == 3 then
		self:ShowBlackScreen(0.5, 1.0, 0.5, self.SummonGadget02)
	end
	if param == 4 then
		self:ShowBlackScreen(0.5, 1.0, 0.5, self.ClearGadget02)
	end

end

--[[
    @desc: 当正常训练木桩交付时，展现逻辑
    author:{author}
    time:2019-11-26 20:03:01
    @return:
]]
function Quest20062:SummonGadget01( )
	local EventNpc = actorMgr:GetActor("Npc1604")
	local BornPosition = EventNpc:GetPos()
	local BornVector = EventNpc:GetForward()
	BornPosition.z = BornPosition.z + 1.2
	self:SpawnGadgetByIdWithPos(2006203,70300111,1,BornPosition, M.Dir2Euler(BornVector))

end

function Quest20062:ClearGadget01( )
	self:UnSpawn("Summon01")


end

--[[
    @desc:当异常训练木桩交付时，展现逻辑 
    author:{author}
    time:2019-11-26 20:03:27
    --@quest: 
    @return:
]]
function Quest20062:SummonGadget02( )
	local EventNpc = actorMgr:GetActor("Npc1604")
	local BornPosition = EventNpc:GetPos()
	local BornVector = EventNpc:GetForward()
	BornPosition.z = BornPosition.z + 1.2
	self:SpawnGadgetByIdWithPos(2006203,70300113,2,BornPosition, M.Dir2Euler(BornVector))

end

function Quest20062:ClearGadget02( )
	self:UnSpawn("Summon02")
end


--[[
    @desc: 任务流程
    author:{author}
    time:2019-11-26 20:03:45
    --@quest: 
    @return:
]]

function Quest20062:OnSubStart2006201(quest)
	self:NotifyTo("Npc1604", DailyNpcManager.NpcEventType.BANDAILY, true)

end

function Quest20062:OnSubFinish2006201(quest)
end

function Quest20062:OnSubFailed2006201(quest)
end

function Quest20062:OnSubStart2006202(quest)
	self:NotifyTo("Npc1604", DailyNpcManager.NpcEventType.BANDAILY, true)
end

function Quest20062:OnSubFinish2006202(quest)

end

function Quest20062:OnSubFailed2006202(quest)
end

function Quest20062:OnSubStart2006203(quest)
	self:NotifyTo("Npc1604", DailyNpcManager.NpcEventType.BANDAILY, true)
	
end

function Quest20062:OnSubFinish2006203(quest)
end

function Quest20062:OnSubFailed2006203(quest)
end

function Quest20062:OnSubStart2006204(quest)
	self:NotifyTo("Npc1604", DailyNpcManager.NpcEventType.BANDAILY, true)

end

function Quest20062:OnSubFinish2006204(quest)
end

function Quest20062:OnSubFailed2006204(quest)
end

function Quest20062:OnSubStart2006205(quest)
	self:NotifyTo("Npc1604", DailyNpcManager.NpcEventType.BANDAILY, true)
end

function Quest20062:OnSubFinish2006205(quest)

end

function Quest20062:OnSubFailed2006205(quest)

end

function Quest20062:OnSubStart2006206(quest)
	self:NotifyTo("Npc1604", DailyNpcManager.NpcEventType.BANDAILY, true)
end

function Quest20062:OnSubFinish2006206(quest)

end

function Quest20062:OnSubFailed2006206(quest)

end

function Quest20062:OnSubStart2006207(quest)
	self:NotifyTo("Npc1604", DailyNpcManager.NpcEventType.BANDAILY, true)
end

function Quest20062:OnSubFinish2006207(quest)
	self:NotifyTo("Npc1604", DailyNpcManager.NpcEventType.STARTDAILY, true)
end

function Quest20062:OnSubFailed2006207(quest)

end

--@endregion

function Quest20062:Start()
end

function Quest20062:OnDestroyWithDisappear()
end

return Quest20062