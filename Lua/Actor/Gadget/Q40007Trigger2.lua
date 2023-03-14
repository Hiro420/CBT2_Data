require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q40007Trigger2 = class("Q40007Trigger2", gadgetActorProxy)

Q40007Trigger2.defaultAlias = "Q40007Trigger2"

local q40007Cfg = require('Quest/Client/Q40007ClientConfig')
local thiefData = q40007Cfg.ThiefData
local quest40007 = actorMgr:GetActor(q40007Cfg.ActorAlias)

function Q40007Trigger2:OnPostDataPrepare()
end

function Q40007Trigger2:OnPostComponentPrepare()
	self:AddComponentTrigger(6, DistType.EULER_XZ, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q40007Trigger2:TriggerIn()
	print("In Q40007Trigger")
	local playerVector = actorUtils.GetAvatarPos()
	local npcVector = playerVector - thiefData.BornPos2

    local thief = quest40007:GetQuestNpcActor(thiefData.Alias)
    if thief ~= nil then
		thief:DoFreeStateTrigger()
		thief:SteerToTask(npcVector, 1, true ,true)
		thief:PlayEmojiBubble("EmojiBubble_Emoji_Surprise")
    end
end

function Q40007Trigger2:TriggerOut()
	print("Out Q40007Trigger")
    local thief = quest40007:GetQuestNpcActor(thiefData.Alias)
	if thief ~= nil then
		thief:SteerToTask(M.Euler2DirXZ(thiefData.BornDir), 1, true ,true)
		self:CallDelay(1.2, 
		function()
			thief:DoFreeStyle(1280)
		end)
	end
end

return Q40007Trigger2