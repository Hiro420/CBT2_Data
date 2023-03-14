----------------------
-- 这是Lua端QuestActor的基类，包含了控制Quest阶段的方法。继承自BaseActorProxy
-- @classmod QuestActorProxy
require('Actor/ActorCommon')
local baseActorProxy = require('Actor/EntityActorProxy')

local QuestActorProxy = class("QuestActorProxy", baseActorProxy)

QuestActorProxy.actorType = ActorType.QUEST_ACTOR

--- QuestActor描述的主任务的ID
QuestActorProxy.mainQuestID = 0
QuestActorProxy.mainQuestConfigID = 0
QuestActorProxy.shareData = nil
QuestActorProxy.clientData = nil
QuestActorProxy.subStartHandlers = nil
QuestActorProxy.subFinishHandlers = nil
QuestActorProxy.subFailedHandlers = nil
QuestActorProxy.speechBubbleTask = nil

local this = nil
local super = nil
local uActor = nil

QuestActorProxy.AliasCache = {}

function QuestActorProxy:GetRealAlias(alias)
	local realAlias = self.AliasCache[alias]
	if realAlias == nil then
		if self:IsRandom() then
			realAlias = self:GetRandomNpcAlias(self:GetRandomFactorValue(alias))
		else
			realAlias = alias .. self.mainQuestID
		end
		self.AliasCache[alias] = realAlias
	end
	return realAlias
end

function QuestActorProxy:OnDataLoad()
	local sharePath = "Quest/Share/Q" .. tostring(self.mainQuestConfigID) .. "ShareConfig"
	main_id = self.mainQuestID
	sub_ids = {}
	rewind_data = {}
	quest_data = {}
	util.do_require(sharePath)
	self.shareData = 
	{
		SubIds = sub_ids,
		RewindData = rewind_data,
		QuestData = quest_data,

		GetRewindData = function(self, questID)
			return self.RewindData[tostring(questID)]
		end,

		GetQuestData = function(self, questID)
			return self.QuestData[tostring(questID)]
		end,
	}

	local clientPath = "Quest/Client/Q" .. tostring(self.mainQuestConfigID) .. "ClientConfig"
	self.clientData = require(clientPath)
	util.unrequire(sharePath)
	util.unrequire(clientPath)
	main_id = nil
	sub_ids = nil
	rewind_data = nil
	quest_data = nil

	self:OnDataLoaded()
end

function QuestActorProxy:OnDataLoaded()

end

function QuestActorProxy:OnHandlerBuild()
	print("********QuestActorProxy OnHandlerBuild")
	self:OnSubStartHandlerBuild()
	self:OnSubFinishHandlerBuild()
	self:OnSubFailedHandlerBuild()
end

function QuestActorProxy:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
end

function QuestActorProxy:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
end

function QuestActorProxy:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
end

--- Sub Start Handlers Begin
--- Sub Start Handlers End

function QuestActorProxy:OnPreInit()
	this = self
	super = self.__super
	self.AliasCache = {}
end

function QuestActorProxy:OnPostInit()
	uActor = self.uActor
	if uActor ~= nil then
		uActor:TryStartActor()
	end
end

function QuestActorProxy:OnInit(alias)
	self.alias = alias
	local uActor = self:CreateUActor(alias)
	self.uActor = uActor

	self:Register()
end

-- local param begin
-- local param end

function QuestActorProxy:CreateUActor(alias)
	local uActor = actorUtils.CreateActor(self, ActorType.QUEST_ACTOR, alias)
	uActor = actorUtils.CreateQuestActor(self.mainQuestID, uActor)
	return uActor
end

--- QuestActor当主任务开始时的回调
-- @tparam QuestProxy quest c#端quest的对象
function QuestActorProxy:OnMainStartHandler(quest)
	self:OnMainStart(quest)
end

function QuestActorProxy:OnMainStart(quest)
	print("main start " .. tostring(quest.QuestMainId))
end

--- QuestActor当子任务开始时的回调
-- @tparam QuestProxy quest c#端quest的对象
function QuestActorProxy:OnSubStart(quest)
	local questID = tostring(quest.QuestConfigId)
	print("sub start " .. questID)
	if self.subStartHandlers == nil then
		return
	end

	local handler = self.subStartHandlers[questID]
	if handler ~= nil then
		handler(self, quest)
	end
end

--- QuestActor当子任务结束时的回调
-- @tparam QuestProxy quest c#端quest的对象
function QuestActorProxy:OnSubFinished(quest)
	local questID = tostring(quest.QuestConfigId)
	print("sub finished " .. questID)
	if self.subFinishHandlers == nil then
	end

	local handler = self.subFinishHandlers[questID]
	if handler ~= nil then
		handler(self, quest)
	end
end

--- QuestActor当主任务结束时的回调
-- @tparam QuestProxy quest c#端quest的对象
function QuestActorProxy:OnMainFinishedHandler(quest)
	self:OnMainFinished(quest)
	self:DoReturnNpc()
end

