----------------------
-- 这是Lua端ActorManager，包含了创建和管理Actor的方法，可通关全局唯一的引用actorMgr访问
-- @module ActorManager
local ActorManager = {}

ActorManager.ActorDic = {}
ActorManager.ChainAliasDic = {}
ActorManager.ReverseChainAliasDic = {}
ActorManager.Alias2EntityIDDic = {}

ActorManager.dummyActor = require('Actor/DummyActorProxy')
ActorManager.tempDefaultAlias = "Temp"

ActorManager.OnTest1 = function()
	print("Test1")
	actorMgr:CreateActor(actorMgr, "test", "Actor/Npc/Npc001Test")
end

ActorManager.OnTest2 = function()
	print("Test2")
	local actor = actorMgr:GetActor("test")
	if actor ~= nil then
		actor:Test()
	end
end

ActorManager.OnTest3 = function()
	print("Test3")
end

ActorManager.InitGlobal = function()
	print("Actor Manager Init")
	globalActor = actorMgr:CreateActor("global", "Actor/GlobalActorProxy")
end

ActorManager.InitSubGlobal = function()
	for i = 1, #globalCfg.initSubActors do
		local subGActorCfg = globalCfg.initSubActors[i]
		if subGActorCfg ~= nil and subGActorCfg.alias ~= nil and subGActorCfg.metaPath ~= nil then
			actorMgr:CreateActor(subGActorCfg.alias, subGActorCfg.metaPath)
		end
	end
	for i = 1, #globalCfg.initAddSubActors do
		local subGActorCfg = globalCfg.initAddSubActors[i]
		if subGActorCfg ~= nil and subGActorCfg.alias ~= nil and subGActorCfg.metaPath ~= nil then
			actorMgr:CreateActor(subGActorCfg.alias, subGActorCfg.metaPath)
		end
	end
end

