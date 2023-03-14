require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest374 = class("Quest374", questActorProxy)
local DailyNpcManager = require('Actor/DailyNPCManager')

Quest374.defaultAlias = "Quest374"

local q374Cfg 
local subIDs  
local paimonData  
local wendyData 
local maidData  
local guardData 
local DailyNpcManager = require('Actor/DailyNPCManager')

function Quest374:OnDataLoaded()
    q374Cfg = self.clientData
    subIDs = q374Cfg.SubIDs
    paimonData = q374Cfg.PaimonData
    wendyData = q374Cfg.WendyData
    maidData = q374Cfg.MaidData
    guardData = q374Cfg.GuardData
end

-- Generated
function Quest374:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["37408"] = self.OnSubStart37408
    self.subStartHandlers["37407"] = self.OnSubStart37407
    self.subStartHandlers["37401"] = self.OnSubStart37401
    self.subStartHandlers["37402"] = self.OnSubStart37402
    self.subStartHandlers["37403"] = self.OnSubStart37403    
    self.subStartHandlers["37404"] = self.OnSubStart37404 
    self.subStartHandlers["37405"] = self.OnSubStart37405 
    self.subStartHandlers["37406"] = self.OnSubStart37406         
end

function Quest374:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["37408"] = self.OnSubFinish37408
    self.subFinishHandlers["37407"] = self.OnSubFinish37407
    self.subFinishHandlers["37401"] = self.OnSubFinish37401
    self.subFinishHandlers["37402"] = self.OnSubFinish37402
    self.subFinishHandlers["37403"] = self.OnSubFinish37403
    self.subFinishHandlers["37404"] = self.OnSubFinish37404
    self.subFinishHandlers["37405"] = self.OnSubFinish37405
    self.subFinishHandlers["37406"] = self.OnSubFinish37406
end

-- local param begin
-- local param end

-- local method begin
--@region sub start handlers
function Quest374:OnSubStart37408(quest)
    print("37408 start:...")
    self:ActionSafeCall(
        self.CleanNPC
    )
    actorMgr:CreateActorWithPos("Q37408Trigger", "Actor/Gadget/Q37408Trigger", 70900002, 0, sceneData:GetDummyPoint(3,"Q372Venti").pos, sceneData:GetDummyPoint(3,"Q372Venti").rot, true, false)
end

function Quest374:CleanNPC(questActor)
    self:ShowBlackScreen(0.5, 1.5, 0.5, 
        function(self)
            self:CreateQuestNpcById(37408, wendyData.WendyID)
        end
    )
end

function Quest374:OnSubStart37407(quest)
    print("37402 start:...")
    self:NotifyTo("MengdeInsomniaStand_10", DailyNpcManager.NpcEventType.HIDESELF, true)
    -- self:CreateQuestNpc(quest, wendyData.WendyID)
end