function QuestActorProxy:OnMainFinished(quest)
	if quest ~= nil then
		print("main finished " .. tostring(quest.QuestMainId))
	else
		print("main finished nil never start")
	end
end

function QuestActorProxy:OnMainFailedHandler(quest)
	self:OnMainFailed(quest)
	self:DoReturnNpc()
end

function QuestActorProxy:OnMainFailed(quest)
	if quest ~= nil then
		print("main failed " .. tostring(quest.QuestMainId))
	else
		print("main failed nil never start")
	end
end

function QuestActorProxy:OnMainCanceledHandler(quest)
	self:OnMainCanceled(quest)
	self:DoReturnNpc()
end

function QuestActorProxy:OnMainCanceled(quest)
	if quest ~= nil then
		print("main canceled " .. tostring(quest.QuestMainId))
	else
		print("main canceled nil never start")
	end
end

--- QuestActor当子任务失败时候的回调
-- @tparam QuestProxy quest c#端quest的对象
function QuestActorProxy:OnSubFailed(quest)
	local questID = tostring(quest.QuestConfigId)
	print("sub failed " .. questID)
	if self.subFailedHandlers == nil then
		return
	end
	local handler = self.subFailedHandlers[questID]
	if handler ~= nil then
		handler(self, quest)
	end
end

--- QuestActor主任务回溯
-- @tparam QuestProxy quest c#端quest的对象
function QuestActorProxy:OnRewind(quest)
	print("quest rewind " .. tostring(quest.QuestConfigId) .. tostring(quest.state))
	self:DoRewind(self.shareData:GetRewindData(quest.QuestConfigId), quest)
end

function QuestActorProxy:OnSoftRewind(quest)
	print("quest soft rewind " .. tostring(quest.QuestConfigId) .. tostring(quest.state))
	return self:DoSoftRewind(self.shareData:GetRewindData(quest.QuestConfigId))
end

function QuestActorProxy:DoRewind(rewindData, quest)
	print(rewindData)

	if rewindData == nil then
		return
	end

	--self:DoRewindAvatar(rewindData.avatar, false)
	self:DoRewindNpc(rewindData.npcs, nil, quest)
	self:DoRewindGadget(rewindData.gadgets, nil, quest)
	self:DoRewindItem(rewindData.items, nil, quest)
end

function QuestActorProxy:DoSoftRewind(rewindData)
	print(rewindData)

	if rewindData == nil then
		return
	end

	return false--self:DoRewindNpc(rewindData.npcs, true)
end

function QuestActorProxy:DoRewindAvatar(avatarRewindData, sceneCheck)
	if avatarRewindData == nil then
		return false
	end

	if sceneCheck == nil then
		sceneCheck = true
	end

	local sceneID = avatarRewindData.scene_id
	if sceneID == nil then
		sceneID = sceneData.DefaultSceneID
	end
	if sceneCheck and sceneID ~= sceneData.currSceneID and sceneData.currSceneID ~= 1001 then
		return false
	end

	local dummyPoint = sceneData:GetDummyPoint(sceneID, avatarRewindData.pos)
	if dummyPoint == nil then
		return
	end

	this:TransmitPlayer(0,dummyPoint.pos, dummyPoint.rot)
	
	-- actorUtils.SetAvatarPos(dummyPoint.pos)
	-- actorUtils.SetAvatarEuler(dummyPoint.rot)
	actorUtils.SyncAvatarMotion()
	return true
end

function QuestActorProxy:DoRewindNpc(npcRewindList, sceneCheck, quest)
	if npcRewindList == nil then
		return false
	end

	if sceneCheck == nil then
		sceneCheck = false
	end

	local needRewind = false
	for i = 1 , #npcRewindList do
		local npcRewindData = npcRewindList[i]
		if npcRewindData ~= nil then
			if npcRewindData.alias ~= nil then
				print("Lua want to create npc " .. npcRewindData.alias)
			else
				print("Lua want to create npc " .. npcRewindData.id)
			end

			local sceneID = npcRewindData.scene_id
			if sceneID == nil then
				sceneID = sceneData.DefaultSceneID
			end

			repeat
				if sceneCheck and sceneID ~= sceneData.currSceneID and sceneData.currSceneID ~= 1001 then
					break
				end

				local data = actorData:GetByNpcRewindData(npcRewindData, self, quest.QuestId)
				if data ~= nil then
					actorMgr:CreateActorWithData(data)
				end
				needRewind = true
			until true
		end
	end

	return needRewind
end

