require('Actor/ActorCommon')
local npcActorProxy = require('Actor/Npc/NpcActorProxy')

local FindCat = class("FindCat", npcActorProxy)

FindCat.defaultAlias = "FindCat"
FindCat.PatrolPosNum = 0
FindCat.PatrolPos = nil
FindCat.PatrolDir = nil
FindCat.PatrolNext = 1

--local q424Cfg = require('Quest/Client/Q424ClientConfig')



function FindCat:Return()
    self:DoFreeStateTrigger()
end

function FindCat:Aware()
    print("********************Aware")
    self:ClearFollowTask()
    self:Standby()
    --self:NarratorOnlyTask(q424Cfg.AwareReminder)
    local avatarPos = actorUtils.GetAvatarPos()
    local selfPos = self:GetPos()
    local TurnDir = { x = avatarPos.x-selfPos.x, y = avatarPos.y-selfPos.y, z = avatarPos.z-selfPos.z} 
    self:TurnTo(TurnDir)
    self:DoFreeStyle(1)
end

function FindCat:CheckLure()
    print("********************CheckLure")
    self:Standby()
    --self:DoFreeStyle(3)
end

function FindCat:OnLure(task, info)
    print("********************OnLure")
    if info.hasSound == true then
        print("********************MoveToLure")
        local selfPos = self:GetPos()
        local TurnDir = { x = info.soundPos.x-selfPos.x, y = info.soundPos.y-selfPos.y, z = info.soundPos.z-selfPos.z}
        local itempos = { x = info.soundPos.x, y = info.soundPos.y+1, z = info.soundPos.z} 
        print("SpawnItem")
        --local quest = actorMgr:GetActor("487")
        --if quest ~= nil then
            --quest:SpawnDummy(info.soundPos)
        --end
        --self:SpawnItem(100064,itempos, nil,"dummy", 3,6)
        print("TurnDir")
        print(TurnDir.x)
        self:TurnTo(TurnDir)
        self:DoFreeStyle(0)
        self:CallDelay(1,
            function(self, task)
                self:Standby()
                self:DoFreeStateTrigger()
                self:WalkToTask(info.soundPos, self.CheckLure)
            end
        )
    end
end

function FindCat:Discover()
    print("********************Discover")
    self:Standby()
    self:DoFreeStateTrigger()
    --self:NarratorOnlyTask(q424Cfg.DiscoverReminder)
    self:DoFreeStyle(2)
    --local quest = actorMgr:GetActor(q424Cfg.ActorAlias)
    --if quest ~= nil then
        --print("Sneak Failed")
        --quest:FinishQuestID(true, 42403)            
    --end
    local SelfPos = self:GetPos()
    local TargetPos=actorUtils.GetAvatarPos()
    local lenth=6
    local v=self:VectorCal(SelfPos,TargetPos)
    local pos={x=v.x*lenth+SelfPos.x,y=v.y*lenth+SelfPos.y,z=v.z*lenth+SelfPos.z}
    self:CallDelay(1, self.DisAppear)
    self:RunToTask(pos, nil)
    --local RunToPos=
end

function FindCat:DisAppear()  
    self:PerformDither(false, 0.3,self.ChangePlace)
end

function FindCat:ChangePlace()
    local quest = actorMgr:GetActor("487")
        if quest ~= nil then
            quest:CatRun()
        end
    self:Destroy(false)    
end

function FindCat:VectorCal(A,B)
    local vector={x=A.x-B.x,y=A.y-B.y,z=A.z-B.z}
    return self:Normallize(vector)

end

function FindCat:Normallize(vector)
    local X=vector.x
    local Y=vector.y
    local Z=vector.z
    local v=math.sqrt(X*X+Y*Y+Z*Z)
    return {x=X/v,y=Y/v,z=Z/v}
end

function FindCat:Start()
    print("********************Start")
    self:ThreatTask(self.Discover, self.Aware, self.Return, self.OnLure)
end

return FindCat