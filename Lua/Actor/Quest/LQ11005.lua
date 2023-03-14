require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest11005 = class("Quest11005", questActorProxy)
Quest11005.defaultAlias = "Quest11005"
local DailyNpcManager = require('Actor/DailyNPCManager')

local q11005Cfg
local subIDs
local mainquestid = 11005
local paimonData
local xianglingData
local draffData
local brookData
local olafData
local QGData
local XLMoveData
local BRMoveData
local washData
local fireData1
local fireData2
local fireData3
local hamData
local teammateScore = 0
local opponentScore = 0


function Quest11005:OnDataLoaded()
    q11005Cfg = self.clientData
    subIDs = q11005Cfg.SubIDs
    mainquestid = 11005
	paimonData = q11005Cfg.PaimonData
	xianglingData = q11005Cfg.XianglingData
	draffData = q11005Cfg.DraffData
	brookData = q11005Cfg.BrookData
	olafData = q11005Cfg.OlafData
	QGData = q11005Cfg.QGData
	washData = q11005Cfg.WashData
	fireData1 = q11005Cfg.FireData1
	fireData2 = q11005Cfg.FireData2
	fireData3 = q11005Cfg.FireData3
	hamData = q11005Cfg.HamData
	XLMoveData = q11005Cfg.XLMoveData
	BRMoveData = q11005Cfg.BRMoveData
end

-- Generated
function Quest11005:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["1100501"] = self.OnSubStart1100501
    self.subStartHandlers["1100502"] = self.OnSubStart1100502
	self.subStartHandlers["1100503"] = self.OnSubStart1100503
	self.subStartHandlers["1100504"] = self.OnSubStart1100504
	self.subStartHandlers["1100505"] = self.OnSubStart1100505
	self.subStartHandlers["1100506"] = self.OnSubStart1100506
	self.subStartHandlers["1100507"] = self.OnSubStart1100507
	self.subStartHandlers["1100508"] = self.OnSubStart1100508
	self.subStartHandlers["1100509"] = self.OnSubStart1100509
	self.subStartHandlers["1100510"] = self.OnSubStart1100510
	self.subStartHandlers["1100511"] = self.OnSubStart1100511
	self.subStartHandlers["1100512"] = self.OnSubStart1100512
	self.subStartHandlers["1100513"] = self.OnSubStart1100513
	self.subStartHandlers["1100514"] = self.OnSubStart1100514
	self.subStartHandlers["1100515"] = self.OnSubStart1100515
	self.subStartHandlers["1100599"] = self.OnSubStart1100599
	self.subStartHandlers["1100516"] = self.OnSubStart1100516
	self.subStartHandlers["1100517"] = self.OnSubStart1100517
	self.subStartHandlers["1100518"] = self.OnSubStart1100518
	self.subStartHandlers["1100519"] = self.OnSubStart1100519
end

function Quest11005:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["1100501"] = self.OnSubFinish1100501
    self.subFinishHandlers["1100502"] = self.OnSubFinish1100502
	self.subFinishHandlers["1100503"] = self.OnSubFinish1100503
	self.subFinishHandlers["1100504"] = self.OnSubFinish1100504
	self.subFinishHandlers["1100505"] = self.OnSubFinish1100505
	self.subFinishHandlers["1100506"] = self.OnSubFinish1100506
	self.subFinishHandlers["1100507"] = self.OnSubFinish1100507
	self.subFinishHandlers["1100508"] = self.OnSubFinish1100508
	self.subFinishHandlers["1100509"] = self.OnSubFinish1100509
	self.subFinishHandlers["1100510"] = self.OnSubFinish1100510
	self.subFinishHandlers["1100511"] = self.OnSubFinish1100511
	self.subFinishHandlers["1100512"] = self.OnSubFinish1100512
	self.subFinishHandlers["1100513"] = self.OnSubFinish1100513
	self.subFinishHandlers["1100514"] = self.OnSubFinish1100514
	self.subFinishHandlers["1100515"] = self.OnSubFinish1100515
	self.subFinishHandlers["1100599"] = self.OnSubFinish1100599
	self.subFinishHandlers["1100516"] = self.OnSubFinish1100516
	self.subFinishHandlers["1100517"] = self.OnSubFinish1100517
	self.subFinishHandlers["1100518"] = self.OnSubFinish1100518
	self.subFinishHandlers["1100519"] = self.OnSubFinish1100519
