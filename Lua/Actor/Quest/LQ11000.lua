require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest11000 = class("Quest11000", questActorProxy)
Quest11000.defaultAlias = "Quest11000"
local DailyNpcManager = require('Actor/DailyNPCManager')

local q11000Cfg
local subIDs
local mainquestid = 11000
local paimonData
local xianglingData
local allanData

function Quest11000:OnDataLoaded()
    q11000Cfg = self.clientData
    subIDs = q11000Cfg.SubIDs
    mainquestid = 11000
    paimonData = q11000Cfg.PaimonData
    xianglingData = q11000Cfg.XianglingData
    allanData = q11000Cfg.AllanData
end

-- Generated
function Quest11000:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["1100001"] = self.OnSubStart1100001
    self.subStartHandlers["1100002"] = self.OnSubStart1100002
	self.subStartHandlers["1100003"] = self.OnSubStart1100003
	self.subStartHandlers["1100004"] = self.OnSubStart1100004
	self.subStartHandlers["1100005"] = self.OnSubStart1100005
	self.subStartHandlers["1100006"] = self.OnSubStart1100006

end

function Quest11000:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["1100001"] = self.OnSubFinish1100001
    self.subFinishHandlers["1100002"] = self.OnSubFinish1100002
    self.subFinishHandlers["1100003"] = self.OnSubFinish1100003
    self.subFinishHandlers["1100004"] = self.OnSubFinish1100004
    self.subFinishHandlers["1100005"] = self.OnSubFinish1100005
    self.subFinishHandlers["1100006"] = self.OnSubFinish1100006

end

function Quest11000:PaimonDis()
    local paimon = self:GetQuestNpcActor(paimonData.Alias)
    if paimon ~= nil then
        paimon:DestroyWithDisappear(false)
    end
end
 
function Quest11000:PaimonDelay()
	self:PaimonDis()
end

function Quest11000:Finish02()
    local quest = actorMgr:GetActor(q11000Cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuestID(false, 1100002) 
    end
end

function Quest11000:OnSubStart1100001(quest)
    print("1100001 start:...")
    actorMgr:CreateActorWithPos("Q1100001Trigger01", "Actor/Gadget/Q1100001Trigger01", 70900002, 0, sceneData:GetDummyPoint(3,"Q1100001XL").pos, sceneData:GetDummyPoint(3,"Q1100001XL").rot, true, false)
    --actorMgr:CreateActorWithPos("Q1100001Trigger02", "Actor/Gadget/Q1100001Trigger02", 70900002, 0, sceneData:GetDummyPoint(3,"Q1100001XL").pos, sceneData:GetDummyPoint(3,"Q1100001XL").rot, true, false)
end

function Quest11000:OnSubStart1100002(quest)
    print("1100002 start:...")
    self:CallDelay(2,self.Finish02)
end

function Quest11000:OnSubStart1100003(quest)
    print("1100003 start:...")
    local task = curtainUtils.CreateEntityCreateTask({xianglingData.Alias})
    self:CallDelay(1,
        function(self)
            self:PlayCutsceneIndex(1100001,
            function(self)
                self:TransmitPlayer(3, sceneData:GetDummyPoint(3, "Q1100003Player").pos, sceneData:GetDummyPoint(3, "Q1100003Player").rot, nil,
                function (self)
                    self:CreateQuestNpc(quest, xianglingData.ID)
                    local xiangling = self:GetQuestNpcActor(xianglingData.Alias)
                    xiangling:DoFreeStyle(1220)
                    self:RequestInteraction(xianglingData.Alias)
                end ,task
                )
            end
            )
        end
    )
end

function Quest11000:OnSubStart1100004(quest)
    print("1100004 start:...")
    self:ActionSafeCall(
        function (self)
            local xiangling = actorMgr:GetActorInternal("Xiangling11000")
            if xiangling == nil then
                print (" xiangling   nil--------- Create " )
                self:CreateQuestNpc(quest, xianglingData.ID)
                local xiangling = self:GetQuestNpcActor(xianglingData.Alias)
                xiangling:DoFreeStyle(1220)
            else
                xiangling:DoFreeStyle(1220)
            end

            self:CallDelay(5,
            function(self)
                local quest = actorMgr:GetActor(q11000Cfg.ActorAlias)
                if quest ~= nil then
                    print("wancheng 1100004")
                    quest:FinishQuestID(false, 1100004) 
                end
            end
        )
        end
    )


end

function Quest11000:OnSubStart1100005(quest)
    print("1100005 start:...")
    local xiangling = actorMgr:GetActorInternal("Xiangling11000")
    if xiangling == nil then
        print (" xiangling   nil--------- Create " )
        self:CreateQuestNpc(quest, xianglingData.ID)
        local xiangling = self:GetQuestNpcActor(xianglingData.Alias)
        xiangling:DoFreeStyle(1220)
    else
        xiangling:DoFreeStyle(1220)
    end
end

-- function Quest11000:OnSubStart1100006(quest)
--     print("1100006 start:...")
--     local xiangling = actorMgr:CreateActorWithPos(xianglingData.Alias, xianglingData.Script, xianglingData.ID, 0, xianglingData.BornPos03, xianglingData.BornDir03, true, false)
--     xiangling:DoFreeStyle(1220)
    
--     local allan = actorMgr:CreateActorWithPos(allanData.Alias, allanData.Script, allanData.ID, 0, allanData.BornPos06, allanData.BornDir06, true, false)
--     allan:DoFreeStyle(1120)

-- end


function Quest11000:OnSubFinish1100001(quest)
    --self:NarratorOnlyTask(q11000Cfg.NarratorFlow1)
end

function Quest11000:OnSubFinish1100002(quest)
end

function Quest11000:OnSubFinish1100003(quest)
    print("OnFinished 1100003")
    self:ActionSafeCall(self.PaimonDelay)
    -- local q45104state = self:GetSubQuestState(45104)
    -- print("q45104state"  ..  q45104state)
    -- if  q45104state ~=  3 then  -- 任务状态不为完成状态
    --     print("狩猎教学")
    --     self:NarratorOnlyTask(q11000Cfg.NarratorFlow2)
    -- end
end

function Quest11000:OnSubFinish1100004(quest)
end

function Quest11000:OnSubFinish1100005(quest)
    print("OnFinished 1100005")


    local allan = self:GetQuestNpcActor(allanData.Alias)
    if allan ~= nil then
        self:ActionSafeCall(
            function (self)
                self:DestroyQuestNpcActorByAlias(allanData.Alias, false)
            end
        )
    end
    local xiangling = self:GetQuestNpcActor(xianglingData.Alias)
    if xiangling ~= nil then
        self:ActionSafeCall(
            function (self)
                self:DestroyQuestNpcActorByAlias(xianglingData.Alias, false)
            end
        )
    end
    self:NotifyTo("Npc1537", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1541", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:ActionSafeCall(self.PaimonDelay)



end

-- function Quest11000:OnSubFinish1100006(quest)

-- end

function Quest11000:Start()
end

function Quest11000:OnDestroy()
end

return Quest11000