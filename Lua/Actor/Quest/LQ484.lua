require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')
local DailyNpcManager = require('Actor/DailyNPCManager')

local Quest484 = class("Quest484", questActorProxy)

Quest484.defaultAlias = "Quest484"

local q484Cfg
local subIDs
local mainquestid = 484
local amborData
local witnessData 
local civil01Data 
local civil02Data
local civil03Data

function Quest484:OnDataLoaded()
    q484Cfg = self.clientData
    subIDs = q484Cfg.SubIDs
    amborData = q484Cfg.AmborData
    witnessData = q484Cfg.WitnessData
    civil01Data = q484Cfg.Civil01Data
    civil02Data = q484Cfg.Civil02Data
    civil03Data = q484Cfg.Civil03Data
end

-- Generated
function Quest484:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["48401"] = self.OnSubStart48401
	self.subStartHandlers["48402"] = self.OnSubStart48402
    self.subStartHandlers["48403"] = self.OnSubStart48403
    self.subStartHandlers["48404"] = self.OnSubStart48404
    self.subStartHandlers["48405"] = self.OnSubStart48405
    self.subStartHandlers["48406"] = self.OnSubStart48406
    self.subStartHandlers["48407"] = self.OnSubStart48407
    self.subStartHandlers["48408"] = self.OnSubStart48408
    self.subStartHandlers["48409"] = self.OnSubStart48409
    self.subStartHandlers["48410"] = self.OnSubStart48410   
    self.subStartHandlers["48411"] = self.OnSubStart48411
    self.subStartHandlers["48412"] = self.OnSubStart48412
    self.subStartHandlers["48413"] = self.OnSubStart48413
    self.subStartHandlers["48414"] = self.OnSubStart48414
    self.subStartHandlers["48415"] = self.OnSubStart48415
    self.subStartHandlers["48416"] = self.OnSubStart48416
    self.subStartHandlers["48417"] = self.OnSubStart48417
    self.subStartHandlers["48418"] = self.OnSubStart48418
    self.subStartHandlers["48419"] = self.OnSubStart48419
    self.subStartHandlers["48420"] = self.OnSubStart48420
    self.subStartHandlers["48421"] = self.OnSubStart48421
    self.subStartHandlers["48422"] = self.OnSubStart48422
    self.subStartHandlers["48423"] = self.OnSubStart48423
    self.subStartHandlers["48425"] = self.OnSubStart48425
    self.subStartHandlers["48426"] = self.OnSubStart48426
    self.subStartHandlers["48427"] = self.OnSubStart48427
    self.subStartHandlers["48428"] = self.OnSubStart48428
    self.subStartHandlers["48429"] = self.OnSubStart48429
    self.subStartHandlers["48430"] = self.OnSubStart48430
    self.subStartHandlers["48431"] = self.OnSubStart48431
    self.subStartHandlers["48432"] = self.OnSubStart48432
    self.subStartHandlers["48433"] = self.OnSubStart48433
end

function Quest484:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["48401"] = self.OnSubFinish48401
	self.subFinishHandlers["48402"] = self.OnSubFinish48402
    self.subFinishHandlers["48403"] = self.OnSubFinish48403
    self.subFinishHandlers["48404"] = self.OnSubFinish48404
    self.subFinishHandlers["48405"] = self.OnSubFinish48405
    self.subFinishHandlers["48406"] = self.OnSubFinish48406
    self.subFinishHandlers["48407"] = self.OnSubFinish48407
    self.subFinishHandlers["48408"] = self.OnSubFinish48408
    self.subFinishHandlers["48409"] = self.OnSubFinish48409
    self.subFinishHandlers["48410"] = self.OnSubFinish48410   
    self.subFinishHandlers["48411"] = self.OnSubFinish48411
    -- self.SubFinishHandlers["48412"] = self.OnSubFinish48412
    -- self.SubFinishHandlers["48413"] = self.OnSubFinish48413
    -- self.SubFinishHandlers["48414"] = self.OnSubFinish48414
    -- self.SubFinishHandlers["48415"] = self.OnSubFinish48415
    -- self.SubFinishHandlers["48416"] = self.OnSubFinish48416
    self.subFinishHandlers["48417"] = self.OnSubFinish48417
    -- self.SubFinishHandlers["48418"] = self.OnSubFinish48418
    -- self.SubFinishHandlers["48419"] = self.OnSubFinish48419
    -- self.SubFinishHandlers["48420"] = self.OnSubFinish48420
    -- self.SubFinishHandlers["48421"] = self.OnSubFinish48421
    self.subFinishHandlers["48423"] = self.OnSubFinish48423
    self.subFinishHandlers["48432"] = self.OnSubFinish48432
