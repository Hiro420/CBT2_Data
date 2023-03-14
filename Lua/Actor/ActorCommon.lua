---Actor全局通用参数
-- @module ActorCommon
common = common or require('Base/Common')
require('Config/DefineCommon')

sceneData = sceneData or require('Base/SceneData')
currSceneData = nil

actorData = actorData or require('Actor/ActorData')

actorMgr = actorMgr or require('Actor/ActorManager')

actorUtils = CS.MoleMole.ActorUtils

luaTaskUtils = CS.MoleMole.LuaTaskUtils

curtainUtils = CS.MoleMole.CurtainUtils

campHelper = CS.MoleMole.CampHelper

gadgetFactory = gadgetFactory or require('Actor/Gadget/GadgetFactory')

globalActor = nil

globalCfg = globalCfg or require('Actor/GlobalActorConfig')

npcMode = npcMode or require('Actor/Npc/NpcMode/NpcModeType')

NpcEventType = NpcEventType or require('Actor/Npc/NPCEventType')

DailyNpcManager =  DailyNpcManager or require('Actor/DailyNPCManager')

NpcUtil = NpcUtil or require('Actor/Npc/NPCUtil')

ActorCommandType =
{
	INVALID = -1,
	MOVE = 0,
	MOVE_ROUTE = 1,
	FREE_STYLE = 2,
	FREE_STATE_TRIGGER = 3,
	SIT_ON_CHAIR = 4,
	STAND_FROM_CHAIR = 5,
	NOTIFY = 6,
	HIDE = 7,
	DESTROY = 8,
	ATTACH = 9,
	LOOKAT = 10,
	START_CALL = 11,
	ADD_GENERAL_MARK = 12,
}