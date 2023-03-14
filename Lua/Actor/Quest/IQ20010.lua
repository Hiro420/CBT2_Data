require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest20010 = class("Quest20010", questActorProxy)

Quest20010.defaultAlias = "Quest20010"

local q20010Cfg
local NPCData
local HiliData
local PlayerData

function Quest20010:OnDataLoaded()
	q20010Cfg = self.clientData
	NPCData = q20010Cfg.NPCData
	HiliData = q20010Cfg.HiliData
	PlayerData = q20010Cfg.PlayerData
end

-- Generated
function Quest20010:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["2001001"] = self.OnSubStart2001001
	self.subStartHandlers["2001002"] = self.OnSubStart2001002
	self.subStartHandlers["2001003"] = self.OnSubStart2001003
	self.subStartHandlers["2001004"] = self.OnSubStart2001004
	self.subStartHandlers["2001005"] = self.OnSubStart2001005
	self.subStartHandlers["2001006"] = self.OnSubStart2001006
	self.subStartHandlers["2001007"] = self.OnSubStart2001007
	self.subStartHandlers["2001008"] = self.OnSubStart2001008
	self.subStartHandlers["2001009"] = self.OnSubStart2001009
	self.subStartHandlers["2001010"] = self.OnSubStart2001010
	self.subStartHandlers["2001011"] = self.OnSubStart2001011
	self.subStartHandlers["2001012"] = self.OnSubStart2001012
	self.subStartHandlers["2001013"] = self.OnSubStart2001013
	self.subStartHandlers["2001014"] = self.OnSubStart2001014
	self.subStartHandlers["2001015"] = self.OnSubStart2001015



end

function Quest20010:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["2001001"] = self.OnSubFinish2001001
	self.subFinishHandlers["2001002"] = self.OnSubFinish2001002
	self.subFinishHandlers["2001003"] = self.OnSubFinish2001003
	self.subFinishHandlers["2001004"] = self.OnSubFinish2001004
	self.subFinishHandlers["2001005"] = self.OnSubFinish2001005
	self.subFinishHandlers["2001006"] = self.OnSubFinish2001006
	self.subFinishHandlers["2001007"] = self.OnSubFinish2001007
	self.subFinishHandlers["2001008"] = self.OnSubFinish2001008
	self.subFinishHandlers["2001009"] = self.OnSubFinish2001009
	self.subFinishHandlers["2001010"] = self.OnSubFinish2001010
	self.subFinishHandlers["2001011"] = self.OnSubFinish2001011
	self.subFinishHandlers["2001012"] = self.OnSubFinish2001012
	self.subFinishHandlers["2001013"] = self.OnSubFinish2001013
	self.subFinishHandlers["2001014"] = self.OnSubFinish2001014
	self.subFinishHandlers["2001015"] = self.OnSubFinish2001015


end

function Quest20010:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["2001001"] = self.OnSubFailed2001001
	self.subFailedHandlers["2001002"] = self.OnSubFailed2001002
	self.subFailedHandlers["2001003"] = self.OnSubFailed2001003
	self.subFailedHandlers["2001004"] = self.OnSubFailed2001004
	self.subFailedHandlers["2001005"] = self.OnSubFailed2001005
	self.subFailedHandlers["2001006"] = self.OnSubFailed2001006
	self.subFailedHandlers["2001007"] = self.OnSubFailed2001007
	self.subFailedHandlers["2001008"] = self.OnSubFailed2001008
	self.subFailedHandlers["2001009"] = self.OnSubFailed2001009
	self.subFailedHandlers["2001010"] = self.OnSubFailed2001010
	self.subFailedHandlers["2001011"] = self.OnSubFailed2001011
	self.subFailedHandlers["2001012"] = self.OnSubFailed2001012
	self.subFailedHandlers["2001013"] = self.OnSubFailed2001013
	self.subFailedHandlers["2001014"] = self.OnSubFailed2001014
	self.subFailedHandlers["2001015"] = self.OnSubFailed2001015



end

---sub start & finish 内调用的函数

function Quest20010:FinishQuest02(quest, actor)
  local quest = actorMgr:GetActor(q20010Cfg.ActorAlias)
  if quest ~= nil then
      quest:FinishQuestID(false, 2001002)
  end
	local EventNPC = actorMgr:GetQuestNpcActor(NPCData.Npc)
	EventNPC:Standby()
	EventNPC:DoFreeStateTrigger()
	EventNPC:TurnTo(M.Euler2DirXZ(NPCData.NPCDir3))

end

function Quest20010:FinishQuest07(quest)
  local quest = actorMgr:GetActor(q20010Cfg.ActorAlias)
  if quest ~= nil then
      quest:FinishQuestID(false, 2001007)
  end
end


