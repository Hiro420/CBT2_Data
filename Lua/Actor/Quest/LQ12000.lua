require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest12000 = class("Quest12000", questActorProxy)

Quest12000.defaultAlias = "Quest12000"
local q12000Cfg = require('Quest/Client/Q12000ClientConfig')


local subIDs = q12000Cfg.SubIDs
local PaimonData=q12000Cfg.PaimonData
local XingQiuData=q12000Cfg.XingQiuData
local CHData=q12000Cfg.CHData
local GuardData01=q12000Cfg.GuardData01
local GuardData02=q12000Cfg.GuardData02
local GuardData03=q12000Cfg.GuardData03

-- Generated
function Quest12000:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["1200001"] = self.OnSubStart1200001
	self.subStartHandlers["1200002"] = self.OnSubStart1200002
	self.subStartHandlers["1200003"] = self.OnSubStart1200003
	self.subStartHandlers["1200004"] = self.OnSubStart1200004
	self.subStartHandlers["1200005"] = self.OnSubStart1200005
	self.subStartHandlers["1200006"] = self.OnSubStart1200006
	self.subStartHandlers["1200007"] = self.OnSubStart1200007
	self.subStartHandlers["1200008"] = self.OnSubStart1200008
	self.subStartHandlers["1200009"] = self.OnSubStart1200009
	self.subStartHandlers["1200010"] = self.OnSubStart1200010
	self.subStartHandlers["1200011"] = self.OnSubStart1200011
end

function Quest12000:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["1200001"] = self.OnSubFinish1200001
	self.subFinishHandlers["1200002"] = self.OnSubFinish1200002
	self.subFinishHandlers["1200003"] = self.OnSubFinish1200003
	self.subFinishHandlers["1200004"] = self.OnSubFinish1200004
	self.subFinishHandlers["1200005"] = self.OnSubFinish1200005
	self.subFinishHandlers["1200006"] = self.OnSubFinish1200006
	self.subFinishHandlers["1200007"] = self.OnSubFinish1200007
	self.subFinishHandlers["1200008"] = self.OnSubFinish1200008
	self.subFinishHandlers["1200009"] = self.OnSubFinish1200009
	self.subFinishHandlers["1200010"] = self.OnSubFinish1200010
	self.subFinishHandlers["1200011"] = self.OnSubFinish1200011
end


---sub start & finish 内调用的函数

function Quest12000:PaimonVanish()
	print("paimon vanish")
	local paimon = self:GetQuestNpcActor(PaimonData.Alias)
	paimon:AirModeOff()
	--paimon:VanishKeep()
	if paimon ~= nil then
		paimon:DestroyWithDisappear(false)
	end
end

function Quest12000:XingQiuDestroy()
	local XingQiu = self:GetQuestNpcActor(XingQiuData.Alias)

	if XingQiu ~= nil then
		XingQiu:Destroy(false)
	end
end

function Quest12000:CHDestroy()
    local CH = self:GetQuestNpcActor(CHData.Alias)

	if CH ~= nil then
		CH:Destroy(false)
	end
end
function Quest12000:Guard01Destroy()
    local Guard01 = self:GetQuestNpcActor(GuardData01.Alias)

	if Guard01 ~= nil then
		Guard01:Destroy(false)
	end
end
function Quest12000:Guard02Destroy()
    local Guard02 = self:GetQuestNpcActor(GuardData02.Alias)

	if Guard02 ~= nil then
		Guard02:Destroy(false)
	end
end
function Quest12000:Guard03Destroy()
    local Guard03 = self:GetQuestNpcActor(GuardData03.Alias)

	if Guard03 ~= nil then
		Guard03:Destroy(false)
	end
end

function Quest12000:setbook()
	local bookpos = {x=1717.114,y=247.7695,z=610.8841}
	local bookrot = {x=116.42,y=-21.39999,z=-93}
	self:SpawnGadgetByIdWithPos(1200010, 70710060, 1, bookpos,bookrot)
	--globalActor:SpawnGadget(70710060, bookpos, bookrot, "XQbook")
	print("***********set book ***********")
end


--@region sub sxtart & finish handlers
---按流程触发顺序
function Quest12000:OnSubStart1200001(quest)
	print("********1200001 start")
	self:CreateQuestNpc(quest, XingQiuData.ID)
	actorMgr:CreateActorWithPos("Q1200001trigger", "Actor/Gadget/Q1200001Trigger", 70900002, 0, sceneData:GetDummyPoint(3,"Q1200001trigger").pos, sceneData:GetDummyPoint(3,"Q1200001trigger").rot, true, false)
end

function Quest12000:OnSubFinish1200001(quest)
	self:NarratorOnlyTask(q12000Cfg.NarratorData)
end

function Quest12000:OnSubStart1200002(quest)
	print("********1200002 start")
	

end

function Quest12000:OnSubFinish1200002(quest)

end


function Quest12000:OnSubStart1200003(quest)
	print("********1200003 start")
	actorMgr:CreateActorWithPos("Q1200003trigger", "Actor/Gadget/Q1200003Trigger", 70900002, 0, sceneData:GetDummyPoint(3,"Q1200003trigger").pos, sceneData:GetDummyPoint(3,"Q1200003trigger").rot, true, false)

