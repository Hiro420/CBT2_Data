require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest40006 = class("Quest40006", questActorProxy)

Quest40006.defaultAlias = "Quest40006"

local q40006Cfg = require('Quest/Client/Q40006ClientConfig')

-- Generated
function Quest40006:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["4000601"] = self.OnSubStart4000601
end

function Quest40006:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
	self.subFinishHandlers["4000601"] = self.OnSubFinish4000601
end

--@region start & finish 内调用的函数
function Quest40006:ClearIcon()
    print("Clear NpcIcon")
    local huixin = actorMgr:GetActor("Npc2029")
    huixin:ClearGeneralMark()

    local xiaozongguan = actorMgr:GetActor("Npc2004")
    xiaozongguan:ClearGeneralMark()
end
--@endregion

--@region sub start & finish handlers
function Quest40006:OnSubStart4000601(quest)
    print("4000601 start:")
    local huixin = actorMgr:GetActor("Npc2029")
    huixin:AddGeneralMark("UI_NPCTopIcon_Activity_SeaLamp")

    local xiaozongguan = actorMgr:GetActor("Npc2004")
    xiaozongguan:AddGeneralMark("UI_NPCTopIcon_GeneralCargo")
end

-- function Quest40006:OnSubFinish4000601(quest)
--     print("4000601 end:")
--     local huixin = actorMgr:GetActor("Npc2029")
--     huixin:ClearGeneralMark()

--     local xiaozongguan = actorMgr:GetActor("Npc2004")
--     xiaozongguan:ClearGeneralMark()
-- end
---按流程触发顺序

--@endregion

function Quest40006:Start()
end

function Quest40006:OnDestroy(quest)
    print("Quest40006:OnDestroy")
    self:ClearIcon()
end

function Quest40006:OnMainCanceled(quest)
    print("Quest40006:OnMainCancele")
    self:ClearIcon()
end

return Quest40006