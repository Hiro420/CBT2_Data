require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest21018 = class("Quest21018", questActorProxy)
Quest21018.defaultAlias = "Quest21018"

--local q21018Cfg = require('Quest/Client/Q21018ClientConfig')
local NpcUtil = require('Actor/Npc/NPCUtil')
local q21018Cfg
local SubIDs
local Actors
local NpcData_AHide 
local NpcData_BHide 
local NpcData_CHide 
local NpcData_DHide 
local NpcData_AReturn 
local NpcData_BReturn 
local NpcData_CReturn 
local NpcData_DReturn 
local Datas
 
function Quest21018:OnDataLoaded()
	q21018Cfg = self.clientData
	SubIDs = q21018Cfg.SubIDs
	Actors = q21018Cfg.Actors
	NpcData_AHide = Actors.NpcData_AHide
	NpcData_BHide = Actors.NpcData_BHide
	NpcData_CHide = Actors.NpcData_CHide
	NpcData_DHide = Actors.NpcData_DHide
	NpcData_AReturn = Actors.NpcData_AReturn
	NpcData_BReturn = Actors.NpcData_BReturn
	NpcData_CReturn = Actors.NpcData_CReturn
	NpcData_DReturn = Actors.NpcData_DReturn
	Datas = q21018Cfg.Datas
end

function Quest21018:OnSubStartHandlerBuild()
	self.subStartHandlers = 
	{
		["2101801"] = self.OnSubStart2101801,
		["2101802"] = self.OnSubStart2101802,
		["2101803"] = self.OnSubStart2101803,
		["2101804"] = self.OnSubStart2101804,
		["2101805"] = self.OnSubStart2101805,
		["2101806"] = self.OnSubStart2101806,
		["2101807"] = self.OnSubStart2101807,
		["2101808"] = self.OnSubStart2101808,
		["2101809"] = self.OnSubStart2101809,
		["2101810"] = self.OnSubStart2101810,
		["2101811"] = self.OnSubStart2101811,
		["2101812"] = self.OnSubStart2101812,
	}
end

function Quest21018:OnSubFinishHandlerBuild()
	self.subFinishHandlers = 
	{
		["2101801"] = self.OnSubFinish2101801,
		["2101802"] = self.OnSubFinish2101802,
		["2101803"] = self.OnSubFinish2101803,
		["2101804"] = self.OnSubFinish2101804,
		["2101805"] = self.OnSubFinish2101805,
		["2101806"] = self.OnSubFinish2101806,
		["2101807"] = self.OnSubFinish2101807,
		["2101808"] = self.OnSubFinish2101808,
		["2101809"] = self.OnSubFinish2101809,
		["2101810"] = self.OnSubFinish2101810,
		["2101811"] = self.OnSubFinish2101811,
		["2101812"] = self.OnSubFinish2101812,
	}
end

function Quest21018:OnSubFailedHandlerBuild()
	self.subFailedHandlers = 
	{
		["2101801"] = self.OnSubFailed2101801,
		["2101802"] = self.OnSubFailed2101802,
		["2101803"] = self.OnSubFailed2101803,
		["2101804"] = self.OnSubFailed2101804,
		["2101805"] = self.OnSubFailed2101805,
		["2101806"] = self.OnSubFailed2101806,
		["2101807"] = self.OnSubFailed2101807,
		["2101808"] = self.OnSubFailed2101808,
		["2101809"] = self.OnSubFailed2101809,
		["2101810"] = self.OnSubFailed2101810,
		["2101811"] = self.OnSubFailed2101811,
		["2101812"] = self.OnSubFailed2101812,
	}
end

function Quest21018:Start()
	print("Start")
end

function Quest21018:OnDestroy()
	print("OnDestroy")
end

