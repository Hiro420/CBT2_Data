require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest383 = class("Quest383", questActorProxy)

Quest383.defaultAlias = "Quest383"

local q383Cfg  
local subIDs
local wendyData  
local dilucData  
local qinData  

function Quest383:OnDataLoaded()
    q383Cfg = self.clientData
    subIDs = q383Cfg.SubIDs
    wendyData = q383Cfg.WendyData
    dilucData = q383Cfg.DilucData
    qinData = q383Cfg.QinData
end

-- Generated
function Quest383:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["38301"] = self.OnSubStart38301
    self.subStartHandlers["38302"] = self.OnSubStart38302    
    self.subStartHandlers["38303"] = self.OnSubStart38303    
    self.subStartHandlers["38304"] = self.OnSubStart38304    
end

function Quest383:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["38301"] = self.OnSubFinish38301
    self.subFinishHandlers["38302"] = self.OnSubFinish38302
    self.subFinishHandlers["38303"] = self.OnSubFinish38303
    self.subFinishHandlers["38304"] = self.OnSubFinish38304
end

-- local param begin
-- local param end

-- local method begin
--@region sub start handlers


function Quest383:OnSubStart38301(quest)  
    print("38301 start ")
 
end

function Quest383:OnSubStart38302(quest)
    print("38302 start:...")
    self:CreateQuestNpc(quest, wendyData.WendyID)
    self:CreateQuestNpc(quest, dilucData.DilucID)
    self:CreateQuestNpc(quest, qinData.QinID)

end

function Quest383:OnSubStart38303(quest)
    print("38303 start:...")
    self:RequestInteraction(wendyData.Wendy)
end

function Quest383:OnSubStart38304(quest)
    print("38304 start:...")
    self:RequestInteraction(qinData.Qin)
end


function Quest383:InvokeOnInteraction(param)
    if param == 3 then
        print("Test!!!!!!!!!!!!!!!!")
        self.uActor:AvatarPaimonAppear()
    elseif param == 4 then
        self.uActor:AvatarPaimonDisappear(nil, true)
    end
end
--@endregion

--@region sub finish handlers
function Quest383:OnSubFinish38301(quest)
    print("OnFinished 38301")
end

function Quest383:OnSubFinish38302(quest)
    print("OnFinished 38302")
end

function Quest383:OnSubFinish38303(quest)
    print("OnFinished 38303")
end

function Quest383:OnSubFinish38304(quest)
    print("OnFinished 38304")
    -- self:ActionSafeCall(
    --     function(self)
    --         local wendy = actorMgr:GetActor(wendyData.Wendy)
    --         if wendy ~= nil then
    --             wendy:Destroy(false)
    --         end
    --     end
    -- )

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
    --         local diluc = actorMgr:GetActor(dilucData.Diluc)
    --         if diluc ~= nil then
    --             diluc:Destroy(false)
    --         end
    --     end
    -- )

    -- self:ActionSafeCall(
    --     function(self)
    --         local qin = actorMgr:GetActor(qinData.Qin)
    --         if qin ~= nil then
    --             qin:Destroy(false)
    --         end
    --     end
    -- )
end

function Quest383:InvokeOnInteraction(param)
    if param == 1 then
        print("Now Spawn Tears")
        self:SpawnGadgetById(38302 , 70300202,1 )
        -- self:SpawnGadget(70300202, sceneData:GetDummyPoint(3,"Q383Tear102").pos, sceneData:GetDummyPoint(3,"Q383Tear102").rot, "Tears1", 3)
        self:CallDelay(0.07,
            function (self)
                self:SpawnGadgetById(38302 , 70300202,2 )
                -- self:SpawnGadget(70300202, sceneData:GetDummyPoint(3,"Q383Tear101").pos, sceneData:GetDummyPoint(3,"Q383Tear102").rot, "Tears2", 3)
            end
        )
        self:CallDelay(0.15,
            function (self)
                self:SpawnGadgetById(38302 , 70300202,3 )
                -- self:SpawnGadget(70300202, sceneData:GetDummyPoint(3,"Q383Tear103").pos, sceneData:GetDummyPoint(3,"Q383Tear102").rot, "Tears3", 3)
            end
        )
    elseif param == 2 then
        print("Now Destroy Tears")
        self:UnSpawn("Tears1") 
        self:UnSpawn("Tears2") 
        self:UnSpawn("Tears3") 
        self:SpawnGadgetById(38302 , 70300042,4 )
        -- self:SpawnGadget(70300042, sceneData:GetDummyPoint(3,"Q383Tear202").pos, sceneData:GetDummyPoint(3,"Q383Tear102").rot, "Tears4", 3)
        self:CallDelay(0.04,
            function (self)
                self:SpawnGadgetById(38302 , 70300042,5 )
                -- self:SpawnGadget(70300042, sceneData:GetDummyPoint(3,"Q383Tear201").pos, sceneData:GetDummyPoint(3,"Q383Tear102").rot, "Tears5", 3)
            end
        )
        self:CallDelay(0.07,
        function (self)
            self:SpawnGadgetById(38302 , 70300042,6 )
            -- self:SpawnGadget(70300042, sceneData:GetDummyPoint(3,"Q383Tear203").pos, sceneData:GetDummyPoint(3,"Q383Tear102").rot, "Tears6", 3)
        end
    )
    elseif param == 3 then
        self:UnSpawn("Tears4") 
        self:UnSpawn("Tears5") 
        self:UnSpawn("Tears6") 
    elseif param == 6 then
        self:SpawnGadgetById(38302 , 70300201,7 )
        -- self:SpawnGadget(70300201, sceneData:GetDummyPoint(3,"Q383Harp").pos, sceneData:GetDummyPoint(3,"Q383Harp").rot, "Harp01", 3)
    elseif param == 7 then
        self:UnSpawn("Harp01") 
    end
end

--@endregion

function Quest383:Start()
end

function Quest383:OnDestroy()
end

return Quest383