require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest40002 = class("Quest40002", questActorProxy)

Quest40002.defaultAlias = "Quest40002"

local q40002Cfg
local playerData
local paimonData
local narratorData
local gadget1Data
local setPoint
local searchPoint1
local searchPoint2
local searchPoint3
local searchGadget

function Quest40002:OnDataLoaded()
	q40002Cfg = self.clientData
	playerData = q40002Cfg.PlayerData
    paimonData = q40002Cfg.PaimonData
    narratorData = q40002Cfg.NarratorData
    gadget1Data = q40002Cfg.Gadget1Data
    setPoint = q40002Cfg.SetPointData
    searchPoint1 = q40002Cfg.SearchPoint1
    searchPoint2 = q40002Cfg.SearchPoint2
    searchPoint3 = q40002Cfg.SearchPoint3
    searchGadget = q40002Cfg.SearchGadget
end

--@region Generated
function Quest40002:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["4000201"] = self.OnSubStart4000201
    self.subStartHandlers["4000202"] = self.OnSubStart4000202
    self.subStartHandlers["4000203"] = self.OnSubStart4000203
    self.subStartHandlers["4000204"] = self.OnSubStart4000204
    self.subStartHandlers["4000205"] = self.OnSubStart4000205
    self.subStartHandlers["4000206"] = self.OnSubStart4000206
    -- self.subStartHandlers["4000207"] = self.OnSubStart4000207
    self.subStartHandlers["4000208"] = self.OnSubStart4000208
    self.subStartHandlers["4000209"] = self.OnSubStart4000209
    self.subStartHandlers["4000210"] = self.OnSubStart4000210
    self.subStartHandlers["4000211"] = self.OnSubStart4000211
    self.subStartHandlers["4000212"] = self.OnSubStart4000212
    self.subStartHandlers["4000213"] = self.OnSubStart4000213
    self.subStartHandlers["4000214"] = self.OnSubStart4000214
    self.subStartHandlers["4000215"] = self.OnSubStart4000215
end

function Quest40002:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["4000201"] = self.OnSubFinish4000201
    self.subFinishHandlers["4000202"] = self.OnSubFinish4000202
    self.subFinishHandlers["4000203"] = self.OnSubFinish4000203
    self.subFinishHandlers["4000204"] = self.OnSubFinish4000204
    self.subFinishHandlers["4000205"] = self.OnSubFinish4000205
    self.subFinishHandlers["4000206"] = self.OnSubFinish4000206
    -- self.subFinishHandlers["4000207"] = self.OnSubFinish4000207
    self.subFinishHandlers["4000208"] = self.OnSubFinish4000208
    self.subFinishHandlers["4000209"] = self.OnSubFinish4000209
    self.subFinishHandlers["4000210"] = self.OnSubFinish4000210
    self.subFinishHandlers["4000211"] = self.OnSubFinish4000211
    self.subFinishHandlers["4000212"] = self.OnSubFinish4000212
    self.subFinishHandlers["4000213"] = self.OnSubFinish4000213
    self.subFinishHandlers["4000214"] = self.OnSubFinish4000214
    self.subFinishHandlers["4000215"] = self.OnSubFinish4000215
end
--@endregion

--@region sub start & finish 内调用的函数

--@endregion

--@region sub start & finish handlers
---按流程触发顺序
function Quest40002:OnSubStart4000201(quest)
	print("4000201 OnStart")
	local quest = actorMgr:GetActor(q40002Cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuest(false, nil)
	end
end

function Quest40002:OnSubFinish4000201(quest)
	print("4000201 OnFinished")
	self:NarratorOnlyTask(narratorData.Story1, nil, "StoryCut")
end

function Quest40002:OnSubFinish4000202(quest)
    print("4000201 OnFinished")
	local paimon = self:GetQuestNpcActor(paimonData.Alias)
	if paimon ~= nil then
        paimon:DestroyWithDisappear(false)
    end
end

function Quest40002:OnSubStart4000205(quest)
    print("4000205 OnFinished")
    local quest = actorMgr:GetActor(q40002Cfg.ActorAlias)
    if quest ~= nil then
        quest:FinishQuestID(false, 4000216)
    end
end

function Quest40002:OnSubFinish4000205(quest)
    print("4000205 OnFinished")
	local paimon = self:GetQuestNpcActor(paimonData.Alias)
	if paimon ~= nil then
        paimon:DestroyWithDisappear(false)
    end
end

function Quest40002:OnSubFinish4000206(quest)
    print("4000206 OnFinish")
    globalActor:EnablePlayerInput(false)
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3,"Q40007_ThiefRout1").pos, 0, 2, true, true)
    self:NarratorOnlyTask(narratorData.Story5, nil, "Story")