function QuestActorProxy:DoRewindGadget(gadgetRewindList, sceneCheck, quest)
	if gadgetRewindList == nil then
		return
	end

	if sceneCheck == nil then
		sceneCheck = false
	end

	local needRewind = false
	for i = 1, #gadgetRewindList do
		local gadgetRewindData = gadgetRewindList[i]
		if gadgetRewindData ~= nil then
			if gadgetRewindData.alias ~= nil then
				print("Lua want to create gadget " .. gadgetRewindData.alias)
			else
				print("Lua want to create gadget " .. gadgetRewindData.id)
			end

			local sceneID = gadgetRewindData.scene_id
			if sceneID == nil then
				sceneID = sceneData.DefaultSceneID
			end

			repeat
				if sceneCheck and sceneID ~= sceneData.currSceneID and sceneData.currSceneID ~= 1001 then
					break
				end
				local id = nil
				local alias = nil
				local pos = nil

				if self:IsRandom() then
					id = tonumber(self:GetRandomFactorValue(gadgetRewindData.id))
					alias = self:GetRandomGadgetAlias(gadgetRewindData.alias)
					pos = self:GetRandomFactorValue(gadgetRewindData.pos)
				else
					id = gadgetRewindData.id
					alias = gadgetRewindData.alias
					pos = gadgetRewindData.pos
				end
				local dummyPoint = sceneData:GetDummyPoint(sceneID, pos)

				if dummyPoint == nil then
					print("Dummy Point " .. pos .. " is nil")
					break
				end

				if gadgetRewindData.script ~= nil then
					local data = actorData:GetByGadgetRewindData(gadgetRewindData, self, quest.QuestId)
					if data ~= nil then
						actorMgr:CreateActorWithData(data)
					end
				else
					self:SpawnGadgetImpl(id, dummyPoint.pos, dummyPoint.rot, alias, sceneID, nil, quest.QuestId, gadgetRewindData.room_id)
				end
				needRewind = true
			until true
		end
	end
end

function QuestActorProxy:DoRewindItem(itemRewindList, sceneCheck, quest)
	if itemRewindList == nil then
		return
	end

	if sceneCheck == nil then
		sceneCheck = false
	end

	local needRewind = false
	for i = 1 , #itemRewindList do
		local itemRewindData = itemRewindList[i]
		if itemRewindData ~= nil then
			if itemRewindData.alias ~= nil then
				print("Lua want to create item " .. itemRewindData.alias)
			else
				print("Lua want to create item " .. itemRewindData.id)
			end

			local sceneID = itemRewindData.scene_id
			if sceneID == nil then
				sceneID = sceneData.DefaultSceneID
			end

			repeat
				if sceneCheck and sceneID ~= sceneData.currSceneID and sceneData.currSceneID ~= 1001 then
					break
				end
				local id = nil
				local alias = nil
				local pos = nil

				if self:IsRandom() then
					id = tonumber(self:GetRandomFactorValue(itemRewindData.id))
					alias = self:GetRandomItemAlias(itemRewindData.alias)
					pos = self:GetRandomFactorValue(itemRewindData.pos)
				else
					id = itemRewindData.id
					alias = itemRewindData.alias
					pos = itemRewindData.pos
				end

				local dummyPoint = sceneData:GetDummyPoint(sceneID, pos)
				if dummyPoint == nil then
					print("Dummy Point " .. itemRewindData.pos .. " is nil")
					break
				end
				self:SpawnItemImpl(id, dummyPoint.pos, dummyPoint.rot, alias, sceneID, itemRewindData.born_type, quest.QuestId, itemRewindData.room_id)
				needRewind = true
			until true
		end
	end
end

function QuestActorProxy:DoReturnNpc()
	local checkDic = {}
	local rewindData = self.shareData.RewindData
	local questData = self.shareData.QuestData
	if rewindData ~= nil then
		for k, v in pairs(rewindData) do
			if v ~= nil and v.npcs ~= nil then
				local npcs = v.npcs
				for i = 1, #(npcs) do
					local npc = npcs[i]
					if npc ~= nil and checkDic[npc.id] == nil then
						checkDic[npc.id] = true
						self.uActor:ReturnQuestNpc(npc.id)
					end
				end
			end
		end
	end

	if questData ~= nil then
		for k, v in pairs(questData) do
			if v ~= nil and v.npcs ~= nil then
				local npcs = v.npcs
				for i = 1, #(npcs) do
					local npc = npcs[i]
					if npc ~= nil and checkDic[npc.id] == nil then
						checkDic[npc.id] = true
						self.uActor:ReturnQuestNpc(npc.id)
					end
				end
			end
		end
	end

	checkDic = nil
end

--- QuestActor结束一个子任务
-- @tparam bool isFailed 是否失败
-- @tparam QuestProxy quest c#端quest的对象，如果quest为nil，则结束当前任务
function QuestActorProxy:FinishQuest(isFailed, quest)
	self.uActor:TryFinishCurrQuest(isFailed, quest)
end

--- QuestActor结束一个子任务
-- @tparam bool isFailed 是否失败
-- @tparam uint questId 想要结束的questId
function QuestActorProxy:FinishQuestID(isFailed, questId)
	self.uActor:TryFinishCurrQuestID(isFailed, questId)
end

--- QuestActor结束一个子任务
-- @tparam bool isFailed 是否失败
-- @tparam QuestProxy quest c#端quest的对象，如果quest为nil，则结束当前任务
function QuestActorProxy:UnFinishQuest(isFailed, quest)
	self.uActor:TryUnFinishCurrQuest(isFailed, quest)
