require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest428 = class("Quest428", questActorProxy)

Quest428.defaultAlias = "Quest428"

local q428Cfg = require('Quest/Client/Q428ClientConfig')
local subIDs = q428Cfg.SubIDs
local WindData = q428Cfg.WindData
local LowHFlag = false
local Flowi = 0


-- Generated
function Quest428:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["42801"] = self.OnSubStart42801
    self.subStartHandlers["42802"] = self.OnSubStart42802
    self.subStartHandlers["42803"] = self.OnSubStart42803
end

function Quest428:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["42801"] = self.OnSubFinish42801
	self.subFinishHandlers["42802"] = self.OnSubFinish42802
    self.subFinishHandlers["42803"] = self.OnSubFinish42803
end

-- local param begin
-- local param end

-- local method begin
--@region sub start handlers

function Quest428:OnSubStart42801(quest)
    print("42801 start:...")
end

function Quest428:OnSubStart42802(quest)
    print("42802 start:...")
    -- TODO: Do sth on sub quest 42802 start
end

function Quest428:OnSubStart42803(quest)
    print("42803 start:...")
    self:CheckHightOut()
end

function Quest428:CheckHight()
    print("check start:...")
    local AvatarPos = actorUtils.GetAvatarPos()
    if AvatarPos.y < 7 then
        LowHFlag = true
        local RiseDir = {x=0,y=0,z=0}
        local windpos = AvatarPos
        windpos.y = windpos.y - 10
        Flowi = Flowi + 1
        globalActor:SpawnGadget(WindData.WindID, windpos, M.Dir2Euler(RiseDir),"Flow" .. tostring(Flowi), 1016)
        globalActor:StartGuide("GuideDisableInput")
        self:CallDelay(2.1,self.DestroyFlow) 
        print("Low Low:...")
    else LowHFlag = false
        print("High High:...")
    end

    if LowHFlag == true then
        self:CallDelay(2.5,self.CheckHightOut)    
    else self:CallDelay(1,self.CheckHightOut)    
    end
end

function Quest428:CheckHightOut()
    self:CheckHight()
end

function Quest428:DestroyFlow()
    self:UnSpawn("Flow" .. tostring(Flowi))
end



function Quest428:AdvanceQuest()
    local quest = actorMgr:GetActor(q428Cfg.ActorAlias)
    if quest ~= nil then
        quest:FinishQuest(false, nil)
    end 
end

--@endregion

--@region sub finish handlers
function Quest428:OnSubFinish42801(quest)
    print("OnFinished 42801")
end

function Quest428:OnSubFinish42802(quest)
    print("OnFinished 42802")
end

function Quest428:OnSubFinish42803(quest)
    print("OnFinished 42803")
end


--@endregion

function Quest428:Start()
end

function Quest428:OnDestroy()
end

return Quest428