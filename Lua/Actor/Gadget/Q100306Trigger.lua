--改变魈朝向
require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q100306Trigger = class("Q100306Trigger", gadgetActorProxy)

Q100306Trigger.defaultAlias = "Q100306Trigger"

local Q1003Cfg = require('Quest/Client/Q1003ClientConfig')
util.do_require('Quest/Share/Q1003ShareConfig')
local xiaoData = XiaoData

function Q100306Trigger:OnPostDataPrepare()
end

function Q100306Trigger:OnPostComponentPrepare()
	self:AddComponentTrigger(5, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q100306Trigger:TriggerIn()
	print("IN Q100306Trigger")
	local xiao = actorMgr:GetActor(xiaoData.Alias)
	xiao:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3,"Q100306Xiao").rot))
	xiao:PlayEmojiBubble("EmojiBubble_Emoji_Surprise")
	self:TriggerNpcSpeechBubble(10204,10030608)
	self:CallDelay(3,
	function(self)
		self:ClearNpcSpeechBubble(10204)
	end)
end

function Q100306Trigger:TriggerOut()

end

return Q100306Trigger