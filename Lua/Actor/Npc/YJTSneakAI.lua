require('Actor/ActorCommon')
local npcActorProxy = require('Actor/Npc/NpcActorProxy')

local SneakAI = class("SneakAI", npcActorProxy)

SneakAI.defaultAlias = "SneakAI"
SneakAI.PatrolPosNum = 0
SneakAI.PatrolPos = nil
SneakAI.PatrolDir = nil
SneakAI.PatrolNext = 1
SneakAI.AIDict = 1


local BubbleDict = 
{
    {10061,10001001},
    {10062,10001002},
    {10063,10001003},
    {10064,10001004},
    -- {10065,10001005},
    -- {10066,10001006},
    {10067,10001007},
    {10068,10001008},
    -- {10069,10001009},
    {10070,10001010},
    {10071,10001011},
    {10072,10001012},
    {10073,10001013},
    {10074,10001014},
    -- {10075,10001015},
    {10076,10001016},
    {10077,10001017},
}

local q1000Cfg = require('Quest/Client/Q1000ClientConfig')
local q375Cfg = require('Quest/Client/Q375ClientConfig')


function SneakAI:ShowBubble()
	self:TriggerNpcSpeechBubble(BubbleDict[SneakAI.AIDict][1], BubbleDict[SneakAI.AIDict][2])
	self:BubbleTime()
end

function SneakAI:BubbleTime()
	self:CallDelay(5, self.CloseBubble)
end

function SneakAI:CloseBubble()
	self:ClearNpcSpeechBubble(BubbleDict[SneakAI.AIDict][1])
	self:BubbleGap()
end

function SneakAI:BubbleGap()
	self:CallDelay(5, self.ShowBubble)
end



function SneakAI:StartPatrol()
    if self.uActor == nil then
        return
    end

    if self.PatrolPosNum == 1 then
        self:Standby()
        self:TurnTo(M.Euler2DirXZ(self.PatrolDir[1]))
    elseif self.PatrolPosNum > 1 then
        self.PatrolNext = self.PatrolNext + 1
        if self.PatrolNext > self.PatrolPosNum then
            self.PatrolNext = 1
        end
        -- print("****************")
        -- print(self.PatrolNext)
        -- print(self.PatrolPos[self.PatrolNext])
        self:WalkToTask(self.PatrolPos[self.PatrolNext], self.Behave)
    end
end

function SneakAI:Behave()
    if self.uActor == nil then
        return
    end

    self:Standby()
    local selfPos = self:GetPos()
    -- print(selfPos)
    self:CallDelay(3, self.StartPatrol)
end

function SneakAI:ReturnToPatrol()
    -- print("********************ReturnToPatrol")
    local effectPos = self:GetPos()
    effectPos.y = effectPos.y + 1
    -- self:PlayEffect("Eff_FlyRace_Goal_Marker_AS", effectPos)
    -- if self.PatrolPosNum == 1 then
    --     self:Standby()
    --     self:TurnTo(M.Euler2DirXZ(self.PatrolDir[1]))
    -- end
    self:DoFreeStateTrigger()
    self:WalkToTask(self.PatrolPos[self.PatrolNext], self.StartPatrol)
end

function SneakAI:Aware()
    -- print("********************Aware")
    self:ClearFollowTask()
    self:Standby()
    local effectPos = self:GetPos()
    effectPos.y = effectPos.y + 1
    -- self:PlayEffect("Eff_FlyRace_Marker_Active_AS", effectPos)
    self:NarratorOnlyTask(q1000Cfg.AwareReminder)
    local avatarPos = actorUtils.GetAvatarPos()
    local selfPos = self:GetPos()
    local TurnDir = { x = avatarPos.x-selfPos.x, y = avatarPos.y-selfPos.y, z = avatarPos.z-selfPos.z} 
    -- print("TurnDir")
    -- print(TurnDir.x)
    self:TurnTo(TurnDir)
    self:DoFreeStyle(1)
end

function SneakAI:CheckLure()
    print("********************CheckLure")
    self:Standby()
    self:DoFreeStyle(3)
    self:CallDelay(6, self.ReturnToPatrol)
end

function SneakAI:OnLure(task, info)
    if info.hasSound == true then
        print("********************MoveToLure")
        local selfPos = self:GetPos()
        local TurnDir = { x = info.soundPos.x-selfPos.x, y = info.soundPos.y-selfPos.y, z = info.soundPos.z-selfPos.z} 
        print("TurnDir")
        print(TurnDir.x)
        self:TurnTo(TurnDir)
        self:DoFreeStyle(0)
        self:CallDelay(3,
            function(self, task)
                self:Standby()
                self:DoFreeStateTrigger()
                self:WalkToTask(info.soundPos, self.CheckLure)
            end
        )
    end
end

function SneakAI:Discover()
    print("********************Discover")
    self:Standby()
    self:DoFreeStateTrigger()
    self:NarratorOnlyTask(q1000Cfg.DiscoverReminder)
    self:DoFreeStyle(2)
    local quest = actorMgr:GetActor(q1000Cfg.ActorAlias)
    if quest ~= nil then
        print("Sneak Failed OOOMG")
        quest:FinishQuestID(true, 100010)           
    end
    local targetPos = self:GetPos()
    self:EnterSceneLookCamera(targetPos, 0, 2, true,true)
    globalActor:EnablePlayerInput(false)
    self:CallDelay(2,
        function()
            globalActor:EnablePlayerInput(true)
        end
    )
end

function SneakAI:Start() 
    self:ThreatTask(self.Discover, self.Aware, self.ReturnToPatrol, self.OnLure)  
    self:StartPatrol()
end

return SneakAI