function Quest374:OnSubStart37401(quest)  
    print("37401 start ")
    self:NotifyTo("Npc1430", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1443", DailyNpcManager.NpcEventType.HIDESELF, true)

    self:CreateQuestNpc(quest, wendyData.WendyID)
    self:CreateQuestNpc(quest, maidData.MaidID)
    self:CreateQuestNpc(quest, guardData.GuardID)
    
    -- wendy:ClearFollowTask()
    -- wendy:RunToTask(wendyData.bornPos2,
    --     function(wendy, task)
	-- 		local quest = actorMgr:GetActor(q374Cfg.ActorAlias)
	-- 		if quest ~= nil then
	-- 			quest:FinishQuest(false, nil)
    --         end
    --         wendy:Standby()
	-- 		wendy:TurnTo(M.Euler2DirXZ(wendyData.bornDir2))
    --     end
    -- )

end

function Quest374:OnSubStart37402(quest)
    print("37402 start:...")
    self:NotifyTo("Npc1430", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1443", DailyNpcManager.NpcEventType.HIDESELF, true)

end

function Quest374:OnSubStart37403(quest)
    print("37403 start:...")
    self:NotifyTo("Npc1430", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1443", DailyNpcManager.NpcEventType.HIDESELF, true)

    local maid = self:GetQuestNpcActor(maidData.Maid)
    if maid ~= nil then
        maid:ClearFollowTask()
        maid:WalkToTask(maidData.bornPos2,
            function(maid, task)
                local quest = actorMgr:GetActor(q374Cfg.ActorAlias)
                if quest ~= nil then
                    quest:FinishQuest(false, nil)
                end
                maid:Standby()
                maid:TurnTo(M.Euler2DirXZ(maidData.bornDir2))
            end
        )
    end

    self:ActionSafeCall(
        function(self)
            local paimon = self:GetQuestNpcActor("Paimon")
            if paimon ~= nil then
                paimon:DestroyWithDisappear(false)
            end
        end
    )
end

function Quest374:OnSubStart37404(quest)
    print("37404 start:...")
    self:NotifyTo("Npc1430", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1443", DailyNpcManager.NpcEventType.HIDESELF, true)

end

function Quest374:OnSubStart37405(quest)
    print("37405 start:...")
    self:NotifyTo("Npc1430", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1443", DailyNpcManager.NpcEventType.HIDESELF, true)

    local quest = actorMgr:GetActor(q374Cfg.ActorAlias)
    if quest ~= nil then
        quest:FinishQuest(false, nil)
    end
end

function Quest374:OnSubStart37406(quest)
    print("37406 start:...")
    self:NotifyTo("Npc1430", DailyNpcManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1443", DailyNpcManager.NpcEventType.HIDESELF, true)

    local wendy = self:GetQuestNpcActor(wendyData.Wendy)
    wendy:Standby()
	wendy:TurnTo(M.Euler2DirXZ(paimonData.bornDir1))
end

--@endregion

--@region sub finish handlers
function Quest374:OnSubFinish37407(quest)
    print("OnFinished 37407")
    self:ActionSafeCall(
        function(self)
            local paimon = self:GetQuestNpcActor("Paimon")
            if paimon ~= nil then
                paimon:DestroyWithDisappear(false)
            end
        end
    )
end

function Quest374:OnSubFinish37401(quest)
    print("OnFinished 37401")
end

function Quest374:OnSubFinish37402(quest)
    print("OnFinished 37402")
end

function Quest374:OnSubFinish37403(quest)
    print("OnFinished 37403")
end

function Quest374:OnSubFinish37404(quest)
    print("OnFinished 37404")
end

function Quest374:OnSubFinish37405(quest)
    print("OnFinished 37405")
end

function Quest374:OnSubFinish37406(quest)
    print("OnFinished 37406")
    self:ActionSafeCall(
        function(self)
            local paimon = self:GetQuestNpcActor("Paimon")
            if paimon ~= nil then
                paimon:DestroyWithDisappear(false)
            end
        end
    )
    -- self:ActionSafeCall(
    --     function(self)
    --         local maid = actorMgr:GetActor(maidData.Maid)
    --         if maid ~= nil then
    --             maid:ClearFollowTask()
    --             maid:WalkToTask(maidData.missPos,
    --                 function(maid, task)
    --                     maid:Destroy(false)
    --                 end
    --             )
    --         end  
    --     end
    -- )


end

function Quest374:InvokeOnInteraction(param)
    if param == 3 then
        print("Now Spawn Tears")
        self:SpawnGadgetById(37407 , 70300042 )
        -- self:SpawnGadget(70300042, sceneData:GetDummyPoint(3,"Q372Tears").pos, sceneData:GetDummyPoint(3,"Q372Tears").rot, "Tears", 3)
    elseif param == 4 then
        print("Now Destroy Tears")
        self:UnSpawn("Tears") 
    elseif param == 6 then
        local wendy = self:GetQuestNpcActor(wendyData.Wendy)
        if wendy ~= nil then
            wendy:ClearFollowTask()
            wendy:WalkToTask(wendyData.desPos, Quest374.wendyVanish)
        end    
    end
end

function Quest374:wendyVanish()
    -- self:ShowBlackScreen(0.5, 1.0, 0.5, 
	--     function(self)
            local wendy = self:GetQuestNpcActor(wendyData.Wendy)
            if wendy ~= nil then
                wendy:SetVisible(false)
            end
    --     end
    -- )
end
--@endregion

function Quest374:Start()
end

function Quest374:OnDestroy()
end

return Quest374