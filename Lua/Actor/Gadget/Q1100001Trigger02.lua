--进圈创生香菱，出圈销毁香菱
require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q1100001Trigger02 = class("Q1100001Trigger02", gadgetActorProxy)

Q1100001Trigger02.defaultAlias = "Q1100001Trigger02"

local Q11000Cfg = require('Quest/Client/Q11000ClientConfig')
util.do_require('Quest/Share/Q11000ShareConfig')

local xianglingData = XianglingData
local quest_data = quest_data["1100001"]

function Q1100001Trigger02:OnPostDataPrepare()
end

function Q1100001Trigger02:OnPostComponentPrepare()
	self:AddComponentTrigger(30, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q1100001Trigger02:TriggerIn()
	print("IN Q1100001Trigger02")
    self:DestroySelf()
end

function Q1100001Trigger02:TriggerOut()
	print("OUT Q1100001Trigger02")
end

return Q1100001Trigger02