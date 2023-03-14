require('Actor/ActorCommon')
local DailyNpc = require('Actor/Npc/DailyNpc')
local MengdeNightSit = class("MengdeNightSit", DailyNpc)
local NpcEventType = require('Actor/Npc/NPCEventType')
MengdeNightSit.defaultAlias = "MengdeNightSit"

function MengdeNightSit:StartNight()
	self:SitOnChair()
	self:CallDelay(4, self.AfterSit)
end

function MengdeNightSit:AfterSit()
	self:DoFreeStateTrigger()
	self:ShowSelf()
	self:PerformDither(true, 2)
	self:StartBubble()
end

function MengdeNightSit:StartDay()
	self:ClearNpcSpeechBubble(self.ID)
	self:PerformDither(false, 2, self.HideSelf)
end

return MengdeNightSit