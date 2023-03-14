require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest451 = class("Quest451", questActorProxy)

Quest451.defaultAlias = "Quest451"

local q451Cfg
local subIDs
local mainquestid = 451
local paimonData
local razorData 

function Quest451:OnDataLoaded()
    q451Cfg = self.clientData
    subIDs = q451Cfg.SubIDs
    mainquestid = 451
    paimonData = q451Cfg.PaimonData
    razorData = q451Cfg.RazorData
end

-- Generated
function Quest451:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["45109"] = self.OnSubStart45109
    self.subStartHandlers["45101"] = self.OnSubStart45101
    self.subStartHandlers["45102"] = self.OnSubStart45102
    self.subStartHandlers["45107"] = self.OnSubStart45107
    self.subStartHandlers["45103"] = self.OnSubStart45103
    self.subStartHandlers["45104"] = self.OnSubStart45104
    self.subStartHandlers["45108"] = self.OnSubStart45108
    self.subStartHandlers["45105"] = self.OnSubStart45105
    self.subStartHandlers["45106"] = self.OnSubStart45106


end

function Quest451:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["45109"] = self.OnSubFinish45109
    self.subFinishHandlers["45101"] = self.OnSubFinish45101
    self.subFinishHandlers["45102"] = self.OnSubFinish45102
    self.subFinishHandlers["45107"] = self.OnSubFinish45107
    self.subFinishHandlers["45103"] = self.OnSubFinish45103
    self.subFinishHandlers["45104"] = self.OnSubFinish45104
    self.subFinishHandlers["45108"] = self.OnSubFinish45108
    self.subFinishHandlers["45105"] = self.OnSubFinish45105
    self.subFinishHandlers["45106"] = self.OnSubFinish45106


end

-- local param begin
-- local param end

-- local method begin
--@region sub start handlers
function Quest451:PaimonDis()
    local paimon = self:GetQuestNpcActor(paimonData.Alias)
    if paimon ~= nil then
        paimon:DestroyWithDisappear(false)
    end
end

function Quest451:PaimonDelay()
    print("paimon shanchu01")
    self:PaimonDis()
end

function Quest451:Razor05()
    local razor = self:GetQuestNpcActor(razorData.Alias)
    if razor ~= nil then
        razor:DoFreeStyle(1230)
    end
end

function Quest451:OnSubStart45109(quest)
    print("45109 start:...")
    self:NarratorOnlyTask(q451Cfg.NarratorFlow1)
    local quest = actorMgr:GetActor(q451Cfg.ActorAlias)
    if quest ~= nil then
        quest:FinishQuestID(false, 45109)
    end
end

function Quest451:OnSubStart45101(quest)
    print("………………………………45101 start:...")
end

function Quest451:OnSubStart45102(quest)
    print("45102 start:...")
    local q45107state = self:GetSubQuestState(45107)
    print("q45107state"  ..q45107state)

    if  q45107state ~=  3 then  -- 任务状态不为完成状态
        print("45102:create paimon")
        self:CreateQuestNpc(quest, paimonData.ID)
        self:RequestInteraction(paimonData.Alias)
    end
end

function Quest451:OnSubStart45103(quest)
end

function Quest451:OnSubStart45104(quest)
    print("45104 start:...")
    globalActor:ChangeWeather("ClearSky")
end

function Quest451:OnSubStart45105(quest)

    self:ActionSafeCall(self.Razor05)
    globalActor:ChangeWeather("ClearSky")

end

function Quest451:OnSubStart45106(quest)
    print("45106 start:...")
end

function Quest451:OnSubStart45108(quest)
    print("45108 start:...")
    
end

--@endregion

--@region sub finish handlers
function Quest451:OnSubFinish45109(quest)
    print("OnFinished 45109")
end

function Quest451:OnSubFinish45101(quest)
    print("OnFinished 45101")
end

function Quest451:OnSubFinish45102(quest)
    print("OnFinished 45102")
    self:ActionSafeCall(self.PaimonDelay)

end

function Quest451:OnSubFinish45103(quest)
    print("OnFinished 45103")
    local task = curtainUtils.CreateEntityCreateTask({razorData.Alias})
    self:CallDelay(2,
        function(self)
            self:PlayCutsceneIndex(45101,
            function(self)
                self:TransmitPlayer(3, sceneData:GetDummyPoint(3, "Q451PlayerPos").pos, sceneData:GetDummyPoint(3, "Q451PlayerPos").rot, nil,
                function (self)
                    self:CreateQuestNpc(quest, razorData.ID)
                    self:RequestInteraction(razorData.Alias)
                    print("SHOW BLACK SCREEN 451")
                end ,task
                )
            end
            )
        end
    )
end

function Quest451:OnSubFinish45104(quest)
    print("OnFinished 45104")
    self:ActionSafeCall(self.PaimonDelay)
    self:ActionSafeCall(
        function(self)
            self:ShowQuestPictureDialog(254)
        end
    )
end

function Quest451:OnSubFinish45105(quest)
    print("OnFinished 45105")
    local razor = self:GetQuestNpcActor(razorData.Alias)
    if razor ~= nil then
        self:ActionSafeCall(
            function(self)
                razor:DoFreeStateTrigger()
            end
        )
    end

    local quest = actorMgr:GetActor(q451Cfg.ActorAlias)
    if quest ~= nil then
        quest:FinishQuestID(false, 45108)
    end

end

function Quest451:OnSubFinish45106(quest)
    print("OnFinished 45106")
    local razor = self:GetQuestNpcActor(razorData.Alias)
    if razor ~= nil then
        self:ActionSafeCall(
            function(self)
                self:DestroyQuestNpcActorByAlias(razorData.Alias, false)
            end
        )
    end

    self:ActionSafeCall(self.PaimonDelay)

end

function Quest451:OnSubFinish45108(quest)
    print("OnFinished 45108")

end

function Quest451:InvokeOnInteraction(param)
    if param == 1 then
        print("Talk45107:Finishi Quest 45107")
        local quest = actorMgr:GetActor(q451Cfg.ActorAlias)
	    if quest ~= nil then
		    quest:FinishQuestID(false, 45107)
        end
    end

    if param == 2 then
        print("45106:*******Quest 45106")
        local razor = self:GetQuestNpcActor(razorData.Alias)
        if razor ~= nil then
            razor:RunToTask(razorData.LeavePos,
                function(razor, task)
                    razor:SetVisible(false)
                end
            )
        end
    end

end
--@endregion

function Quest451:Start()
end

function Quest451:OnDestroy()
end

return Quest451