require('Actor/ActorCommon')

local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest10201 = class("Quest10201", questActorProxy)

Quest10201.defaultAlias = "Quest10201"

local q10201cfg
local subIDs
local NPCData
local KleeData
local AbyssData
local PaimonData

function Quest10201:OnDataLoaded(  )
	q10201cfg = self.clientData
	subIDs = q10201cfg.SubIDs
	NPCData = q10201cfg.NPCData
	KleeData = q10201cfg.KleeData
	AbyssData = q10201cfg.AbyssData
	PaimonData = q10201cfg.PaimonData
end
-- Generated
function Quest10201:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["1020101"] = self.OnSubStart1020101
	self.subStartHandlers["1020102"] = self.OnSubStart1020102
	self.subStartHandlers["1020103"] = self.OnSubStart1020103
	self.subStartHandlers["1020104"] = self.OnSubStart1020104
	self.subStartHandlers["1020105"] = self.OnSubStart1020105
	self.subStartHandlers["1020106"] = self.OnSubStart1020106
	self.subStartHandlers["1020107"] = self.OnSubStart1020107
	self.subStartHandlers["1020108"] = self.OnSubStart1020108
	self.subStartHandlers["1020109"] = self.OnSubStart1020109
	self.subStartHandlers["1020110"] = self.OnSubStart1020110
	self.subStartHandlers["1020111"] = self.OnSubStart1020111
	self.subStartHandlers["1020112"] = self.OnSubStart1020112
	self.subStartHandlers["1020113"] = self.OnSubStart1020113
	self.subStartHandlers["1020114"] = self.OnSubStart1020114
	self.subStartHandlers["1020115"] = self.OnSubStart1020115
    
end

function Quest10201:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["1020101"] = self.OnSubFinish1020101
	self.subFinishHandlers["1020102"] = self.OnSubFinish1020102
	self.subFinishHandlers["1020103"] = self.OnSubFinish1020103
	self.subFinishHandlers["1020104"] = self.OnSubFinish1020104
	self.subFinishHandlers["1020105"] = self.OnSubFinish1020105
	self.subFinishHandlers["1020106"] = self.OnSubFinish1020106
	self.subFinishHandlers["1020107"] = self.OnSubFinish1020107
	self.subFinishHandlers["1020108"] = self.OnSubFinish1020108
	self.subFinishHandlers["1020109"] = self.OnSubFinish1020109
	self.subFinishHandlers["1020110"] = self.OnSubFinish1020110	
	self.subFinishHandlers["1020111"] = self.OnSubFinish1020111
	self.subFinishHandlers["1020112"] = self.OnSubFinish1020112
	self.subFinishHandlers["1020113"] = self.OnSubFinish1020113
	self.subFinishHandlers["1020114"] = self.OnSubFinish1020114
	self.subFinishHandlers["1020115"] = self.OnSubFinish1020115
	
end

function Quest10201:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["1020101"] = self.OnSubFailed1020101
	self.subFailedHandlers["1020102"] = self.OnSubFailed1020102
	self.subFailedHandlers["1020103"] = self.OnSubFailed1020103
	self.subFailedHandlers["1020104"] = self.OnSubFailed1020104
	self.subFailedHandlers["1020105"] = self.OnSubFailed1020105
	self.subFailedHandlers["1020106"] = self.OnSubFailed1020106
	self.subFailedHandlers["1020107"] = self.OnSubFailed1020107
	self.subFailedHandlers["1020108"] = self.OnSubFailed1020108
	self.subFailedHandlers["1020109"] = self.OnSubFailed1020109
	self.subFailedHandlers["1020110"] = self.OnSubFailed1020110
	self.subFailedHandlers["1020111"] = self.OnSubFailed1020111
	self.subFailedHandlers["1020112"] = self.OnSubFailed1020112
	self.subFailedHandlers["1020113"] = self.OnSubFailed1020113
	self.subFailedHandlers["1020114"] = self.OnSubFailed1020114
	self.subFailedHandlers["1020115"] = self.OnSubFailed1020115

end

