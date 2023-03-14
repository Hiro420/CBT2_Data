require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest20052 = class("Quest20052", questActorProxy)

Quest20052.defaultAlias = "Quest20052"

local q20052Cfg = require('Quest/Client/Q20052ClientConfig')
local NPCData = q20052Cfg.TempNPCData
-- Generated
function Quest20052:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["2005201"] = self.OnSubStart2005201
	self.subStartHandlers["2005202"] = self.OnSubStart2005202
end

function Quest20052:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["2005201"] = self.OnSubFinish2005201
	self.subFinishHandlers["2005202"] = self.OnSubFinish2005202
end

---sub start & finish 内调用的函数
function Quest20052:DestroyNPC()
    print("DestroyNPC")
    self:ActionSafeCall(
        function(self)
            self:ShowBlackScreen(0.5, 1, 0.5,
                function (self)
                local NPC = actorMgr:GetActor(TempNPCData.TempNPC)
                    if NPC ~= nil then
                        NPC:Destroy(false)
                    end
                end
            )
        end
    )
end

--@region sub start & finish handlers
---按流程触发顺序
function Quest20052:OnSubStart2005201(quest)
    print("2005201 Start and Create NPC")
    actorMgr:CreateActorWithPos(NPCData.TempNPC, NPCData.Script, NPCData.ID, 0, NPCData.Pos, NPCData.Pos, true, false, 3, true)  
end

function Quest20052:OnSubFinish2005201(quest)
    print("2005201 Finish and Destroy NPC")
    self.DestroyNPC() 
end

--@endregion

function Quest20052:Start()
end

function Quest20052:OnDestroy()
end

return Quest20052