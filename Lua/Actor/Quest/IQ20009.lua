require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest20009 = class("Quest20009", questActorProxy)

Quest20009.defaultAlias = "Quest20009"

local q20009Cfg
local NPCData
local HiliData
local PlayerData

function Quest20009:OnDataLoaded()
	q20009Cfg = self.clientData
	NPCData = q20009Cfg.NPCData
	HiliData = q20009Cfg.HiliData
	PlayerData = q20009Cfg.PlayerData
end

-- Generated
function Quest20009:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["2000901"] = self.OnSubStart2000901
	self.subStartHandlers["2000902"] = self.OnSubStart2000902
	self.subStartHandlers["2000903"] = self.OnSubStart2000903
	self.subStartHandlers["2000904"] = self.OnSubStart2000904
	self.subStartHandlers["2000905"] = self.OnSubStart2000905
	self.subStartHandlers["2000906"] = self.OnSubStart2000906
	self.subStartHandlers["2000907"] = self.OnSubStart2000907
	self.subStartHandlers["2000908"] = self.OnSubStart2000908
	self.subStartHandlers["2000909"] = self.OnSubStart2000909
	self.subStartHandlers["2000910"] = self.OnSubStart2000910
	self.subStartHandlers["2000911"] = self.OnSubStart2000911
	self.subStartHandlers["2000912"] = self.OnSubStart2000912
	self.subStartHandlers["2000913"] = self.OnSubStart2000913
	self.subStartHandlers["2000914"] = self.OnSubStart2000914
	self.subStartHandlers["2000915"] = self.OnSubStart2000915



end

function Quest20009:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["2000901"] = self.OnSubFinish2000901
	self.subFinishHandlers["2000902"] = self.OnSubFinish2000902
	self.subFinishHandlers["2000903"] = self.OnSubFinish2000903
	self.subFinishHandlers["2000904"] = self.OnSubFinish2000904
	self.subFinishHandlers["2000905"] = self.OnSubFinish2000905
	self.subFinishHandlers["2000906"] = self.OnSubFinish2000906
	self.subFinishHandlers["2000907"] = self.OnSubFinish2000907
	self.subFinishHandlers["2000908"] = self.OnSubFinish2000908
	self.subFinishHandlers["2000909"] = self.OnSubFinish2000909
	self.subFinishHandlers["2000910"] = self.OnSubFinish2000910
	self.subFinishHandlers["2000911"] = self.OnSubFinish2000911
	self.subFinishHandlers["2000912"] = self.OnSubFinish2000912
	self.subFinishHandlers["2000913"] = self.OnSubFinish2000913
	self.subFinishHandlers["2000914"] = self.OnSubFinish2000914
	self.subFinishHandlers["2000915"] = self.OnSubFinish2000915


end

function Quest20009:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["2000901"] = self.OnSubFailed2000901
	self.subFailedHandlers["2000902"] = self.OnSubFailed2000902
	self.subFailedHandlers["2000903"] = self.OnSubFailed2000903
	self.subFailedHandlers["2000904"] = self.OnSubFailed2000904
	self.subFailedHandlers["2000905"] = self.OnSubFailed2000905
	self.subFailedHandlers["2000906"] = self.OnSubFailed2000906
	self.subFailedHandlers["2000907"] = self.OnSubFailed2000907
	self.subFailedHandlers["2000908"] = self.OnSubFailed2000908
	self.subFailedHandlers["2000909"] = self.OnSubFailed2000909
	self.subFailedHandlers["2000910"] = self.OnSubFailed2000910
	self.subFailedHandlers["2000911"] = self.OnSubFailed2000911
	self.subFailedHandlers["2000912"] = self.OnSubFailed2000912
	self.subFailedHandlers["2000913"] = self.OnSubFailed2000913
	self.subFailedHandlers["2000914"] = self.OnSubFailed2000914
	self.subFailedHandlers["2000915"] = self.OnSubFailed2000915



end

---sub start & finish 内调用的函数

function Quest20009:FinishQuest02(quest, actor)
  local quest = actorMgr:GetActor(q20009Cfg.ActorAlias)
  if quest ~= nil then
      quest:FinishQuestID(false, 2000902)
  end
	local EventNPC = actorMgr:GetQuestNpcActor(NPCData.Npc)
	EventNPC:Standby()
	EventNPC:DoFreeStateTrigger()
	EventNPC:TurnTo(M.Euler2DirXZ(NPCData.NPCDir3))

end

function Quest20009:FinishQuest07(quest)
  local quest = actorMgr:GetActor(q20009Cfg.ActorAlias)
  if quest ~= nil then
      quest:FinishQuestID(false, 2000907)
  end
end


function Quest20009:CreateNPC()
	self:TransmitPlayer(3,PlayerData.PlayerPos, PlayerData.PlayerDir)
	self:CreateQuestNpc(quest, NPCData.NpcID, 1)
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:Standby()
	self:RequestInteraction(EventNPC)
	print ("force dialogue")
