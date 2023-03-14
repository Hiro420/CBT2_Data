require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest40004 = class("Quest40004", questActorProxy)

Quest40004.defaultAlias = "Quest40004"

local q40004Cfg
local playerData
local paimonData
local keayaData
local xiaoData
local spyData
local thoarder1Data
local thoarder2Data
local narratorData

function Quest40004:OnDataLoaded()
    q40004Cfg = self.clientData
    playerData = q40004Cfg.PlayerData
    paimonData = q40004Cfg.PaimonData
    keayaData = q40004Cfg.KeayaData
    xiaoData = q40004Cfg.XiaoData
    spyData = q40004Cfg.SpyData
    thoarder1Data = q40004Cfg.Thoarder1Data
    thoarder2Data = q40004Cfg.Thoarder2Data
    narratorData = q40004Cfg.NarratorData
end


-- Generated
function Quest40004:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["4000400"] = self.OnSubStart4000400
    self.subStartHandlers["4000401"] = self.OnSubStart4000401
    self.subStartHandlers["4000402"] = self.OnSubStart4000402
    self.subStartHandlers["4000403"] = self.OnSubStart4000403
    -- self.subStartHandlers["4000404"] = self.OnSubStart4000404
    -- self.subStartHandlers["4000405"] = self.OnSubStart4000405
    self.subStartHandlers["4000406"] = self.OnSubStart4000406
    self.subStartHandlers["4000407"] = self.OnSubStart4000407
    self.subStartHandlers["4000408"] = self.OnSubStart4000408
    self.subStartHandlers["4000409"] = self.OnSubStart4000409
end

function Quest40004:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["4000400"] = self.OnSubFinish4000400
	self.subFinishHandlers["4000401"] = self.OnSubFinish4000401
    self.subFinishHandlers["4000402"] = self.OnSubFinish4000402
    self.subFinishHandlers["4000403"] = self.OnSubFinish4000403
    -- self.subFinishHandlers["4000404"] = self.OnSubFinish4000404
    -- self.subFinishHandlers["4000405"] = self.OnSubFinish4000405
    self.subFinishHandlers["4000406"] = self.OnSubFinish4000406
    self.subFinishHandlers["4000407"] = self.OnSubFinish4000407
    self.subFinishHandlers["4000408"] = self.OnSubFinish4000408
    self.subFinishHandlers["4000409"] = self.OnSubFinish4000409
end

---sub start & finish 内调用的函数

--@region sub start & finish handlers

