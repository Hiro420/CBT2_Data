require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest11001 = class("Quest11001", questActorProxy)
Quest11001.defaultAlias = "Quest11001"
local DailyNpcManager = require('Actor/DailyNPCManager')

local q11001Cfg
local subIDs
local mainquestid = 11001
local paimonData
local xianglingData
local draffData
local brookData

function Quest11001:OnDataLoaded()
    q11001Cfg = self.clientData
    subIDs = q11001Cfg.SubIDs
    mainquestid = 11001
    paimonData = q11001Cfg.PaimonData
    xianglingData = q11001Cfg.XianglingData
    draffData = q11001Cfg.DraffData
    brookData = q11001Cfg.BrookData
end

-- Generated
function Quest11001:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["1100101"] = self.OnSubStart1100101
    self.subStartHandlers["1100102"] = self.OnSubStart1100102
    self.subStartHandlers["1100103"] = self.OnSubStart1100103
    self.subStartHandlers["1100104"] = self.OnSubStart1100104

end

function Quest11001:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["1100101"] = self.OnSubFinish1100101
    self.subFinishHandlers["1100102"] = self.OnSubFinish1100102
    self.subFinishHandlers["1100103"] = self.OnSubFinish1100103
    self.subFinishHandlers["1100104"] = self.OnSubFinish1100104

end

function Quest11001:PaimonDis()
    local paimon = self:GetQuestNpcActor(paimonData.Alias)
    if paimon ~= nil then
        paimon:DestroyWithDisappear(false)
    end
end
 
function Quest11001:PaimonDelay()
	self:PaimonDis()
end

function Quest11001:Finish03()
    print("hanshu  Fiiiiiiiiiiiiiiiiiniiiiiiiiiish 03")
    local quest = actorMgr:GetActor(q11001Cfg.ActorAlias)
    if quest ~= nil then
        print("Fiiiiiiiiiiiiiiiiiniiiiiiiiiish 03")
		quest:FinishQuestID(false, 1100103)
    end
    self:ClearNpcSpeechBubble(1012)
end

function Quest11001:OnSubStart1100101(quest)
    print("1100101 start:...")

    actorMgr:CreateActorWithPos("Q1100101Trigger", "Actor/Gadget/Q1100101Trigger", 70900002, 0, sceneData:GetDummyPoint(3,"Q1100101Draff").pos, sceneData:GetDummyPoint(3,"Q1100101Draff").rot, true, false)

    self:ActionSafeCall(
        function (self)
            self:NotifyTo("Npc1537", DailyNpcManager.NpcEventType.HIDESELF, true)
            self:NotifyTo("Npc1541", DailyNpcManager.NpcEventType.HIDESELF, true)

            self:CreateQuestNpc(quest, xianglingData.ID)
            local xiangling = self:GetQuestNpcActor(xianglingData.Alias)
            xiangling:DoFreeStyle(1090)

            self:CreateQuestNpc(quest, draffData.ID)
            local draff = self:GetQuestNpcActor(draffData.Alias)
            draff:DoFreeStyle(1180)
        end
    )
end

function Quest11001:OnSubStart1100102(quest)
    print("1100102 start:...")
    
    self:CreateQuestNpc(quest, brookData.ID)
    local brook = self:GetQuestNpcActor(brookData.Alias)
    brook:DoFreeStyle(1120)

end

function Quest11001:OnSubStart1100103(quest)
    print("1100103 start:...")
    --香菱移动
    local xiangling = self:GetQuestNpcActor(xianglingData.Alias)
	if xiangling ~= nil then	
        xiangling:DoFreeStateTrigger()
        
        xiangling:WalkToTask(q11001Cfg.XianglingData.LeavePos,
        function(self)
            xiangling:WalkToTask(q11001Cfg.XianglingData.LeavePos03,
                function(self)
                    local quest03 = actorMgr:GetActor(q11001Cfg.ActorAlias)
                    if quest03 ~= nil then
                        print("Bubble01")
                        quest03:CreateSpeechBubbleTask(xianglingData.ID, 110010303, 2, false, 0, 0)
                    end
                    self:SayDialogAudio(110010303)
                    xiangling:PlayEmojiBubble("EmojiBubble_Emoji_Surprise")
                    self:CallDelay(2,
                        function(self)
                            print("second stage_______________")
                            local quest03 = actorMgr:GetActor(q11001Cfg.ActorAlias)
                            if quest03 ~= nil then
                                print("Bubble02")
                                quest03:ClearSpeechBubbleTask()
                                quest03:CreateSpeechBubbleTask(xianglingData.ID, 110010304, 1, false, 0, 0)
                            end
                            self:SayDialogAudio(110010304)
                            xiangling:PlayEmojiBubble("EmojiBubble_Emoji_Happy")
                            xiangling:WalkToTask(q11001Cfg.XianglingData.BornPos03,
                                function(self)
                                    --self:Finish03()
                                    print("hanshu  Fiiiiiiiiiiiiiiiiiniiiiiiiiiish 03")
                                    local quest = actorMgr:GetActor(q11001Cfg.ActorAlias)
                                    if quest ~= nil then
                                        print("clear Bubble")
                                        quest:FinishQuestID(false, 1100103)
                                        quest:ClearSpeechBubbleTask()
                                    end
                                end
                            )
                        end
                    )
                end
            )
        end
    )
    end
    
    --完成任务
    --self:CallDelay(11,self.Finish03)

    --开车
    self:NarratorOnlyTask(q11001Cfg.NarratorFlow1)
end

function Quest11001:OnSubStart1100104(quest)
    print("1100104 start:...")
    self:NotifyTo("Npc1537", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1541", DailyNpcManager.NpcEventType.HIDESELF, true)

    self:CreateQuestNpc(quest, xianglingData.ID)
    local xiangling = self:GetQuestNpcActor(xianglingData.Alias)
    xiangling:DoFreeStyle(1220)

    self:CreateQuestNpc(quest, brookData.ID)
    local brook = self:GetQuestNpcActor(brookData.Alias)

end




function Quest11001:OnSubFinish1100101(quest)
end

function Quest11001:OnSubFinish1100102(quest)
    print("OnFinished 1100102")
    self:ActionSafeCall(self.PaimonDelay)
end

function Quest11001:OnSubFinish1100103(quest)
    print("OnFinished 1100103")
end

function Quest11001:OnSubFinish1100104(quest)
    print("OnFinished 1100104")
    self:NotifyTo("Npc1537", DailyNpcManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1541", DailyNpcManager.NpcEventType.STARTDAILY, true)

    self:ActionSafeCall(self.PaimonDelay)
    local draff = self:GetQuestNpcActor(draffData.Alias)
    if draff ~= nil then
        self:ActionSafeCall(
            function(self)
                self:DestroyQuestNpcActorByAlias(draffData.Alias, false)
            end
        )
    end


    local brook = self:GetQuestNpcActor(brookData.Alias)
    if brook ~= nil then
        self:ActionSafeCall(
            function(self)
                self:DestroyQuestNpcActorByAlias(brookData.Alias, false)
            end
        )
    end

    local xiangling = self:GetQuestNpcActor(xianglingData.Alias)
    if xiangling ~= nil then
        self:ActionSafeCall(
            function(self)
                self:DestroyQuestNpcActorByAlias(xianglingData.Alias, false)
            end
        )
    end
end


function Quest11001:Start()
end

function Quest11001:OnDestroy()
end

return Quest11001