require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')
local Quest410 = class("Quest410", questActorProxy)
Quest410.defaultAlias = "Quest410"

local this = nil
local super = nil
local uActor = nil
local questID = 0

function Quest410:OnPreInit()
	this = self
	super = self.__super
	questID = this.mainQuestID
	super:OnPreInit()
end
function Quest410:OnPostInit()
	uActor = self.uActor
	super:OnPostInit()
end

-- local config begin
local q410Cfg = require('Actor/Quest/Q410/Q410Config')
local QiuqiuData = q410Cfg.QiuqiuData
local SoldierData = q410Cfg.SoldierData
local subIDs = q410Cfg.SubIDs

-- local config end

function Quest410:CreateUActor(alias)
	local uActor = actorUtils.CreateActor(self, ActorType.QUEST_ACTOR, alias)
	uActor = actorUtils.CreateQuestActor(questID, uActor)
	return uActor
end

-- local param begin
-- local param end

-- local method begin
local function QiuqiuToSoldier(actor)
end

local function OnStart41001()
end

local function OnStart41002()
end

local function OnStart41004(quest)
end


-- local method end

function Quest410:OnMainStart(quest)
end

function Quest410:OnSubStart(quest)
end

function Quest410:OnSubFinished(quest)
end

function Quest410:OnMainFinished(quest)
end

function Quest410:Start()
end

function Quest410:OnDestroy()
end

return Quest410