---按流程触发顺序
function Quest40004:OnSubStart4000400(quest)
    local quest = actorMgr:GetActor(q40004Cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuest(false, nil)
    end
end

function Quest40004:OnSubFinish4000400(quest)
    print("4000400 OnFinish")
    self:CallDelay(1,
    function (self)
        self:NarratorOnlyTask(narratorData.Story1, nil, "StoryCut")
    end
    )
end

function Quest40004:OnSubStart4000402(quest)
    print("4000402 OnStart")
    --actorMgr:CreateActorWithPos(keayaData.Alias, keayaData.Script, keayaData.ID, 0, keayaData.BornPos, keayaData.BornDir, true, false, 1009, true, 1)
    self:CreateQuestNpc(quest, keayaData.ID) 
end

function Quest40004:OnSubFinish4000402(quest)
    print("4000402 OnFinish")
    self:ActionSafeCall(
        function ()
            local paimon = self:GetQuestNpcActor(paimonData.Alias)
            if paimon ~= nil then
                paimon:DestroyWithDisappear(false)
            end
        end
	)  
end

function Quest40004:OnSubStart4000403(quest)
    print("4000403 OnStart")
    -- actorMgr:CreateActorWithPos(spyData.Alias, spyData.Script, spyData.ID, 0, spyData.BornPos, spyData.BornDir, true) 
    self:CreateQuestNpc(quest, spyData.ID, 0)
end

function Quest40004:OnSubFinish4000403(quest)
    print("4000403 OnFinish")
    self:ActionSafeCall(
        function ()
            local paimon = self:GetQuestNpcActor(paimonData.Alias)
            if paimon ~= nil then
                paimon:DestroyWithDisappear(false)
            end

            -- local spy = self:GetQuestNpcActor(spyData.Alias)
            -- if spy ~= nil then
            --     spy:Destroy(false)
            -- end
        end
	)  
end

function Quest40004:OnSubStart4000405(quest)
    print("4000405 OnStart")
    --actorMgr:CreateActorWithPos(keayaData.Alias, keayaData.Script, keayaData.ID, 0, keayaData.BornPos, keayaData.BornDir, true, false, 1009, true, 1) 
end

function Quest40004:OnSubStart4000406(quest)
    print("4000406 OnStart")
    --actorMgr:CreateActorWithPos(thoarder1Data.Alias, thoarder1Data.Script, thoarder1Data.ID, 0, thoarder1Data.BornPos, thoarder1Data.BornDir, true) 
    self:CreateQuestNpc(quest, thoarder1Data.ID, 0) 
    self:CreateQuestNpc(quest, thoarder2Data.ID, 0) 
end

function Quest40004:OnSubFinish4000409(quest)
    print("4000409 OnFinish")
    self:ActionSafeCall(
        function ()
            local thoarder1 = self:GetQuestNpcActor(thoarder1Data.Alias)
            if thoarder1 ~= nil then
                thoarder1:Destroy(false)
            end

            local thoarder2 = self:GetQuestNpcActor(thoarder2Data.Alias)
            if thoarder2 ~= nil then
                thoarder2:Destroy(false)
            end

            local xiao = self:GetQuestNpcActor(xiaoData.Alias)
            if xiao ~= nil then
                xiao:Destroy(false)
            end

            local paimon = self:GetQuestNpcActor(paimonData.Alias)
            if paimon ~= nil then
                paimon:DestroyWithDisappear(false)
            end
        end
	)  
end

function Quest40004:OnSubStart4000407(quest)
    print("4000407 OnStart")
    actorMgr:CreateActorWithPos("Q40004Trigger1", "Actor/Gadget/Q40004Trigger1", 70900002, 0, playerData.BornPos, playerData.BornDir, true)

	self:ActionSafeCall(
        function ()
            local thoarder1 = self:GetQuestNpcActor(thoarder1Data.Alias)
            if thoarder1 ~= nil then
                thoarder1:Destroy(false)
            end
            
            local thoarder2 = self:GetQuestNpcActor(thoarder2Data.Alias)
            if thoarder2 ~= nil then
                thoarder2:Destroy(false)
            end

            local xiao = self:GetQuestNpcActor(xiaoData.Alias)
            if xiao ~= nil then
                xiao:Destroy(false)
            end

            local paimon = self:GetQuestNpcActor(paimonData.Alias)
            if paimon ~= nil then
                paimon:DestroyWithDisappear(false)
            end
        end
    )
end

function Quest40004:OnSubFinish4000407(quest)
    local trigger = actorMgr:GetActor("Q40007Trigger1")
    if trigger ~= nil then
        trigger:Destroy(false)
    end
end


function Quest40004:OnSubStart4000408(quest)
    print("4000408 OnStart")
    local task = self.CreateQuestNpcCreateTask({thoarder1Data.Alias, thoarder2Data.Alias})

    self:TransmitPlayer(3, playerData.BornPos, playerData.BornDir, nil, 
        function (self)
            --actorMgr:CreateActorWithPos(thoarder1Data.Alias, thoarder1Data.Script, thoarder1Data.ID, 0, thoarder1Data.BornPos, thoarder1Data.BornDir, true) 
            --actorMgr:CreateActorWithPos(thoarder2Data.Alias, thoarder2Data.Script, thoarder2Data.ID, 0, thoarder2Data.BornPos, thoarder2Data.BornDir, true) 
            self:CreateQuestNpc(quest, thoarder1Data.ID, 0) 
            self:CreateQuestNpc(quest, thoarder2Data.ID, 0) 
        end, task
    )
end

function Quest40004:OnSubFinish4000408(quest)
    print("4000408 OnFinish")
    self:ActionSafeCall(
        function ()
            local xiao = self:GetQuestNpcActor(xiaoData.Alias)
            if xiao ~= nil then
                xiao:Destroy(false)
            end

            local paimon = self:GetQuestNpcActor(paimonData.Alias)
            if paimon ~= nil then
                paimon:DestroyWithDisappear(false)
            end
        end
	)  
end

function Quest40004:InvokeOnInteraction(param)
    if param == 1 then
        print("Invoke show picture")
        self:ShowQuestPictureDialog(245)
    end
    if param == 2 then
        print("Invoke show lettel")
        -- self:ShowQuestPictureDialog(245)
        self:ShowReadingDialog(100420)
    end
end
--@endregion

function Quest40004:Start()
end

function Quest40004:OnDestroy()
end

return Quest40004