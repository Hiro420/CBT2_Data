require("Actor/ActorCommon")
local NpcEventType = require("Actor/Npc/NPCEventType")
local NpcModeType = require("Actor/Npc/NpcMode/NpcModeType")
local BaseDailyNpc = require("Actor/Npc/BaseDailyNpc")
local DailyNpc = class("DailyNpc", BaseDailyNpc)

--读取Config信息
local NpcConfigCommon = require("Actor/Npc/Config/NpcConfigCommon")
local PatternData = NpcConfigCommon.VoicePattern
local TalkModeData = NpcConfigCommon.TalkMode

local NpcEventType = NpcEventType.DailyNpcEventType
--动作状态，0为常规，1为正在动作
DailyNpc.OnAction = 0
DailyNpc.BubbleData = nil
--定义NPC配置
DailyNpc.ConfigData = nil
--talk占用状态
--talk间隔
DailyNpc.TalkInterval = {5, 8}
--Bubble类型，SOLO为单人对话，TALK为多人对话
DailyNpc.Pattern = PatternData.SOLO
--Bubble类型，BUBBLE为气泡，VOICE为语音，BOTH为都播，NO为都不播
DailyNpc.TalkMode = TalkModeData.BOTH
--Bubble持续时间，默认为5
DailyNpc.BubbleTime = 5
--Bubble间隔（最大），默认为7
DailyNpc.BubbleIntervalMin = 7
--Bubble间隔（最大），默认为10
DailyNpc.BubbleIntervalMax = 10

--[[
function DailyNpc:PreGetAlias()
	--local NpcAlias = DummyPointData.Npc .. '_' .. tostring(self.dataIndex)
    --return NpcAlias
    local NpcAlias =self:GetNpcAlias()
    return NpcAlias
end]]

--初始化数据
DailyNpc.BubblePath = nil
DailyNpc.ConfigPath = nil
DailyNpc.IsPreparingData = false

function DailyNpc:PrepareNpcDataAndStart()
    if self.IsPreparingData == true then
        return
    end

    self.ID = self:GetNpcConfigId()
    local idStr = tostring(self.ID)
    self.BubblePath = "Actor/Npc/Config/NpcBubble/Bubble" .. idStr
    self.ConfigPath = "Actor/Npc/Config/NpcConfig/Config" .. idStr
    self.IsPreparingData = true
    actorUtils.PrepareData(self.OnPrepareNpcData, self, self.BubblePath, self.ConfigPath)
end

function DailyNpc:OnPrepareNpcData()
    self.IsPreparingData = false
    if self.uActor == nil then
        return
    end
    self:DataInit()
    self:StartDaily()
    self.uActor:HandleExternalRecover()
end

function DailyNpc:DataInit()
	self.ID = self:GetNpcConfigId()
	local tempBubbleData=require(self.BubblePath)
	local tempConfigData=require(self.ConfigPath)


    --print("tempBubbleData ".. tostring(tempBubbleData))
    --print("tempConfigData ".. tostring(tempConfigData))
    if tempBubbleData~=false and tempBubbleData~=true then
        --print("Init bubble".. tostring(self.alias))
        self.BubbleData = tempBubbleData.Data
		self:InitBubble()
	end
    if tempConfigData~=false and tempConfigData~=true then
		self.ConfigData = tempConfigData.Data
	end    
    self.BubblePath = nil
    self.ConfigPath = nil
end

--构建函数
function DailyNpc:Start()
    self:PrepareNpcDataAndStart()
end

--初始化bubble相关数据
function DailyNpc:InitBubble()
    self.IsInitiator = self.BubbleData.IsInitiator
    if self.BubbleData.Pattern ~= nil then
        self.Pattern = self.BubbleData.Pattern
    end
    if self.BubbleData.TalkMode ~= nil then
        self.TalkMode = self.BubbleData.TalkMode
    end
    if self.BubbleData.BubbleTime ~= nil then
        self.BubbleTime = self.BubbleData.BubbleTime
    end
    if self.BubbleData.BubbleInterval ~= nil then
        self.BubbleIntervalMin = self.BubbleData.BubbleInterval[1]
        self.BubbleIntervalMax = self.BubbleData.BubbleInterval[2]
    end
    if self.BubbleData.TalkInterval ~= nil then
        self.TalkInterval = self.BubbleData.TalkInterval
    end
    if self.BubbleData.IsInitiator ~= nil then
        self.IsInitiator = self.BubbleData.IsInitiator
    end
end

