local TestActorProxy = {}

function TestActorProxy:GetSingleton(typeName)
	local singleton = singletonManager:GetSingletonInstance(typeName)
	if singleton == nil then
		print("Get Singleton " .. typeName .. " Failed")
	end
	return singleton
end

--region global manager
local luaMgr = nil
--endregion global manager

function TestActorProxy:Init()
	luaMgr = self:GetSingleton("MoleMole.LuaManager")
end

--region level manager
local entityMgr = nil
--endregion level manager

function TestActorProxy:OnSceneLoaded()
	entityMgr = self:GetSingleton("MoleMole.EntityManager")
end

function TestActorProxy:OnFinishLoadScene()
	print("Here local avatar loaded!")
end

TestActorProxy.CutsceneTestDic = 
{
	{
		type = CutsceneType.TIME_LINE_PREFAB,
		canSkip = true,
		resPath = "ART/Cutscene/Cs_Opening_CutScene2_Convert",
		startPosType = CutsceneInitPosType.FREE,
		startOffset = {0, 0, 0},
		keepCamera = true,
		modifyLastPoseOffset = true
	},
	{
		type = CutsceneType.TIME_LINE_PREFAB,
		canSkip = true,
		castListPath = "Cs_CastList_Q354",
		roleSheetPath = "",
		resPath = "ART/Cutscene/Cs_DragonInMDCity_CutScene_Convert",
		startPosType = CutsceneInitPosType.FREE,
		startOffset = {x = 0, y = 0, z = 0}
	}
}

function TestActorProxy:Cutscene(index)
	print("Here test cutscene!")
	print(index)
	globalActor:PlayCutscene(TestActorProxy.CutsceneTestDic[index])
end

function TestActorProxy:FreeCutscene()
	local avatarPos = actorUtils.GetAvatarPos()
	globalActor:PlayFreeCutscene(
		{
			type = CutsceneType.TIME_LINE_PREFAB,
			roleSheetPath = "",
			resPath = "ART/CameraAni/Quest/Ca_Quest_MQ361_DragonFlyT_Test",
			startPosType = CutsceneInitPosType.FREE,
			--startOffset = {0, 0, 0}
			startOffset = { x = avatarPos.x , y = avatarPos.y + 15, z = avatarPos.z + 10},
			useTargetPos = true,
			--大世界平移后修正坐标
			targetPos = {2450, 200, -1174},
			syncLoad = true
		}
	)
end

return TestActorProxy