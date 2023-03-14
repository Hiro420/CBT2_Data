require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q487Trigger = class("Q487Trigger", gadgetActorProxy)

Q487Trigger.defaultAlias = "Q487Trigger"
local q487Cfg = require('Quest/Client/Q487ClientConfig')

local NarratorData = {
	Story1 = {
    	{dialogID = 4870003, audioEvtName = "", duration = 3},
		{dialogID = 4870004, audioEvtName = "", duration = 3},
	},
	Story2 = {
    	{dialogID = 4870005, audioEvtName = "", duration = 3},
		{dialogID = 4870006, audioEvtName = "", duration = 3},
	},
}

function Q487Trigger:OnPostDataPrepare()
end

function Q487Trigger:OnPostComponentPrepare()
	self:AddComponentTrigger(70, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn1, self.TriggerOut)
end

function Q487Trigger:TriggerIn()
end

function Q487Trigger:TriggerOut()
	--print("Exit " .. tostring(outCnt))
    --self:DestroySelf()
	print("Out Q487Trigger")
	self:NarratorOnlyTask(NarratorData.Story2)
end




return Q487Trigger