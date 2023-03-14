require('Actor/ActorCommon')
local npcActorProxy = require('Actor/Npc/NpcActorProxy')

local SneakAI = class("SneakAI", npcActorProxy)

SneakAI.defaultAlias = "SneakAI"
SneakAI.PatrolPosNum = 0
SneakAI.PatrolPos = nil
SneakAI.PatrolDir = nil
SneakAI.PatrolNext = 1

local q12001Cfg = require('Quest/Client/Q12001ClientConfig')
local q375Cfg = require('Quest/Client/Q375ClientConfig')
--local q415Cfg = require('Quest/Client/Q415ClientConfig')



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
    self:CallDelay(4, self.StartPatrol)
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
    self:NarratorOnlyTask(q12001Cfg.AwareReminder)
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
    self:NarratorOnlyTask(q12001Cfg.DiscoverReminder)
    self:DoFreeStyle(2)
    local quest = actorMgr:GetActor(q12001Cfg.ActorAlias)
    if quest ~= nil then
        print("Sneak Failed OOOMG")
        quest:FinishQuest(true, nil)           
    end
    local targetPos = self:GetPos()
    self:EnterSceneLookCamera(targetPos, 0, 2, true)
end

function SneakAI:Start() 
    self:ThreatTask(self.Discover, self.Aware, self.ReturnToPatrol, self.OnLure)  
    self:StartPatrol()
end

return SneakAI