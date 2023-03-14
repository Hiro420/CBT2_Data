require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q1000SneakArea = class("Q1000SneakArea", gadgetActorProxy)

Q1000SneakArea.defaultAlias = "Q1000SneakArea"


local q1000Cfg = require('Quest/Client/Q1000ClientConfig')


function Q1000SneakArea:OnPostDataPrepare()
end

function Q1000SneakArea:OnPostComponentPrepare()
	self:AddComponentTrigger(73, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q1000SneakArea:TriggerIn()
	-- local quest = actorMgr:GetActor(q1000Cfg.ActorAlias)
	-- if quest ~= nil then
	-- 	quest:FinishQuestID(false, 100010)
	-- end
	-- self:DestroySelf()
end

function Q1000SneakArea:TriggerOut()
    local quest = actorMgr:GetActor(q1000Cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuestID(true, 100010)
	end
	self:DestroySelf()
end

return Q1000SneakArea