end

--- 获取当前任务的随机参数
-- @tparam string type 随机参数的类型，即key
function QuestActorProxy:GetRandomFactorValue(key)
	if type(key) ~= 'string' or string.find(key, "{") ~= 1 then
		return key
	else
		return self.uActor:GetRandomFactorValue(key)
	end
end

--- 判断当前是否是随机任务
function QuestActorProxy:IsRandom()
	return self.mainQuestID >= 100000
end

--- 获取随机NPC的别名
function QuestActorProxy:GetRandomNpcAlias(key)
	return "Npc" .. tostring(self.mainQuestID) .. key;
end

--- 获取随机Gadget的别名
function QuestActorProxy:GetRandomGadgetAlias(key)
	return "Gadget" .. tostring(self.mainQuestID) .. key;
end

--- 获取随机Item的别名
function QuestActorProxy:GetRandomItemAlias(key)
	return "Item" .. tostring(self.mainQuestID) .. key;
end

--- 获取随机Monster的别名
function QuestActorProxy:GetRandomMonsterAlias(key)
	return "Monster" .. tostring(self.mainQuestID) .. key;
end




--获取已交付id对应的groupid
function QuestActorProxy:GetGivingRecord(id)
	return self.uActor:GetGivingRecord(id)
end

QuestActorProxy.TaskOnPauseReminder = 1001
QuestActorProxy.TaskOnResumeReminder = 1002

function QuestActorProxy:Register()
	self.uActor:StartQuest('+', self.OnMainStartHandler)
	self.uActor:StartSubQuest('+', self.OnSubStart)
	self.uActor:FinishSubQuest('+', self.OnSubFinished)
	self.uActor:FinishQuest('+', self.OnMainFinishedHandler)
	self.uActor:FailMainQuest('+', self.OnMainFailedHandler)
	self.uActor:CancelMainQuest('+', self.OnMainCanceledHandler)
	self.uActor:FailedSubQuest('+', self.OnSubFailed)
	self.uActor:RewindQuest('+', self.OnRewind)
	self.uActor:RegisterSoftRewindQuest(self.OnSoftRewind)
	self:RegisterTaskCB()
end

function QuestActorProxy:Start()
	print("here quest start")
end

function QuestActorProxy:Destroy(isActorOnly)
	self:UnregisterTaskCB()
	self.uActor:StartQuest('-', self.OnMainStartHandler)
	self.uActor:StartSubQuest('-', self.OnSubStart)
	self.uActor:FinishSubQuest('-', self.OnSubFinished)
	self.uActor:FinishQuest('-', self.OnMainFinishedHandler)
	self.uActor:FailMainQuest('-', self.OnMainFailedHandler)
	self.uActor:CancelMainQuest('-', self.OnMainCanceledHandler)
	self.uActor:FailedSubQuest('-', self.OnSubFailed)
	self.uActor:RewindQuest('-', self.OnRewind)
	self.uActor:UnregisterSoftRewindQuest(self.OnSoftRewind)
	self:OnDestroy()
	QuestActorProxy.DestroyActor(self.uActor, isActorOnly)
	self.uActor = nil
	self.shareData = nil
	self.clientData = nil
	self.mainQuestID = nil
	self.mainQuestConfigID = nil
	self.subStartHandlers = nil
	self.subFinishHandlers = nil
	self.subFailedHandlers = nil
end

function QuestActorProxy:CreateSpeechBubbleTask(npcID, dialogID, duration, loop, intervalMin, intervalMax)
	if(self.speechBubbleTask == nil) then
		self.speechBubbleTask = self:CreateTask(TaskID.NARRATOR_TASK_ID, LuaTaskType.SPEECH_BUBBLE, "Speech")
	end
	
	if(self.speechBubbleTask ~= nil) then
		self.speechBubbleTask:CreateQuestSpeechBubble(npcID, self.mainQuestID, dialogID, duration, intervalMin, intervalMax, loop)
	end
end

function QuestActorProxy:ClearSpeechBubbleTask()
	if(self.speechBubbleTask ~= nil) then
		self.speechBubbleTask:FinishTask()
		self.speechBubbleTask = nil
	end
end

function QuestActorProxy:SetQuestVar(questId, index, value)
	self.uActor:SetQuestVar(questId, index, value)
end

function QuestActorProxy:SetQuestVarWithInterval(questId, index, min, max)
	math.randomseed(os.time())
	local value = math.random(min, max)
	self.uActor:SetQuestVar(questId, index, value)
end

function QuestActorProxy:GetQuestVar(questId, index)
	return self.uActor:GetQuestVar(questId, index)
end

--Method