end

function Quest11005:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["1100504"] = self.OnSubFailed1100504
	self.subFailedHandlers["1100506"] = self.OnSubFailed1100506
	self.subFailedHandlers["1100509"] = self.OnSubFailed1100509
end

function Quest11005:PaimonDis()
	local paimon = self:GetQuestNpcActor(paimonData.Alias)
    if paimon ~= nil then
        self:ActionSafeCall(
            function(self)
                paimon:DestroyWithDisappear(false)
            end
        )
	end

end
 

function Quest11005:questJudge04()

	if teammateScore == 0 then
		print("teammateScore == 0")
		teammateScore = teammateScore + 5
		opponentScore = opponentScore + 5
		self:BattleUIStart(100,1012,teammateScore,154101,opponentScore)

	elseif  teammateScore >= 100 and teammateScore > opponentScore then
		local quest = actorMgr:GetActor(q11005Cfg.ActorAlias)
		if quest ~= nil then
			print("Battle  ------------------- succeed".."本队分数："..tostring(teammateScore).."对方分数："..tostring(opponentScore))
			quest:FinishQuestID(false, 1100504)
		end
		self:CallDelay(3,
		function(self)
			self:CountDownUITerminate()
			self:BattleUITerminate()
		end
		)

	elseif  opponentScore >= 100 and opponentScore >= teammateScore then
		local quest = actorMgr:GetActor(q11005Cfg.ActorAlias)
		if quest ~= nil then
			print("Battle  ------------------- failed".."本队分数："..tostring(teammateScore).."对方分数："..tostring(opponentScore))
			quest:FinishQuestID(true, 1100504)
		end
		self:CallDelay(3,
		function(self)
			self:CountDownUITerminate()
			self:BattleUITerminate()
		end
		)

	end

	self:CallDelay(2,
	function(self)
		local q1100503state = self:GetSubQuestState(1100503)
		local q1100504state = self:GetSubQuestState(1100504)
		print("q1100504state"  ..q1100504state)
		if  q1100503state == 3 and q1100504state ~=  3 then  -- 03完成&04未完成
			print("继续判断")
			self:questJudge04()
		end
	end
	)
end

function Quest11005:AddScore()
	local x = math.random(10,15)  --香菱加分时间
	local y = math.random(5,10)  --布洛克加分时间
	local q1100503state = self:GetSubQuestState(1100503)
	local q1100504state = self:GetSubQuestState(1100504)
	local state = self:IsTalkDialogActive()
	print("q1100503state"  ..q1100503state)
	print("q1100504state"  ..q1100504state)
	if state == false then
		if  q1100503state == 3 and q1100504state ~=  3 then  -- 03完成&04未完成
			local i = math.random(2,3)  --香菱加分值
			teammateScore = teammateScore + i
			self:BattleUIChange(teammateScore,i,opponentScore,0)
			self:CallDelay(y,
			function(self)
				local k = math.random(2,4)  --布洛克加分值
				opponentScore = opponentScore + k
				self:BattleUIChange(teammateScore,0,opponentScore,k)
			end
			)
		end
	end

	self:CallDelay(x,
	function(self)
		local q1100503state = self:GetSubQuestState(1100503)
		local q1100504state = self:GetSubQuestState(1100504)
		print("q1100503state"  ..q1100503state)
		print("q1100504state"  ..q1100504state)
		if  q1100503state == 3 and q1100504state ~=  3 then  -- 03完成&04未完成
			print("再次加分")
			self:AddScore()
		end
	end
	)

end