ActorManager.RegisteSubGlobal = function(self, inputAlias, inputPath)
	for i = 1, #globalCfg.initAddSubActors do
		local subGActorCfg = globalCfg.initAddSubActors[i]
		if subGActorCfg ~= nil and subGActorCfg.alias == inputAlias then
			return
		end
	end
	local subGActorCfg = {
			alias = inputAlias,
			metaPath = inputPath,
		}
	globalCfg.initAddSubActors[#globalCfg.initAddSubActors + 1] = subGActorCfg
	if subGActorCfg ~= nil and subGActorCfg.alias ~= nil and subGActorCfg.metaPath ~= nil then
		actorMgr:CreateActor(subGActorCfg.alias, subGActorCfg.metaPath)
	end
end

ActorManager.UnregisteSubGlobal = function(self, alias)
	for i = 1, #globalCfg.initAddSubActors do
		local subGActorCfg = globalCfg.initAddSubActors[i]
		if subGActorCfg ~= nil and subGActorCfg.alias == alias then
			globalCfg.initAddSubActors[i] = nil
		end
	end
end

--- actorMgr 创建一个Actor，一般actor已有在c#端的核心实例
-- @param self ActorManager实例本身
-- @tparam string alias 指定的别名
-- @tparam string metaPath 脚本路径
-- @tparam bool isAutoStart 是否自动开始
ActorManager.CreateActor = function(self, alias, metaPath, isAutoStart)
	print("create actor called " .. tostring(alias))
	print(tostring(metaPath))

	local actor = ActorManager.GetActorInternal(self, alias)

	if actor == nil then
		local metaActor = require(metaPath)
		actor = metaActor:new()
		actor.metaPath = metaPath
		actor:OnPreInit()
		if alias == nil or alias == '' then
			alias = actor.defaultAlias
		end
		ActorManager.ActorDic[alias] = actor
		actor:OnInit(alias)
		actor:OnPostInit()
	end

	if isAutoStart == nil then
		isAutoStart = true
	end

	if isAutoStart then
		actor:Start()
	end

	return actor
end
--- actorMgr 创建一个Actor，包含出身点，一般用于创建EntityActor
-- @param self ActorManager实例本身
-- @tparam string alias 指定的别名
-- @tparam string metaPath 脚本路径
-- @tparam uint configID 配置ID
-- @tparam uint dataIndex 数据索引
-- @tparam Vector3 bornPos 出生点
-- @tparam Vector3 bornDir 出生朝向（euler
-- @tparam bool isNetwork 是否服务器参与，一般用于需要移动很远、任务交互等的NPC
-- @tparam bool isAutoStart 是否自动开始
-- @tparam uint sceneID 场景ID，默认大世界3
ActorManager.CreateActorWithPos = function(self, alias, metaPath, configID, dataIndex, bornPos, bornDir, 
	isNetwork, isAutoStart, sceneID, noPerform, roomID, questID)

	local actorData = {
		alias = self:GetRealAlias(alias, questID),
		metaPath = metaPath,
		configID = configID,
		dataIndex = dataIndex,
		bornPos = bornPos,
		bornEuler = bornDir,
		isNetwork = isNetwork,
		isAutoStart = isAutoStart,
		sceneID = sceneID,
		roomID = roomID,
		questID = questID,
		noPerform = noPerform,
		isCheckHide = false,
		dontDestroyOnClear = false
	}

	return ActorManager.CreateActorWithData(self, actorData)
end
--- actorMgr 通过ActorInfoData创建一个Actor
-- @param self ActorManager实例本身
-- @tparam ActorInfoData data 创建Actor需要的数据
ActorManager.CreateActorWithData = function(self, data)
	return self:CreateActorWithDataInternal(data, false)
end

--- actorMgr 通过ActorInfoData创建一个对话用的临时Actor
ActorManager.CreateLocalActorWithData = function(self, data)
	return self:CreateActorWithDataInternal(data, true)
end

ActorManager.CreateActorWithDataInternal = function(self, data, isLocal)
	local sceneID = data.sceneID
	if sceneID == nil then
		sceneID = sceneData.DefaultSceneID
	end

	local roomID = data.roomID
	if roomID == nil then
		if sceneID == sceneData.DefaultSceneID then
			roomID = 0 -- default roomID in Default Scene(open world)
		else 
			roomID = 1 -- default roomID in non open world scene
		end
	end	

	local questID = data.questID or 0
	local alias = data.alias
	local metaPath = data.metaPath
	local configID = data.configID
	local dataIndex = data.dataIndex
	local bornPos = data.bornPos
	local bornDir = data.bornEuler
	local isNetwork = data.isNetwork
	local isAutoStart = data.isAutoStart
	local isCheckHide = data.isCheckHide
	local dontDestroyOnClear = data.dontDestroyOnClear
	

	if sceneID ~= sceneData.currSceneID and sceneData.currSceneID ~= 1001 then
		if isLocal ~= true then
			if isNetwork and sceneData.currSceneID ~= -1 then
				actorUtils.NotifyActorPreCreate(alias)
				local metaActor = require(metaPath)
				actorUtils.NotifyActorCreate(metaActor.actorType, alias, metaPath, configID, bornPos, bornDir, 
					sceneID, roomID, questID)
			end
		end
		self.dummyActor.alias = alias
		return self.dummyActor
	end

	local noPerform = data.noPerform
	if noPerform == nil then
		noPerform = true
	end

	local preAlias = actorUtils.TrySwitchNpcActor(configID, questID, alias)
	if preAlias ~= nil then
		local preActor = ActorManager.GetActorInternal(self, preAlias)
		ActorManager.ClearActor(self, preAlias)
		if preActor ~= nil then
			local preAliasKey = ActorManager.ReverseChainAliasDic[preAlias]
			if preAliasKey ~= nil then
				ActorManager.ChainAliasDic[preAliasKey] = nil
				ActorManager.ReverseChainAliasDic[preAlias] = nil
			end

			ActorManager.ChainAliasDic[preAlias] = alias
			ActorManager.ReverseChainAliasDic[alias] = preAlias

			preActor.alias = alias
			ActorManager.ActorDic[alias] = preActor
		end
	end

	local actor = ActorManager.GetActorInternal(self, alias)
	if actor ~= nil and actor:IsValid() ~= true then
		ActorManager.ClearActor(self, alias)
		actor = nil
	end

	if actor ~= nil then
		if actor.defaultAlias == ActorManager.tempDefaultAlias then
			local metaActor = require(metaPath)
			if metaActor.defaultAlias ~= actor.defaultAlias then
				ActorManager.ClearActor(self, alias)
				actor = nil
			end
		end
	end

	if actor == nil then
		actorUtils.NotifyActorPreCreate(alias)
		local metaActor = require(metaPath)
		actor = metaActor:new()
		actor.configID = configID
		actor.dataIndex = dataIndex
		actor.bornSceneID = sceneID
		actor.bornRoomID = roomID
		actor.bornQuestID = questID
		actor.bornPos = bornPos
		actor.bornDir = bornDir
		actor.isNetwork = isNetwork
		actor.isAutoStart = true
		actor.actorData = data
		actor.dontDestroyOnClear = dontDestroyOnClear
		actor.isLocal = isLocal
		if isAutoStart ~= nil then
			actor.isAutoStart = isAutoStart
		end
		local preAlias = actor:PreGetAlias()
		actor:OnPreInit()
		if alias == nil or alias == '' then
			if preAlias ~= nil then
				alias = preAlias
			else
				alias = actor.defaultAlias
			end
		end
		actor.alias = alias
		actor.metaPath = metaPath
		ActorManager.ActorDic[alias] = actor
		actor:OnInit(alias)
		--print("NotifyActorCreate " .. tostring(questID))
		if actor.uActor == nil then
			ActorManager.ActorDic[alias] = nil
			self.dummyActor.alias = alias
			return self.dummyActor
		else
			actor:OnPostInit()
			if not isCheckHide then
				if actor.CheckShow ~= nil then
					actor:CheckShow()
				end
			end
		end
	else
		actorUtils.NotifyActorPreCreate(alias)
		actor:ClearAllTask()
		actor.bornSceneID = sceneID
		actor.bornRoomID = roomID
		actor.bornQuestID = questID
		--print("NotifyActorCreate " .. tostring(questID))
		if actor.SetPosAndTurnTo ~= nil then
			actor:SetPosAndTurnTo(bornPos, M.Euler2DirXZ(bornDir), noPerform)
		else
			if actor.SetPos ~= nil then
				actor:SetPos(bornPos, noPerform)
			end
			if actor.TurnTo ~= nil then
				actor:TurnTo(M.Euler2DirXZ(bornDir))
			end
		end
		if not isCheckHide then
			if actor.CheckShow ~= nil then
				actor:CheckShow()
			end
		end
		actor:ClearActor()
		if isLocal ~= true then
			actorUtils.NotifyActorCreate(actor.actorType, alias, metaPath, configID, bornPos, bornDir, 
				sceneID, roomID, questID)
		end
		if isAutoStart then
			actor:Start()
		end
	end
	return actor
end

--- actorMgr 创建一个QuestActor， 一般不需要主动调用
-- @param self ActorManager实例本身
-- @tparam string alias 指定的别名
-- @tparam string metaPath 脚本路径
-- @tparam uint mainID 主任务ID
ActorManager.CreateQuestActor = function(self, alias, metaPath, mainID, mainConfigID)
	local metaActor = require(metaPath)

	if tostring(type(metaActor)) ~= "table" then
		actorUtils.ActorDebugError("~~~~~~~~~~~~~~~~~~~~~~~~ " .. tostring(mainID) .. " no actor! check this!")
		actorUtils.ActorDebugError("create quest actor called " .. tostring(alias) .. " . " .. tostring(mainID))
		actorUtils.ActorDebugError(tostring(metaPath))	
	end	

	local actor = metaActor:new()
	actor.mainQuestID = mainID
	actor.mainQuestConfigID = mainConfigID
	actor.metaPath = metaPath
	print(actor.mainQuestID)
	print(actor.mainQuestConfigID)
	actor:OnPreInit()
	if alias == nil or alias == '' then	
		alias = tostring(mainID)
		print("CreateQuestActor: alias is nil, set " .. alias) --警告! 随机任务无法通过alias获取Actor!
	end
	ActorManager.ActorDic[alias] = actor
	actor:OnDataLoad()
	actor:OnHandlerBuild()
	actor:OnInit(alias)
	actor:OnPostInit()
	return actor
end
--- actorMgr 获取一个Actor
-- @tparam string alias Actor别名
ActorManager.GetActor = function(self, alias)
	local actor = ActorManager.ActorDic[alias]
	if actor == nil then
		ActorManager.dummyActor.alias = alias
		return ActorManager.dummyActor
	end
	return actor
end

ActorManager.GetQuestNPCActor = function(self, alias, mainQuestID)
	
	if(mainQuestID ~= nil and mainQuestID ~= 0) then
		alias = alias .. tostring(mainQuestID)
	end

	local actor = ActorManager.ActorDic[alias]
	if actor == nil then
		local newAlias = ActorManager.ChainAliasDic[alias]
		if newAlias ~= nil then
			actor = ActorManager.ActorDic[newAlias]
		end
	end

	if actor == nil then
		ActorManager.dummyActor.alias = alias
		return ActorManager.dummyActor
	end
	return actor
end

--- actorMgr 销毁一个EntityActor
-- @param self ActorManager实例本身
-- @tparam string alias Actor别名
-- @tparam bool isActorOnly 只销毁Actor
ActorManager.DestroyEntityActor = function(self, alias, sceneId, isActorOnly)
	if isActorOnly == nil then
		isActorOnly = false
	end	

	if(sceneId == nil) then
		sceneId = sceneData.DefaultSceneID
	end

	local actor = self:GetActorInternal(alias)
	if isActorOnly and actor == nil then
		return
	end

	if actor ~= nil then
		actor:Destroy(isActorOnly)
	else
		actorUtils.NotifyActorDestroy(alias, sceneId, true)
	end
end

---- 通过Npc的Alias删除NPCActor，比Actor:Destroy更加安全
-- @param self ActorManager实例本身
-- @tparam string alias Actor 别名
-- @tparam bool isActorOnly 只销毁Actor
ActorManager.DestroyNpcActorByAlias = function(self, alias, isActorOnly)
	local actor = ActorManager.GetActorInternal(self, alias)
	if actor ~= nil then
		actor:Destroy(isActorOnly)
	else
		if isActorOnly ~= true then
			actorUtils.NotifyNpcActorDestroyByAlias(alias, true)
		end
	end
end

ActorManager.GetActorInternal = function(self, alias)
	local actor = ActorManager.ActorDic[alias]
	return actor
end

ActorManager.ClearActor = function(self, alias)
	ActorManager.ActorDic[alias] = nil
end

ActorManager.DestroyActor = function(self, alias, isActorOnly)
	local actor = ActorManager.GetActorInternal(self, alias)
	if actor ~= nil then
		actor:Destroy(isActorOnly, true)
	end
	ActorManager.ActorDic[alias] = nil
end

ActorManager.DestroyActorMeta = function(self, alias)
	local actor = ActorManager.GetActorInternal(self, alias)
	if actor ~= nil then
		local metaPath = actor.metaPath
		actor:Destroy(false)
		if metaPath ~= nil then
			util.unrequire(metaPath)
		end
	end
	ActorManager.ActorDic[alias] = nil
end

ActorManager.Destroy = function(self)
	for alias, actor in pairs(ActorManager.ActorDic) do
		local metaPath = nil
		if actor ~= nil then
			metaPath = actor.metaPath
		end
		ActorManager.DestroyActor(ActorManager, alias, false)
		if metaPath ~= nil then
			util.unrequire(metaPath)
		end
	end
end

ActorManager.DestroySoft = function(self)
	for alias, actor in pairs(ActorManager.ActorDic) do
		if actor ~= nil and not actor.dontDestroyOnClear then
			local metaPath = nil
			if actor ~= nil then
				metaPath = actor.metaPath
			end
			ActorManager.DestroyActor(ActorManager, alias, false)
			if metaPath ~= nil then
				util.unrequire(metaPath)
			end
		end
	end
end

ActorManager.StartActor = function(self, alias)
	local actor = ActorManager.GetActorInternal(self, alias)
	if actor ~= nil then
		actor:Start()
	end
end

ActorManager.SetEntityHandler = function(self, alias, runtimeID)
	ActorManager.Alias2EntityIDDic[alias] = runtimeID
end

ActorManager.GetEntityHandler = function(self, alias)
	return ActorManager.Alias2EntityIDDic[alias]
end

ActorManager.DestroyEntityHandler = function(self, alias)
	ActorManager.Alias2EntityIDDic[alias] = nil
end

function ActorManager:CreateNPCActorData(questMainID, npc, questActor, pos, euler)
	assert(npc.id ~= nil, "CreateNPCActorData : npc alias is null in shareconfig")
	assert(npc.alias ~= nil, "CreateNPCActorData : npc alias is null in shareconfig")
	assert(npc.script ~= nil, "CreateNPCActorData : npc script is null in shareconfig")
	assert(npc.pos ~= nil or pos ~= nil, "CreateNPCActorData : npc pos is null in shareconfig or param")

	local actorData = {}
	actorData.sceneID = npc.scene_id

	local sceneID = actorData.sceneID
	
	if sceneID == nil then
		sceneID = sceneData.DefaultSceneID
	end

	local alias = npc.alias
	local id = npc.id
	if questActor ~= nil then
		if questActor:IsRandom() then
			local idStr = questActor:GetRandomFactorValue(npc.id)
			id = tonumber(idStr)
			alias = questActor:GetRandomNpcAlias(idStr)
			if pos == nil or euler == nil then
				local posStr = questActor:GetRandomFactorValue(npc.pos)
				local point = sceneData:GetDummyPoint(sceneID, posStr)
				pos = point.pos
				euler = point.rot
			end
		else
			alias = questActor:GetRealAlias(alias, questMainID)
		end
	end

	actorData.configID = id
	actorData.sceneID = sceneID
	actorData.alias = alias
	actorData.metaPath = npc.script	
	actorData.roomID = npc.room_id
	if pos ~= nil then
		actorData.bornPos = pos
	else
		actorData.bornPos = sceneData:GetDummyPoint(sceneID, npc.pos).pos
	end
	if euler ~= nil then
		actorData.bornEuler = euler
	else
		actorData.bornEuler = sceneData:GetDummyPoint(sceneID, npc.pos).rot
	end
	actorData.questID = questMainID
	
	actorData.dataIndex = 0
	actorData.isNetwork = true
	actorData.isAutoStart = false
	actorData.isCheckHide = false
	actorData.noPerform = true
	actorData.dontDestroyOnClear = false
	return actorData
end

function ActorManager:CreateQuestNpcActorInternal(questMainID, npcID, data, questActor, index, pos, euler)
	if data == nil then
		print("try to create npc" .. npcID .. " on " .. questMainID .. "but data not exist")
		return
	end

	local npcs = data.npcs;
	if npcs == nil then
		print("try to create npc" .. npcID .. " on " .. questMainID .. "but npcs not in data")
		return
	end

	if NG_HSOD_DEBUG then
		actorUtils.CheckActorCreateMainQuestId(questMainID)
	end

	local npc = nil
	local npcCnt = #npcs
	if index == nil or index == 0 then
		for i = 1 , npcCnt do
			local candidateNpc = npcs[i]
			if candidateNpc ~= nil then
				if npcID ~= nil then
					if candidateNpc.id == npcID then
						npc = candidateNpc
						break
					end
				else
					npc = candidateNpc
					break
				end
			end
		end
	else
		if index <= npcCnt then
			npc = npcs[index]
		else
			print("try to create npc" .. npcID .. " on " .. questMainID .. " index out of range")
		end
	end

	if npc ~= nil then
		local actorData = self:CreateNPCActorData(questMainID, npc, questActor, pos, euler)
		return actorMgr:CreateActorWithData(actorData)
	end

	return nil
end

ActorManager.GetRealAlias = function(self, alias, subKey)
	if subKey == nil or subKey == 0 then
		return alias
	end

	local realAlias = alias .. subKey
	return realAlias
end

ActorManager.NotifyBanDailyExternal = function(self, alias)
	globalActor:NotifyTo(alias, NpcUtil.NpcEventType.BANDAILY, true)
end

ActorManager.NotifyStartDailyExternal = function(self, alias)
	globalActor:NotifyTo(alias, NpcUtil.NpcEventType.STARTDAILY, true)
end

return ActorManager