--- Actor播放Cutscene的方法
-- @tparam string index 协议的Cutscene配置索引名
-- @tparam function OnFinish 结束后的回调函数，定义需要包含一个actor（self）的参数
-- @tparam function OnStart 开始后的回调函数，这里是真正开始，定义需要包含一个actor（self）的参数
-- @tparam function OnDestroy 断线重连等销毁时候回调函数，定义需要包含一个actor（self）的参数
-- @tparam bool syncLoad 是否同步加载
function QuestActorProxy:PlayCutsceneIndex(index, OnFinish, OnStart, OnDestroy, syncLoad)
	if syncLoad == nil then
		syncLoad = false
	end

	self.uActor:PlayCutsceneIndex(index, OnFinish, OnStart, OnDestroy, syncLoad, self.mainQuestID)
end

--- Actor播放Cutscene的方法
-- @tparam ConfigTimeline config 一个ConfigTimeline的配置结构体
-- @tparam function OnFinish 结束后的回调函数，定义需要包含一个actor（self）的参数
-- @tparam function OnStart 开始后的回调函数，这里是真正开始，定义需要包含一个actor（self）的参数
-- @tparam function OnDestroy 断线重连等销毁时候回调函数，定义需要包含一个actor（self）的参数
function QuestActorProxy:PlayCutscene(config, OnFinish, OnStart, OnDestroy)
	self.uActor:PlayCutscene(config, OnFinish, OnStart, OnDestroy, self.mainQuestID)
end

--- 强制对话
-- @tparam string alias 别名
function QuestActorProxy:RequestInteraction(alias)
	self.uActor:RequestInteraction(self:GetRealAlias(alias))
end

--- 强制对话指定alias
-- @tparam string alias 别名
function QuestActorProxy:RequestInteractionForceAlias(alias)
	self.uActor:RequestInteraction(alias)
end

function QuestActorProxy:CreateQuestNpc(quest, npcID, index)
	local questID = quest.QuestConfigId
	local questData = self.shareData:GetQuestData(questID)
	return actorMgr:CreateQuestNpcActorInternal(self.mainQuestID, npcID, questData, self, index)
end

function QuestActorProxy:CreateQuestNpcById(questID, npcID, index)	
	local questData = self.shareData:GetQuestData(questID)
	return actorMgr:CreateQuestNpcActorInternal(self.mainQuestID, npcID, questData, self, index)
end

function QuestActorProxy:CreateQuestNpcWithPos(quest, npcID, index, pos, euler)
	local questID = quest.QuestConfigId
	local questData = self.shareData:GetQuestData(questID)
	return actorMgr:CreateQuestNpcActorInternal(self.mainQuestID, npcID, questData, self, index, pos, euler)
end

function QuestActorProxy:CreateQuestNpcByIdWithPos(questID, npcID, index, pos, euler)
	local questData = self.shareData:GetQuestData(questID)
	return actorMgr:CreateQuestNpcActorInternal(self.mainQuestID, npcID, questData, self, index, pos, euler)
end

function QuestActorProxy:GetQuestNpcActor(alias)
	local realAlias = self:GetRealAlias(alias)
	return actorMgr:GetActor(realAlias)
end

function QuestActorProxy:GetQuestNpcActorNoDummy(alias)
	local realAlias = self:GetRealAlias(alias)
	return actorMgr:GetActorInternal(realAlias)
end

function QuestActorProxy:DestroyQuestNpcActor(alias, sceneId)
	local realAlias = self:GetRealAlias(alias)
	return actorMgr:DestroyEntityActor(realAlias, sceneId)
end

function QuestActorProxy:DestroyQuestNpcActorByAlias(alias, isActorOnly)
	local realAlias = self:GetRealAlias(alias)
	return actorMgr:DestroyNpcActorByAlias(realAlias, isActorOnly)
end

function QuestActorProxy:CreateQuestNpcCreateTask(aliasArr)
	if aliasArr == nil then
		return nil
	end
	for i = 1, #aliasArr do
		local alias = aliasArr[i]
		aliasArr[i] = self:GetRealAlias(alias)
	end
	return curtainUtils.CreateEntityCreateTask(aliasArr)
end
function QuestActorProxy:SpawnItemImpl(configID, bornPos, bornDir, alias, sceneID, bornType, questId, roomId)
	if sceneID == nil then
		sceneID = sceneData.DefaultSceneID
	end
	-- if sceneID ~= sceneData.currSceneID then
	-- 	return
	-- end

	if bornDir == nil then
		bornDir = { x = 0.0, y = 0.0, z = 0.0 }
	elseif type(bornDir) == "number" then
		bornDir = { x = 0.0, y = bornDir, z = 0.0 }
	end
	if alias == nil then
		alias = ""
	end
	if bornType == nil then
		bornType = 1
	end

	questId = questId or 0
	roomId = roomId or 0

	self.uActor:SpawnItem(configID, bornPos, bornDir, sceneID, alias, bornType, questId, roomId)
end
-- mark to delete start
function QuestActorProxy:SpawnItem(quest, itemID, dataIndex, alias, sceneID, bornType, questId, roomId)
	if type(quest) == "number" then		-- old interface
		self:SpawnItemImpl(quest, itemID, dataIndex, alias, sceneID, bornType, questId, roomId)
		return
	end