end


function Quest12000:OnSubFinish1200003(quest)
	print("********1200003 Finish")
	
	self:ActionSafeCall(self.XingQiuDestroy)
	self:ActionSafeCall(self.PaimonVanish)
end

function Quest12000:OnSubStart1200004(quest)
	print("********1200004 start")

	actorMgr:CreateActorWithPos("Q1200004Trigger", "Actor/Gadget/Q1200004Trigger", 70900002, 0, sceneData:GetDummyPoint(3,"Q1200004Trigger").pos, sceneData:GetDummyPoint(3,"Q1200004Trigger").rot, true, false)

end

function Quest12000:OnSubFinish1200004(quest)
	print("********1200004 Finish")


end
function Quest12000:OnSubStart1200005(quest)

end

function Quest12000:OnSubFinish1200005(quest)
	self:ShowBlackScreen(0.3, 0.5, 0.5,
	function (self)
		self:CreateQuestNpc(quest, XingQiuData.ID, 0)
		local XingQiu = self:GetQuestNpcActor(XingQiuData.Alias)
		XingQiu:DoFreeStyle(1330)
		self:ActionSafeCall(self.CHDestroy)
		self:ActionSafeCall(self.PaimonVanish)
	end 
	)

end


function Quest12000:OnSubStart1200006(quest)
	self:CreateQuestNpc(quest, XingQiuData.ID)
	local xingqiu = self:GetQuestNpcActor(XingQiuData.Alias)
	  xingqiu:DoFreeStyle(1330)
	  self:setbook()
end

function Quest12000:OnSubFinish1200006(quest)
	self:ActionSafeCall(self.XingQiuDestroy)
	self:ActionSafeCall(self.CHDestroy)
	self:ActionSafeCall(self.PaimonVanish)
	self:ActionSafeCall(self.Guard01Destroy)
	self:ActionSafeCall(self.Guard02Destroy)
	self:ActionSafeCall(self.Guard03Destroy)
	globalActor:UnSpawn("XQbook")
end

function Quest12000:OnSubStart1200007(quest)--切换为第二天
	
end

function Quest12000:OnSubFinish1200007(quest)


end
function Quest12000:OnSubStart1200008(quest)
	--local xingqiu = self:GetQuestNpcActor(XingQiuData.Alias)
	--xingqiu:DoFreeStyle(1330)
	--self:setbook()
end

function Quest12000:OnSubFinish1200008(quest)
	--self:ShowBlackScreen(0.5, 1, 0.5, 
	--function(self)
	self:ActionSafeCall(self.XingQiuDestroy)
	self:ActionSafeCall(self.CHDestroy)
	self:ActionSafeCall(self.PaimonVanish)
	self:ActionSafeCall(self.Guard01Destroy)
	self:ActionSafeCall(self.Guard02Destroy)
	self:ActionSafeCall(self.Guard03Destroy)
	globalActor:UnSpawn("XQbook")
	--end
--)
end
function Quest12000:OnSubStart1200011(quest)---战斗失败回滚
	print("********战斗失败")
	local quest = actorMgr:GetActor(q12000Cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuest(false, nil)
	end
	--self:NarratorOnlyTask(q12000Cfg.NarratorData1)
end

function Quest12000:OnSubFinish1200011(quest)
	print("***************get quest success")

end

function Quest12000:OnSubStart1200009(quest)---战斗
    actorMgr:CreateActorWithPos("Q1200011FailTrigger", "Actor/Gadget/Q1200011FailTrigger", 70900002, 0, sceneData:GetDummyPoint(3,"Q1200006Born").pos, sceneData:GetDummyPoint(3,"Q1200006Born").rot, true, false)

end

function Quest12000:OnSubFinish1200009(quest)

end

function Quest12000:OnSubStart1200010(quest)---战斗后对话
	local task = curtainUtils.CreateEntityCreateTask({XingQiuData.Alias})
	self:CallDelay(2,
	function(self)
		self:TransmitPlayer(3, sceneData:GetDummyPoint(3, "Q1200006Born").pos, sceneData:GetDummyPoint(3, "Q1200006Born").rot, nil,
		function (self)
			self:ShowBlackScreen(0.5, 0.5, 0.5, 
			function(self)
				self:CreateQuestNpc(quest, XingQiuData.ID)
				self:RequestInteraction("Npc10045")
				--xingqiu:DoFreeStyle(1330)
				print("SHOW BLACK SCREEN 12000")
				self:setbook()
			end,
			nil, task, "QUEST_Black_Q1200010") 
		end
		)
	end
)

end

function Quest12000:OnSubFinish1200010(quest)
	self:ActionSafeCall(self.CHDestroy)
	self:ActionSafeCall(self.PaimonVanish)
	--local xingqiu = self:GetQuestNpcActor(XingQiuData.Alias)
	  --xingqiu:DoFreeStyle(1330)
	globalActor:UnSpawn("XQbook")
end
--@endregion

function Quest12000:Start()
end

function Quest12000:OnDestroy()
end

return Quest12000