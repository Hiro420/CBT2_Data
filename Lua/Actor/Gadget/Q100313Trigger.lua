--完成100313
require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q100313Trigger = class("Q100313Trigger", gadgetActorProxy)

Q100313Trigger.defaultAlias = "Q100313Trigger"

local Q1003Cfg = require('Quest/Client/Q1003ClientConfig')
util.do_require('Quest/Share/Q1003ShareConfig')
local xiaomingData = XiaomingData

function Q100313Trigger:OnPostDataPrepare()
end

function Q100313Trigger:OnPostComponentPrepare()
	self:AddComponentTrigger(10, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q100313Trigger:TriggerIn()
	print("IN Q100313Trigger")
	self:TransmitPlayer(3, sceneData:GetDummyPoint(3, "Q100313Trigger").pos, sceneData:GetDummyPoint(3, "Q100313Trigger").rot,
	function(self)
		local quest = actorMgr:GetActor(Q1003Cfg.ActorAlias)
		if quest ~= nil then
			quest:EnterSceneLookCamera(sceneData:GetDummyPoint(3,"Q100315MingRun").pos, 0, 6, true)
		end
		local xiaoming = quest:GetQuestNpcActor(xiaomingData.Alias)
		if xiaoming ~= nil then
			xiaoming:DoFreeStyle(5010)
			xiaoming:DoFreeStateTrigger()
			--xiaoming:DestroyWithDither(true, 1.5)
			xiaoming:RunToTask(Q1003Cfg.XiaomingData.BornPos15Run,
			function(self)
				local xiaoming = quest:GetQuestNpcActor(xiaomingData.Alias)
				if xiaoming ~= nil then
					xiaoming:DoFreeStyle(5010)
					xiaoming:DoFreeStateTrigger()
				end
				self:CallDelay(1.5,
					function(self)
					self:ShowBlackScreen(0.5, 0.5, 0.5,
						function(self)
							local quest = actorMgr:GetActor(Q1003Cfg.ActorAlias)
							print("finish100313------------------------------01")
							if quest ~= nil then
								print("finish100313------------------------------02")
								quest:FinishQuestID(false, 100313)
							end
							local xiaoming = quest:GetQuestNpcActor(xiaomingData.Alias)
							if xiaoming ~= nil then
								self:ActionSafeCall(
									function(self)
										xiaoming:Destroy(false)
									end
								)
							end
						end,
						function(self)
							local quest = actorMgr:GetActor(Q1003Cfg.ActorAlias)
							if quest ~= nil then
								quest:NarratorOnlyTask(Q1003Cfg.NarratorFlow5)
							end
						end
					
					)
				end
			)
			end
			)
		end
	end
	)
    self:DestroySelf()
end

function Q100313Trigger:TriggerOut()

end

return Q100313Trigger