---sub start & finish 内调用的函数
function Quest10201:InvokeOnInteraction(param)
    print("10201 Invoke : ")
	local q10201cfg = require('Quest/Client/Q10201ClientConfig')
	local quest = actorMgr:GetActor(q10201cfg.ActorAlias)
	if param == 1 then
		local paimon = quest:GetQuestNpcActor("Paimon")
		if paimon ~= nil then
			paimon:DestroyWithDisappear(false)
		end
	end

	if param == 2 then
        print("Invoke 2")
		globalActor:UnSpawn("Q10201Bomb")
		--globalActor:SpawnGadget(70300117, sceneData:GetDummyPoint(20031,"Q10201BombSpawn").pos, sceneData:GetDummyPoint(20031,"Q10201BombSpawn").rot, "Q10201Bomb", 20031,nil,nil,1)
		self:SpawnGadgetById(1020111, 70300117, 1)
	end

	if param == 3 then
        print("Invoke 3")
		globalActor:UnSpawn("Q10201Bomb")
		local EventNPC = quest:GetQuestNpcActor(NPCData.Npc)
		EventNPC:PlayEffect("Eff_GunpowderBarrel_Explode", sceneData:GetDummyPoint(20031,"Q1020102AbyssSpawn5").pos)
	end

	if param == 4 then
        print("Invoke 4")
		self:TriggerNpcSpeechBubble(10093, 102010401)
		self:CallDelay(2.0,
		function()
			self:ClearNpcSpeechBubble(10093)
		end)
	end

	if param == 5 then
        print("Invoke 5")
		globalActor:UnSpawn("Q10201Bomb")
		--globalActor:SpawnGadget(70300117, sceneData:GetDummyPoint(3,"Q10201BombSpawn").pos, sceneData:GetDummyPoint(3,"Q10201BombSpawn").rot, "Q10201Bomb", 3,nil,nil,1)
		self:SpawnGadgetById(1020112, 70300117, 1)
	end

	if param == 6 then
        print("Invoke 6")
		globalActor:UnSpawn("Q10201Bomb")
	end
end

--@region sub start & finish handlers
---按流程触发顺序

function Quest10201:OnSubStart1020101(quest)
	print("1020101 start")
end

function Quest10201:OnSubFinish1020101(quest)
	print("1020101 finish")
end

function Quest10201:OnSubStart1020112(quest)

	self:CallDelay(2,
	function(  )
		local task = self:CreateQuestNpcCreateTask({KleeData.Klee})

		self:TransmitPlayer(3, sceneData:GetDummyPoint(3,"Q10201AvatarSpawn").pos, sceneData:GetDummyPoint(3,"Q10201AvatarSpawn").rot, nil, 
		function (self)
			self:CreateQuestNpc(quest, KleeData.KleeID, 1)
		end, task
		)
	end
)
end

function Quest10201:OnSubFinish1020112(quest)
	print("1020101 finish")
	local Klee = self:GetQuestNpcActor(KleeData.Klee)
	if Klee ~= nil then
    	Klee:Destroy(false)
	end
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	if EventNPC ~= nil then
    	EventNPC:Destroy(false)
	end
	local paimon = self:GetQuestNpcActor("Paimon")
	if paimon ~= nil then
		paimon:DestroyWithDisappear(false)
	end
	self:ActionSafeCall(
        function(self)
            self:NarratorOnlyTask(q10201cfg.NarratorData.Story1, nil, "Story")
        end
    )
end

