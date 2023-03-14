----------------------
-- 这是Lua端ActorData，包含了创建和管理Actor所使用的数据的接口
-- @module ActorData
local ActorData = {}

function ActorData:GetByNpcRewindData(data, questActorProxy, questID)
	local sceneID = data.scene_id
	if sceneID == nil then
		sceneID = sceneData.DefaultSceneID
	end

	local roomID = data.room_id or 0

	local questMainID

	local pos
	local alias
	local id
	if questActorProxy:IsRandom() then
		pos = questActorProxy:GetRandomFactorValue(data.pos)
		alias = questActorProxy:GetRandomNpcAlias(data.alias);
		id = tonumber(questActorProxy:GetRandomFactorValue(data.id))

		questMainID = questActorProxy.mainQuestID

		print("GetByNpcRewindData random alias=" .. alias .. " " .. tostring(questID))
	else
		pos = data.pos
		alias = data.alias
		id = data.id

		questMainID = questActorProxy.mainQuestConfigID

		alias = questActorProxy:GetRealAlias(alias)
	end

	local dummyPoint = sceneData:GetDummyPoint(sceneID, pos)
	if dummyPoint == nil then
		print("Dummy Point " .. pos .. " is nil")
		return
	end

	local actorData = {
		alias = alias,
		metaPath = data.script,
		configID = id,
		dataIndex = data.data_index,
		bornPos = dummyPoint.pos,
		bornEuler = dummyPoint.rot,
		isNetwork = true,
		isAutoStart = true,
		sceneID = sceneID,
		roomID = roomID,
		questID = questMainID,
		noPerform = false,
	}

	return actorData
end

function ActorData:GetByGadgetRewindData(data, questActorProxy, questID)
	local sceneID = data.scene_id
	if sceneID == nil then
		sceneID = sceneData.DefaultSceneID
	end

	local roomID = data.room_id or 0

	local pos
	local alias
	local id
	if questActorProxy:IsRandom() then
		pos = questActorProxy:GetRandomFactorValue(data.pos)
		alias = questActorProxy:GetRandomGadgetAlias(data.alias);
		id = tonumber(questActorProxy:GetRandomFactorValue(data.id))

		print("GetByGadgetRewindData random alias=" .. alias .. " " .. tostring(questID))
	else
		pos = data.pos
		alias = data.alias
		id = data.id
	end

	local dummyPoint = sceneData:GetDummyPoint(sceneID, pos)
	if dummyPoint == nil then
		print("Dummy Point " .. pos .. " is nil")
		return
	end

	local questMainID = questID
	if questMainID > 10000 then
		questMainID = math.modf(questID/100)
	end

	local actorData = {
		alias = alias,
		metaPath = data.script,
		configID = id,
		dataIndex = data.data_index,
		bornPos = dummyPoint.pos,
		bornEuler = dummyPoint.rot,
		isNetwork = false,
		isAutoStart = false,
		sceneID = sceneID,
		roomID = roomID,
		questID = questMainID,
		noPerform = false,
	}

	return actorData
end

return ActorData