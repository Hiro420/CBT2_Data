require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q480Marks = class("Q480Marks", gadgetActorProxy)

Q480Marks.defaultAlias = "Q480Marks"

-- local q480Cfg = require('Quest/Client/Q480ClientConfig')

-- local function EndGame()

-- end

local function CreateNext()
    if q480Cfg.TriggerNum < q480Cfg.TotalNum then
        local i = q480Cfg.TriggerNum + 1
        actorMgr:CreateActorWithPos("Q480Marks" .. tostring(i), "Actor/Gadget/Q480Marks", 70300064, 0, q480Cfg.FlyMarks[i].pos, q480Cfg.FlyMarks[i].rot, true, false)
    end
end

function Q480Marks:OnPostDataPrepare()
end

function Q480Marks:OnPostComponentPrepare()
	self:AddComponentTrigger(5, DistType.EULER, M.Pos(0, 0, 0), self.TriggerIn, self.TriggerOut)
end

function Q480Marks:TriggerIn()
    q480Cfg.TriggerNum = q480Cfg.TriggerNum +1
    print("NowTrigger is", q480Cfg.TriggerNum)
    if q480Cfg.TriggerNum == 1 then
        self:CountNumUIStart()
    end
    self:CountNumUIUpdate(q480Cfg.TriggerNum)

    local effctPos = self:GetPos()
    if q480Cfg.TriggerNum < q480Cfg.TotalNum then
        self:PlayEffect("Eff_FlyRace_Marker_Active_AS_Task", effctPos, nil, M.Pos(2, 2, 2))
        CreateNext()
        self:DestroySelf()  
    else
        self:PlayEffect("Eff_FlyRace_Marker_Active_AS_Task", effctPos, nil, M.Pos(2, 2, 2))
        self:CountNumUITerminate()
        local quest = actorMgr:GetActor(q480Cfg.ActorAlias)
        if quest ~= nil then
            quest:FinishQuestID(false, 48002)
        end
        self:DestroySelf()
    end

  
end

function Q480Marks:TriggerOut()

end

return Q480Marks