function Quest21018:OnSubStart2101801(quest)
	self:NotifyTo("Npc2309", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc2304", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc2303", NpcUtil.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc2308", NpcUtil.NpcEventType.STARTDAILY, true)
	print("OnSubStart2101801")
end

function Quest21018:OnSubFinish2101801(quest)
	print("OnSubFinish2101801")
    self:ShowBlackScreen(1, 2, 1,
    function (self)
		self:NotifyTo("Npc2309", NpcUtil.NpcEventType.HIDESELF, true)
		self:NotifyTo("Npc2304", NpcUtil.NpcEventType.HIDESELF, true)
		self:NotifyTo("Npc2303", NpcUtil.NpcEventType.HIDESELF, true)
		self:NotifyTo("Npc2308", NpcUtil.NpcEventType.HIDESELF, true)
        self:CreateQuestNpcByIdWithPos("2101803", 230901, 0, Actors.NpcData_AHide.pos, Actors.NpcData_AHide.rot)
		self:CreateQuestNpcByIdWithPos("2101803", 230401, 0, Actors.NpcData_BHide.pos, Actors.NpcData_BHide.rot)
		self:CreateQuestNpcByIdWithPos("2101803", 230301, 0, Actors.NpcData_CHide.pos, Actors.NpcData_CHide.rot)
		self:CreateQuestNpcByIdWithPos("2101803", 230801, 0, Actors.NpcData_DHide.pos, Actors.NpcData_DHide.rot)
    end
    )
end

function Quest21018:OnSubFailed2101801(quest)
	print("OnSubFailed2101801")
end

function Quest21018:OnSubStart2101802(quest)
	print("OnSubStart2101802")
	
	local quest = self:GetQuestNpcActor(q21018Cfg.ActorAlias)  
	if quest ~= nil then
		quest:FinishQuestID(false, 2101802)
	end
end

function Quest21018:OnSubFinish2101802(quest)
	print("OnSubFinish2101802")
end

function Quest21018:OnSubFailed2101802(quest)
	print("OnSubFailed2101802")
end

function Quest21018:OnSubStart2101803(quest)
	self:NotifyTo("Npc2309", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc2304", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc2303", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc2308", NpcUtil.NpcEventType.HIDESELF, true)
	print("OnSubStart2101803")
end

function Quest21018:OnSubFinish2101803(quest)
	print("OnSubFinish2101803")
	local task = curtainUtils.CreateEntityCreateTask({Actors.NpcData_AReturn.alias})
    self:ShowBlackScreen(1, 2, 1,
    function (self)
        self:CreateQuestNpcByIdWithPos("2101803", 230901, 0, Actors.NpcData_AReturn.pos, Actors.NpcData_AReturn.rot)
    end,
    nil, task
    )
end

function Quest21018:OnSubFailed2101803(quest)
	print("OnSubFailed2101803")
end

function Quest21018:OnSubStart2101804(quest)
	print("OnSubStart2101804")

end

function Quest21018:OnSubFinish2101804(quest)
	print("OnSubFinish2101804")
end

function Quest21018:OnSubFailed2101804(quest)
	print("OnSubFailed2101804")
end

function Quest21018:OnSubStart2101805(quest)
	self:NotifyTo("Npc2309", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc2304", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc2303", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc2308", NpcUtil.NpcEventType.HIDESELF, true)
	print("OnSubStart2101805")
end

function Quest21018:OnSubFinish2101805(quest)
	print("OnSubFinish2101805")
	local task = curtainUtils.CreateEntityCreateTask({Actors.NpcData_BReturn.alias})
    self:ShowBlackScreen(1, 2, 1,
    function (self)
        self:CreateQuestNpcByIdWithPos("2101803", 230401, 0, Actors.NpcData_BReturn.pos, Actors.NpcData_BReturn.rot)
    end,
    nil, task
    )
end

function Quest21018:OnSubFailed2101805(quest)
	print("OnSubFailed2101805")
end

function Quest21018:OnSubStart2101806(quest)
	print("OnSubStart2101806")
end

function Quest21018:OnSubFinish2101806(quest)
	print("OnSubFinish2101806")
end

function Quest21018:OnSubFailed2101806(quest)
	print("OnSubFailed2101806")
end

function Quest21018:OnSubStart2101807(quest)
	self:NotifyTo("Npc2309", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc2304", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc2303", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc2308", NpcUtil.NpcEventType.HIDESELF, true)
	print("OnSubStart2101807")
end

function Quest21018:OnSubFinish2101807(quest)
	print("OnSubFinish2101807")
	local task = curtainUtils.CreateEntityCreateTask({Actors.NpcData_CReturn.alias})
    self:ShowBlackScreen(1, 2, 1,
    function (self)
        self:CreateQuestNpcByIdWithPos("2101803", 230301, 0, Actors.NpcData_CReturn.pos, Actors.NpcData_CReturn.rot)
    end,
    nil, task
    )
end

function Quest21018:OnSubFailed2101807(quest)
	print("OnSubFailed2101807")
end

function Quest21018:OnSubStart2101808(quest)
	print("OnSubStart2101808")
end

function Quest21018:OnSubFinish2101808(quest)
	print("OnSubFinish2101808")
end

function Quest21018:OnSubFailed2101808(quest)
	print("OnSubFailed2101808")
end

function Quest21018:OnSubStart2101809(quest)
	self:NotifyTo("Npc2309", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc2304", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc2303", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc2308", NpcUtil.NpcEventType.HIDESELF, true)
	print("OnSubStart2101809")
end

function Quest21018:OnSubFinish2101809(quest)
	print("OnSubFinish2101809")
	local task = curtainUtils.CreateEntityCreateTask({Actors.NpcData_DReturn.alias})
    self:ShowBlackScreen(0.5, 1, 0.5,
    function (self)
        self:CreateQuestNpcByIdWithPos("2101803", 230801, 0, Actors.NpcData_DReturn.pos, Actors.NpcData_DReturn.rot)
    end,
    nil, task
    )
end

function Quest21018:OnSubFailed2101809(quest)
	print("OnSubFailed2101809")
end

function Quest21018:OnSubStart2101810(quest)
	print("OnSubStart2101810")
end

function Quest21018:OnSubFinish2101810(quest)
	print("OnSubFinish2101810")
end

function Quest21018:OnSubFailed2101810(quest)
	print("OnSubFailed2101810")
end

function Quest21018:OnSubStart2101811(quest)
	self:NotifyTo("Npc2309", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc2304", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc2303", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc2308", NpcUtil.NpcEventType.HIDESELF, true)
	print("OnSubStart2101811")
end

function Quest21018:OnSubFinish2101811(quest)
	print("OnSubFinish2101811")
end

function Quest21018:OnSubFailed2101811(quest)
	print("OnSubFailed2101811")
end

function Quest21018:OnSubStart2101812(quest)
	self:NotifyTo("Npc2309", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc2304", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc2303", NpcUtil.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc2308", NpcUtil.NpcEventType.HIDESELF, true)
	print("OnSubStart2101812")
end

function Quest21018:OnSubFinish2101812(quest)
	print("OnSubFinish2101812")
	local task = curtainUtils.CreateEntityCreateTask({"Npc2309","Npc230901","Npc2304","Npc230401","Npc2303","Npc230301","Npc2308","Npc230801"})
    self:ShowBlackScreen(1, 2, 1,
    function (self)
		local NPCAClone = self:GetQuestNpcActor(self.clientData.Actors.NpcData_AReturn.alias)
            if NPCAClone ~= nil then
                NPCAClone:Destroy(false)
            end
		local NPCBClone = self:GetQuestNpcActor(self.clientData.Actors.NpcData_BReturn.alias)
            if NPCBClone ~= nil then
                NPCBClone:Destroy(false)
            end
		local NPCCClone = self:GetQuestNpcActor(self.clientData.Actors.NpcData_CReturn.alias)
            if NPCCClone ~= nil then
                NPCCClone:Destroy(false)
            end
		local NPCDClone = self:GetQuestNpcActor(self.clientData.Actors.NpcData_DReturn.alias)
            if NPCDClone ~= nil then
                NPCDClone:Destroy(false)
            end
		self:NotifyTo("Npc2309", NpcUtil.NpcEventType.STARTDAILY, true)
		self:NotifyTo("Npc2304", NpcUtil.NpcEventType.STARTDAILY, true)
		self:NotifyTo("Npc2303", NpcUtil.NpcEventType.STARTDAILY, true)
		self:NotifyTo("Npc2308", NpcUtil.NpcEventType.STARTDAILY, true)
    end,
    nil, task
    )
end

function Quest21018:OnSubFailed2101812(quest)
	print("OnSubFailed2101812")
end

return Quest21018