-- mark to delete end
--function QuestActorProxy:SpawnItem(quest, itemID, dataIndex)
	local questID = quest.QuestConfigId
	self:SpawnItemById(questID, itemID, dataIndex)
end

function QuestActorProxy:SpawnItemWithPos(quest, itemID, dataIndex, pos, euler, alias)
	local questID = quest.QuestConfigId
	self:SpawnItemByIdWithPos(questID, itemID, dataIndex, pos, euler, alias)
end

function QuestActorProxy:SpawnItemById(questID, itemID, dataIndex)
	local questData = self.shareData:GetQuestData(questID)
	if nil == questData then
		return
	end
	local itemData = nil
	if nil ~= dataIndex then
		itemData = questData.items[dataIndex]
	else
		for i = 1, #questData.items do
			local item = questData.items[i]
			if item.id == itemID then
				itemData = item
				break
			end
		end
	end
	if nil == itemData then
		return
	end


	local sceneID = itemData.scene_id
	
	if sceneID == nil then
		sceneID = sceneData.DefaultSceneID
	end
	local id = nil
	local realAlias = nil
	local posStr = nil
	if self:IsRandom() then
		local idStr = self:GetRandomFactorValue(itemData.id)
		id = tonumber(idStr)
		realAlias = self:GetRandomItemAlias(itemData.alias)
		posStr = self:GetRandomFactorValue(itemData.pos)
	else
		id = itemData.id
		realAlias = itemData.alias
		posStr = itemData.pos
	end

	local point = sceneData:GetDummyPoint(sceneID, posStr)
	self:SpawnItemImpl(id, point.pos, point.rot, realAlias, sceneID, itemData.born_type, questID, itemData.room_id)
end

function QuestActorProxy:SpawnItemByIdWithPos(questID, itemID, dataIndex, pos, euler, alias)
	local questData = self.shareData:GetQuestData(questID)
	if nil == questData then
		return
	end
	local itemData = nil
	if nil ~= dataIndex then
		itemData = questData.items[dataIndex]
	else
		for i = 1, #questData.items do
			local item = questData.items[i]
			if item.id == itemID then
				itemData = item
				break
			end
		end
	end
	if nil == itemData then
		return
	end
	local id = nil
	local realAlias = nil
	if self:IsRandom() then
		local idStr = self:GetRandomFactorValue(itemData.id)
		id = tonumber(idStr)
		realAlias = self:GetRandomItemAlias(alias or itemData.alias)
	else
		id = itemData.id
		realAlias = alias or itemData.alias
	end
	self:SpawnItemImpl(id, pos, euler, realAlias, itemData.scene_id, itemData.born_type, questID, itemData.room_id)
end

function QuestActorProxy:SpawnMonsterImpl(configID, level, bornPos, bornDir, dropID, scale, alias, sceneID, questId, roomId)
	if sceneID == nil then
		sceneID = sceneData.DefaultSceneID
	end
	-- if sceneID ~= sceneData.currSceneID then
	-- 	return
	-- end
	
	if bornDir == nil then
		bornDir = { x = 0.0, y = 0.0, z = 0.0 }
	elseif type(bornDir) == "number" then
		bornDir = { x = 0.0, y = bornDir, z = 0.0 }
	end
	if scale == nil then
		scale = 1.0
	end
	if questId == nil then
		questId = 0
	end
	if alias == nil then
		alias = ""
	end
	roomId = roomId or 0
	self.uActor:SpawnMonster(configID, level, bornPos, bornDir, scale, sceneID, alias, questId, roomId)
end

-- mark to delete start
function QuestActorProxy:SpawnMonster(quest, configID, dataIndex, yaw, dropID, scale, alias, sceneID, questId)
	if type(quest) == "number" then		-- old interface
		self:SpawnMonsterImpl(quest, configID, dataIndex, yaw, dropID, scale, alias, sceneID, questId)
		return
	end
-- mark to delete end
--function QuestActorProxy:SpawnMonster(quest, configID, dataIndex)
	local questID = quest.QuestConfigId
	self:SpawnMonsterById(questID, configID, dataIndex)
end

function QuestActorProxy:SpawnMonsterWithPos(quest, configID, dataIndex, pos, euler, alias)
	local questID = quest.QuestConfigId
	self:SpawnMonsterByIdWithPos(questID, configID, dataIndex, pos, euler, alias)
end

