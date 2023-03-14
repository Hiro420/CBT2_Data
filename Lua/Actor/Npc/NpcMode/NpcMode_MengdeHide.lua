local BaseMode = require('Actor/BaseActorMode')
local NpcEventType = require('Actor/Npc/NPCEventType')
local NpcMode_Hide = class("NpcMode_MengdeHide", BaseMode)

--@region Default
NpcMode_Hide.DefaultAction = function(self)
    self:PerformDither(false, 2, self.HideSelf)
    self:RegisterActorEvent(self.OnEvent)
end
--@endregion

--@region StoreKeeper01
NpcMode_Hide["StoreKeeper01"] = function(self)
    local scaredPos = sceneData:GetDummyPoint(3, "NPCScaredPoint05").pos
    self:DoAppear()
    self:SetPos(scaredPos)
    self:DoFreeStyle(362)
end
--@endregion

NpcMode_Hide.OnEvent=function(actor,evt)
    if evt.evtType == NpcEventType.STARTDAILY then
        print("NpcMode_Hide STARTDAILY")
        actor:StartDaily()
    end
end



return NpcMode_Hide