function Quest11005:XLMove()

	local j = math.random(1,6)
	local xl = self:GetQuestNpcActor(xianglingData.Alias)
	if xl ~= nil then
		xl:RunToTask(sceneData:GetDummyPoint(3,XLMoveData.XLMove[j]).pos ,
		function(xl, task)
			xl:SteerToTask(M.Euler2DirXZ(sceneData:GetDummyPoint(3,XLMoveData.XLMove[j]).rot), 1, true ,true)
			if j <= 3 then
				xl:DoFreeStyle(1220)
			elseif j > 3 then
				xl:DoFreeStyle(1190)
			end
		end,
		function(xl, task)
			xl:Standby()
		end	
	)
	end

	self:CallDelay(10,
	function(self)
		local q1100503state = self:GetSubQuestState(1100503)
		local q1100504state = self:GetSubQuestState(1100504)
		print("q1100504state"  ..q1100504state)
		if  q1100503state == 3 and q1100504state ~=  3 then  -- 03完成&04未完成
			print("香菱move")
			self:XLMove()
		end
	end
	)
end

function Quest11005:BRMove()

	local j = math.random(1,3)
	local br = self:GetQuestNpcActor(brookData.Alias)
	if br ~= nil then
		br:WalkToTask(sceneData:GetDummyPoint(3,BRMoveData.BRMove[j]).pos ,
		function(br, task)
			br:SteerToTask(M.Euler2DirXZ(sceneData:GetDummyPoint(3,BRMoveData.BRMove[j]).rot), 1, true ,true)
			if j == 3 then
				br:DoFreeStyle(1230)
			else
				br:DoFreeStyle(1120)
			end
		end ,
		function(br, task)
			br:Standby()
		end
	)
	end

	self:CallDelay(10,
	function(self)
		local q1100503state = self:GetSubQuestState(1100503)
		local q1100504state = self:GetSubQuestState(1100504)
		print("q1100504state"  ..q1100504state)
		if  q1100503state == 3 and q1100504state ~=  3 then  -- 03完成&04未完成
			print("布洛克move")
			self:BRMove()
		end
	end
	)
end

function Quest11005:OnSubStart1100501(quest)
	print("1100501 start:...")
	self:ActionSafeCall(
		function(self)
			self:NotifyTo("Npc1537", DailyNpcManager.NpcEventType.HIDESELF, true)
			self:NotifyTo("Npc1541", DailyNpcManager.NpcEventType.HIDESELF, true)
			self:NotifyTo("Npc1631", DailyNpcManager.NpcEventType.HIDESELF, true)
		
			self:CreateQuestNpc(quest, xianglingData.ID)
			local xiangling = self:GetQuestNpcActor(xianglingData.Alias)
			xiangling:DoFreeStyle(1220)
			
			self:CreateQuestNpc(quest, olafData.ID)
			local olaf = self:GetQuestNpcActor(olafData.Alias)
			olaf:DoFreeStyle(1240)
			
			self:CreateQuestNpc(quest, draffData.ID)
			local draff = self:GetQuestNpcActor(draffData.Alias)
			draff:DoFreeStyle(1220)
		end
	)
end

function Quest11005:OnSubStart1100502(quest)
	print("1100502 start:...")
	self:NotifyTo("Npc1537", DailyNpcManager.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc1541", DailyNpcManager.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc1631", DailyNpcManager.NpcEventType.HIDESELF, true)
	self:ActionSafeCall(
		function(self)
				local xiangling = self:GetQuestNpcActor(xianglingData.Alias)
				if xiangling ~= nil then
					self:ActionSafeCall(
						function(self)
							self:DestroyQuestNpcActorByAlias(xianglingData.Alias, false)
						end
					)
				end

				local olaf = self:GetQuestNpcActor(olafData.Alias)
				if olaf ~= nil then
					self:ActionSafeCall(
						function(self)
							self:DestroyQuestNpcActorByAlias(olafData.Alias, false)
						end
					)
				end
				local draff = self:GetQuestNpcActor(draffData.Alias)
				if draff ~= nil then
					self:ActionSafeCall(
						function(self)
							self:DestroyQuestNpcActorByAlias(draffData.Alias, false)
						end
					)
				end

				self:CallDelay(0.5,
				function(self)
					self:CreateQuestNpc(quest, brookData.ID)
					local brook = self:GetQuestNpcActor(brookData.Alias)
					brook:DoFreeStyle(1120)
					
					self:CreateQuestNpc(quest, xianglingData.ID)
					local xiangling = self:GetQuestNpcActor(xianglingData.Alias)
					xiangling:DoFreeStyle(1220)
					
					self:CreateQuestNpc(quest, draffData.ID)
					local draff = self:GetQuestNpcActor(draffData.Alias)
					draff:DoFreeStyle(1180)
	
					self:CreateQuestNpc(quest, QGData.ID)
					self:CreateQuestNpc(quest, olafData.ID)
				end
				)
		end
	)