function QuestActorProxy:SpawnMonsterById(questID, configID, dataIndex)
	local questData = self.shareData:GetQuestData(questID)
	if nil == questData then
		return
	end
	local monsterData = nil
	if nil ~= dataIndex then
		monsterData = questData.monsters[dataIndex]
	else
		for i = 1, #questData.monsters do
			local monster = questData.monsters[i]
			if monster.id == configID then
				monsterData = monster
				break
			end
		end
	end
	if nil == monsterData then
		return
	end


	local sceneID = monsterData.scene_id
	
	if sceneID == nil then
		sceneID = sceneData.DefaultSceneID
	end
	local id = nil
	local realAlias = nil
	local posStr = nil
	if self:IsRandom() then
		local idStr = self:GetRandomFactorValue(monsterData.id)
		id = tonumber(idStr)
		realAlias = self:GetRandomMonsterAlias(monsterData.alias)
		posStr = self:GetRandomFactorValue(monsterData.pos)
	else
		id = monsterData.id
		realAlias = monsterData.alias
		posStr = monsterData.pos
	end

	local point = sceneData:GetDummyPoint(sceneID, posStr)
	self:SpawnMonsterImpl(id, monsterData.level, point.pos, point.rot, nil, monsterData.scale, realAlias, sceneID, questID, monsterData.room_id)
end

function QuestActorProxy:SpawnMonsterByIdWithPos(questID, configID, dataIndex, pos, euler, alias)
	local questData = self.shareData:GetQuestData(questID)
	if nil == questData then
		return
	end
	local monsterData = nil
	if nil ~= dataIndex then
		monsterData = questData.monsters[dataIndex]
	else
		for i = 1, #questData.monsters do
			local monster = questData.monsters[i]
			if monster.id == configID then
				monsterData = monster
				break
			end
		end
	end
	if nil == monsterData then
		return
	end

	local id = nil
	local realAlias = nil
	if self:IsRandom() then
		local idStr = self:GetRandomFactorValue(monsterData.id)
		id = tonumber(idStr)
		realAlias = self:GetRandomMonsterAlias(alias or monsterData.alias)
	else
		id = monsterData.id
		realAlias = alias or monsterData.alias
	end

	self:SpawnMonsterImpl(id, monsterData.level, pos, euler, nil, monsterData.scale, realAlias, monsterData.scene_id, questID, monsterData.room_id)
end
function QuestActorProxy:SpawnGadgetImpl(configID, bornPos, bornDir, alias, sceneID, dropId, questId, roomId)
	if sceneID == nil then
		sceneID = sceneData.DefaultSceneID
	end
	-- if sceneID ~= sceneData.currSceneID then
	-- 	return
	-- end
	if alias == nil then
		alias = ""
	end

	questId = questId or 0
	roomId = roomId or 0

	self.uActor:SpawnGadget(configID, bornPos, bornDir, sceneID, alias, questId, roomId)
end
-- mark to delete start
function QuestActorProxy:SpawnGadget(quest, configID, dataIndex, alias, sceneID, dropID, questId, roomId)
	if type(quest) == "number" then		-- old interface
		self:SpawnGadgetImpl(quest, configID, dataIndex, alias, sceneID, dropID, questId, roomId)
		return
	end
-- mark to delete end
--function QuestActorProxy:SpawnGadget(quest, configID, dataIndex)
	local questID = quest.QuestConfigId
	self:SpawnGadgetById(questID, configID, dataIndex)
end

function QuestActorProxy:SpawnGadgetWithPos(quest, configID, dataIndex, pos, euler, alias)
	local questID = quest.QuestConfigId
	self:SpawnGadgetByIdWithPos(questID, configID, dataIndex, pos, euler, alias)
end

function QuestActorProxy:SpawnGadgetById(questID, configID, dataIndex)
	local questData = self.shareData:GetQuestData(questID)
	if nil == questData then
		return
	end
	local gadgetData = nil
	if nil ~= dataIndex then
		gadgetData = questData.gadgets[dataIndex]
	else
		for i = 1, #questData.gadgets do
			local gadget = questData.gadgets[i]
			if gadget.id == configID then
				gadgetData = gadget
				break
			end
		end
	end
	if nil == gadgetData then
		return
	end


	local sceneID = gadgetData.scene_id
	
	if sceneID == nil then
		sceneID = sceneData.DefaultSceneID
	end
	local id = nil
	local realAlias = nil
	local posStr = nil
	if self:IsRandom() then
		local idStr = self:GetRandomFactorValue(gadgetData.id)
		id = tonumber(idStr)
		realAlias = self:GetRandomGadgetAlias(gadgetData.alias)
		posStr = self:GetRandomFactorValue(gadgetData.pos)
	else
		id = gadgetData.id
		realAlias = gadgetData.alias
		posStr = gadgetData.pos
	end

	local point = sceneData:GetDummyPoint(sceneID, posStr)
	self:SpawnGadgetImpl(id, point.pos, point.rot, realAlias, sceneID, nil, questID, gadgetData.room_id)
end