--actor创生后调用的注册函数
function DailyNpc:Register()
    self:RegisterMode(NpcModeType.MODE_HIDE)
    self:RegisterMode(NpcModeType.MODE_BANDAILY)
end

function DailyNpc:InvokeOnFinalTalkFinish()
end

function DailyNpc:InvokeOnResetFreeStyle(freeStyleType)
    self:Recover()
end

function DailyNpc:RecoverFromCollisionEnter()
   --no need to recover , the recover will be called by InvokeOnResetFreeStyle when the freestyle animation finished
   --self:Recover()
end

--恢复行为，建议重载
function DailyNpc:Recover()
    self.OnAction = 0
    self:Standby()
    self:DoFreeStateTrigger()
end

--收到事件消息回调
function DailyNpc:OnEvent(evt)
    if evt.evtType == NpcEventType.STARTDAILY then
        self:StartDaily()
    elseif evt.evtType == NpcEventType.HIDESELF then
        self:SwitchMode(NpcModeType.MODE_HIDE)
    elseif evt.evtType == NpcEventType.BANDAILY then
        self:SwitchMode(NpcModeType.MODE_BANDAILY)
    end
end

function DailyNpc:ModeHideSelf()
    self:SwitchMode(NpcModeType.MODE_HIDE)
end

function DailyNpc:RecoverDaily()
    self:StartDaily()
end

function DailyNpc:ModeBanDaily()
    self:SwitchMode(NpcModeType.MODE_BANDAILY)
end

--碰撞回调
function DailyNpc:OnCollisionEnter(targetInfo)    
    if self.OnAction == 1 then
        return
    end
    if targetInfo.isSprint or targetInfo.isRun then
        if targetInfo.isFromBack then
            --
            --[[self:CallDelay(0, 
			function(self)
				self:DoFreeStyleTask(9010, true, self.RecoverFromCollisionEnter)
			end)]]
            --self:AddPriorityInter(InterTimingType.BTN, NoReplyInter)
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

--开启bubble的入口
function DailyNpc:StartBubble()
    --DataInit()    
    math.randomseed(os.time())
    local starttime = math.random(10,20)
	if self.BubbleData ==nil then
		return
    end
    --print("StartBubble " .. tostring(self.alias) .. tostring(self.bubble))
    --print("Pattern=" .. tostring(self.Pattern))
    local data = self.BubbleData
    --print("Pattern=" .. tostring(self.Pattern))
    --开启solo bubble
    if self.Pattern == PatternData.SOLO then
        --开启对话 bubble
        self:CallDelay(starttime, self.ShowBubble)
        --self:ShowBubble()
    elseif self.Pattern == PatternData.TALK then
        self:CallDelay(starttime, self.ShowTalk)
        --self:ShowTalk()
    end
end