end

---sub start & finish 内调用的函数


--@region sub start & finish handlers
---按流程触发顺序
function Quest484:OnSubStart48401(quest)
    print("48401 Start ")
    actorMgr:CreateActorWithPos("Q48401Trigger", "Actor/Gadget/Q48401Trigger", 70900002, 0, sceneData:GetDummyPoint(3,"Q484Ambor").pos, sceneData:GetDummyPoint(3,"Q484Ambor").rot, true, false) 
end

function Quest484:OnSubStart48402(quest)
    print("48402 Start ")
    -- self:CallDelay(1, self.RequestAmbor)
    local task = self.CreateQuestNpcCreateTask({amborData.Ambor})
    self:ShowBlackScreen(0.5, 1.0, 0.5,
        function(self)
            self:CreateQuestNpc(quest, amborData.AmborID)

            self:RequestInteraction(amborData.Ambor)
        end
        , nil, task
    )
end

function Quest484:RequestAmbor(quest)
    self:RequestInteraction(amborData.Ambor)
end

function Quest484:OnSubStart48403(quest)
    print("48403 Start ")
    self:UnSpawn("q484Clue1") 
    self:UnSpawn("effectClue1")
    -- globalActor:SpawnItem(100210, sceneData:GetDummyPoint(3,"Q48403").pos, 0, "q484Clue1")
    self:CallDelay(1.5,
            function(self)
                self:SpawnGadget(quest , 70700007 ,1)
                self:SpawnGadget(quest , 70300070 ,2)
                -- self:SpawnGadget(70700007, sceneData:GetDummyPoint(3,"Q48403").pos, sceneData:GetDummyPoint(3,"Q48403").rot, "q484Clue1")
                -- self:SpawnGadget(70300070, sceneData:GetDummyPoint(3,"Q48403").pos, sceneData:GetDummyPoint(3,"Q48403").rot, "effectClue1")
            end
        )
end

function Quest484:OnSubStart48404(quest)
    print("48404 Start ")
    -- self:CallDelay(1, self.RequestAmbor)

end

function Quest484:OnSubStart48405(quest)
    print("48405 Start ")
    self:UnSpawn("q484Clue2") 
    self:UnSpawn("effectClue2") 
    self:CallDelay(1.5,
        function(self)
            self:SpawnGadget(quest , 70700008 ,1)
            self:SpawnGadget(quest , 70300070 ,2)

            -- self:SpawnGadget(70700008, sceneData:GetDummyPoint(3,"Q48405").pos, sceneData:GetDummyPoint(3,"Q48405").rot, "q484Clue2")
            -- self:SpawnGadget(70300070, sceneData:GetDummyPoint(3,"Q48405").pos, sceneData:GetDummyPoint(3,"Q48405").rot, "effectClue2")
        end
    )
end

function Quest484:OnSubStart48406(quest)
    print("48406 Start ")
    -- self:CallDelay(1, self.RequestAmbor)

end

function Quest484:OnSubStart48407(quest)
    print("48407 Start ")
    self:UnSpawn("q484Clue3") 
    self:UnSpawn("effectClue3")
    self:CallDelay(1.5,
        function(self)
            self:SpawnGadget(quest , 70700009 ,1)
            self:SpawnGadget(quest , 70300070 ,2)            
            -- self:SpawnGadget(70700009, sceneData:GetDummyPoint(3,"Q48407").pos, sceneData:GetDummyPoint(3,"Q48407").rot, "q484Clue3")
            -- globalActor:SpawnItem(100212, sceneData:GetDummyPoint(3,"Q48407").pos, 0, "q484Clue3")
            -- self:SpawnGadget(70300070, sceneData:GetDummyPoint(3,"Q48407").pos, sceneData:GetDummyPoint(3,"Q48407").rot, "effectClue3")
        end
    )
