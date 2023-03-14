require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest20015 = class("Quest20015", questActorProxy)

Quest20015.defaultAlias = "Quest20015"

local q20015Cfg
local NPCData
local HiliData
local PlayerData

function Quest20015:OnDataLoaded()
	q20015Cfg = self.clientData
	NPCData = q20015Cfg.NPCData
	HiliData = q20015Cfg.HiliData
	PlayerData = q20015Cfg.PlayerData
end

-- Generated
function Quest20015:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["2001501"] = self.OnSubStart2001501
	self.subStartHandlers["2001502"] = self.OnSubStart2001502
	self.subStartHandlers["2001503"] = self.OnSubStart2001503
	self.subStartHandlers["2001504"] = self.OnSubStart2001504
	self.subStartHandlers["2001505"] = self.OnSubStart2001505
	self.subStartHandlers["2001506"] = self.OnSubStart2001506
	self.subStartHandlers["2001507"] = self.OnSubStart2001507
	self.subStartHandlers["2001508"] = self.OnSubStart2001508
	self.subStartHandlers["2001509"] = self.OnSubStart2001509
	self.subStartHandlers["2001510"] = self.OnSubStart2001510
	self.subStartHandlers["2001511"] = self.OnSubStart2001511
	self.subStartHandlers["2001512"] = self.OnSubStart2001512
	self.subStartHandlers["2001513"] = self.OnSubStart2001513
	self.subStartHandlers["2001514"] = self.OnSubStart2001514
	self.subStartHandlers["2001515"] = self.OnSubStart2001515



end

function Quest20015:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["2001501"] = self.OnSubFinish2001501
	self.subFinishHandlers["2001502"] = self.OnSubFinish2001502
	self.subFinishHandlers["2001503"] = self.OnSubFinish2001503
	self.subFinishHandlers["2001504"] = self.OnSubFinish2001504
	self.subFinishHandlers["2001505"] = self.OnSubFinish2001505
	self.subFinishHandlers["2001506"] = self.OnSubFinish2001506
	self.subFinishHandlers["2001507"] = self.OnSubFinish2001507
	self.subFinishHandlers["2001508"] = self.OnSubFinish2001508
	self.subFinishHandlers["2001509"] = self.OnSubFinish2001509
	self.subFinishHandlers["2001510"] = self.OnSubFinish2001510
	self.subFinishHandlers["2001511"] = self.OnSubFinish2001511
	self.subFinishHandlers["2001512"] = self.OnSubFinish2001512
	self.subFinishHandlers["2001513"] = self.OnSubFinish2001513
	self.subFinishHandlers["2001514"] = self.OnSubFinish2001514
	self.subFinishHandlers["2001515"] = self.OnSubFinish2001515


end

function Quest20015:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["2001501"] = self.OnSubFailed2001501
	self.subFailedHandlers["2001502"] = self.OnSubFailed2001502
	self.subFailedHandlers["2001503"] = self.OnSubFailed2001503
	self.subFailedHandlers["2001504"] = self.OnSubFailed2001504
	self.subFailedHandlers["2001505"] = self.OnSubFailed2001505
	self.subFailedHandlers["2001506"] = self.OnSubFailed2001506
	self.subFailedHandlers["2001507"] = self.OnSubFailed2001507
	self.subFailedHandlers["2001508"] = self.OnSubFailed2001508
	self.subFailedHandlers["2001509"] = self.OnSubFailed2001509
	self.subFailedHandlers["2001510"] = self.OnSubFailed2001510
	self.subFailedHandlers["2001511"] = self.OnSubFailed2001511
	self.subFailedHandlers["2001512"] = self.OnSubFailed2001512
	self.subFailedHandlers["2001513"] = self.OnSubFailed2001513
	self.subFailedHandlers["2001514"] = self.OnSubFailed2001514
	self.subFailedHandlers["2001515"] = self.OnSubFailed2001515



end

---sub start & finish 内调用的函数

function Quest20015:FinishQuest02(quest, actor)
  local quest = actorMgr:GetActor(q20015Cfg.ActorAlias)
  if quest ~= nil then
      quest:FinishQuestID(false, 2001502)
  end
	local EventNPC = actorMgr:GetQuestNpcActor(NPCData.Npc)
	EventNPC:Standby()
	EventNPC:DoFreeStateTrigger()
	EventNPC:TurnTo(M.Euler2DirXZ(NPCData.NPCDir3))

end

function Quest20015:FinishQuest07(quest)
  local quest = actorMgr:GetActor(q20015Cfg.ActorAlias)
  if quest ~= nil then
      quest:FinishQuestID(false, 2001507)
  end
end


function Quest20015:CreateNPC()
	self:TransmitPlayer(3,PlayerData.PlayerPos, PlayerData.PlayerDir)
	self:CreateQuestNpc(quest, NPCData.NpcID, 1)
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:Standby()
	self:RequestInteraction(EventNPC)
	print ("force dialogue")
end


function Quest20015:DestroyHili()
    self:ShowBlackScreen(0.5, 1, 0.5,
        function(actor, self)
            local Hili = self:GetQuestNpcActor(HiliData.Npc)

            if Hili ~= nil then
                Hili:Destroy(false)
            end
        end
    )
