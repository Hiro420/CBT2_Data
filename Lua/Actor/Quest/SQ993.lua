require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest993 = class("Quest993", questActorProxy)

Quest993.defaultAlias = "Quest993"

local q993Cfg = require('Quest/Client/Q993ClientConfig')
local subIDs = q993Cfg.SubIDs
local sneakAIData =
{
    q993Cfg.SneakAI1Data,
    q993Cfg.SneakAI2Data,
    q993Cfg.SneakAI3Data,
    q993Cfg.SneakAI4Data,
    q993Cfg.SneakAI5Data,
    q993Cfg.SneakAI6Data,
    q993Cfg.SneakAI7Data,
    q993Cfg.SneakAI8Data,
    q993Cfg.SneakAI9Data,
    q993Cfg.SneakAI10Data,
}

-- Generated
function Quest993:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["99301"] = self.OnSubStart99301
    self.subStartHandlers["99302"] = self.OnSubStart99302
    self.subStartHandlers["99303"] = self.OnSubStart99303
    self.subStartHandlers["99304"] = self.OnSubStart99304

end

function Quest993:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["99301"] = self.OnSubFinish99301        
    self.subFinishHandlers["99302"] = self.OnSubFinish99302
    self.subFinishHandlers["99303"] = self.OnSubFinish99303
    self.subFinishHandlers["99304"] = self.OnSubFinish99304
end

-- local param begin
-- local param end

-- local method begin
--@region sub start handlers

function Quest993:SneakAIPrepare()
    print("FailNum is", FailNum)
    sneakAIData =
        {
            q993Cfg.SneakAI1Data,
            q993Cfg.SneakAI2Data,
            q993Cfg.SneakAI3Data,
            q993Cfg.SneakAI4Data,
            q993Cfg.SneakAI5Data,
            q993Cfg.SneakAI6Data,
            q993Cfg.SneakAI7Data,
            q993Cfg.SneakAI8Data,
            q993Cfg.SneakAI9Data,
            q993Cfg.SneakAI10Data,

        } 
        q993Cfg.SneakAINum = 10
        print("SneakAINum is", q993Cfg.SneakAINum)


    for i=1, q993Cfg.SneakAINum do
        local SneakAI = actorMgr:CreateActorWithPos(sneakAIData[i].alias, sneakAIData[i].metaPath, sneakAIData[i].configID, sneakAIData[i].dataIndex, sneakAIData[i].bornPos, sneakAIData[i].bornDir, true, true, 1023)
        SneakAI.PatrolPosNum = sneakAIData[i].PatrolPosNum
        SneakAI.PatrolPos = sneakAIData[i].PatrolPos
        SneakAI.PatrolDir = sneakAIData[i].PatrolDir
        SneakAI.PatrolNext = 1
        -- SneakAI:Start()
        -- SneakAI:ThreatTask(SneakAI.Discover, SneakAI.Aware, SneakAI.ReturnToPatrol)
    end
    -- for i=1, #q993Cfg.TreasurePos do
        -- self:SpawnItem(q993Cfg.TreasureID, q993Cfg.TreasurePos[i], nil, "Treasure" .. tostring(i), 1005)
    -- end
end

function Quest993:SneakAIDestroy()
    sneakAIData =
    {
        q993Cfg.SneakAI1Data,
        q993Cfg.SneakAI2Data,
        q993Cfg.SneakAI3Data,
        q993Cfg.SneakAI4Data,
        q993Cfg.SneakAI5Data,
        q993Cfg.SneakAI6Data,
        q993Cfg.SneakAI7Data,
        q993Cfg.SneakAI8Data,
        q993Cfg.SneakAI9Data,
        q993Cfg.SneakAI10Data,

    } 
    q993Cfg.SneakAINum = 10
    for i=1, q993Cfg.SneakAINum do
        local SneakAItemp = actorMgr:GetActor(sneakAIData[i].alias)
        if SneakAItemp ~= nil then
            SneakAItemp:Destroy(false)
        end
    end

end

function Quest993:OnSubStart99301(quest)
    print("99301 start:...")
end

function Quest993:OnSubStart99302(quest)
    print("99302 start:...")
    self:SneakAIDestroy()
    self:CallDelay(2.5,self.SneakAIPrepare)

    self:EnterSneakMode(11)

end

function Quest993:OnSubStart99303(quest)
    print("99303 start:...")
    self:SneakAIDestroy()
    self:ExitSneakMode()
    self:TransmitPlayer(1023,sceneData:GetDummyPoint(1023,"Avatar_born").pos, sceneData:GetDummyPoint(1023,"Avatar_born").rot )
    local quest = actorMgr:GetActor(q993Cfg.ActorAlias)
    if quest ~= nil then
        quest:FinishQuest(false, nil)
    end 
end

function Quest993:OnSubStart99304(quest)
    print("99304 start:...")
    self:SneakAIDestroy()
    self:ExitSneakMode()
end


--@endregion

--@region sub finish handlers
function Quest993:OnSubFinish99301(quest)
    print("OnFinished 99301")
end

--@endregion

function Quest993:Start()
end

function Quest993:OnDestroy()
end

return Quest993