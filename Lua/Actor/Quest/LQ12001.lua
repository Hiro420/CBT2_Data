require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest12001 = class("Quest12001", questActorProxy)

Quest12001.defaultAlias = "Quest12001"
util.do_require('Quest/Share/Q12001ShareConfig')
local q12001Cfg = require('Quest/Client/Q12001ClientConfig')
local PaimonData=q12001Cfg.PaimonData
local XingQiuData=q12001Cfg.XingQiuData
local WlyData=q12001Cfg.WlyData
local ManagerData=q12001Cfg.ManagerData

local sneakAIData =
{
    q12001Cfg.SneakAI1Data,
    q12001Cfg.SneakAI2Data,
    q12001Cfg.SneakAI3Data,
    q12001Cfg.SneakAI4Data,
    q12001Cfg.SneakAI5Data,
    q12001Cfg.SneakAI6Data,
    q12001Cfg.SneakAI7Data,
    q12001Cfg.SneakAI8Data,
    q12001Cfg.SneakAI9Data,
    q12001Cfg.SneakAI10Data,
   -- q12001Cfg.SneakAI11Data,
   -- q12001Cfg.SneakAI12Data,
   -- q12001Cfg.SneakAI13Data,
   -- q12001Cfg.SneakAI14Data,
}
local FailNum = 0

-- Generated
function Quest12001:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["1200101"] = self.OnSubStart1200101
	self.subStartHandlers["1200102"] = self.OnSubStart1200102
	self.subStartHandlers["1200103"] = self.OnSubStart1200103
	self.subStartHandlers["1200104"] = self.OnSubStart1200104
	self.subStartHandlers["1200105"] = self.OnSubStart1200105
	self.subStartHandlers["1200106"] = self.OnSubStart1200106
	self.subStartHandlers["1200107"] = self.OnSubStart1200107
	self.subStartHandlers["1200108"] = self.OnSubStart1200108
	self.subStartHandlers["1200109"] = self.OnSubStart1200109
	self.subStartHandlers["1200110"] = self.OnSubStart1200110
	self.subStartHandlers["1200111"] = self.OnSubStart1200111
end

function Quest12001:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["1200101"] = self.OnSubFinish1200101
	self.subFinishHandlers["1200102"] = self.OnSubFinish1200102
	self.subFinishHandlers["1200103"] = self.OnSubFinish1200103
	self.subFinishHandlers["1200104"] = self.OnSubFinish1200104
	self.subFinishHandlers["1200105"] = self.OnSubFinish1200105
	self.subFinishHandlers["1200106"] = self.OnSubFinish1200106
	self.subFinishHandlers["1200107"] = self.OnSubFinish1200107
	self.subFinishHandlers["1200108"] = self.OnSubFinish1200108
	self.subFinishHandlers["1200109"] = self.OnSubFinish1200109
	self.subFinishHandlers["1200110"] = self.OnSubFinish1200110
	self.subFinishHandlers["1200111"] = self.OnSubFinish1200111
end


---sub start & finish 内调用的函数
function Quest12001:PaimonVanish()
	print("paimon vanish")
	local paimon = self:GetQuestNpcActor(PaimonData.Alias)
	paimon:AirModeOff()
	--paimon:VanishKeep()
	if paimon ~= nil then
		paimon:DestroyWithDisappear(false)
	end
end

function Quest12001:XingQiuDestroy()
    local XingQiu = self:GetQuestNpcActor(XingQiuData.Alias)
	if XingQiu ~= nil then
		XingQiu:Destroy(false)
	end
end

function Quest12001:WlyDestroy()
    local Wly = self:GetQuestNpcActor(WlyData.Alias)
	if Wly ~= nil then
		Wly:Destroy(false)
	end
end

function Quest12001:ManagerDestroy()
    local Manager = self:GetQuestNpcActor(ManagerData.Alias)
	if Manager ~= nil then
		Manager:Destroy(false)
	end
end

function Quest12001:InvokeOnInteraction(param)
        if param == 10 then
            self:ShowBlackScreen(0.5, 2, 0.5, nil, nil, nil, "QUEST_Message_Q12001")
        end
    end
