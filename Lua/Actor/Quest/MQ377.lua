require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest377 = class("Quest377", questActorProxy)

Quest377.defaultAlias = "Quest377"

local q377Cfg 
local NpcUtil = require('Actor/Npc/NPCUtil')

local subIDs
local wendyData 
local dilucData  
local qinData 


function Quest377:OnDataLoaded()
    q377Cfg = self.clientData
    subIDs = q377Cfg.SubIDs
    wendyData = q377Cfg.WendyData
    dilucData = q377Cfg.DilucData
    qinData = q377Cfg.QinData
end

-- Generated
function Quest377:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["37701"] = self.OnSubStart37701
    self.subStartHandlers["37702"] = self.OnSubStart37702  
    self.subStartHandlers["37703"] = self.OnSubStart37703 
    self.subStartHandlers["37704"] = self.OnSubStart37704   
    self.subStartHandlers["37705"] = self.OnSubStart37705      
    self.subStartHandlers["37706"] = self.OnSubStart37706   
end

function Quest377:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["37701"] = self.OnSubFinish37701
    self.subFinishHandlers["37702"] = self.OnSubFinish37702
    self.subFinishHandlers["37703"] = self.OnSubFinish37703
    self.subFinishHandlers["37704"] = self.OnSubFinish37704
    self.subFinishHandlers["37705"] = self.OnSubFinish37705
    self.subFinishHandlers["37706"] = self.OnSubFinish37706
end

-- local param begin
-- local param end

-- local method begin
--@region sub start handlers

function Quest377:OnSubStart37701(quest)
    print("37701 start:...")    
end

function Quest377:OnSubStart37702(quest)  
    print("37702 start ")
    self:CreateQuestNpc(quest, wendyData.WendyID)
    self:CreateQuestNpc(quest, dilucData.DilucID)

    
    self:ActionSafeCall(    
        function(self)  
            local qin = self:GetQuestNpcActor(qinData.Qin)
            if qin ~= nil then
                qin:ClearFollowTask()
                qin:WalkToTask(qinData.desPos,
                    function(qin, task)
                        qin:Destroy(false)
                    end
                )
            end  
        end
    )
end

function Quest377:OnSubStart37703(quest)
    print("37703 start:...")
    self:ActionSafeCall(    
        function(self)  
            local qin = self:GetQuestNpcActor(qinData.Qin)
            if qin ~= nil then
                qin:ClearFollowTask()
                qin:WalkToTask(qinData.desPos,
                    function(qin, task)
                        qin:Destroy(false)
                    end
                )
            end  
        end
    )
end

function Quest377:OnSubStart37704(quest)
    print("37704 start:...")
    local q377Trigger = actorMgr:CreateActorWithPos("Q377Trigger", "Actor/Gadget/Q377Trigger", 70900002, 0, dilucData.bornPos, dilucData.bornDir, true, false,1009)
end

function Quest377:OnSubStart37705(quest)
    print("37705 start: hide NPC")    

    local MengdeNpcList = NpcUtil.GetMengdeNpcListPublic()
    for i=1, #MengdeNpcList do
        self:NotifyTo(MengdeNpcList[i], NpcUtil.NpcEventType.HIDESELF, true)
    end
end

function Quest377:OnSubStart37706(quest)
    print("37706 start: hide NPC")    

    local MengdeNpcList = NpcUtil.GetMengdeNpcListPublic()
    for i=1, #MengdeNpcList do
        self:NotifyTo(MengdeNpcList[i], NpcUtil.NpcEventType.HIDESELF, true)
    end
end


--@endregion

--@region sub finish handlers
function Quest377:OnSubFinish37701(quest)
    print("OnFinished 37701")
end

function Quest377:OnSubFinish37702(quest)
    print("OnFinished 37702")
end

function Quest377:OnSubFinish37703(quest)
    print("OnFinished 37703")
end

function Quest377:OnSubFinish37704(quest)
    print("OnFinished 37704")
    local task = self:CreateQuestNpcCreateTask({qinData.Qin})
    self:ShowBlackScreen(0.5, 1.0, 0.5, 
        function(self)
            self:CreateQuestNpcById(37705, qinData.QinID)
            -- actorMgr:CreateActorWithPos(qinData.Qin, qinData.QinScript, qinData.QinID, 0, qinData.bornPos, qinData.bornDir, true, false,1009,true,1,37704)    
            self:RequestInteraction(dilucData.Diluc)
        end
        , nil, task
    )
    -- self:CallDelay(3.5,self.Interaction)

    local q377Trigger = actorMgr:GetActor("Q377Trigger")
    if q377Trigger ~= nil then
        q377Trigger:Destroy(false)
    end

end


function Quest377:OnSubFinish37705(quest)
    print("OnFinished 37705")
    self:CallDelay(0.3 ,
        function(self)
            self:RequestInteraction(dilucData.Diluc)
        end
    )
    self:ActionSafeCall(
        function(self)
            local paimon = self:GetQuestNpcActor("Paimon")
            if paimon ~= nil then
                paimon:DestroyWithDisappear(false)
            end
        end
    )
    -- self:ActionSafeCall(self.Interaction)

end

function Quest377:OnSubFinish37706(quest)
    print("OnFinished 37706")
    self:ActionSafeCall(self.DestroyDiluc)
end

function Quest377:InvokeOnInteraction(param)
    if param == 3 then
        print("Now Qin Leave")
        local qin = self:GetQuestNpcActor(qinData.Qin)
        if qin ~= nil then
            qin:ClearFollowTask()
            qin:WalkToTask(qinData.desPos, Quest377.QinVanish)
        end  
    elseif param == 101 then
        print("Now Stop Talking")
        -- BubbleCtrl_NpcMengdeInsomniaStand[13] = -1
    elseif param == 102 then
        print("Now Start Talking")
        -- BubbleCtrl_NpcMengdeInsomniaStand[13] = 1
    end
end


function Quest377:Interaction()
    self:RequestInteraction(dilucData.Diluc)
end

function Quest377:DestroyDiluc()
    self:ShowBlackScreen(0.5, 1.0, 0.5, 
        function(self)
            local qin = self:GetQuestNpcActor(qinData.Qin)
            if qin ~= nil then
                qin:Destroy(false)
            end 
            local diluc = self:GetQuestNpcActor(dilucData.Diluc)
            if diluc ~= nil then
                diluc:Destroy(false)
            end  
            local wendy = self:GetQuestNpcActor(wendyData.Wendy)
            if wendy ~= nil then
                wendy:Destroy(false)
            end  
        end,
        self.TellStory
    )
end

function Quest377:TellStory(quest)
    self:CallDelay(1.5, 
        function(self)
            self:NarratorOnlyTask(q377Cfg.NarratorFlow, nil, "Story")
        end
    )
end

function Quest377:QinVanish()
    self:ShowBlackScreen(0.5, 1.0, 0.5, 
	    function(self)
            local qin = self:GetQuestNpcActor(qinData.Qin)
            if qin ~= nil then
                qin:SetVisible(false)
            end
        end
    )
end

--@endregion

function Quest377:Start()
end

function Quest377:OnDestroy()
end

return Quest377