function DailyNpc:ShowTalk()
    if self.BubbleData.IsInitiator == 1 then
        if self.BubbleData.TalkData ~= nil then
            math.randomseed(os.time())
            self.index = math.random(1, #self.BubbleData.TalkData)
            self.TalkData = self.BubbleData.TalkData[self.index]
            self.DialogData = self.TalkData.DialogData
            if self.TalkData.TalkInterval ~= nil then
                self.TalkInterval = self.TalkData.TalkInterval
            end
            if self.TalkData.TargetList ~= nil then
                self.TargetList = self.TalkData.TargetList
            end
            --检测目标对话占用状态，若都未被占用才继续，并设置目标状态为占用  todo
            self.Dialog = self.DialogData[1]
            self:Talk(self.DialogData[1])
        end
    end
end

function DailyNpc:Talk(Dialog)
    local mode = self.TalkMode
    if Dialog.Mode ~= nil then
        mode = Dialog.Mode
    end
    if mode == TalkModeData.BOTH then
        --print("show both bubble and voice!!!!!!!!!" .. " " .. Dialog.Id .. " " .. self.ID)
        self:TriggerNpcSpeechBubble(self.ID, Dialog.Id)
        self:SayDialogAudio(Dialog.Id)
    elseif mode == TalkModeData.BUBBLE then
        --print("show bubble!!!!!!!!!" .. " " .. Dialog.Id .. " " .. self.ID)
        self:TriggerNpcSpeechBubble(self.ID, Dialog.Id)
    elseif mode == TalkModeData.VOICE then
        --print("show voice!!!!!!!!!" .. " " .. Dialog.Id .. " " .. self.ID)
        self:SayDialogAudio(Dialog.Id)
    end
    self:TalkTime(Dialog)
end

function DailyNpc:TalkTime(Dialog)
    local time = self.BubbleTime
    if Dialog.BubbleTime ~= nil then
        time = Dialog.BubbleTime
    end
    self.Dialog = Dialog
    self:CallDelay(time, self.CloseTalk)
end

function DailyNpc:CloseTalk()
    local id = self.ID
    self:ClearNpcSpeechBubble(id)
    self:SendMessage(self.Dialog)
end

function DailyNpc:SendMessage(Dialog)
    if Dialog.TargetIndex == 0 then
        self:EndTalk()
        --通知所有目标结束对话占用状态并调用EndTalk  todo
        if self.TargetList ~= nil then
            for i = 1, #self.TargetList, 1 do
                local targetActor = actorMgr:GetActor(self.TargetList[i])
                if targetActor ~= nil then
                    targetActor:EndTalk()
                end
            end
        end
        return
    end
    local target = Dialog.Target
    local targetActor = actorMgr:GetActor(target)
    local IntervalMin = self.BubbleIntervalMin
    local IntervalMax = self.BubbleIntervalMax
    if Dialog.BubbleInterval ~= nil then
        IntervalMin = Dialog.BubbleInterval[1]
        IntervalMax = Dialog.BubbleInterval[2]
    end
    self:CallDelay(
        math.random(IntervalMin, IntervalMax),
		function()
			if targetActor ~= nil then
				targetActor:ReceiveTalk(self.index, Dialog.TargetIndex)
			end            
        end
    )
end

function DailyNpc:EndTalk()
    if self.IsInitiator == 1 then
        self:CallDelay(
            math.random(self.TalkInterval[1], self.TalkInterval[2]),
            function(self)
                self:ShowTalk()
            end
        )
    end
end

function DailyNpc:ReceiveTalk(talkIndex, dialogIndex)
    local dialog = self.BubbleData.TalkData[talkIndex].DialogData[dialogIndex]
    self.index = talkIndex
    self.TalkData = self.BubbleData.TalkData[self.index]
    self.DialogData = self.TalkData.DialogData
    if self.TalkData.TalkInterval ~= nil then
        self.TalkInterval = self.TalkData.TalkInterval
    end
    if self.TalkData.TargetList ~= nil then
        self.TargetList = self.TalkData.TargetList
    end

    self:Talk(dialog)
end

function DailyNpc:ShowBubble()
	if self.BubbleData ==nil then
		return
	end
    self.DialogData = self.BubbleData.DialogData
    if self.DialogData ~= nil then
        math.randomseed(tostring(os.time()):reverse():sub(1, 6))
        self.index = math.random(1, #self.DialogData)
        local dialog = self.DialogData[self.index]
        local mode = self.TalkMode
        if self.DialogData[self.index].Mode ~= nil then
            mode = self.DialogData[self.index].Mode
        end
        if mode == TalkModeData.BOTH then
            --print("show both bubble and voice!!!!!!!!!" .. " " .. dialog.Id .. " " .. self.ID)
            self:TriggerNpcSpeechBubble(self.ID, dialog.Id)
            self:SayDialogAudio(dialog.Id)
        elseif mode == TalkModeData.BUBBLE then
            --print("show bubble!!!!!!!!!" .. " " .. dialog.Id .. " " .. self.ID)
            self:TriggerNpcSpeechBubble(self.ID, dialog.Id)
        elseif mode == TalkModeData.VOICE then
            --print("show voice!!!!!!!!!" .. " " .. dialog.Id .. " " .. self.ID)
            self:SayDialogAudio(dialog.Id)
        end
        self:BubbleTimer()
    end
end

function DailyNpc:BubbleTimer()
    local time = self.BubbleTime
    if self.DialogData[self.index].BubbleTime ~= nil then
        time = self.DialogData[self.index].BubbleTime
    end
    self:CallDelay(time, self.CloseBubble)
end

function DailyNpc:CloseBubble()
    local id = self.ID
    self:ClearNpcSpeechBubble(id)
    self:BubbleGap()
end

function DailyNpc:BubbleGap()
    local IntervalMin = self.BubbleIntervalMin
    local IntervalMax = self.BubbleIntervalMax
    if self.DialogData[self.index].BubbleInterval ~= nil then
        IntervalMin = self.DialogData[self.index].BubbleInterval[1]
        IntervalMax = self.DialogData[self.index].BubbleInterval[2]
    end
    self:CallDelay(math.random(IntervalMin, IntervalMax), self.ShowBubble)
end

return DailyNpc