end


--@region sub start & finish handlers
---按流程触发顺序

function Quest20015:OnSubStart2001509(quest)
	self:CreateQuestNpc(quest, NPCData.NpcID, 1)
	self:CreateQuestNpc(quest, HiliData.NpcID, 2)

	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
  local EventHili = self:GetQuestNpcActor(HiliData.Npc)

  EventNPC:Standby()
	EventNPC:DoFreeStateTrigger()
  EventHili:Standby()
	EventHili:DoFreeStateTrigger()

end

function Quest20015:OnSubStart2001501(quest)

end


function Quest20015:OnSubFinish2001501(quest)
end

function Quest20015:OnSubFailed2001501(quest)

end

function Quest20015:OnSubStart2001502(quest)
  local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
  EventNPC:RunToRouteTask(q20015Cfg.RoutePoints,
	function(quest, actor)
		local quest = actorMgr:GetActor(q20015Cfg.ActorAlias)
		if quest ~= nil then
				quest:FinishQuestID(false, 2001502)
		end
		EventNPC:Standby()
		EventNPC:TurnTo(M.Euler2DirXZ(NPCData.NPCDir3))
	end
	)
end

function Quest20015:OnSubFinish2001502(quest)
end

function Quest20015:OnSubFailed2001502(quest)
end

function Quest20015:OnSubStart2001503(quest)

end


function Quest20015:OnSubFinish2001503(quest)
end

function Quest20015:OnSubFailed2001503(quest)
end


function Quest20015:OnSubStart2001508(quest)
	local RandomNum = math.random(1, 100)
	if RandomNum >= 1 and RandomNum <= 20 then
		local quest = actorMgr:GetActor(q20015Cfg.ActorAlias)
		if quest ~= nil then
				quest:FinishQuestID(false, 2001512)
				quest:FinishQuestID(true, 2001513)
		end
	elseif RandomNum > 20 and RandomNum <= 100 then
		local quest = actorMgr:GetActor(q20015Cfg.ActorAlias)
		if quest ~= nil then
				quest:FinishQuestID(false, 2001513)
				quest:FinishQuestID(true, 2001512)
		end
	end
end

function Quest20015:OnSubFinish2001508(quest)
	print ("08 finish")
	self:ShowBlackScreen(0.5, 1, 0.5,
		function()
			self:TransmitPlayer(3,PlayerData.PlayerPos, PlayerData.PlayerDir)
			self:CreateQuestNpc(quest, NPCData.NpcID, 1)
			self:RequestInteractionForceAlias("Npc2002520015")
			print ("force dialogue")
		end
		)
	local quest = actorMgr:GetActor(q20015Cfg.ActorAlias)
	if quest ~= nil then
			quest:FinishQuestID(true, 2001510)
	end
end


function Quest20015:OnSubStart2001504(quest)
end

function Quest20015:OnSubFinish2001504(quest)
  self:ActionSafeCall(self.FinishQuest07)
end

function Quest20015:OnSubFailed2001504(quest)

end

function Quest20015:OnSubFinish2001507(quest)
	self:ShowBlackScreen(0.5, 1, 0.5,
			function()
					local Hili = self:GetQuestNpcActor(HiliData.Npc)
					if Hili ~= nil then
							Hili:Destroy(false)
					end
			end
	)

	print("destroy hili npc")

end

function Quest20015:OnSubFinish2001510(quest)
	self:NarratorOnlyTask(q20015Cfg.NarratorData.Story1)
	local quest = actorMgr:GetActor(q20015Cfg.ActorAlias)
	if quest ~= nil then
			quest:FinishQuestID(true, 2001508)
	end

	local Hili = self:GetQuestNpcActor(HiliData.Npc)

	if Hili ~= nil then
			Hili:Destroy(false)
	end
	print("destroy hili npc")

end


function Quest20015:OnSubStart2001505(quest)
  local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:Standby()
  EventNPC:DoFreeStyle(1070)
	self:CreateSpeechBubbleTask(NPCData.NpcID, 200080501,2,true,1,2)
end

function Quest20015:OnSubFinish2001505(quest)
end

function Quest20015:OnSubStart2001506(quest)
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:DoFreeStateTrigger()
	EventNPC:Standby()
	self:ClearSpeechBubbleTask()
end

function Quest20015:OnSubFinish2001506(quest)
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:WalkToRouteTask(q20015Cfg.RoutePoints1,
	function(actor, task)
		actor:DestroyWithDither(false, 1)
	end,function(actor, task)
		EventNPC:Standby(true)
	end
	)
end

function Quest20015:OnSubStart2001515(quest)
	local EventHili = self:GetQuestNpcActor(HiliData.Npc)
	EventHili:DoFreeStyle(1)
end

function Quest20015:OnSubFinish2001515(quest)
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:WalkToRouteTask(q20015Cfg.RoutePoints1,
	function(actor, task)
		actor:DestroyWithDither(false, 1)
	end,function(actor, task)
		EventNPC:Standby(true)
	end
	)
	local EventHili = self:GetQuestNpcActor(HiliData.Npc)
	EventHili:DoFreeStyle(1)
end


--@endregion

function Quest20015:Start()
end

function Quest20015:OnDestroy()
end

return Quest20015
