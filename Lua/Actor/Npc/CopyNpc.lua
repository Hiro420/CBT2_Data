require("Actor/ActorCommon")
local NpcActorProxy = require('Actor/Npc/NpcActorProxy')
local NpcEventType = require("Actor/Npc/NPCEventType")
local NpcModeType = require("Actor/Npc/NpcMode/NpcModeType")
--local BaseDailyNpc = require("Actor/Npc/BaseDailyNpc")
local NpcUtil = require('Actor/Npc/NPCUtil')
--local CopyNpc = class("CopyNpc", BaseDailyNpc)
local CopyNpc = {}

--读取Config信息
local NpcConfigCommon = require("Actor/Npc/Config/NpcConfigCommon")
local PatternData = NpcConfigCommon.VoicePattern
local TalkModeData = NpcConfigCommon.TalkMode

local NpcEventType = NpcEventType.DailyNpcEventType
--动作状态，0为常规，1为正在动作
CopyNpc.OnAction = 0

--构建函数
function CopyNpc:Start()
    local id = self:GetNpcConfigId()
    local targetID=math.modf(id/100)
    self:NotifyTo("Npc"..tostring(targetID), NpcUtil.NpcEventType.HIDESELF, true)
    --self:StartDaily()
    --调用父类方法
    --self.__super:Start()
end

function CopyNpc:OnDestroy()
    local id = self:GetNpcConfigId()
    local targetID=math.modf(id/100)
    self:NotifyTo("Npc"..tostring(targetID), NpcUtil.NpcEventType.STARTDAILY, true)
    --self:StartDaily()
    --调用父类方法
    --self.__super:Start()
end

--actor创生后调用的注册函数
function CopyNpc:Register()

end


function CopyNpc:InvokeOnResetFreeStyle(freeStyleType)
    if freeStyleType == 9011 or freeStyleType == 9012 then
        self:RecoverFromFreeStyle()
    end
end

function CopyNpc:InvokeOnFinalTalkFinish()
    print("DailyNpc InvokeOnFinalTalkFinish")
    self:RecoverFreestyle()
end

function CopyNpc:RecoverFromFreeStyle()
    self:Recover()
end

function CopyNpc:RecoverFromCollisionEnter()
    self:Recover()
end

function CopyNpc:RecoverFreestyle()
    self.OnAction = 0
    self:Standby()
    self:DoFreeStateTrigger()
end

--恢复行为，建议重载
function CopyNpc:Recover()

end

--收到事件消息回调
function CopyNpc:OnEvent(evt)
    
end

--碰撞回调

--[[
    @desc: 
    author:{author}
    time:2019-10-10 19:44:29
    --@targetInfo: 
    @return:
]]
function CopyNpc:OnCollisionEnter(targetInfo)
    if self.OnAction == 1 then
        return
    end
    if targetInfo.isSprint or targetInfo.isRun then
        if targetInfo.isFromBack then
            self.OnAction = 1
            local avatarPos = actorUtils.GetAvatarPos()
            local selfPos = self:GetPos()
            local TurnDir = {x = selfPos.x - avatarPos.x, y = selfPos.y, -avatarPos.y, z = selfPos.z - avatarPos.z}
            self:Standby()
            self:TurnTo(TurnDir)
            self:DoFreeStyleTask(9010, true, self.RecoverFromCollisionEnter)
        else
            self.OnAction = 1
            local avatarPos = actorUtils.GetAvatarPos()
            local selfPos = self:GetPos()
            local TurnDir = {x = avatarPos.x - selfPos.x, y = avatarPos.y - selfPos.y, z = avatarPos.z - selfPos.z}
            self:Standby()
            self:TurnTo(TurnDir)
            self:DoFreeStyleTask(9020, true, self.RecoverFromCollisionEnter)
        end
    end
end

return CopyNpc