end

function Quest11005:OnSubStart1100503(quest)
	print("1100503 start:...")
	teammateScore = 0
	opponentScore = 0
	self:NotifyTo("Npc1537", DailyNpcManager.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc1541", DailyNpcManager.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc1631", DailyNpcManager.NpcEventType.HIDESELF, true)
	local task = curtainUtils.CreateEntityCreateTask({xianglingData.Alias ,draffData.Alias, olafData.Alias, QGData.Alias, brookData.Alias})
	self:ActionSafeCall(
		function(self)
			self:ShowBlackScreen(0.5, 0.5, 0.5,
			function(self)
				self:PaimonDis()

				self:CreateQuestNpc(quest, xianglingData.ID)
				
				self:CreateQuestNpc(quest, draffData.ID)
				local draff = self:GetQuestNpcActor(draffData.Alias)
				draff:DoFreeStyle(1120)
				
				self:CreateQuestNpc(quest, brookData.ID)

				self:CreateQuestNpc(quest, olafData.ID)
				local olaf = self:GetQuestNpcActor(olafData.Alias)
				olaf:DoFreeStyle(1190)

				self:CreateQuestNpc(quest, QGData.ID)
				local QG = self:GetQuestNpcActor(QGData.Alias)
				QG:DoFreeStyle(1190)

			end ,nil ,task)
		end
	)
	globalActor:ChangeWeather("ClearSky")
end

function Quest11005:OnSubStart1100504(quest)
	print("1100504 start:...")
	print("本队分数："..tostring(teammateScore).."对方分数："..tostring(opponentScore))
	self:NotifyTo("Npc1537", DailyNpcManager.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc1541", DailyNpcManager.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc1631", DailyNpcManager.NpcEventType.HIDESELF, true)

	self:XLMove()
	self:BRMove()

	self:questJudge04()
	globalActor:ChangeWeather("ClearSky")
end

function Quest11005:OnSubStart1100505(quest)
	print("1100505 start:...")
	print("本队分数："..tostring(teammateScore).."对方分数："..tostring(opponentScore))
	self:AddScore()
end

function Quest11005:OnSubStart1100506(quest)
	print("1100506 start:...")
	print("本队分数："..tostring(teammateScore).."对方分数："..tostring(opponentScore))
	self:SpawnGadget(quest, washData.ID)
end

function Quest11005:OnSubStart1100507(quest)
	print("1100507 start:...")
	print("本队分数："..tostring(teammateScore).."对方分数："..tostring(opponentScore))
	self:NarratorOnlyTask(q11005Cfg.NarratorFlow3)
	self:CallDelay(180,
	function(self)
		local quest = actorMgr:GetActor(q11005Cfg.ActorAlias)
		if quest ~= nil then
			print("1100507超时失败")
			quest:FinishQuestID(true, 1100507)
		end
	end
	)
end

function Quest11005:OnSubStart1100508(quest)
	print("1100508 start:...")
	print("本队分数："..tostring(teammateScore).."对方分数："..tostring(opponentScore))
end

function Quest11005:OnSubStart1100509(quest)
	print("1100509 start:...")
	print("本队分数："..tostring(teammateScore).."对方分数："..tostring(opponentScore))
	self:SpawnGadget(quest, fireData1.ID)
	self:SpawnGadget(quest, fireData2.ID)
	self:SpawnGadget(quest, fireData3.ID)
	self:CallDelay(15,
	function(self)
		local quest = actorMgr:GetActor(q11005Cfg.ActorAlias)
		if quest ~= nil then
			print("1100509超时失败")
			quest:FinishQuestID(true, 1100509)
		end
	end
	)
