require('Actor/ActorCommon')

local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest10200 = class("Quest10200", questActorProxy)
local NpcUtil = require('Actor/Npc/NPCUtil')

Quest10200.defaultAlias = "Quest10200"

local q10200cfg
local subIDs
local QinData
local BruceData
local JackData
local JoseData
local KleeData
local PaimonData

function Quest10200:OnDataLoaded(  )
	q10200cfg = self.clientData
	subIDs = q10200cfg.SubIDs
	QinData = q10200cfg.QinData
	BruceData = q10200cfg.BruceData
	JackData = q10200cfg.JackData
	JoseData = q10200cfg.JoseData
	KleeData = q10200cfg.KleeData
	PaimonData = q10200cfg.PaimonData
end
-- Generated
function Quest10200:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["1020001"] = self.OnSubStart1020001
	self.subStartHandlers["1020002"] = self.OnSubStart1020002
	self.subStartHandlers["1020003"] = self.OnSubStart1020003
	self.subStartHandlers["1020004"] = self.OnSubStart1020004
	self.subStartHandlers["1020005"] = self.OnSubStart1020005
	self.subStartHandlers["1020006"] = self.OnSubStart1020006
	self.subStartHandlers["1020007"] = self.OnSubStart1020007
	self.subStartHandlers["1020008"] = self.OnSubStart1020008
	self.subStartHandlers["1020009"] = self.OnSubStart1020009
	self.subStartHandlers["1020010"] = self.OnSubStart1020010
	self.subStartHandlers["1020011"] = self.OnSubStart1020011
	self.subStartHandlers["1020012"] = self.OnSubStart1020012
	self.subStartHandlers["1020013"] = self.OnSubStart1020013
	self.subStartHandlers["1020014"] = self.OnSubStart1020014
	self.subStartHandlers["1020015"] = self.OnSubStart1020015
    
end

function Quest10200:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["1020001"] = self.OnSubFinish1020001
	self.subFinishHandlers["1020002"] = self.OnSubFinish1020002
	self.subFinishHandlers["1020003"] = self.OnSubFinish1020003
	self.subFinishHandlers["1020004"] = self.OnSubFinish1020004
	self.subFinishHandlers["1020005"] = self.OnSubFinish1020005
	self.subFinishHandlers["1020006"] = self.OnSubFinish1020006
	self.subFinishHandlers["1020007"] = self.OnSubFinish1020007
	self.subFinishHandlers["1020008"] = self.OnSubFinish1020008
	self.subFinishHandlers["1020009"] = self.OnSubFinish1020009
	self.subFinishHandlers["1020010"] = self.OnSubFinish1020010
	self.subFinishHandlers["1020011"] = self.OnSubFinish1020011
	self.subFinishHandlers["1020012"] = self.OnSubFinish1020012
	self.subFinishHandlers["1020013"] = self.OnSubFinish1020013
	self.subFinishHandlers["1020014"] = self.OnSubFinish1020014
	self.subFinishHandlers["1020015"] = self.OnSubFinish1020015
	
end

function Quest10200:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["1020001"] = self.OnSubFailed1020001
	self.subFailedHandlers["1020002"] = self.OnSubFailed1020002
	self.subFailedHandlers["1020003"] = self.OnSubFailed1020003
	self.subFailedHandlers["1020004"] = self.OnSubFailed1020004
	self.subFailedHandlers["1020005"] = self.OnSubFailed1020005
	self.subFailedHandlers["1020006"] = self.OnSubFailed1020006
	self.subFailedHandlers["1020007"] = self.OnSubFailed1020007
	self.subFailedHandlers["1020008"] = self.OnSubFailed1020008
	self.subFailedHandlers["1020009"] = self.OnSubFailed1020009
	self.subFailedHandlers["1020010"] = self.OnSubFailed1020010
	self.subFailedHandlers["1020011"] = self.OnSubFailed1020011
	self.subFailedHandlers["1020012"] = self.OnSubFailed1020012
	self.subFailedHandlers["1020013"] = self.OnSubFailed1020013
	self.subFailedHandlers["1020014"] = self.OnSubFailed1020014
	self.subFailedHandlers["1020015"] = self.OnSubFailed1020015

end

---sub start & finish 内调用的函数
function Quest10200:InvokeOnInteraction(param)
    print("10200 Invoke : ")
    if param == 1 then
        print("Invoke 1")
		self:ShowQuestPictureDialog(244) 
	end

	if param == 2 then
        print("Invoke 2")
		local paimon = self:GetQuestNpcActor("Paimon")
		if paimon ~= nil then
			paimon:DestroyWithDisappear(false)
		end 
	end
end

--@region sub start & finish handlers
---按流程触发顺序

function Quest10200:OnSubStart1020002(quest)
end

function Quest10200:OnSubFinish1020002(quest)
	print("1020002 finish")
	
end

function Quest10200:OnSubStart1020003(quest)
	
end

function Quest10200:OnSubStart1020015(quest)
	--self:RequestInteractionForceAlias("Npc1467")
	
	self:NotifyTo("Npc1603", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc1414", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc1523", NpcUtil.NpcEventType.HIDESELF, true)
	
	self:CreateQuestNpc(quest, JackData.JackID, 1)
	self:CreateQuestNpc(quest, BruceData.BruceID, 2)
	self:CreateQuestNpc(quest, JoseData.JoseID, 3)

	local EventNPC1 = self:GetQuestNpcActor(BruceData.Bruce)
	EventNPC1:SitOnChair(8010)
	local EventNPC2 = self:GetQuestNpcActor(JackData.Jack)
	EventNPC2:SitOnChair(8010)
	local EventNPC3 = self:GetQuestNpcActor(JoseData.Jose)
	EventNPC3:DoFreeStyle(1190,true)
