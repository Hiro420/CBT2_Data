----------------------
-- 这是Lua端NpcActor的基类，包含了控制Npc行为的方法。继承自EntityActorProxy
-- @classmod NpcActorProxy
require('Actor/ActorCommon')
local entityActorProxy = require('Actor/EntityActorProxy')

local NpcActorProxy = class("NpcActorProxy", entityActorProxy)

NpcActorProxy.actorType = ActorType.NPC_ACTOR

local super = nil

function NpcActorProxy:OnPreInit()
	super = self.__super
	super:OnPreInit()
end

-- local param begin
-- local param end

function NpcActorProxy:CallOnStart(func)
	actorUtils.DoStartCall(self.alias, func)
	if self.uActor ~= nil then
		self.uActor:StartCall(func)
	end
end

function NpcActorProxy:CreateNpcUActor(alias)
	local uActor = actorUtils.CreateActor(self, ActorType.NPC_ACTOR, alias, self.metaPath)
	if self.bornPos == nil then
		self.bornPos = M.Pos(0,0,0)
	end
	if self.bornDir == nil then
		self.bornDir = M.Pos(0,0,0)
	end
	uActor = actorUtils.CreateNpcActor(self.configID, self.bornPos, self.bornDir, uActor, self.bornSceneID, self.bornRoomID, self.bornQuestID, self.isLocal)
	return uActor
end

function NpcActorProxy:CreateUActor(alias)
	return self:CreateNpcUActor(alias)
end

--- NpcActor内部交互行为方法
-- @section interaction

--- NpcActor添加交互行为，会截断内置的行为
-- @tparam InterTimingType timingType 交互时机
-- @tparam table interCfg 交互配置表
function NpcActorProxy:AddPriorityInter(timingType, interCfg)
	self.uActor:AddPriorityInter(timingType, interCfg)
end
--- NpcActor清除交互行为，根据时机
-- @tparam InterTimingType timingType 交互时机
function NpcActorProxy:ClearPriorityInter(timingType)
	self.uActor:ClearPriorityInter(timingType)
end
--- NpcActor检查是否有对话项
function NpcActorProxy:CheckNpcTalk()
	self.uActor:CheckNpcTalk()
end

--- NpcActor注册碰撞回调
function NpcActorProxy:CallOnCollisionEnter(onCollision)
	self.uActor:CallOnCollisionEnter(onCollision)
end
function NpcActorProxy:ClearOnCollisionEnter(onCollision)
	self.uActor:ClearOnCollisionEnter(onCollision)
end

--- 获取NPC的ConfigId
function NpcActorProxy:GetNpcConfigId()
	return self.uActor:GetNpcConfigId()
end

--- 获取NPC的别名
function NpcActorProxy:GetNpcAlias()
	return self.uActor:GetNpcAlias()
end

--- NpcActor临时关闭打开控头
-- @tparam bool value flase是关，true是开
function NpcActorProxy:EnableHeadCtrl(value)
	self.uActor:EnableHeadCtrl(value)
end

--- NpcActor强制看某个点
function NpcActorProxy:LookAt(pos)
	self.uActor:LookAt(pos)
end

--- 清除上面的LookAt
function NpcActorProxy:ClearLookAt()
	self.uActor:ClearLookAt()
end

--- NpcActor强制加头上图标
function NpcActorProxy:AddGeneralMark(iconName)
	self.uActor:AddGeneralMark(iconName)
end

--- 清除上面的头上图标
function NpcActorProxy:ClearGeneralMark()
	self.uActor:ClearGeneralMark()
end

function NpcActorProxy:OnDestroy()

end

function NpcActorProxy:Destroy(isActorOnly, keepCache)
	if keepCache == nil then
		keepCache = false
	end
	self:OnDestroy()
	self:ClearCoroutine()
	if self.uActor ~= nil then
		if keepCache == false then
			self.uActor:ClearCmd()
		end
		self.uActor:Destroy(isActorOnly)
	end
	actorMgr:ClearActor(self.alias)
	self.uActor = nil
	self.actorData = nil
end

function NpcActorProxy:ClearActor()
	self.uActor:ClearActor()

	self.CallOnStartCacheInternal = nil

	self.targetPos = nil
	self.routePoints = nil

	self.BeFollowLen = 10
	self.BeFollowFailedLen = 20
	self.BeFollowState = BeFollowState.ING
	self.BeFollowFailed = nil

	self.CurrDialogList = nil
	self.CurrDialogIndex = 1
	self.CurrDuration = 0
	self.CurrDurationCnt = 0
	self.NarratorPauseLen = 10
	self.NarratorResumeLen = 5
	self.NarratorState = NarratorState.ING
end

return NpcActorProxy