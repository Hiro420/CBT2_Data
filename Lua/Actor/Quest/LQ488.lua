require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest488 = class("Quest488", questActorProxy)

Quest488.defaultAlias = "Quest488"

local q488Cfg = require('Quest/Client/Q488ClientConfig')
local BarNpcData=q488Cfg.BarNpcData
local NpcData=q488Cfg.NpcData
local LisaData=q488Cfg.LisaData
local PaimonData=q488Cfg.PaimonData
-- Generated
function Quest488:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["48800"] = self.OnSubStart48800
	self.subStartHandlers["48801"] = self.OnSubStart48801
	self.subStartHandlers["48802"] = self.OnSubStart48802
	self.subStartHandlers["48803"] = self.OnSubStart48803
	self.subStartHandlers["48804"] = self.OnSubStart48804
end

function Quest488:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["48800"] = self.OnSubFinish48800
	self.subFinishHandlers["48801"] = self.OnSubFinish48801
	self.subFinishHandlers["48802"] = self.OnSubFinish48802
	self.subFinishHandlers["48803"] = self.OnSubFinish48803
	self.subFinishHandlers["48804"] = self.OnSubFinish48804
end

function Quest488:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["48800"] = self.OnSubFailed48800
	self.subFailedHandlers["48801"] = self.OnSubFailed48801
	self.subFailedHandlers["48802"] = self.OnSubFailed48802
	self.subFailedHandlers["48803"] = self.OnSubFailed48803
	self.subFailedHandlers["48804"] = self.OnSubFailed48804

end

---sub start & finish 内调用的函数
function Quest488:PaimonVanish()
	print("paimon vanish")
	local paimon = self:GetQuestNpcActor(PaimonData.Alias)
	paimon:AirModeOff()
	--paimon:VanishKeep()
	if paimon ~= nil then
		paimon:DestroyWithDisappear(false)
	end
end

function Quest488:DestroyNpc()
	local quest = actorMgr:GetActor(q488Cfg.ActorAlias)
	local npc = quest:GetQuestNpcActor(BarNpcData.Alias)
    npc:Destroy(false)
end

function Quest488:DestroyLisa()
	local quest = actorMgr:GetActor(q488Cfg.ActorAlias)
	local lisa = quest:GetQuestNpcActor(LisaData.Alias)
    lisa:Destroy(false)
end

function Quest488:OnSubStart48800(quest)
	--actorMgr:CreateActorWithPos(BarNpcData.Alias, BarNpcData.Script, BarNpcData.ID, 0, BarNpcData.NPCPos0, BarNpcData.NPCDir0, true, true, 3)
	--actorMgr:CreateActorWithPos(LisaData.Alias, LisaData.Script, LisaData.ID, 0, LisaData.bornPos, LisaData.bornDir, true, true, 3)
	self:CreateQuestNpc(quest, BarNpcData.ID)
	self:CreateQuestNpc(quest, LisaData.ID)
end

function Quest488:OnSubFinish48800(quest)
    print("48801 Finish : Story")
	self:PaimonVanish()
	--local lisa = actorMgr:GetActor(LisaData.Alias)
	local lisa = self:GetQuestNpcActor(LisaData.Alias)
    lisa:EnableInteraction(false)
    lisa:WalkToTask(LisaData.bornPos1,
    function(actor, task)
		actor:ClearFollowTask()
        actor:EnableInteraction(true)
        actor:PerformDither(false,1,self.DestroyLisa)
	end
	)
	--local bar = actorMgr:GetActor(BarNpcData.Alias)
	local bar = self:GetQuestNpcActor(BarNpcData.Alias)
    bar:EnableInteraction(false)
    bar:WalkToTask(BarNpcData.NPCPos1,
    function(actor, task)
		actor:ClearFollowTask()
        actor:EnableInteraction(true)
        actor:PerformDither(false,1,self.DestroyNpc)
	end
    )
end

--@region sub start & finish handlers
---按流程触发顺序
function Quest488:OnSubStart48801(quest)
	--actorMgr:CreateActorWithPos(NpcData.Alias, NpcData.Script, NpcData.ID, 0, NpcData.NPCPos1, NpcData.NPCDir1, true, true, 3)
	self:CreateQuestNpc(quest, NpcData.ID)
end

function Quest488:OnSubFinish48801(quest)
    print("48801 Finish : Story")
	self:PaimonVanish()
	--local npc = actorMgr:GetActor(NpcData.Alias)
	local npc = self:GetQuestNpcActor(NpcData.Alias)
	--npc:PerformDither(false,1,npc.HideSelf)
end

function Quest488:OnSubFinish48802(quest)
	print("48802 Finish : Creat Paimon")
end

function Quest488:OnSubFailed48802(quest)
	
	
end

function Quest488:OnSubStart48803(quest)
	--actorMgr:CreateActorWithPos(NpcData.Alias, NpcData.Script, NpcData.ID, 0, NpcData.NPCPos4, NpcData.NPCDir4, true, true, 3)
	self:CreateQuestNpc(quest, NpcData.ID)
	--local npc = actorMgr:GetActor(NpcData.Alias)
	local npc = self:GetQuestNpcActor(NpcData.Alias)
	npc:WalkToTask(NpcData.NPCPos5,
    function(actor, task)
        actor:TurnTo(NpcData.NPCDir5)
        --actor:PerformDither(false,1,actor.HideSelf)
	end
	,self.Standby
	)
end

function Quest488:OnSubFinish48803(quest)
	self:ShowBlackScreen(0.5, 1, 0.5)
	print("48803 Finish : Paimon Vanish")	
	self:ActionSafeCall(		
		function( )
			--self:ShowBlackScreen(0.5, 1, 0.5)
			--local npc = actorMgr:GetActor(NpcData.Alias)
			local npc = self:GetQuestNpcActor(NpcData.Alias)
			if npc ~= nil then
				npc:Destroy(false)
			end
		end		
	)
	
    -- npc:EnableInteraction(false)
    -- npc:WalkToTask(NpcData.NPCPos3,
    -- function(actor, task)
    --     actor:EnableInteraction(true)
    --     actor:PerformDither(false,1,actor.HideSelf)
	-- end
	-- )
end

function Quest488:finish48804()
	local quest = actorMgr:GetActor(q488Cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuestID(false, 48804)
	end
end


function Quest488:OnSubStart48804(quest)
	self:CallDelay(3, function()
		self:TransmitPlayer(3, sceneData:GetDummyPoint(3,"Q48801Player").pos,sceneData:GetDummyPoint(3,"Q48801Player").rot,nil,nil,self.finish48804)
	end )
end

--@endregion

function Quest488:Start()
end

function Quest488:OnDestroy()
end

return Quest488