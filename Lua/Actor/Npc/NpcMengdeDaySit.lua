require('Actor/ActorCommon')
local DailyNpc = require('Actor/Npc/DailyNpc')
local MengdeDaySit = class("MengdeDaySit", DailyNpc)
local NpcEventType = require('Actor/Npc/NPCEventType')
MengdeDaySit.defaultAlias = "MengdeDaySit"

function MengdeDaySit:StartDay()
	self:SitOnChair()
	self:CallDelay(4, self.AfterSit)
end

function MengdeDaySit:AfterSit()
	self:DoFreeStateTrigger()
	self:ShowSelf()
	self:PerformDither(true, 2)
	self:StartBubble()
end

function MengdeDaySit:StartNight()
	self:ClearNpcSpeechBubble(self.ID)
	self:PerformDither(false, 2, self.HideSelf)
end


return MengdeDaySit