require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q10100Trigger = class("Q10100Trigger", gadgetActorProxy)

Q10100Trigger.defaultAlias = "Q10100Trigger"

local q10100Cfg = require('Quest/Client/Q10100ClientConfig')
local lisaData = q10100Cfg.LisaData
local quest10100 = actorMgr:GetActor(q10100Cfg.ActorAlias)

function Q10100Trigger:OnPostDataPrepare()
end

function Q10100Trigger:OnPostComponentPrepare()
	self:AddComponentTrigger(20, DistType.EULER_XZ, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q10100Trigger:TriggerIn()
	print("In Q10100Trigger")
	--local lisa = actorMgr:GetActor(lisaData.Lisa)
	local lisa = quest10100:GetQuestNpcActor(lisaData.Lisa)
	if lisa ~= nil then	
		lisa:DoFreeStateTrigger()
		lisa:EnableInteraction(false)
		lisa:WalkToTask(lisaData.BornPos2,
			function (self)
				lisa:SitOnChair(8010)
				lisa:EnableInteraction(true)
			end
		)
	end
end

function Q10100Trigger:TriggerOut()
	print("Out Q10100Trigger")
	local lisa = quest10100:GetQuestNpcActor(lisaData.Lisa)
	if lisa ~= nil then
		lisa:EnableInteraction(false)
		lisa:StandFromChair()
		lisa:DoFreeStateTrigger()
		lisa:WalkToTask(lisaData.BornPos4,
		function(self)
			local x = math.random(1, 5)
			if x == 1 then
			    lisa:DoFreeStyle(1120)
			elseif x == 2 then
				lisa:DoFreeStyle(1170)
			elseif x == 3 then
				lisa:DoFreeStyle(1190)	
			elseif x == 4 then
				lisa:DoFreeStyle(1231)
			elseif x == 5 then
				lisa:DoFreeStyle(1220)
			end
		end
	    )
	end
end

return Q10100Trigger