end


function Quest20009:DestroyHili()
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

function Quest20009:OnSubStart2000909(quest)
	self:CreateQuestNpc(quest, NPCData.NpcID, 1)
	self:CreateQuestNpc(quest, HiliData.NpcID, 2)

	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
  local EventHili = self:GetQuestNpcActor(HiliData.Npc)

  EventNPC:Standby()
	EventNPC:DoFreeStateTrigger()
  EventHili:Standby()
	EventHili:DoFreeStateTrigger()

end

function Quest20009:OnSubStart2000901(quest)

end


function Quest20009:OnSubFinish2000901(quest)
end

function Quest20009:OnSubFailed2000901(quest)

end

function Quest20009:OnSubStart2000902(quest)
  local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
  EventNPC:RunToRouteTask(q20009Cfg.RoutePoints,
	function(quest, actor)
		local quest = actorMgr:GetActor(q20009Cfg.ActorAlias)
		if quest ~= nil then
				quest:FinishQuestID(false, 2000902)
		end
		EventNPC:Standby()
		EventNPC:TurnTo(M.Euler2DirXZ(NPCData.NPCDir3))
	end
	)
end

function Quest20009:OnSubFinish2000902(quest)
end

function Quest20009:OnSubFailed2000902(quest)
end

function Quest20009:OnSubStart2000903(quest)

end


function Quest20009:OnSubFinish2000903(quest)
end

function Quest20009:OnSubFailed2000903(quest)
end


function Quest20009:OnSubStart2000908(quest)
	local RandomNum = math.random(1, 100)
	if RandomNum >= 1 and RandomNum <= 20 then
		local quest = actorMgr:GetActor(q20009Cfg.ActorAlias)
		if quest ~= nil then
				quest:FinishQuestID(false, 2000912)
				quest:FinishQuestID(true, 2000913)
		end
	elseif RandomNum > 20 and RandomNum <= 100 then
		local quest = actorMgr:GetActor(q20009Cfg.ActorAlias)
		if quest ~= nil then
				quest:FinishQuestID(false, 2000913)
				quest:FinishQuestID(true, 2000912)
		end
	end
end

function Quest20009:OnSubFinish2000908(quest)
	print ("08 finish")
	self:ShowBlackScreen(0.5, 1, 0.5,
		function()
			self:TransmitPlayer(3,PlayerData.PlayerPos, PlayerData.PlayerDir)
			self:CreateQuestNpc(quest, NPCData.NpcID, 1)
			self:RequestInteractionForceAlias("Npc2002520009")
			print ("force dialogue")
		end
		)
	local quest = actorMgr:GetActor(q20009Cfg.ActorAlias)
	if quest ~= nil then
			quest:FinishQuestID(true, 2000910)
	end
end


function Quest20009:OnSubStart2000904(quest)
end

function Quest20009:OnSubFinish2000904(quest)
  self:ActionSafeCall(self.FinishQuest07)
end

function Quest20009:OnSubFailed2000904(quest)

end

function Quest20009:OnSubFinish2000907(quest)
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

function Quest20009:OnSubFinish2000910(quest)
	self:NarratorOnlyTask(q20009Cfg.NarratorData.Story1)
	local quest = actorMgr:GetActor(q20009Cfg.ActorAlias)
	if quest ~= nil then
			quest:FinishQuestID(true, 2000908)
	end

	local Hili = self:GetQuestNpcActor(HiliData.Npc)

	if Hili ~= nil then
			Hili:Destroy(false)
	end
	print("destroy hili npc")

end


function Quest20009:OnSubStart2000905(quest)
  local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:Standby()
  EventNPC:DoFreeStyle(1070)
	self:CreateSpeechBubbleTask(NPCData.NpcID, 200080501,2,true,1,2)
end

function Quest20009:OnSubFinish2000905(quest)
end

function Quest20009:OnSubStart2000906(quest)
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:DoFreeStateTrigger()
	EventNPC:Standby()
	self:ClearSpeechBubbleTask()
end

function Quest20009:OnSubFinish2000906(quest)
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:WalkToRouteTask(q20009Cfg.RoutePoints1,
	function(actor, task)
		actor:DestroyWithDither(false, 1)
	end,function(actor, task)
		EventNPC:Standby(true)
	end
	)
end

function Quest20009:OnSubStart2000915(quest)
	local EventHili = self:GetQuestNpcActor(HiliData.Npc)
	EventHili:DoFreeStyle(1)
end

function Quest20009:OnSubFinish2000915(quest)
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:WalkToRouteTask(q20009Cfg.RoutePoints1,
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

function Quest20009:Start()
end

function Quest20009:OnDestroy()
end

return Quest20009