end



function Quest11005:OnSubStart1100510(quest)
	print("1100510 start:...")
	print("本队分数："..tostring(teammateScore).."对方分数："..tostring(opponentScore))
end

function Quest11005:OnSubStart1100511(quest)
	print("1100511 start:...")
	print("本队分数："..tostring(teammateScore).."对方分数："..tostring(opponentScore))
end

function Quest11005:OnSubStart1100512(quest)
	print("1100512 start:...")
	print("本队分数："..tostring(teammateScore).."对方分数："..tostring(opponentScore))
end

function Quest11005:OnSubStart1100513(quest)
	print("1100513 start:...")
	print("本队分数："..tostring(teammateScore).."对方分数："..tostring(opponentScore))
	self:ClearNpcSpeechBubble(1012)
end

function Quest11005:OnSubStart1100514(quest)
	print("1100514 start:...")
	print("本队分数："..tostring(teammateScore).."对方分数："..tostring(opponentScore))

	self:RequestInteraction(xianglingData.Alias)
end

function Quest11005:OnSubStart1100515(quest)
	print("1100515 start:...")
	print("本队分数："..tostring(teammateScore).."对方分数："..tostring(opponentScore))

	self:NotifyTo("Npc1537", DailyNpcManager.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc1541", DailyNpcManager.NpcEventType.HIDESELF, true)
	self:ActionSafeCall(
		function(self)
			local xiangling = actorMgr:GetActorInternal("Xiangling11005")
			if xiangling == nil then
				print (" xiangling   nil--------- Create " )
				self:CreateQuestNpc(quest, xianglingData.ID)
			end
			local brook = actorMgr:GetActorInternal("Npc15410111005")
			if brook == nil then
				print (" brook   nil--------- Create " )
				self:CreateQuestNpc(quest, brookData.ID)
			end
			local QG = actorMgr:GetActorInternal("Npc16310111005")
			if QG == nil then
				print (" QG   nil--------- Create " )
				self:CreateQuestNpc(quest, QGData.ID)
			end
		end
	)
end

function Quest11005:OnSubStart1100599(quest)
	print("1100599 start:...")
	local quest = actorMgr:GetActor(q11005Cfg.ActorAlias)
	if quest ~= nil then
		print("1100599——————完成")
		quest:FinishQuestID(false, 1100599)
	end
end

function Quest11005:OnSubStart1100516(quest)
	print("1100516 start:...")
	self:NotifyTo("Npc1537", DailyNpcManager.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc1541", DailyNpcManager.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc1631", DailyNpcManager.NpcEventType.HIDESELF, true)
	self:ActionSafeCall(
		function(self)
			local xiangling = actorMgr:GetActorInternal("Xiangling11005")
			if xiangling == nil then
				print (" xiangling   nil--------- Create " )
				self:CreateQuestNpc(quest, xianglingData.ID)
			end
			local brook = actorMgr:GetActorInternal("Npc15410111005")
			if brook == nil then
				print (" brook   nil--------- Create " )
				self:CreateQuestNpc(quest, brookData.ID)
			end
			local QG = actorMgr:GetActorInternal("Npc16310111005")
			if QG == nil then
				print (" QG   nil--------- Create " )
				self:CreateQuestNpc(quest, QGData.ID)
			end
		end
	)
end

function Quest11005:OnSubStart1100517(quest)
	print("1100517 start:...")
	self:NotifyTo("Npc1537", DailyNpcManager.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc1541", DailyNpcManager.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc1631", DailyNpcManager.NpcEventType.HIDESELF, true)
	self:ActionSafeCall(
		function(self)
			local xiangling = actorMgr:GetActorInternal("Xiangling11005")
			if xiangling == nil then
				print (" xiangling   nil--------- Create " )
				self:CreateQuestNpc(quest, xianglingData.ID)
			end
			local brook = actorMgr:GetActorInternal("Npc15410111005")
			if brook == nil then
				print (" brook   nil--------- Create " )
				self:CreateQuestNpc(quest, brookData.ID)
			end
			local QG = actorMgr:GetActorInternal("Npc16310111005")
			if QG == nil then
				print (" QG   nil--------- Create " )
				self:CreateQuestNpc(quest, QGData.ID)
			end
		end
	)
end

function Quest11005:OnSubStart1100518(quest)
	print("1100518 start:...")
	self:ActionSafeCall(
		function(self)
			self:CreateQuestNpc(quest, xianglingData.ID)
			local xiangling = self:GetQuestNpcActor(xianglingData.Alias)
			xiangling:DoFreeStyle(1220)
	
			self:CreateQuestNpc(quest, olafData.ID)
			self:CreateQuestNpc(quest, QGData.ID)

			self:CreateQuestNpc(quest, brookData.ID)
			local brook = self:GetQuestNpcActor(brookData.Alias)
			brook:DoFreeStyle(1220)

			self:CreateQuestNpc(quest, draffData.ID)
			local draff = self:GetQuestNpcActor(draffData.Alias)
			draff:DoFreeStyle(1180)
		end 
	)
	self:NotifyTo("Npc1537", DailyNpcManager.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc1541", DailyNpcManager.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc1631", DailyNpcManager.NpcEventType.HIDESELF, true)
end

function Quest11005:OnSubStart1100519(quest)
	print("1100519 start:...")

	local task = curtainUtils.CreateEntityCreateTask({xianglingData.Alias})
	self:ActionSafeCall(
		function (self)
			self:ShowBlackScreen(0.5, 1, 0.5,
			function(self)

				self:CreateQuestNpc(quest, xianglingData.ID)
				local xiangling = self:GetQuestNpcActor(xianglingData.Alias)
				xiangling:DoFreeStyle(1220)

				local olaf = self:GetQuestNpcActor(olafData.Alias)
				if olaf ~= nil then
					self:ActionSafeCall(
						function(self)
							self:DestroyQuestNpcActorByAlias(olafData.Alias, false)
						end
					)
				end
				local draff = self:GetQuestNpcActor(draffData.Alias)
				if draff ~= nil then
					self:ActionSafeCall(
						function(self)
							self:DestroyQuestNpcActorByAlias(draffData.Alias, false)
						end
					)
				end
			
				local brook = self:GetQuestNpcActor(brookData.Alias)
				if brook ~= nil then
					self:ActionSafeCall(
						function(self)
							self:DestroyQuestNpcActorByAlias(brookData.Alias, false)
						end
					)
				end

				local QG = self:GetQuestNpcActor(QGData.Alias)
				if QG ~= nil then
					self:ActionSafeCall(
						function(self)
							self:DestroyQuestNpcActorByAlias(QGData.Alias, false)
						end
					)
				end

			end ,nil ,task)
		end
	)
end


function Quest11005:OnSubFinish1100501(quest)
	self:PaimonDis()
end

function Quest11005:OnSubFinish1100502(quest)
	self:PaimonDis()
end

function Quest11005:OnSubFinish1100503(quest)
end

function Quest11005:OnSubFinish1100504(quest)
	self:CountDownUITerminate()
	self:BattleUITerminate()
	self:NarratorOnlyTask(q11005Cfg.NarratorFlow4)
end

function Quest11005:OnSubFinish1100505(quest)
	self:NarratorOnlyTask(q11005Cfg.NarratorFlow2)
end

function Quest11005:OnSubFinish1100506(quest)
	print("1100506 finish:...")
	globalActor:UnSpawn("Wash")
end

function Quest11005:OnSubFinish1100507(quest)
	teammateScore = teammateScore + 10 --香菱加分
	self:BattleUIChange(teammateScore,10,opponentScore,0)
	self:CallDelay(5,
	function(self)
		local k = math.random(5,10)  --布洛克加分
		opponentScore = opponentScore + k
		self:BattleUIChange(teammateScore,0,opponentScore,k)
	end
	)
end

function Quest11005:OnSubFinish1100508(quest)
	teammateScore = teammateScore + 15 --香菱加分
	self:BattleUIChange(teammateScore,15,opponentScore,0)
	self:CallDelay(6,
	function(self)
		local k = math.random(10,15)  --布洛克加分
		opponentScore = opponentScore + k
		self:BattleUIChange(teammateScore,0,opponentScore,k)
	end
	)
	self:PaimonDis()
end

function Quest11005:OnSubFinish1100509(quest)
	print("1100509 finish:...")
	globalActor:UnSpawn("Fire1")
	globalActor:UnSpawn("Fire2")
	globalActor:UnSpawn("Fire3")
	teammateScore = teammateScore + 10 --香菱加分
	self:BattleUIChange(teammateScore,10,opponentScore,0)
	self:CallDelay(7,
	function(self)
		local k = math.random(7,10)  --布洛克加分
		opponentScore = opponentScore + k
		self:BattleUIChange(teammateScore,0,opponentScore,k)
	end
	)
end

function Quest11005:OnSubFinish1100510(quest)
	self:PaimonDis()
end

function Quest11005:OnSubFinish1100511(quest)
end

function Quest11005:OnSubFinish1100512(quest)
	print("1100512 finish:...")
	teammateScore = teammateScore + 15 --香菱加分
	self:BattleUIChange(teammateScore,15,opponentScore,0)
	self:PaimonDis()
	self:CallDelay(5,
	function(self)
		local k = math.random(10,15)  --布洛克加分
		opponentScore = opponentScore + k
		self:BattleUIChange(teammateScore,0,opponentScore,k)
	end
	)
end

function Quest11005:OnSubFinish1100513(quest)
	self:ClearNpcSpeechBubble(1012)
end

function Quest11005:OnSubFinish1100514(quest)
	print("1100514 finish:...")
	if teammateScore < 100 then
		local i = 100 - teammateScore 
		teammateScore = teammateScore + i --全做完，如果小于100分，则加到100分
		self:BattleUIChange(teammateScore,i,opponentScore,0)
	end
	self:PaimonDis()
end

function Quest11005:OnSubFinish1100515(quest)
	print("1100515 finish:...")
	globalActor:StartGuide("UnlockRecipe")--教程：使用食谱
	self:PaimonDis()
end

function Quest11005:OnSubFinish1100599(quest)
	print("1100599 finish:...")
end

function Quest11005:OnSubFinish1100516(quest)
	self:UnCallFunc(self.XLMove)
	self:UnCallFunc(self.BRMove)
end

function Quest11005:OnSubFinish1100517(quest)
	self:ShowBlackScreen(0.5, 1, 0.5)
	self:PaimonDis()
end

function Quest11005:OnSubFinish1100518(quest)
	self:NotifyTo("Npc1537", DailyNpcManager.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1541", DailyNpcManager.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc1631", DailyNpcManager.NpcEventType.STARTDAILY, true)
	self:NarratorOnlyTask(q11005Cfg.NarratorFlow1)

	self:PaimonDis()
end

function Quest11005:OnSubFinish1100519(quest)
	print("1100507 finish:...")
	local xiangling = self:GetQuestNpcActor(xianglingData.Alias)
    if xiangling ~= nil then
        self:ActionSafeCall(
            function(self)
                self:DestroyQuestNpcActorByAlias(xianglingData.Alias, false)
            end
        )
    end
	self:PaimonDis()
end

function Quest11005:OnSubFailed1100504(quest)
	print("1100504 failed:...")
	self:CountDownUITerminate()
	self:BattleUITerminate()
end


function Quest11005:OnSubFailed1100506(quest)
	print("1100506 failed:...")
	globalActor:UnSpawn("Wash")
end

function Quest11005:OnSubFailed1100509(quest)
	print("1100509 failed:...")
	globalActor:UnSpawn("Fire1")
	globalActor:UnSpawn("Fire2")
	globalActor:UnSpawn("Fire3")
end

function Quest11005:Start()
end

function Quest11005:OnDestroy()
end

return Quest11005