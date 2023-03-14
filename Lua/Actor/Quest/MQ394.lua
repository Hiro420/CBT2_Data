require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest394 = class("Quest394", questActorProxy)

Quest394.defaultAlias = "Quest394"

local q394Cfg
local wendyData
local bbrData
local qinData

function Quest394:OnDataLoaded()
    q394Cfg = self.clientData
    wendyData = q394Cfg.WendyData
    bbrData = q394Cfg.BarbaraData
    qinData = q394Cfg.QinData
end

-- Generated
function Quest394:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["39401"] = self.OnSubStart39401
    self.subStartHandlers["39402"] = self.OnSubStart39402
    self.subStartHandlers["39403"] = self.OnSubStart39403
end

function Quest394:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["39401"] = self.OnSubFinish39401
    self.subFinishHandlers["39402"] = self.OnSubFinish39402
    self.subFinishHandlers["39403"] = self.OnSubFinish39403
end

-- local param begin
--@region sub start handlers
function Quest394:On39403CutSceneFinish()
    self:ShowBlackScreen(0, 0.5, 0)
    local quest = actorMgr:GetActor(q394Cfg.ActorAlias)
    if quest ~= nil then
        quest:FinishQuest(false, nil)
    end

    self:CallDelay(6,
        function(self)
            self:TransmitPlayer(3, sceneData:GetDummyPoint(3,"Q39601TransPos").pos, sceneData:GetDummyPoint(3,"Q39601TransPos").rot)
        end
    )
end

function Quest394:On39403CutSceneFinishRewind()
    local quest = actorMgr:GetActor(q394Cfg.ActorAlias)
    if quest ~= nil then
        quest:FinishQuest(false, nil)
    end

    self:TransmitPlayer(3, sceneData:GetDummyPoint(3,"Q39601TransPos").pos, sceneData:GetDummyPoint(3,"Q39601TransPos").rot)
end
--@endregion
-- local param end

---sub start & finish 内调用的函数
-- end

-- local method begin
--@region sub start handlers
function Quest394:OnSubStart39401(quest)
    print("39401 start ")
end

function Quest394:OnSubStart39402(quest)
    print("39402 start:...")
end

function Quest394:OnSubStart39403(quest)
    print("39403 start:...")
    local globalVar1 = self:GetQuestVar(quest.QuestConfigId, 0)
    if globalVar1 == 2 then  --For Quest Rewind
        self:PlayCutsceneIndex(39403, self.On39403CutSceneFinishRewind)

    else                     --For Normal
        self:CallDelay(7,
        function (self)
            self:ShowBlackScreen(0.5, 1, 0.5,
            function (self)
                self:PlayCutsceneIndex(39403, self.On39403CutSceneFinish)
            end
            )
        end
        )
    end
end
--@endregion

--@region sub finish handlers
function Quest394:OnSubFinish39401(quest)
    print("OnFinished 39401")
end

function Quest394:OnSubFinish39402(quest)
    print("OnFinished 39402")
end

function Quest394:OnSubFinish39403(quest)
    print("OnFinished 39403")
end
--@endregion

function Quest394:Start()
end

function Quest394:OnDestroy()
end

return Quest394