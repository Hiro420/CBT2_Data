require('Actor/ActorCommon')
local gadgetActorProxy = require('Actor/Gadget/GadgetActorProxy')

local Q427FlyCoins = class("Q427FlyCoins", gadgetActorProxy)

Q427FlyCoins.defaultAlias = "Q427FlyCoins"

-- local q427Cfg = require('Quest/Client/Q427ClientConfig')

-- local function EndGame()

-- end

local function CreateNext()
    if q427Cfg.NowBatchNum <= q427Cfg.BatchNum then
        for i=1, #q427Cfg.FlyCoins[q427Cfg.NowBatchNum] do
            local j = i + q427Cfg.TotalGetNum
            -- q427Cfg.FlyCoins[q427Cfg.NowBatchNum][i].pos.y = q427Cfg.FlyCoins[q427Cfg.NowBatchNum][i].pos.y -5
            actorMgr:CreateActorWithPos("Q427FlyCoins" .. tostring(j), "Actor/Gadget/Q427FlyCoins", 70300064, 0, q427Cfg.FlyCoins[q427Cfg.NowBatchNum][i].pos, q427Cfg.FlyCoins[q427Cfg.NowBatchNum][i].rot, true, false)
        end

    end
end

function Q427FlyCoins:OnPostDataPrepare()
end

function Q427FlyCoins:OnPostComponentPrepare()
	self:AddComponentTrigger(3, DistType.EULER, M.Pos(0, 0, 0), self.TriggerIn, self.TriggerOut)
end

function Q427FlyCoins:TriggerIn()
    print("TotalGetNum is", q427Cfg.TotalGetNum)
    print("CoinNum is", q427Cfg.CoinNum)
    print("NowBatchNum is", q427Cfg.NowBatchNum)

    q427Cfg.TotalGetNum = q427Cfg.TotalGetNum +1
    if q427Cfg.TotalGetNum == 1 then
        self:CountNumUIStart()
    end
    self:CountNumUIUpdate(q427Cfg.TotalGetNum)

    q427Cfg.EachGetNum = q427Cfg.EachGetNum +1
    if q427Cfg.EachGetNum == #q427Cfg.FlyCoins[q427Cfg.NowBatchNum] then
        q427Cfg.EachGetNum = 0
        q427Cfg.NowBatchNum = q427Cfg.NowBatchNum +1
        CreateNext()
    else
        -- dosth
    end

    local effctPos = self:GetPos()
    if q427Cfg.TotalGetNum < q427Cfg.CoinNum then
        self:PlayEffect("Eff_FlyRace_Marker_Active_AS_Task", effctPos)
    else
        self:PlayEffect("Eff_FlyRace_Marker_Active_AS_Task", effctPos)
        self:CountNumUITerminate()
        local quest = actorMgr:GetActor(q427Cfg.ActorAlias)
        if quest ~= nil then
            quest:FinishQuestID(false, 42702)
        end
        -- self:DestroySelf()
    end

    self:DestroySelf()    



end

function Q427FlyCoins:TriggerOut()

end

return Q427FlyCoins