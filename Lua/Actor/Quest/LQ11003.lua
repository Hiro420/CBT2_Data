require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest11003 = class("Quest11003", questActorProxy)

Quest11003.defaultAlias = "Quest11003"
local DailyNpcManager = require('Actor/DailyNPCManager')

local q11003Cfg
local subIDs
local mainquestid = 11003
local paimonData
local xianglingData
local olafData

function Quest11003:OnDataLoaded()
    q11003Cfg = self.clientData
    subIDs = q11003Cfg.SubIDs
    mainquestid = 11003
    paimonData = q11003Cfg.PaimonData
    xianglingData = q11003Cfg.XianglingData
    olafData = q11003Cfg.OlafData
end

-- Generated
function Quest11003:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["1100301"] = self.OnSubStart1100301
    self.subStartHandlers["1100302"] = self.OnSubStart1100302
	self.subStartHandlers["1100303"] = self.OnSubStart1100303
	self.subStartHandlers["1100304"] = self.OnSubStart1100304


end

function Quest11003:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["1100301"] = self.OnSubFinish1100301
    self.subFinishHandlers["1100302"] = self.OnSubFinish1100302
    self.subFinishHandlers["1100303"] = self.OnSubFinish1100303
    self.subFinishHandlers["1100304"] = self.OnSubFinish1100304


end

function Quest11003:PaimonDis()
    local paimon = self:GetQuestNpcActor(paimonData.Alias)
    if paimon ~= nil then
        paimon:DestroyWithDisappear(false)
    end
end
 
function Quest11003:PaimonDelay()
	self:PaimonDis()
end


function Quest11003:OlafDofreestyle()
    local olaf = self:GetQuestNpcActor(olafData.Alias)
    if olaf ~= nil then
        olaf:DoFreeStyle(4200)
    end
end


function Quest11003:OnSubStart1100301(quest)
    print("1100301 start:...")

    actorMgr:CreateActorWithPos("Q1100301Trigger", "Actor/Gadget/Q1100301Trigger", 70900002, 0, sceneData:GetDummyPoint(3,"Q1100302Olaf").pos, sceneData:GetDummyPoint(3,"Q1100302Olaf").rot, true, false)

    self:CreateQuestNpc(quest, olafData.ID)
    self:OlafDofreestyle()
end

function Quest11003:OnSubStart1100302(quest)
    local task = curtainUtils.CreateEntityCreateTask({xianglingData.Alias})
    self:CallDelay(3,
    function(self)
        self:ShowBlackScreen(0.5, 1, 0.5,
        function(self)
            self:CreateQuestNpc(quest, xianglingData.ID)
            local xiangling = self:GetQuestNpcActor(xianglingData.Alias)
            xiangling:DoFreeStyle(1220)


            self:CreateQuestNpc(quest, olafData.ID)
            self:OlafDofreestyle()

        end,
        nil ,task)
    end
    )
    
end

function Quest11003:OnSubStart1100303(quest)
    print("1100303 start:...")
    local task = curtainUtils.CreateEntityCreateTask({xianglingData.Alias})
    self:ShowBlackScreen(0.5, 1, 0.5,
        function(self)
            self:ActionSafeCall(
                function(self)
                    self:CreateQuestNpc(quest, olafData.ID)
                    self:OlafDofreestyle()
                    self:CreateQuestNpc(quest, xianglingData.ID)
                    local xiangling = self:GetQuestNpcActor(xianglingData.Alias)
                    xiangling:DoFreeStyle(1180)
                    print("SHOW BLACK SCREEN 1100303")
                end
            )
        end,
        nil ,task)
end

function Quest11003:OnSubStart1100304(quest)
    print("1100304 start:...")
    self:CallDelay(1,
        function (self)

            self:CreateQuestNpc(quest, olafData.ID)
            self:OlafDofreestyle()


            self:CreateQuestNpc(quest, xianglingData.ID)
            local xiangling = self:GetQuestNpcActor(xianglingData.Alias, 11003)
            xiangling:DoFreeStateTrigger()
        end
    )
end




function Quest11003:OnSubFinish1100301(quest)
    self:NarratorOnlyTask(q11003Cfg.NarratorFlow1)
end

function Quest11003:OnSubFinish1100302(quest)
    self:ActionSafeCall(self.PaimonDelay)
end

function Quest11003:OnSubFinish1100303(quest)
end

function Quest11003:OnSubFinish1100304(quest)
    self:ActionSafeCall(self.PaimonDelay)
    local olaf = self:GetQuestNpcActor(olafData.Alias)
    if olaf ~= nil then
        self:ActionSafeCall(
            function(self)
                self:DestroyQuestNpcActorByAlias(olafData.Alias, false)
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



function Quest11003:Start()
end

function Quest11003:OnDestroy()
end

return Quest11003