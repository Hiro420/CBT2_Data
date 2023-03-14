require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest318 = class("Quest318", questActorProxy)

Quest318.defaultAlias = "Quest318"

local q318Cfg = require('Quest/Client/Q318ClientConfig')
local subIDs = q318Cfg.SubIDs
local mainquestid = 318

local DailyNpcManager = require('Actor/DailyNPCManager')
local intee =
    {
        Alias = "Npc10092",
        Script = "Actor/Npc/TempNPC",
        ID = 10092,
    }

-- Generated
function Quest318:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["31801"] = self.OnSubStart31801
    self.subStartHandlers["31802"] = self.OnSubStart31802

end

function Quest318:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["31801"] = self.OnSubFinish31801
    self.subFinishHandlers["31802"] = self.OnSubFinish31802

end

-- local param begin
-- local param end

-- local method begin
--@region sub start handlers

function Quest318:OnSubStart31801(quest)
    print("31801 start:...")

end

function Quest318:OnSubStart31802(quest)
    print("31802 start:...")
	local inteePos = actorUtils.GetAvatarPos()
    local inteeVector = actorUtils.GetAvatarForward()
    
    local distance = 1
    inteePos.y = inteePos.y - 1
	inteePos.x = inteePos.x + inteeVector.x * distance
    inteePos.z = inteePos.z + inteeVector.z * distance
    self:CreateQuestNpcByIdWithPos(31802,intee.ID,0,inteePos, M.Dir2Euler(inteeVector))

    -- actorMgr:CreateActorWithPos(intee.Alias, intee.Script, intee.ID, 0, inteePos, M.Dir2Euler(inteeVector), true, false,3,true,0,31802)
    -- self:RequestInteraction(intee.Alias)
    self.uActor:AvatarPaimonAppear()
end

--@endregion

--@region sub finish handlers
function Quest318:OnSubFinish31801(quest)
    print("OnFinished 31801")
end

function Quest318:OnSubFinish31802(quest)
    print("OnFinished 31802")
    self.uActor:AvatarPaimonDisappear(nil, false)
    -- local paimon = actorMgr:GetActor("Paimon318")
    -- if paimon ~= nil then
    --     paimon:DestroyWithDisappear(false)
    -- end
    local intee = self:GetQuestNpcActor(intee.Alias)
    if intee ~= nil then
        intee:Destroy(false)
    end
    self:ActionSafeCall(self.ShowTutorial)

end

function Quest318:ShowTutorial(quest)
    self:CallDelay(1, 
        function (self)
            self:ShowTutorialDialog(246)
        end)
end

--@endregion

function Quest318:Start()
end

function Quest318:OnDestroy()
end

return Quest318