end

function Quest40002:OnSubStart4000207(quest)
    print("4000207 OnStart")
end

function Quest40002:OnSubFinish4000207(quest)
    print("4000207 OnFinished")
	-- local paimon = actorMgr:GetActor(paimonData.Alias)
	-- if paimon ~= nil then
    --     paimon:DestroyWithDisappear(false)
    -- end
end

function Quest40002:OnSubStart4000208(quest)
    print("4000208 OnStart")
    self:CallDelay(2,
        function()
            globalActor:EnablePlayerInput(true)
        end
    )
    self:SetQuestVar(quest.QuestConfigId, 0, 1)
end

function Quest40002:OnSubStart4000209(quest)
    print("4000209 OnStart")
    --globalActor:SpawnGadget(searchGadget.ID1, searchPoint1.BornPos, searchPoint1.BornDir, searchGadget.Alias1)
    self:SpawnGadget(quest, searchGadget.ID1, 1)
end

function Quest40002:OnSubFinish4000209(quest)
    print("4000209 OnFinish")

    local n = self:GetQuestVar(quest.QuestConfigId, 0)

    if n == 1 then
        self:NarratorOnlyTask(narratorData.Story2, nil, "Story")
    elseif n == 2 then
        self:NarratorOnlyTask(narratorData.Story3, nil, "Story")
    end

    n = n + 1
    self:SetQuestVar(quest.QuestConfigId, 0, n)
end

function Quest40002:OnSubStart4000210(quest)
    print("4000210 OnStart")
    --globalActor:SpawnGadget(searchGadget.ID2, searchPoint2.BornPos, searchPoint2.BornDir, searchGadget.Alias2)
    self:SpawnGadget(quest, searchGadget.ID2, 1)
end

function Quest40002:OnSubFinish4000210(quest)
    print("4000210 OnFinish")
    local n = self:GetQuestVar(quest.QuestConfigId, 0)

    if n == 1 then
        self:NarratorOnlyTask(narratorData.Story2, nil, "Story")
    elseif n == 2 then
        self:NarratorOnlyTask(narratorData.Story3, nil, "Story")
    end
    
    n = n + 1
    self:SetQuestVar(quest.QuestConfigId, 0, n)
end

function Quest40002:OnSubStart4000211(quest)
    print("4000211 OnStart")
    --globalActor:SpawnGadget(searchGadget.ID3, searchPoint3.BornPos, searchPoint3.BornDir, searchGadget.Alias3)
    self:SpawnGadget(quest, searchGadget.ID3, 1)
end

function Quest40002:OnSubFinish4000211(quest)
    print("4000211 OnFinish")
    local n = self:GetQuestVar(quest.QuestConfigId, 0)

    if n == 1 then
        self:NarratorOnlyTask(narratorData.Story2, nil, "Story")
    elseif n == 2 then
        self:NarratorOnlyTask(narratorData.Story3, nil, "Story")
    end
    
    n = n + 1
    self:SetQuestVar(quest.QuestConfigId, 0, n)
end

function Quest40002:OnSubFinish4000212(quest)
	print("4000212 OnFinish")
	local quest = actorMgr:GetActor(q40002Cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuestID(false, 4000213)
	end
end

function Quest40002:OnSubStart4000214(quest)
    print("4000214 OnStart")
    local task = self.CreateQuestNpcCreateTask({paimonData.Alias})

    self:ShowBlackScreen(0.5,1,0.5)
    self:TransmitPlayer(3, playerData.BornPos, playerData.BornDir, nil,
        function (self)
            self:CallDelay(2,
                function()
                    self:CreateQuestNpc(quest, paimonData.ID)
                    self:RequestInteraction(paimonData.Alias)
                end
            )
        end, task
    )
end

function Quest40002:OnSubFinish4000214(quest)
    print("4000214 OnFinished")
	local paimon = self:GetQuestNpcActor(paimonData.Alias)
	if paimon ~= nil then
        paimon:DestroyWithDisappear(false)
    end
end

function Quest40002:OnSubFinish4000215(quest)
    print("4000215 OnFinished")
    local paimon = self:GetQuestNpcActor(paimonData.Alias)
	if paimon ~= nil then
        paimon:DestroyWithDisappear(false)
    end
end
--@endregion

function Quest40002:Start()
end

function Quest40002:OnDestroy()
end

return Quest40002