--[[
    luaide  模板位置位于 Template/FunTemplate/NewFileTemplate.lua 其中 Template 为配置路径 与luaide.luaTemplatesDir
    luaide.luaTemplatesDir 配置 https://www.showdoc.cc/web/#/luaide?page_id=713062580213505
    author:{author}
    time:2019-11-01 16:24:08
]]
require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q45202Trigger = class("Q45202Trigger", gadgetActorProxy)

Q45202Trigger.defaultAlias = "Q45202Trigger"

local Q452Cfg = require('Quest/Client/Q452ClientConfig')

function Q45202Trigger:OnPostDataPrepare()
end

function Q45202Trigger:OnPostComponentPrepare()
	self:AddComponentTrigger(50, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q45202Trigger:TriggerIn()
	print("IN Q45202Trigger")
	local quest = actorMgr:GetActor(Q452Cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuestID(false, 45202) 
    end
    self:DestroySelf()
end

function Q45202Trigger:TriggerOut()

end

return Q45202Trigger