function Quest12001:setbook()
	local bookpos = {x=-507.0439,y=250.2809,z=454.3605}
	local bookrot = {x=107.1,y=-50.4,z=-89.4}
	self:SpawnGadgetByIdWithPos(1200108, 70710060, 1, bookpos,bookrot)
	print("***********set book ***********")
end
---sneak 
function Quest12001:SneakStart()

    self:EnterSceneLookCamera(q12001Cfg.KeyPos, 1.5, 3, true)

end

function Quest12001:FailMovePlayer()
    print("fail move player ")
    self:TransmitPlayer(3,sceneData:GetDummyPoint(3,"Q1200109Fail").pos, sceneData:GetDummyPoint(3,"Q1200109Fail").rot, self.FinishSneak)
    self:ExitSneakMode()
    self:TriggerLevelAbility("Level_Remove_Switch_SneakBtn")
end

function Quest12001:SuccessMovePlayer()
    print("success move player ")
    -- self:UnSpawn("Harp") 
    self:ExitSneakMode()
    self:TriggerLevelAbility("Level_Remove_Switch_SneakBtn")

    
end

function Quest12001:SuccTrans(quest)
    --self:TransmitPlayer(3,sceneData:GetDummyPoint(3,"Q1200109Venti").pos, sceneData:GetDummyPoint(3,"Q1200109Venti").rot)
    print("SuccTrans")
    
end
function Quest12001:FinishSneak()
    local quest = actorMgr:GetActor(q12001Cfg.ActorAlias)
    if quest ~= nil then
        quest:FinishQuest(false, nil)
    end 
    self:CallDelay(1, 
    function(self)
        self:NarratorOnlyTask(q12001Cfg.FailReminder)
    end
)

end
function Quest12001:TransmitNarrator()
    self:CallDelay(1,
    function(self)
        self:NarratorOnlyTask(q12001Cfg.NarratorData2)
    end
    )
end
function Quest12001:SneakAIPrepare()
   print("FailNum is", FailNum)
    if FailNum < 4 then 
        sneakAIData =
        {
            q12001Cfg.SneakAI1Data,
            q12001Cfg.SneakAI2Data,
           -- q12001Cfg.SneakAI3Data,
            q12001Cfg.SneakAI4Data,
            q12001Cfg.SneakAI5Data,
            q12001Cfg.SneakAI6Data,
            q12001Cfg.SneakAI7Data,
			q12001Cfg.SneakAI8Data,
            q12001Cfg.SneakAI9Data,
            q12001Cfg.SneakAI10Data,
           -- q12001Cfg.SneakAI11Data,
           -- q12001Cfg.SneakAI12Data,
           -- q12001Cfg.SneakAI13Data,
           -- q12001Cfg.SneakAI14Data,
        }
        q12001Cfg.SneakAINum = 9
        print("SneakAINum is", q12001Cfg.SneakAINum)
    else sneakAIData =
        {
            q12001Cfg.SneakAI1Data,
            q12001Cfg.SneakAI4Data,
            --q12001Cfg.SneakAI5Data,
            q12001Cfg.SneakAI6Data,
           -- q12001Cfg.SneakAI8Data,
            q12001Cfg.SneakAI9Data,
           -- q12001Cfg.SneakAI10Data,
           -- q12001Cfg.SneakAI12Data,
           -- q12001Cfg.SneakAI14Data,
        } 
        q12001Cfg.SneakAINum = 4
        print("SneakAINum is", q12001Cfg.SneakAINum)
    end

    for i=1, q12001Cfg.SneakAINum do
        --local SneakAI = actorMgr:CreateActorWithPos(sneakAIData[i].alias, sneakAIData[i].metaPath, sneakAIData[i].configID, sneakAIData[i].dataIndex, sneakAIData[i].bornPos, sneakAIData[i].bornDir, true, true, 3, 12001)
        local SneakAI = self:CreateQuestNpcById(1200105, sneakAIData[i].configID)
        SneakAI.PatrolPosNum = sneakAIData[i].PatrolPosNum
        SneakAI.PatrolPos = sneakAIData[i].PatrolPos
        SneakAI.PatrolDir = sneakAIData[i].PatrolDir
        SneakAI.PatrolNext = 1
        SneakAI.AIDict = i
         SneakAI:Start()
         SneakAI:ThreatTask(SneakAI.Discover, SneakAI.Aware, SneakAI.ReturnToPatrol)
    end
    -- for i=1, #q12001Cfg.TreasurePos do
        -- self:SpawnItem(q12001Cfg.TreasureID, q12001Cfg.TreasurePos[i], nil, "Treasure" .. tostring(i), 1005)
    -- end