function Quest10201:OnSubStart1020103(quest)
	print("1020103 start")
	self:CreateQuestNpc(quest, NPCData.NpcID, 1)
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:PlayEffect("Eff_Monster_Abyss_Water_Blink_BS", NPCData.NPCPos1)
	EventNPC:DoFreeStateTrigger()	
	print("state machine reset")	
	EventNPC:BeFollowTaskByRoutePoints(self.clientData.RouteData1.routeConfig, self.clientData.RouteData1.beFollowLen, self.clientData.RouteData1.beFollowFailed,
	function(self, task)
		local quest = actorMgr:GetActor(q10201cfg.ActorAlias)
		local EventNPC = quest:GetQuestNpcActor(NPCData.Npc)
		if self.BeFollowState == BeFollowState.SUCCESS then	
			EventNPC:Standby()
			EventNPC:PlayEmojiBubble("EmojiBubble_Emoji_Worry")
			print("abyss dizzy1")
			actorMgr:CreateActorWithPos("Q10201trigger01", "Actor/Gadget/Q10201Trigger01", 70900002, 0, sceneData:GetDummyPoint(3,"Q1020102AbyssSpawn2").pos, sceneData:GetDummyPoint(3,"Q1020102AbyssSpawn2").rot, true, false)
		end
	end,
	nil,nil,
	function(self, task)
		print("No Wait")
	end,
	nil,	
	function(self, task)
		print("Fail Quest1020103")
		local quest = actorMgr:GetActor(q10201cfg.ActorAlias)
		quest:FinishQuestID(true, 1020103)
		--self:ShowBlackScreen(0.5, 1, 0.5, nil,nil,nil,"QUEST_Message_Q1020104")
		--self:TransmitPlayer(3, sceneData:GetDummyPoint(3,"Q10201AvatarSpawn").pos, sceneData:GetDummyPoint(3,"Q10201AvatarSpawn").rot)
		quest:ClearNarratorTask()
		quest:StopNarrator()
		quest:CallDelay(2,
		function(  )
			quest:TransmitPlayerWithText(3, sceneData:GetDummyPoint(3,"Q10201AvatarSpawn").pos, sceneData:GetDummyPoint(3,"Q10201AvatarSpawn").rot,{"QUEST_Message_Q1020104"})
		end
		)
	end
	)
end

function Quest10201:OnSubFailed1020103(quest)
	self:DestroyQuestNpcActor(NPCData.Npc, 3)
end

function Quest10201:OnSubStart1020114(quest)
	self:TransmitPlayer(3, sceneData:GetDummyPoint(3,"Q10201AvatarSpawn3").pos, sceneData:GetDummyPoint(3,"Q10201AvatarSpawn3").rot, nil, 
	function (self)
		self:CreateQuestNpc(quest, NPCData.NpcID, 1)
	end)
end

function Quest10201:OnSubFinish1020114(quest)
	local paimon = self:GetQuestNpcActor(PaimonData.Paimon)
	if paimon ~= nil then
			paimon:DestroyWithDisappear(false)
	end
end

function Quest10201:OnSubFailed1020114(quest)
	self:DestroyQuestNpcActor(NPCData.Npc, 3)
end

function Quest10201:OnSubStart1020104(quest)
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:Standby()
	EventNPC:PlayEmojiBubble("EmojiBubble_Emoji_Worry")
	
end

function Quest10201:OnSubFinish1020104(quest)
	print("1020104 finish")
	self:EnterSceneLookCamera(sceneData:GetDummyPoint(3,"Q10201CamTarget1").pos, 0, 1, true)
	globalActor:EnablePlayerInput(false)
	self:CallDelay(1,
		function(  )
			globalActor:EnablePlayerInput(true)
		end
	)
end

function Quest10201:OnSubFailed1020104(quest)
	self:DestroyQuestNpcActor(NPCData.Npc, 3)
end

function Quest10201:OnSubStart1020105(quest)
	print("1020105 start")
	self:ActionSafeCall(
        function(self)
            self:NarratorOnlyTask(q10201cfg.NarratorData.Story3, nil, "Story")
        end
    )
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:DoFreeStateTrigger()	
	print("state machine reset")
	EventNPC:BeFollowTaskByRoutePoints(self.clientData.RouteData2.routeConfig, self.clientData.RouteData2.beFollowLen, self.clientData.RouteData2.beFollowFailed,
	function(self, task)
		local quest = actorMgr:GetActor(q10201cfg.ActorAlias)
		local EventNPC = quest:GetQuestNpcActor(NPCData.Npc)
		if self.BeFollowState == BeFollowState.SUCCESS then	
			EventNPC:Standby()
			EventNPC:PlayEmojiBubble("EmojiBubble_Emoji_Worry")
			actorMgr:CreateActorWithPos("Q10201trigger02", "Actor/Gadget/Q10201Trigger02", 70900002, 0, sceneData:GetDummyPoint(3,"Q1020102AbyssSpawn3").pos, sceneData:GetDummyPoint(3,"Q1020102AbyssSpawn3").rot, true, false)
		end
	end,
	nil,nil,
	function(self, task)
		print("No Wait")
	end, 
	nil,	
	function(self, task)
		print("Fail Quest1020105")
		local quest = actorMgr:GetActor(q10201cfg.ActorAlias)
		quest:FinishQuestID(true, 1020105)
		quest:ClearNarratorTask()
		quest:StopNarrator()
		quest:CallDelay(2,
		function(  )
			quest:TransmitPlayerWithText(3, sceneData:GetDummyPoint(3,"Q10201AvatarSpawn").pos, sceneData:GetDummyPoint(3,"Q10201AvatarSpawn").rot,{"QUEST_Message_Q1020104"})
		end
		)
	end
	)