end

function Quest484:OnSubStart48408(quest)
    print("48408 Start ")
    -- self:CallDelay(1, self.RequestAmbor)
    self:UnSpawn("effectClue3")
end

function Quest484:OnSubStart48409(quest)
    print("48409 Start ")
    -- self:CallDelay(1, self.RequestAmbor)
    local task = self:CreateQuestNpcCreateTask({amborData.Ambor})

    self:ShowBlackScreen(0.5, 1.0, 0.5,
        function(self)
            self:CreateQuestNpc(quest, amborData.AmborID)

            self:RequestInteraction(amborData.Ambor)
        end
        ,nil ,task
    )
end

function Quest484:OnSubStart48410(quest)
    print("48410 Start ")
    -- self:CallDelay(1, self.RequestAmbor)
    local task = self:CreateQuestNpcCreateTask({amborData.Ambor})

    self:ShowBlackScreen(0.5, 1.0, 0.5,
        function(self)
            self:CreateQuestNpc(quest, amborData.AmborID)

            self:RequestInteraction(amborData.Ambor)
        end
        ,nil ,task
    )
end

function Quest484:OnSubStart48411(quest)
    print("48411 Start ")
end

function Quest484:OnSubStart48413(quest)
    print("48413 Start ")
    ---- 创建触发器和受伤的路人npc
    local quest = actorMgr:GetActor(q484Cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuestID(false, 48413)
    end
end

function Quest484:OnSubStart48414(quest)
    print("48414 Start ")
    ---- 创建触发器和受伤的路人npc
    local quest = actorMgr:GetActor(q484Cfg.ActorAlias) 
    if quest ~= nil then
		quest:FinishQuestID(false, 48414)
    end
end

function Quest484:OnSubStart48415(quest)
    print("48415 Start ")
    actorMgr:CreateActorWithPos("Q484Trigger", "Actor/Gadget/Q484Trigger", 70900002, 0, sceneData:GetDummyPoint(3,"Q48414").pos, sceneData:GetDummyPoint(3,"Q48414").rot, true, false)  
end

function Quest484:OnSubStart48416(quest)
    print("48416 Start ")
    -- self:SpawnMonster(21010201, 5, sceneData:GetDummyPoint(3,"Q48415Mon1").pos)
    -- self:SpawnMonster(21010301, 5, sceneData:GetDummyPoint(3,"Q48415Mon2").pos)
end

function Quest484:OnSubStart48417(quest)
    print("48417 Start ")
    -- self:CallDelay(1, self.RequestAmbor)
    self:NarratorOnlyTask(q484Cfg.AmbushNarrator, nil, "StoryCut")
end

function Quest484:OnSubStart48418(quest)
    print("48418 Start ")
    actorMgr:CreateActorWithPos("Q484Trigger", "Actor/Gadget/Q484Trigger", 70900002, 0, sceneData:GetDummyPoint(3,"Q484Print1").pos, sceneData:GetDummyPoint(3,"Q484Print1").rot, true, false)  
    self:SpawnGadget(quest , 70300070 )

    -- self:SpawnGadget(70300070, sceneData:GetDummyPoint(3,"Q484Print1").pos, sceneData:GetDummyPoint(3,"Q484Print1").rot, "Print1")
end

function Quest484:OnSubStart48419(quest)
    print("48419 Start ")
    actorMgr:CreateActorWithPos("Q484Trigger", "Actor/Gadget/Q484Trigger", 70900002, 0, sceneData:GetDummyPoint(3,"Q484Print2").pos, sceneData:GetDummyPoint(3,"Q484Print2").rot, true, false)  
    self:SpawnGadget(quest , 70300070 )

    -- self:SpawnGadget(70300070, sceneData:GetDummyPoint(3,"Q484Print2").pos, sceneData:GetDummyPoint(3,"Q484Print2").rot, "Print2")
end

function Quest484:OnSubStart48420(quest)
    print("48420 Start ")
    self:SpawnGadget(quest , 70300070 )

    actorMgr:CreateActorWithPos("Q484Trigger", "Actor/Gadget/Q484Trigger", 70900002, 0, sceneData:GetDummyPoint(3,"Q484Print3").pos, sceneData:GetDummyPoint(3,"Q484Print3").rot, true, false)  
    -- self:SpawnGadget(70300070, sceneData:GetDummyPoint(3,"Q484Print3").pos, sceneData:GetDummyPoint(3,"Q484Print3").rot, "Print3")
end

function Quest484:OnSubStart48421(quest)
    print("48421 Start ")
    self:SpawnGadget(quest , 70300070 )

    actorMgr:CreateActorWithPos("Q484Trigger", "Actor/Gadget/Q484Trigger", 70900002, 0, sceneData:GetDummyPoint(3,"Q484Print4").pos, sceneData:GetDummyPoint(3,"Q484Print4").rot, true, false)  
    -- self:SpawnGadget(70300070, sceneData:GetDummyPoint(3,"Q484Print4").pos, sceneData:GetDummyPoint(3,"Q484Print4").rot, "Print4")
end

function Quest484:OnSubStart48422(quest)
    print("48422 Start ")
    self:SpawnGadget(quest , 70300070 )

    actorMgr:CreateActorWithPos("Q484Trigger", "Actor/Gadget/Q484Trigger", 70900002, 0, sceneData:GetDummyPoint(3,"Q484Print5").pos, sceneData:GetDummyPoint(3,"Q484Print5").rot, true, false)  
    -- self:SpawnGadget(70300070, sceneData:GetDummyPoint(3,"Q484Print5").pos, sceneData:GetDummyPoint(3,"Q484Print5").rot, "Print5")
end

function Quest484:OnSubStart48423(quest)
    print("48423 Start ")
    -- self:CallDelay(1, self.RequestAmbor)
    local task = self:CreateQuestNpcCreateTask({amborData.Ambor})

    self:ShowBlackScreen(0.5, 1.0, 0.5,
        function(self)
            self:CreateQuestNpc(quest, amborData.AmborID)

            self:RequestInteraction(amborData.Ambor)
        end
        ,nil ,task
    )
end

function Quest484:OnSubStart48426(quest)
    print("48425 Start ")
end

function Quest484:OnSubStart48427(quest)
    print("48426 Start ")
end

function Quest484:OnSubStart48428(quest)
    print("48427 Start ")
end

function Quest484:OnSubStart48429(quest)
    print("48428 Start ")
	local quest = actorMgr:GetActor(q484Cfg.ActorAlias)
	if quest ~= nil then
        quest:FinishQuestID(false, 48429)
        quest:FinishQuestID(false, 48430)
    end
end

function Quest484:OnSubStart48431(quest)
    print("48430 Start ")
    actorMgr:CreateActorWithPos("Q484SmallTrigger", "Actor/Gadget/Q484SmallTrigger", 70900002, 0, sceneData:GetDummyPoint(3,"Q48412").pos, sceneData:GetDummyPoint(3,"Q48412").rot, true, false)
    self:CreateQuestNpc(quest, witnessData.CivilID)

    self:NotifyTo("Npc1549", DailyNpcManager.NpcEventType.HIDESELF, true)

    self:CallDelay(1,
        function (self)
            local civil = self:GetQuestNpcActor(witnessData.Civil)
            civil:DoFreeStyle(4190)
        end
    )
	local quest = actorMgr:GetActor(q484Cfg.ActorAlias)
	if quest ~= nil then
        quest:FinishQuestID(false, 48405)
    end

end

function Quest484:OnSubStart48432(quest)
    print("48431 Start ")
    -- self:CallDelay(1, self.RequestAmbor)
    self:CallDelay(1.5 , 
        function (self)
            local task = self:CreateQuestNpcCreateTask({amborData.Ambor})
            self:ShowBlackScreen(0.5, 1.0, 0.5,
                    function(self)
                        self:CreateQuestNpc(quest, amborData.AmborID)

                        self:RequestInteraction(amborData.Ambor)
                    end
                    ,nil ,task
                )
            end
    )
end

function Quest484:OnSubStart48433(quest)
    print("48433 Start ")
    ---- 创建触发器和受伤的路人npc
    local quest = actorMgr:GetActor(q484Cfg.ActorAlias)
    if quest ~= nil then
		quest:FinishQuestID(false, 48433)
    end
end

----------------------------------
----------------------------------
function Quest484:DestroyNPC(quest)
    self:ActionSafeCall(
        function(self)
            local ambor = self:GetQuestNpcActor(amborData.Ambor)
            if ambor ~= nil then
                ambor:Destroy(false)
            end
            local paimon = self:GetQuestNpcActor("Paimon")
            if paimon ~= nil then
                paimon:DestroyWithDisappear(false)
            end  
        end
    )
end

function Quest484:OnSubFinish48401(quest)
    print("48401 Finish  ")

end

function Quest484:OnSubFinish48402(quest)
    print("48402 Finish  ")
    self:DestroyNPC()
    self:CallDelay(
		1,
		function(self)
			globalActor:StartGuide("AmborTaskElementViewGuideIOS")
			print("elementview")
		end
	)
end

function Quest484:OnSubFinish48403(quest)
    print("48403 Finish  ")
    self:UnSpawn("effectClue1")
end

function Quest484:OnSubFinish48404(quest)
    print("48404 Finish  ")
    self:DestroyNPC()
    self:NarratorOnlyTask(q484Cfg.Clue1Narrator, nil, "StoryCut")
end

function Quest484:OnSubFinish48405(quest)
    print("48405 Finish  ")
    self:UnSpawn("effectClue2")
end

function Quest484:OnSubFinish48406(quest)
    print("48406 Finish  ")
    self:DestroyNPC()
    if  self:GetSubQuestState(48409) ~= 3 and self:GetSubQuestState(48410) ~= 3 then
        self:NarratorOnlyTask(q484Cfg.Clue2Narrator, nil, "StoryCut")
    end
end

function Quest484:OnSubFinish48407(quest)
    print("48407 Finish  ")
    self:UnSpawn("effectClue3")
end

function Quest484:OnSubFinish48408(quest)
    print("48408 Finish  ")
    self:DestroyNPC()
    self:NarratorOnlyTask(q484Cfg.Clue3Narrator, nil, "StoryCut")
end

function Quest484:OnSubFinish48409(quest)
    print("48409 Finish  ")
    self:DestroyNPC()
    local quest = actorMgr:GetActor(q484Cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuestID(false, 48411)
    end
end

function Quest484:OnSubFinish48410(quest)
    print("48410 Finish  ")
    self:DestroyNPC()
    local quest = actorMgr:GetActor(q484Cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuestID(false, 48411)
    end
end

function Quest484:OnSubFinish48411(quest)
    print("48411 Finish  ")
    self:UnSpawn("q484Clue1") 
    self:UnSpawn("effectClue1")
    self:UnSpawn("q484Clue2") 
    self:UnSpawn("effectClue2")
    self:UnSpawn("q484Clue3") 
    self:UnSpawn("effectClue3")
end

function Quest484:OnSubFinish48417(quest)
    print("48417 Finish  ")
    self:DestroyNPC()
end

function Quest484:OnSubFinish48423(quest)
    print("48423 Finish  ")
    self:DestroyNPC()
    self:NotifyTo("Npc1549", DailyNpcManager.NpcEventType.STARTDAILY, true)
    local fara = self:GetQuestNpcActor(witnessData.Civil)
    if fara ~= nil then
        fara:Destroy(false)
    end
end

function Quest484:OnSubFinish48432(quest)
    print("48432 Finish  ")
    self:DestroyNPC()
end

--@endregion

function Quest484:Start()
end

function Quest484:OnDestroy()
end

return Quest484