end

function Quest12001:SneakAIDestroy()
    for i=1, q12001Cfg.SneakAINum do
        local SneakAI = self:GetQuestNpcActor(sneakAIData[i].alias)
        if SneakAI ~= nil then
            SneakAI:Destroy(false)
        end
    end
    --for i=1, #q12001Cfg.TreasurePos do
      --  self:UnSpawn("Treasure" .. tostring(i))
   -- end
end

function Quest12001:NpcHide()
    self:NotifyTo("Npc2091", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1627", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2009", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2090", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2021", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2022", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2018", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2007", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1625", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2084", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2055", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2020", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2060", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2023", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2053", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2008", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2062", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2011", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2008", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1626", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2010", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2087", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2058", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2057", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2056", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2085", NpcUtil.NpcEventType.HIDESELF, true)
    print("*******NpcHide")
end
function Quest12001:NpcDisplay()
    self:NotifyTo("Npc2091", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1627", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2009", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2090", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2021", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2022", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2018", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2007", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1625", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2084", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2055", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2020", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2060", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2023", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2053", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2008", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2062", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2011", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2008", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1626", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2010", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2087", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2058", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2057", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2056", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2085", NpcUtil.NpcEventType.STARTDAILY, true)
    print("*******NpcDisplay")
end

--@region sub sxtart & finish handlers
---按流程触发顺序
function Quest12001:OnSubStart1200101(quest)
    print("********1200101 start")
	--local xingqiu = self:GetQuestNpcActor(XingQiuData.Alias)
	--xingqiu:DoFreeStyle(1330)
    actorMgr:CreateActorWithPos("Q1200101Trigger", "Actor/Gadget/Q1200101Trigger", 70900002, 0, sceneData:GetDummyPoint(3,"Q1200101Trigger").pos, sceneData:GetDummyPoint(3,"Q1200101Trigger").rot, true, false)
    
end

function Quest12001:OnSubFinish1200101(quest)
	--self:NarratorOnlyTask(q12001Cfg.NarratorData1)
end

function Quest12001:OnSubStart1200102(quest)
    print("********1200102 start")
	--local xingqiu = self:GetQuestNpcActor(XingQiuData.Alias)
    --xingqiu:DoFreeStyle(1330)
    
end
function Quest12001:OnSubFinish1200102(quest)
	self:ActionSafeCall(self.PaimonVanish)
end


function Quest12001:OnSubStart1200103(quest)--套话玩法
    print("********1200103 start")

	--local xingqiu = self:GetQuestNpcActor(XingQiuData.Alias)
	--xingqiu:DoFreeStyle(1330)
end


function Quest12001:OnSubFinish1200103(quest)
    print("********1200103 Finish")
    self:ActionSafeCall(self.PaimonVanish)
end

function Quest12001:OnSubStart1200104(quest)
    print("********1200104 start")
    
    actorMgr:CreateActorWithPos("Q1200104Trigger", "Actor/Gadget/Q1200104Trigger", 70900002, 0, sceneData:GetDummyPoint(3,"Q1200104Trigger").pos, sceneData:GetDummyPoint(3,"Q1200104Trigger").rot, true, false)
    self:ExitSneakMode()
    self:SneakAIDestroy() 
    self:NpcDisplay()
end

function Quest12001:OnSubFinish1200104(quest)
	print("********1200104 Finish")
end
function Quest12001:OnSubStart1200105(quest)

    self:SneakAIPrepare()
    self:NpcHide()
    self:CreateQuestNpc(quest, PaimonData.ID, 0)
    self:RequestInteraction("Paimon")
end

function Quest12001:OnSubFinish1200105(quest)
    local paimon = self:GetQuestNpcActor(PaimonData.Alias)
	paimon:AirModeOff()
	--paimon:VanishKeep()
	if paimon ~= nil then
		paimon:DestroyWithDisappear(false)
	end
	--self:TransmitPlayer(3,sceneData:GetDummyPoint(3,"Q12001Start").pos, sceneData:GetDummyPoint(3,"Q12001Start").rot)
end
function Quest12001:OnSubStart1200109(quest)--潜行开始
   
 
    self:CreateQuestNpc(quest, WlyData.ID)

	actorMgr:CreateActorWithPos("Q1200109Trigger", "Actor/Gadget/Q1200109Trigger", 70900002, 0, sceneData:GetDummyPoint(3,"Q1200107Trigger").pos, sceneData:GetDummyPoint(3,"Q1200107Trigger").rot, true, false)
    actorMgr:CreateActorWithPos("Q12001FailTrigger", "Actor/Gadget/Q12001FailTrigger", 70900002, 0, sceneData:GetDummyPoint(3,"Q12001FailTrigger").pos, sceneData:GetDummyPoint(3,"Q12001FailTrigger").rot, true, false)
    self:CallDelay(0.5,self.SneakStart)
    self:EnterSneakMode(11)
    self:TriggerLevelAbility("Level_Apply_Switch_SneakBtn")
    self:SpawnGadget(quest, 70900201, 1)
    --globalActor:SpawnGadget(70900201, sceneData:GetDummyPoint(3,"Q1200107Wly").pos, sceneData:GetDummyPoint(3,"Q1200107Wly").rot , "Goal1", 3)
    
end

function Quest12001:OnSubFinish1200109(quest)


end
function Quest12001:OnSubStart1200110(quest)--潜行失败
    FailNum = FailNum + 1

    self:CallDelay(1,self.FailMovePlayer)
    self:CallDelay(1,self.SneakAIDestroy)
    self:CallDelay(1,self.NpcDisplay)

    self:UnSpawn("Goal1")
end

function Quest12001:OnSubFinish1200110(quest)


end
function Quest12001:OnSubStart1200111(quest)--潜行成功
    self:CallDelay(0.5,self.SuccessMovePlayer)  
    self:CallDelay(0.5,self.SneakAIDestroy)
    self:UnSpawn("Goal1")
    actorMgr:CreateActorWithPos("Q1200111Trigger", "Actor/Gadget/Q1200111Trigger", 70900002, 0, sceneData:GetDummyPoint(3,"Q1200111Trigger").pos, sceneData:GetDummyPoint(3,"Q1200111Trigger").rot, true, false)
end

function Quest12001:OnSubFinish1200111(quest)


end
function Quest12001:OnSubStart1200106(quest)--弃用

end

function Quest12001:OnSubFinish1200106(quest)

end

function Quest12001:OnSubStart1200107(quest)
    self:RequestInteraction("Npc162601")    
end

function Quest12001:OnSubFinish1200107(quest)
    self:ActionSafeCall(self.WlyDestroy)
    self:ActionSafeCall(self.ManagerDestroy)
    self:CallDelay(1,
    function(self)
        self:NpcDisplay()
        self:TransmitPlayer(3,sceneData:GetDummyPoint(3,"Q1200107trans").pos, sceneData:GetDummyPoint(3,"Q1200107trans").rot,self.TransmitNarrator)
    end
    )
  
end

function Quest12001:OnSubStart1200108(quest)
    self:CreateQuestNpc(quest, XingQiuData.ID)
	local xingqiu = self:GetQuestNpcActor(XingQiuData.Alias)
    xingqiu:DoFreeStyle(1330)
    self:setbook()
end

function Quest12001:OnSubFinish1200108(quest)
    self:ActionSafeCall(self.PaimonVanish)
    globalActor:UnSpawn("XQbook")
end





--@endregion

function Quest12001:Start()
end

function Quest12001:OnDestroy()
end

return Quest12001