end

function Quest10201:OnSubFailed1020105(quest)
	self:DestroyQuestNpcActor(NPCData.Npc, 3)
end

function Quest10201:OnSubStart1020115(quest)
	self:TransmitPlayer(3, sceneData:GetDummyPoint(3,"Q10201AvatarSpawn4").pos, sceneData:GetDummyPoint(3,"Q10201AvatarSpawn4").rot, nil, 
	function (self)
		self:CreateQuestNpc(quest, NPCData.NpcID, 1)
	end)
end

function Quest10201:OnSubFinish1020115(quest)
	local paimon = self:GetQuestNpcActor(PaimonData.Paimon)
	if paimon ~= nil then
		paimon:DestroyWithDisappear(false)
	end
end

function Quest10201:OnSubFailed1020115(quest)
	self:DestroyQuestNpcActor(NPCData.Npc, 3)
end


function Quest10201:OnSubStart1020106(quest)
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:Standby()
	EventNPC:PlayEmojiBubble("EmojiBubble_Emoji_Worry")
end

function Quest10201:OnSubFinish1020106(quest)
	print("1020106 finish")
	self:EnterSceneLookCamera(sceneData:GetDummyPoint(3,"Q10201CamTarget2").pos, 0, 1, true)
	globalActor:EnablePlayerInput(false)
	self:CallDelay(1,
		function(  )
			globalActor:EnablePlayerInput(true)
		end
	)
end

function Quest10201:OnSubFailed1020106(quest)
	self:DestroyQuestNpcActor(NPCData.Npc, 3)
end

function Quest10201:OnSubStart1020107(quest)
	print("1020107 start")
	self:ActionSafeCall(
        function(self)
            self:NarratorOnlyTask(q10201cfg.NarratorData.Story4, nil, "Story")
        end
    )
	local EventNPC = self:GetQuestNpcActor(NPCData.Npc)
	EventNPC:DoFreeStateTrigger()	
	print("state machine reset")	
	EventNPC:BeFollowTaskByRoutePoints(self.clientData.RouteData3.routeConfig, self.clientData.RouteData3.beFollowLen, self.clientData.RouteData3.beFollowFailed,
	function(self, task)
		local quest = actorMgr:GetActor(q10201cfg.ActorAlias)
		local EventNPC = quest:GetQuestNpcActor(NPCData.Npc)
		if self.BeFollowState == BeFollowState.SUCCESS then	
			EventNPC:PlayEffect("Eff_Monster_Abyss_Water_Blink_BS", NPCData.NPCPos8)
			if EventNPC ~= nil then
    			EventNPC:Destroy(false)
			end
			
			quest:CreateQuestNpcById(1020107, NPCData.NpcID, 1)
			local EventNPC = quest:GetQuestNpcActor(NPCData.Npc)
			EventNPC:DoFreeStateTrigger()		
			EventNPC:BeFollowTaskByRoutePoints(quest.clientData.RouteData4.routeConfig, quest.clientData.RouteData4.beFollowLen, quest.clientData.RouteData4.beFollowFailed,
			function(self, task)
				local quest = actorMgr:GetActor(q10201cfg.ActorAlias)
				local EventNPC = quest:GetQuestNpcActor(NPCData.Npc)
				if self.BeFollowState == BeFollowState.SUCCESS then	
					EventNPC:PlayEffect("Eff_Monster_Abyss_Water_Blink_BS", NPCData.NPCPos11)
					if EventNPC ~= nil then
						EventNPC:Destroy(false)
					end
				end
			end,
			nil,nil,
			function(self, task)
				print("No Wait")
			end, 
			nil,
			function(self, task)
				print("Fail Quest1020105")
				local quest = actorMgr:GetActor(q10201cfg.ActorAlias)
				quest:FinishQuestID(true, 1020107)
				quest:ClearNarratorTask()
				quest:StopNarrator()
				quest:CallDelay(2,
					function(  )
						quest:TransmitPlayerWithText(3, sceneData:GetDummyPoint(3,"Q10201AvatarSpawn").pos, sceneData:GetDummyPoint(3,"Q10201AvatarSpawn").rot,{"QUEST_Message_Q1020104"})
					end
				)
			end
			)
		end
	end,
	nil,nil,
	function(self, task)
		print("No Wait")
	end,  
	nil,	
	function(self, task)
		print("Fail Quest1020107")
		local quest = actorMgr:GetActor(q10201cfg.ActorAlias)
		quest:FinishQuestID(true, 1020107)
		quest:ClearNarratorTask()
		quest:StopNarrator()
		quest:CallDelay(2,
		function(  )
			quest:TransmitPlayerWithText(3, sceneData:GetDummyPoint(3,"Q10201AvatarSpawn").pos, sceneData:GetDummyPoint(3,"Q10201AvatarSpawn").rot,{"QUEST_Message_Q1020104"})
		end
		)
	end
	)
