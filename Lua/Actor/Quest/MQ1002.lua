require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest1002 = class("Quest1002", questActorProxy)

Quest1002.defaultAlias = "Quest1002"

local q1002Cfg
local playerData
local paimonData
local xianRenData
local triggerData

function Quest1002:OnDataLoaded()
	q1002Cfg = self.clientData
    playerData = q1002Cfg.PlayerData
    paimonData = q1002Cfg.PaimonData
    xianRenData = q1002Cfg.XianRenData
    triggerData = q1002Cfg.TriggerData
end

--@region Generated
function Quest1002:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["100201"] = self.OnSubStart100201
    self.subStartHandlers["100202"] = self.OnSubStart100202
    self.subStartHandlers["100203"] = self.OnSubStart100203
    self.subStartHandlers["100204"] = self.OnSubStart100204
    self.subStartHandlers["100205"] = self.OnSubStart100205
end

function Quest1002:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["100201"] = self.OnSubFinish100201
    self.subFinishHandlers["100201"] = self.OnSubFinish100201
    self.subFinishHandlers["100202"] = self.OnSubFinish100202
    self.subFinishHandlers["100203"] = self.OnSubFinish100203
    self.subFinishHandlers["100204"] = self.OnSubFinish100204
    self.subFinishHandlers["100205"] = self.OnSubFinish100205
end

function Quest1002:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["100201"] = self.OnSubFailed100201
	self.subFailedHandlers["100202"] = self.OnSubFailed100202
	self.subFailedHandlers["100203"] = self.OnSubFailed100203
	self.subFailedHandlers["100204"] = self.OnSubFailed100204
	self.subFailedHandlers["100205"] = self.OnSubFailed100205
end
--@endregion

-- local param begin
-- local param end

--@region sub start & finish 内调用的函数
function Quest1002:InvokeOnInteraction(param)
    if param == 1 then
        print("Talk100202:Creat Monster")
        local quest = actorMgr:GetActor(q1002Cfg.ActorAlias)
        if quest ~= nil then
            quest:FinishQuestID(false, 100203)
        end
    end
end

function Quest1002:DestroyNPC()
    print("OnFinished 100201")

    self:ActionSafeCall(
        function (self)
            local paimon = self:GetQuestNpcActor(paimonData.Alias)
            local xianren = self:GetQuestNpcActor(xianRenData.Alias)

            --local paimon = actorMgr:GetActor(paimonData.Alias)
            --local xianren = actorMgr:GetActor(xianRenData.Alias)

            if paimon ~= nil then
                paimon:DestroyWithDisappear(false)
            end

            if xianren ~= nil then
                xianren:Destroy(false)
            end   
        end
    )
end
--@endregion

-- local method begin
--@region sub start & finish 内调用的函数
function Quest1002:OnSubStart100201(quest)
    print("100201 start ")
    --actorMgr:CreateActorWithPos(xianRen.Alias, xianRen.Script, xianRen.ID, 0, xianRen.BornPos, xianRen.BornDir, true)    
end

function Quest1002:OnSubFinish100201(quest)
    print("100201 start ")
    self:ShowBlackScreen(0.5,1,0.5)

    local task = self.CreateQuestNpcCreateTask({paimonData.Alias})

    self:TransmitPlayer(3, playerData.BornPos2, playerData.BornDir2, nil, 
        function (self)
            
            -- actorMgr:CreateActorWithPos(xianRen.Alias, xianRen.Script, xianRen.ID, 0, xianRen.BornPos, xianRen.BornDir, true)
            self:CreateQuestNpc(quest, paimonData.ID)
        end, task
    )
end

function Quest1002:OnSubFinish100202(quest)
    print("OnFinished 100202")
    actorMgr:CreateActorWithPos(triggerData.Alias, triggerData.Script, triggerData.ID, 0, triggerData.BornPos, triggerData.BornDir, true) 
    
    self:ActionSafeCall(
        function(self)
            self:TriggerLevelAbility("LevelBuff_ReviveElemEnergy&MinusCD")

            local paimon = self:GetQuestNpcActor("Paimon")
            --local paimon = actorMgr:GetActor("Paimon")
            if paimon ~= nil then
                paimon:DestroyWithDisappear(false)
            end
        
            local soliderleader = self:GetQuestNpcActor("Npc2003004")
            --local soliderleader = actorMgr:GetActor("Npc2003004")
            if soliderleader ~= nil then
                soliderleader:Destroy(false)
            end   

            local solider = self:GetQuestNpcActor("Npc2003005")
            --local solider = actorMgr:GetActor("Npc2003005")
            if solider ~= nil then
                solider:Destroy(false)
            end   

            local xianren = self:GetQuestNpcActor(xianRenData.Alias)
            if xianren ~= nil then
                xianren:Destroy(false)
            end
        end
    )
end

function Quest1002:OnSubFinish100203(quest)
    print("OnFinished 100203")
    --self:TriggerLevelAbility("LevelBuff_ReviveElemEnergy&MinusCD")
end

function Quest1002:OnSubFinish100204(quest)
    print("OnFinished 100204")
    self:TriggerLevelAbility("LevelBuff_Remove_ReviveElemEnergy&MinusCD")
end

function Quest1002:OnSubFailed100204(quest)
    print("OnFailed 100204")
    local xianren = self:GetQuestNpcActor(xianRenData.Alias)
    if xianren ~= nil then
        xianren:Destroy(false)
    end  
    self:TriggerLevelAbility("LevelBuff_Remove_ReviveElemEnergy&MinusCD")
end

function Quest1002:OnSubStart100205(quest)
    self:CallDelay(2,
        function(self)
            self:ShowBlackScreen(0.5,1,0.5)

            local task = self.CreateQuestNpcCreateTask({xianRenData.Alias})

            self:TransmitPlayer(3, playerData.BornPos, playerData.BornDir, nil,
                function (self)
               self:CreateQuestNpc(quest, xianRenData.ID)
                end, task
            )
        end
    )
end

function Quest1002:OnSubFinish100205(quest)
    print("OnFinished 100201")
    self:DestroyNPC()
end

--@endregion

function Quest1002:Start()
end

function Quest1002:OnDestroy()
end

return Quest1002