end

function Quest10200:OnSubFinish1020015(quest)
	
end

function Quest10200:OnSubFailed1020015(quest)
	
end

function Quest10200:OnSubFinish1020004(quest)
	if  self:GetSubQuestState(1020011) == 3 and
		self:GetSubQuestState(1020012) == 3 and
		self:GetSubQuestState(1020013) == 3 then
		self:FinishQuestID(false, 1020014)
	end
	local Paimon = self:GetQuestNpcActor(PaimonData.Paimon)
	if Paimon ~= nil then
		Paimon:DestroyWithDisappear(false)
	end
end

function Quest10200:OnSubFinish1020011(quest)
	if  self:GetSubQuestState(1020004) == 3 and
		self:GetSubQuestState(1020012) == 3 and
		self:GetSubQuestState(1020013) == 3 then
		self:FinishQuestID(false, 1020014)
	end
	local Paimon = self:GetQuestNpcActor(PaimonData.Paimon)
	if Paimon ~= nil then
		Paimon:DestroyWithDisappear(false)
	end
end

function Quest10200:OnSubFinish1020012(quest)
	if  self:GetSubQuestState(1020004) == 3 and
		self:GetSubQuestState(1020011) == 3 and
		self:GetSubQuestState(1020013) == 3 then
		self:FinishQuestID(false, 1020014)
	end
	local Paimon = self:GetQuestNpcActor(PaimonData.Paimon)
	if Paimon ~= nil then
		Paimon:DestroyWithDisappear(false)
	end
end

function Quest10200:OnSubFinish1020013(quest)
	if  self:GetSubQuestState(1020004) == 3 and
		self:GetSubQuestState(1020011) == 3 and
		self:GetSubQuestState(1020012) == 3 then
		self:FinishQuestID(false, 1020014)
	end
	local Paimon = self:GetQuestNpcActor(PaimonData.Paimon)
	if Paimon ~= nil then
		Paimon:DestroyWithDisappear(false)
	end
end

function Quest10200:OnSubStart1020014(quest)
	self:NotifyTo("Npc1603", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc1414", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc1523", NpcUtil.NpcEventType.HIDESELF, true)
	local EventNPC1 = self:GetQuestNpcActor(BruceData.Bruce)
	EventNPC1:SitOnChair(8010)
	local EventNPC2 = self:GetQuestNpcActor(JackData.Jack)
	EventNPC2:SitOnChair(8010)
	local EventNPC3 = self:GetQuestNpcActor(JoseData.Jose)
	EventNPC3:DoFreeStyle(1190,true)
end

function Quest10200:OnSubStart1020005(quest)
	self:CallDelay(2,
	function()
		local task = self:CreateQuestNpcCreateTask({PaimonData.Paimon})
			self:TransmitPlayer(1009, sceneData:GetDummyPoint(1009,"Q10200AvatarSpawn").pos, sceneData:GetDummyPoint(1009,"Q10200AvatarSpawn").rot, nil, 
        	function (self)
				self:CreateQuestNpc(quest, PaimonData.PaimonID, 1)
        	end, task
    		)
	end
	)
end

function Quest10200:OnSubFinish1020005(quest)
	--local paimon = actorMgr:GetActor("Paimon")
	local Paimon = self:GetQuestNpcActor(PaimonData.Paimon)
	if Paimon ~= nil then
		Paimon:DestroyWithDisappear(false)
	end
end

function Quest10200:OnSubFinish1020006(quest)
	print("1020006 finish")
	
	self:CreateQuestNpc(quest, QinData.QinID, 1)
	
	self:DestroyQuestNpcActor(BruceData.Bruce, 1009)
	self:DestroyQuestNpcActor(JackData.Jack, 1009)
	self:DestroyQuestNpcActor(JoseData.Jose, 1009)

	self:NotifyTo("Npc1603", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1414", NpcUtil.NpcEventType.STARTDAILY, true) 
	self:NotifyTo("Npc1523", NpcUtil.NpcEventType.STARTDAILY, true) 
end

function Quest10200:OnSubFinish1020007(quest)
	local paimon = self:GetQuestNpcActor(PaimonData.Paimon)
	if paimon ~= nil then
			paimon:DestroyWithDisappear(false)
	end
end

function Quest10200:OnSubStart1020008(quest)
	self:CallOnDoorOpen(
	function(sceneid,pointid)
		local q10200cfg = require('Quest/Client/Q10200ClientConfig')
		local quest = actorMgr:GetActor(q10200cfg.ActorAlias)
		if sceneid == 1004 and pointid == 3 then
			if quest ~= nil then
			quest:FinishQuestID(false, 1020008)
			end
		end
	end
	)
end


function Quest10200:OnSubFinish1020008(quest)
	print("1020008 finish")
	self:UncallOnDoorOpen()
	local Qin = self:GetQuestNpcActor(QinData.Qin)
	if Qin ~= nil then
    	Qin:Destroy(false)
    end
end

function Quest10200:OnSubStart1020009(quest)
	self:PlayCutsceneIndex(1020001,
    function (self)
		self:FinishQuestID(false, 1020009)
		self:CreateQuestNpc(quest, KleeData.KleeID, 1)
    end
    )

end



function Quest10200:OnSubFinish1020009(quest)
	print("1020009 finish")
end

function Quest10200:OnSubStart1020010(quest)
end

function Quest10200:OnSubFinish1020010(quest)
	print("1020010 finish")
	local paimon = self:GetQuestNpcActor(PaimonData.Paimon)
	if paimon ~= nil then
		paimon:DestroyWithDisappear(false)
	end
	
	self:DestroyQuestNpcActor(KleeData.Klee, 1004)
end



--@endregion


function Quest10200:Start()
end

function Quest10200:OnDestroy()
end

return Quest10200