function QuestActorProxy:SpawnGadgetByIdWithPos(questID, configID, dataIndex, pos, euler, alias)
	local questData = self.shareData:GetQuestData(questID)
	if nil == questData then
		return
	end
	local gadgetData = nil
	if nil ~= dataIndex then
		gadgetData = questData.gadgets[dataIndex]
	else
		for i = 1, #questData.gadgets do
			local gadget = questData.gadgets[i]
			if gadget.id == configID then
				gadgetData = gadget
				break
			end
		end
	end
	if nil == gadgetData then
		return
	end
	local id = nil
	local realAlias = nil
	if self:IsRandom() then
		local idStr = self:GetRandomFactorValue(gadgetData.id)
		id = tonumber(idStr)
		realAlias = self:GetRandomGadgetAlias(alias or gadgetData.alias)
	else
		id = gadgetData.id
		realAlias = alias or gadgetData.alias
	end
	self:SpawnGadgetImpl(id, pos, euler, realAlias, gadgetData.scene_id, nil, questID, gadgetData.room_id)
end
function QuestActorProxy:SpawnChestImpl(configID, bornPos, bornDir, alias, sceneID, chestDropId, isShowCutscene, questId, roomId)
	if sceneID == nil then
		sceneID = sceneData.DefaultSceneID
	end
	if alias == nil then
		alias = ""
	end
	if chestDropId == nil then
		chestDropId = 0
	end
	if isShowCutscene == nil then
		isShowCutscene = false
	end
	if questId == nil then
		questId = 0
	end
	roomId = roomId or 0
	self.uActor:SpawnChest(configID, bornPos, bornDir, sceneID, alias, chestDropId, isShowCutscene, questId, roomId)
end
-- mark to delete start
function QuestActorProxy:SpawnChest(quest, configID, dataIndex, alias, sceneID, chestDropID, isShowCutscene, questID)
	if type(quest) == "number" then		-- old interface
		self:SpawnChestImpl(quest, configID, dataIndex, alias, sceneID, chestDropID, isShowCutscene, questID)
		return
	end
-- mark to delete end
--function QuestActorProxy:SpawnChest(quest, configID, dataIndex)
	local questID = quest.QuestConfigId
	self:SpawnChestById(questID, configID, dataIndex)
end

function QuestActorProxy:SpawnChestWithPos(quest, configID, dataIndex, pos, euler, alias)
	local questID = quest.QuestConfigId
	self:SpawnChestByIdWithPos(questID, configID, dataIndex, pos, euler, alias)
end

function QuestActorProxy:SpawnChestById(questID, configID, dataIndex)
	local questData = self.shareData:GetQuestData(questID)
	if nil == questData then
		return
	end
	local gadgetData = nil
	if nil ~= dataIndex then
		gadgetData = questData.gadgets[dataIndex]
	else
		for i = 1, #questData.gadgets do
			local gadget = questData.gadgets[i]
			if gadget.id == configID then
				gadgetData = gadget
				break
			end
		end
	end
	if nil == gadgetData then
		return
	end


	local sceneID = gadgetData.scene_id
	
	if sceneID == nil then
		sceneID = sceneData.DefaultSceneID
	end
	local id = nil
	local realAlias = nil
	local posStr = nil
	if self:IsRandom() then
		local idStr = self:GetRandomFactorValue(gadgetData.id)
		id = tonumber(idStr)
		realAlias = self:GetRandomGadgetAlias(gadgetData.alias)
		posStr = self:GetRandomFactorValue(gadgetData.pos)
	else
		id = gadgetData.id
		realAlias = gadgetData.alias
		posStr = gadgetData.pos
	end

	local point = sceneData:GetDummyPoint(sceneID, posStr)
	self:SpawnChestImpl(id, point.pos, point.rot, realAlias, sceneID, gadgetData.chest_drop_id, gadgetData.is_show_cutscene, questID, gadgetData.room_id)
end

function QuestActorProxy:SpawnChestByIdWithPos(questID, configID, dataIndex, pos, euler, alias)
	local questData = self.shareData:GetQuestData(questID)
	if nil == questData then
		return
	end
	local gadgetData = nil
	if nil ~= dataIndex then
		gadgetData = questData.gadgets[dataIndex]
	else
		for i = 1, #questData.gadgets do
			local gadget = questData.gadgets[i]
			if gadget.id == configID then
				gadgetData = gadget
				break
			end
		end
	end
	if nil == gadgetData then
		return
	end

	local id = nil
	local realAlias = nil
	if self:IsRandom() then
		local idStr = self:GetRandomFactorValue(gadgetData.id)
		id = tonumber(idStr)
		realAlias = self:GetRandomGadgetAlias(alias or gadgetData.alias)
	else
		id = gadgetData.id
		realAlias = alias or gadgetData.alias
	end
	self:SpawnChestImpl(id, pos, euler, realAlias, gadgetData.scene_id, gadgetData.chest_drop_id, gadgetData.is_show_cutscene, questID, gadgetData.room_id)
end
--- Actor说旁白对话
-- @tparam uint dialogID
function QuestActorProxy:SayNarrator(dialogID)
	self.uActor:SayNarrator(dialogID, self.mainQuestID)
end

--Method End

--Method to delete
function QuestActorProxy:GetQuestNPCActor(alias)
	print("************** using a method will be deleted")
	return actorMgr:GetQuestNPCActor(alias, self.mainQuestID)
end
--Method to delete end

return QuestActorProxy