function Quest20010:CreateNPC()
	self:TransmitPlayer(3,PlayerData.PlayerPos, PlayerData.PlayerDir)
	self:CreateQuestNpc(quest, NPCData.NpcID, 1)
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:Standby()
	self:RequestInteraction(EventNPC)
	print ("force dialogue")
end


function Quest20010:DestroyHili()
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

function Quest20010:OnSubStart2001009(quest)
	self:CreateQuestNpc(quest, NPCData.NpcID, 1)
	self:CreateQuestNpc(quest, HiliData.NpcID, 2)

	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
  local EventHili = self:GetQuestNpcActor(HiliData.Npc)

  EventNPC:Standby()
	EventNPC:DoFreeStateTrigger()
  EventHili:Standby()
	EventHili:DoFreeStateTrigger()

end

function Quest20010:OnSubStart2001001(quest)

end


function Quest20010:OnSubFinish2001001(quest)
end

function Quest20010:OnSubFailed2001001(quest)

end

function Quest20010:OnSubStart2001002(quest)
  local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
  EventNPC:RunToRouteTask(q20010Cfg.RoutePoints,
	function(quest, actor)
		local quest = actorMgr:GetActor(q20010Cfg.ActorAlias)
		if quest ~= nil then
				quest:FinishQuestID(false, 2001002)
		end
		EventNPC:Standby()
		EventNPC:TurnTo(M.Euler2DirXZ(NPCData.NPCDir3))
	end
	)
end

function Quest20010:OnSubFinish2001002(quest)
end

function Quest20010:OnSubFailed2001002(quest)
end

function Quest20010:OnSubStart2001003(quest)

end


function Quest20010:OnSubFinish2001003(quest)
end

function Quest20010:OnSubFailed2001003(quest)
end


function Quest20010:OnSubStart2001008(quest)
	local RandomNum = math.random(1, 100)
	if RandomNum >= 1 and RandomNum <= 20 then
		local quest = actorMgr:GetActor(q20010Cfg.ActorAlias)
		if quest ~= nil then
				quest:FinishQuestID(false, 2001012)
				quest:FinishQuestID(true, 2001013)
		end
	elseif RandomNum > 20 and RandomNum <= 100 then
		local quest = actorMgr:GetActor(q20010Cfg.ActorAlias)
		if quest ~= nil then
				quest:FinishQuestID(false, 2001013)
				quest:FinishQuestID(true, 2001012)
		end
	end
end

function Quest20010:OnSubFinish2001008(quest)
	print ("08 finish")
	self:ShowBlackScreen(0.5, 1, 0.5,
		function()
			self:TransmitPlayer(3,PlayerData.PlayerPos, PlayerData.PlayerDir)
			self:CreateQuestNpc(quest, NPCData.NpcID, 1)
			self:RequestInteractionForceAlias("Npc2002520010")
			print ("force dialogue")
		end
		)
	local quest = actorMgr:GetActor(q20010Cfg.ActorAlias)
	if quest ~= nil then
			quest:FinishQuestID(true, 2001010)
	end
end


function Quest20010:OnSubStart2001004(quest)
end

function Quest20010:OnSubFinish2001004(quest)
  self:ActionSafeCall(self.FinishQuest07)
end

function Quest20010:OnSubFailed2001004(quest)

end

function Quest20010:OnSubFinish2001007(quest)
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

function Quest20010:OnSubFinish2001010(quest)
	self:NarratorOnlyTask(q20010Cfg.NarratorData.Story1)
	local quest = actorMgr:GetActor(q20010Cfg.ActorAlias)
	if quest ~= nil then
			quest:FinishQuestID(true, 2001008)
	end

	local Hili = self:GetQuestNpcActor(HiliData.Npc)

	if Hili ~= nil then
			Hili:Destroy(false)
	end
	print("destroy hili npc")

end


function Quest20010:OnSubStart2001005(quest)
  local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:Standby()
  EventNPC:DoFreeStyle(1070)
	self:CreateSpeechBubbleTask(NPCData.NpcID, 200080501,2,true,1,2)
end

function Quest20010:OnSubFinish2001005(quest)
end

function Quest20010:OnSubStart2001006(quest)
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:DoFreeStateTrigger()
	EventNPC:Standby()
	self:ClearSpeechBubbleTask()
end

function Quest20010:OnSubFinish2001006(quest)
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:WalkToRouteTask(q20010Cfg.RoutePoints1,
	function(actor, task)
		actor:DestroyWithDither(false, 1)
	end,function(actor, task)
		EventNPC:Standby(true)
	end
	)
end

function Quest20010:OnSubStart2001015(quest)
	local EventHili = self:GetQuestNpcActor(HiliData.Npc)
	EventHili:DoFreeStyle(1)
end

function Quest20010:OnSubFinish2001015(quest)
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:WalkToRouteTask(q20010Cfg.RoutePoints1,
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

function Quest20010:Start()
end

function Quest20010:OnDestroy()
end

return Quest20010
