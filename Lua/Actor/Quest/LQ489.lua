require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest489 = class("Quest489", questActorProxy)

Quest489.defaultAlias = "Quest489"

local q489Cfg = require('Quest/Client/Q489ClientConfig')
local PaimonData=q489Cfg.PaimonData
local AmborData=q489Cfg.AmborData

-- Generated
function Quest489:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["48901"] = self.OnSubStart48901
	self.subStartHandlers["48902"] = self.OnSubStart48902
	self.subStartHandlers["48903"] = self.OnSubStart48903
	self.subStartHandlers["48904"] = self.OnSubStart48904
	self.subStartHandlers["48905"] = self.OnSubStart48905
	self.subStartHandlers["48906"] = self.OnSubStart48906
	self.subStartHandlers["48907"] = self.OnSubStart48907
	self.subStartHandlers["48908"] = self.OnSubStart48908
	self.subStartHandlers["48909"] = self.OnSubStart48909
	self.subStartHandlers["48910"] = self.OnSubStart48910
	self.subStartHandlers["48911"] = self.OnSubStart48911
	self.subStartHandlers["48912"] = self.OnSubStart48912
	self.subStartHandlers["48913"] = self.OnSubStart48913
end

function Quest489:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["48901"] = self.OnSubFinish48901
	self.subFinishHandlers["48902"] = self.OnSubFinish48902
	self.subFinishHandlers["48903"] = self.OnSubFinish48903
	self.subFinishHandlers["48904"] = self.OnSubFinish48904
	self.subFinishHandlers["48905"] = self.OnSubFinish48905
	self.subFinishHandlers["48906"] = self.OnSubFinish48906
	self.subFinishHandlers["48907"] = self.OnSubFinish48907
	self.subFinishHandlers["48908"] = self.OnSubFinish48908
	self.subFinishHandlers["48909"] = self.OnSubFinish48909
	self.subFinishHandlers["48910"] = self.OnSubFinish48910
	self.subFinishHandlers["48911"] = self.OnSubFinish48911
	self.subFinishHandlers["48912"] = self.OnSubFinish48912
	self.subFinishHandlers["48913"] = self.OnSubFinish48913
end

---sub start & finish 内调用的函数
function Quest489:PaimonVanish()
	print("paimon vanish")
	local paimon = self:GetQuestNpcActor(PaimonData.Alias)
	paimon:AirModeOff()
	--paimon:VanishKeep()
	if paimon ~= nil then
		paimon:DestroyWithDisappear(false)
	end
end

--@region sub start & finish handlers
---按流程触发顺序
function Quest489:OnSubStart48901(quest)
	print("paimon vanish")
	--actorMgr:CreateActorWithPos(AmborData.Alias, AmborData.Script, AmborData.ID, 0, AmborData.Pos, AmborData.Dir, true, false,3)
	self:CreateQuestNpc(quest, AmborData.ID)
	self:PaimonVanish()
end

function Quest489:OnSubFinish48901(quest)
    print("48901 Finish : Story")
	self:PaimonVanish()
	--local amber = actorMgr:GetActor(AmborData.Alias)
	local amber = self:GetQuestNpcActor(AmborData.Alias)
    amber:EnableInteraction(false)
    amber:WalkToTask(AmborData.Pos2,
    function(actor, task)
		actor:ClearFollowTask()
        actor:EnableInteraction(true)
        actor:PerformDither(false,1,actor.HideSelf)
	end
    )
end

function Quest489:DestroySelf(actor)
    actor:Destroy(false)
end

function Quest489:OnSubFinish48902(quest)
	print("48902 Finish : Creat Paimon")
	self:PaimonVanish()
end

function Quest489:OnSubStart48903(quest)
	
end

function Quest489:OnSubFinish48903(quest)
	print("48903 Finish : Paimon Vanish")
	self:PaimonVanish()
end

function Quest489:OnSubFinish48904(quest)
	self:PaimonVanish()
end

function Quest489:OnSubStart48905(quest)
	--self:RequestInteractionForceAlias("Npc1419")
	self:RequestInteraction("Npc1419")
end

function Quest489:OnSubFinish48905(quest)
	self:PaimonVanish()
end

function Quest489:OnSubStart48906(quest)
	--self:RequestInteractionForceAlias("Npc1419")
	self:RequestInteraction("Npc1419")
end

function Quest489:OnSubFinish48906(quest)
	self:PaimonVanish()
end

function Quest489:OnSubStart48907(quest)
	--self:RequestInteractionForceAlias("Npc1419")
	self:RequestInteraction("Npc1419")
end

function Quest489:OnSubFinish48907(quest)
	--[[local quest = actorMgr:GetActor(q489Cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuestID(false, 48904)
	end
	]]
	self:PaimonVanish()

end

function Quest489:OnSubStart48908(quest)
	--self:RequestInteractionForceAlias("Npc1419")
	self:RequestInteraction("Npc1419")
end

function Quest489:OnSubFinish48908(quest)	
	self:PaimonVanish()
end

function Quest489:OnSubStart48909(quest)
	--self:RequestInteractionForceAlias("Npc1419")
	self:RequestInteraction("Npc1419")
end

function Quest489:OnSubFinish48909(quest)
	self:PaimonVanish()
end

function Quest489:OnSubFinish48910(quest)
	self:PaimonVanish()
end
function Quest489:OnSubFinish48911(quest)
	self:PaimonVanish()
end


function Quest489:Start()
end

function Quest489:OnDestroy()
end

return Quest489