end

function Quest10201:OnSubFinish1020107(quest)
end

function Quest10201:OnSubFailed1020107(quest)
	self:DestroyQuestNpcActor(NPCData.Npc, 3)
end

function Quest10201:OnSubStart1020108(quest)
	print("1020108 start")
	self:EnterSceneLookCamera(sceneData:GetDummyPoint(3,"Q10201CamTarget3").pos, 0, 1, true)
	globalActor:EnablePlayerInput(false)
	self:CallDelay(1,
		function(  )
			globalActor:EnablePlayerInput(true)
		end
	)
	
	self:NarratorOnlyTask(q10201cfg.NarratorData.Story2, nil, "Story")
end


function Quest10201:OnSubStart1020113(quest)
	self:CallDelay(2,
		function(  )
			local task = self:CreateQuestNpcCreateTask({KleeData.Klee})
			self:TransmitPlayer(3, sceneData:GetDummyPoint(3,"Q10201AvatarSpawn2").pos, sceneData:GetDummyPoint(3,"Q10201AvatarSpawn2").rot, nil, 
        	function (self)
				self:CreateQuestNpc(quest, KleeData.KleeID, 1)
        	end, task
    		)
		end
	)
end

function Quest10201:OnSubFinish1020113(quest)
	self:DestroyQuestNpcActor(KleeData.Klee, 3)
	local paimon = self:GetQuestNpcActor("Paimon")
	if paimon ~= nil then
		paimon:DestroyWithDisappear(false)
	end
end

function Quest10201:OnSubStart1020110(quest)
	print("1020110 start")
	self:CreateQuestNpc(quest, AbyssData.AbyssID, 1)
end

function Quest10201:OnSubStart1020111(quest)
	print("1020111 start")
	self:CallDelay(2,
		function(  )
	
		local task = self:CreateQuestNpcCreateTask({KleeData.Klee, NPCData.Npc, AbyssData.Abyss})

    	self:TransmitPlayer(20031, sceneData:GetDummyPoint(20031,"Q10201AvatarSpawn").pos, sceneData:GetDummyPoint(20031,"Q10201AvatarSpawn").rot, nil, 
        	function (self)

				self:CreateQuestNpc(quest, KleeData.KleeID, 1)
				self:CreateQuestNpc(quest, NPCData.NpcID, 2)
				self:CreateQuestNpc(quest, AbyssData.AbyssID, 3)
       		end, task
		)
	end
	)
end

function Quest10201:OnSubFinish1020111(quest)
	print("1020111 finish")
	self:DestroyQuestNpcActor(KleeData.Klee, 20031)
	self:DestroyQuestNpcActor(AbyssData.Abyss, 20031)
	self:DestroyQuestNpcActor(NPCData.Npc, 20031)

	local paimon = self:GetQuestNpcActor("Paimon")
	if paimon ~= nil then
		paimon:DestroyWithDisappear(false)
	end
end
--@endregion


function Quest10201:Start()
end

function Quest10201:OnDestroy()
end

return Quest10201