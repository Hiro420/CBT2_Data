require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest429 = class("Quest429", questActorProxy)

Quest429.defaultAlias = "Quest429"

local q429Cfg = require('Quest/Client/Q429ClientConfig')
local enemyWaveData =
{
    q429Cfg.EnemyWave1,
    q429Cfg.EnemyWave2,
    q429Cfg.EnemyWave3,
    q429Cfg.EnemyWave4,
    q429Cfg.EnemyWave5,
    q429Cfg.EnemyWave6,
    q429Cfg.EnemyWave7,
}

local subIDs = q429Cfg.SubIDs

-- Generated
function Quest429:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
	self.subStartHandlers["42901"] = self.OnSubStart42901
	self.subStartHandlers["42902"] = self.OnSubStart42902
	self.subStartHandlers["42903"] = self.OnSubStart42903
	self.subStartHandlers["42904"] = self.OnSubStart42904
    self.subStartHandlers["42905"] = self.OnSubStart42905
end

function Quest429:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
	self.subFinishHandlers["42901"] = self.OnSubFinish42901
	self.subFinishHandlers["42902"] = self.OnSubFinish42902
	self.subFinishHandlers["42903"] = self.OnSubFinish42903
	self.subFinishHandlers["42904"] = self.OnSubFinish42904
    self.subFinishHandlers["42905"] = self.OnSubFinish42905
end

function Quest429:EnemyWaveStart()
    if q429Cfg.CurrentWave <= q429Cfg.WaveNum then
        local currentWave = enemyWaveData[q429Cfg.CurrentWave]
        for i = 1, #currentWave do
            self:SpawnMonster(currentWave[i].ConfigID, currentWave[i].Level, q429Cfg.EnemyPos[i], nil, nil, nil, "Enemy" .. tostring(q429Cfg.CurrentWave) .. tostring(i))
            print("*******Enemy*******" .. tostring(q429Cfg.CurrentWave) .. tostring(i))
        end
        self:ShowMessage("新的敌人已经出现" .. tostring(q429Cfg.CurrentWave))
        q429Cfg.CurrentWave = q429Cfg.CurrentWave + 1
        self:CallDelay(q429Cfg.WavePeriod, self.EnemyWaveStart)
    end
end

function Quest429:CoinGrow()
    if q429Cfg.GameOn == true then
        self:CountNumUIStart()
        q429Cfg.CurrentCoin = q429Cfg.CurrentCoin + 2
        self:CountNumUIUpdate(q429Cfg.CurrentCoin)
        self:CallDelay(1, self.CoinGrow)
    end
end

function Quest429:GameDestroy()
    for i = 1, q429Cfg.WaveNum do
        for j = 1, #enemyWaveData[i] do
            self:UnSpawn("Enemy" .. tostring(i) .. tostring(j))
        end
    end
    for k = 1, q429Cfg.FriendlyNum do
        self:UnSpawn("Friendly" .. tostring(k))
    end
    self:UnSpawn("Box")
    self:CallDelay(3,self.CountNumUITerminate)
    self:UnCallFunc(self.EnemyWaveStart)
    self:UnCallFunc(self.CoinGrow)
    q429Cfg.GameOn = false
end

function Quest429:CountDown()
    if q429Cfg.Finish == false then
        local quest = actorMgr:GetActor(q429Cfg.ActorAlias)
        if quest ~= nil then
            quest:FinishQuestID(true, 42902)
            quest:FinishQuestID(true, 42903)
        end
    end
    self:GameDestroy()
end

--@region sub start handlers
function Quest429:OnSubStart42901(quest)
    print("42901 start: Spawn Judge npc")  
    actorMgr:CreateActorWithPos(q429Cfg.AutoChessJudgeData.alias, q429Cfg.AutoChessJudgeData.metaPath, q429Cfg.AutoChessJudgeData.configID, 0, q429Cfg.AutoChessJudgeData.bornPos, q429Cfg.AutoChessJudgeData.bornDir, true, false, 3)
    self:GameDestroy()
end

function Quest429:OnSubStart42902(quest)
    if q429Cfg.GameOn == false then
        self:GameDestroy()
        q429Cfg.CurrentCoin = q429Cfg.InitialCoin
        q429Cfg.CurrentWave = 1
        q429Cfg.Finish = false
        q429Cfg.GameOn = true
        q429Cfg.FriendlyNum = 0

        self:SpawnGadget(q429Cfg.BoxID, q429Cfg.BoxPos, q429Cfg.BoxDir, "Box", 3)
        self:EnemyWaveStart()
        self:CountNumUIStart()
        self:CountNumUIUpdate(q429Cfg.CurrentCoin)
        self:CountDownUIStart(q429Cfg.MatchTime+10, 10, 3)
        self:CoinGrow()
        self:CallDelay(q429Cfg.MatchTime+14,self.CountDown)
    end
end

function Quest429:OnSubFinish42903(quest)
    print("OnFinish42903:Monster killed")
    q429Cfg.CurrentCoin = q429Cfg.CurrentCoin + q429Cfg.KillCoin
    self:CountNumUIUpdate(q429Cfg.CurrentCoin)
    self:ShowMessage("击退奖励，余额 + " .. tostring(q429Cfg.KillCoin) .. "当前余额：" .. tostring(q429Cfg.CurrentCoin))
end

function Quest429:OnSubStart42904(quest)
    print("OnStart42904:Success")
    self:UnCallFunc(self.CountDown)
    self:CountDownUITerminate()
    q429Cfg.Finish = true
    self:GameDestroy()
end

function Quest429:OnSubStart42905(quest)
    print("42905 start: Failed")
end

--@endregion

--@region sub finish handlers
function Quest429:InvokeOnInteraction(param)
    param = tonumber(param)
    print("*****INVOKE*****429*****" .. tostring(param) .."*********")
    print("*****GAMEON*****429*****" .. tostring(q429Cfg.GameOn))
    print("*****COIN*****429*****" .. tostring(q429Cfg.CurrentCoin).."***"..tostring(q429Cfg.FriendlyData[param].Cost))
    
    if q429Cfg.CurrentCoin >= q429Cfg.FriendlyData[param].Cost and q429Cfg.GameOn == true then
        q429Cfg.CurrentCoin = q429Cfg.CurrentCoin - q429Cfg.FriendlyData[param].Cost
        self:CountNumUIUpdate(q429Cfg.CurrentCoin)
        q429Cfg.FriendlyNum = q429Cfg.FriendlyNum + 1
        self:SpawnMonster(q429Cfg.FriendlyData[param].ConfigID, q429Cfg.FriendlyData[param].Level, q429Cfg.FriendlyPos, nil, nil, nil, "Friendly" .. tostring(q429Cfg.FriendlyNum))
        print("*******Friend*******" .. tostring(q429Cfg.FriendlyNum))
        self:ShowMessage("派遣成功，当前余额：" .. tostring(q429Cfg.CurrentCoin))
    else
        print("*******429******Friend*******Failed")
        self:ShowMessage("余额不足，派遣失败；当前余额：" .. tostring(q429Cfg.CurrentCoin))
    end
end


--@endregion

function Quest429:Start()
end

function Quest429:OnDestroy()
end

return Quest429