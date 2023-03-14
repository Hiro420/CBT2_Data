require('Actor/ActorCommon')
local DailyNpc = require('Actor/Npc/DailyNpc')
local NpcCommonScriptBehaviour = class("NpcCommonScriptBehaviour", DailyNpc)
local NpcEventType = require('Actor/Npc/NPCEventType')
NpcCommonScriptBehaviour.defaultAlias = "NpcCommonScriptBehaviour"
NpcCommonScriptBehaviour.pointID = 1
NpcCommonScriptBehaviour.isDayTime = true
NpcCommonScriptBehaviour.isActive = false

local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern

function NpcCommonScriptBehaviour:Recover()

	self.OnAction=0
	self:UpdateSelfPattern()

	if self.pattern == PatternData.Patrol then
		self:GoPatrol()
	elseif self.pattern == PatternData.Stand then
		self:GoStandby()
	elseif self.pattern == PatternData.Hide then
		self:GoHide()
	elseif self.pattern == PatternData.Sit then
		self:GoSitOnChair()
	end
end

function NpcCommonScriptBehaviour:InvokeOnFinalTalkFinish()

	if(self.ConfigData == nil) then
		actorUtils.ActorDebugError("InvokeOnFinalTalkFinish ConfigData is null NPC_id: ".. tostring(self.ID))
		return
	end
	
	print("NpcCommonScriptBehaviour:InvokeOnFinalTalkFinish")

	--don't reset freestyle
	self:UpdateSelfPattern()
	if self.pattern == PatternData.Patrol then
		self:GoPatrol()
	elseif self.pattern == PatternData.Stand then
		--steer already did inside dialogue system
		self:GoStandbyInternal()
	elseif self.pattern == PatternData.Hide then
		self:GoHide()
	end
	--do not GoSit to avoid replay the sit animation
end


function NpcCommonScriptBehaviour:GoHide()
	--scene switch , avoid to teleport the npc out of the scene
	if(self.isActive==false) then
		self:HideSelf()
	else
		self:PerformDither(false, 2)
		self:CallDelay(2,self.HideSelf)	
	end

	self:Standby()
	self:ClearNpcSpeechBubble(self.ID)
	self.isActive = false	
end

function NpcCommonScriptBehaviour:Start()
	self.isActive = false
	self:PrepareNpcDataAndStart()
	--print("NpcCommonScriptBehaviour ID ".. tostring(self.ID) .. "Start")
end

function NpcCommonScriptBehaviour:PosDataInit()
	--print("NpcCommonScriptBehaviour:PosDataInit pattern is ", self.pattern)
	if self.pattern == PatternData.Patrol then
		self.PosDataArray = self.ConfigData.DayPatrolPosData
		if self.isDayTime==false and  self.ConfigData.NightPatrolPosData ~= nil then
			--print("Using night patrol pos")
			self.PosDataArray = self.ConfigData.NightPatrolPosData
		end
	elseif self.pattern == PatternData.Stand then
		self.PosDataArray = self.ConfigData.DayStandPosData

		if self.isDayTime==false and  self.ConfigData.NightStandPosData ~= nil then
			--print("Using night stand pos")
			self.PosDataArray = self.ConfigData.NightStandPosData
		end
	elseif self.pattern == PatternData.Sit then
		self.PosDataArray = self.ConfigData.DaySitPosData

		if self.isDayTime==false and  self.ConfigData.NightSitPosData ~= nil then
			--print("Using night sit pos")
			self.PosDataArray = self.ConfigData.NightSitPosData
		end
	else
		self.PosDataArray = self.ConfigData.DayStandPosData
	end

	if NG_HSOD_DEBUG then
		assert(self.PosDataArray ~= nil, tostring(self.alias) .. "  PosData is null")
		assert(#self.PosDataArray ~= 0,  tostring(self.alias) .. "  PosDataArray has 0 elements")
	end

	local arrayIndex = math.random(1,#self.PosDataArray)
	self.PosCount = #self.PosDataArray[arrayIndex]
	self.PosData = self.PosDataArray[arrayIndex]
	self.pointID=math.random(1,#self.PosData)
end

function NpcCommonScriptBehaviour:StartDay()
	self.isDayTime = true

	if(self.uActor.isPaused == false)then
		self:StartPattern()
	end
end

function NpcCommonScriptBehaviour:UpdateSelfPattern()
	self.pattern = nil	

	local currentSceneId = sceneData.currSceneID
	if self.isDayTime == true then
		local daySceneId = self.ConfigData.DaySceneId
		if  daySceneId ~= nil and daySceneId ~= currentSceneId then
			self.pattern = PatternData.Hide
		end
	else
		local nightSceneId = self.ConfigData.NightSceneId
		if  nightSceneId ~= nil and nightSceneId ~= currentSceneId then
			self.pattern = PatternData.Hide
		end
	end

	if(self.pattern == nil) then

		self.Patterns = self.ConfigData.DayPatterns

		if self.isDayTime == false and self.ConfigData.NightPatterns ~= nil then
			self.Patterns = self.ConfigData.NightPatterns
		end

		if NG_HSOD_DEBUG then
			assert(self.Patterns ~= nil, tostring(self.alias) .. "  No Patterns setup from data")
			assert(#self.Patterns ~= 0,  tostring(self.alias) .. "  Pattrens has 0 elements")
		end

		local patternIndex = math.random(1,#self.Patterns)
		self.pattern = self.Patterns[patternIndex]

		if NG_HSOD_DEBUG then
			assert(self.pattern ~= nil, tostring(self.alias) .. "  selected pattern is null")
		end
	end	
end

function NpcCommonScriptBehaviour:StartPattern()
	if NG_HSOD_DEBUG then
		assert(self.ConfigData ~= nil, tostring(self.alias) .. " ConfigData is null")
	end

	if(self:IsTalking()) then
		return
	end
		
	self:UpdateSelfPattern()

	if(self.pattern == PatternData.Hide) then
		self:GoHide()
	else
		self:PosDataInit()
		local startPoint = self:GetStartPoint()

		if(self:IsHided()==true) then
			self:ShowAndStartPattern()
		else
			local distance = self:GetDistance2D(self:GetPos(), startPoint.pos)
			if(distance > 1) then
				self:PerformDither(false, 2)
				self:CallDelay(2,self.ShowAndStartPattern)
			else
				self:StartPatternInternal()
			end
		end
	end
end

function NpcCommonScriptBehaviour:GetStartPoint()
	if NG_HSOD_DEBUG then
		assert(self.PosData ~= nil, tostring(self.alias) .. "pos data is null")
		assert(self.pointID < #self.PosData+1, tostring(self.alias) .. " index " .. tostring(self.pointID) .. " count " .. tostring(#self.PosData))
		assert(self.PosData[self.pointID] ~= nil, tostring(self.alias) .. " pos index " .. tostring(self.pointID))
		assert(self.PosData[self.pointID].dummypoint ~= nil, tostring(self.alias) .. " dummy point is null, pos index " .. tostring(self.pointID))
	end
	return self.PosData[self.pointID].dummypoint
end

function NpcCommonScriptBehaviour:ShowAndStartPattern()
		
	local startPoint = self:GetStartPoint()
	if(startPoint ~= nil) then
		--self:SetPos(startPoint.pos,true)
		self:SetPosAndTurnTo(startPoint.pos,M.Euler2DirXZ(startPoint.rot),true)
	end
	self:ShowSelf()
	self:PerformDither(true, 2)
	self:StartPatternInternal()
end

function NpcCommonScriptBehaviour:StartPatternInternal()	
	--bubble is looping only execute once
	if(self.isActive == false) then
		self:StartBubble()
	end
	
	if self.pattern == PatternData.Patrol then
		self:GoPatrol()
	elseif self.pattern == PatternData.Sit then
		self:GoSitOnChair()
	elseif self.pattern == PatternData.Stand then
		self:GoStandby()
	end

	self.isActive = true
end

function NpcCommonScriptBehaviour:GoPatrol()
	self.pointID = self.pointID + 1
	if self.pointID == self.PosCount+1 then
		self.pointID = 1
	end
	--self:CallDelay(math.random(10,20), self.GoPatrolRoute)
	self:GoPatrolRoute()
end

function NpcCommonScriptBehaviour:GoPatrolRoute()	
	--print("npc"..tostring(self.dataIndex).."walkto"..tostring(self.pointID)
	self:DoFreeStateTrigger()
	self:WalkToTask(self.PosData[self.pointID].dummypoint.pos, self.SelfPointUpdate, self.Standby)	

end

function NpcCommonScriptBehaviour:GoStandby()
	local dir=self.PosData[self.pointID].dummypoint.rot
	self:SteerToTask(M.Euler2DirXZ(dir),1,true,true)
	self:CallDelay(1.0, self.GoStandbyInternal)	
end

function NpcCommonScriptBehaviour:GoStandbyInternal()
	self:DoFreeStateTrigger()

	local freestyle = self.PosData[self.pointID].freestyle
	local noReaction = self.PosData[self.pointID].noReaction
	local time=self.PosData[self.pointID].time

	if(freestyle~=nil) then
		self:DoFreeStyleTask(freestyle,true)
		if(noReaction==true) then
			self.OnAction = 1
		end
	end

	if(self.pattern==PatternData.Patrol) then
		if time~=nil and time > 0 then
			self:CallDelay(time, self.GoPatrol)
		else
			self:GoPatrol()
		end
	else
		if time~=nil and time > 0 then
			self:CallDelay(time, self.GoStandby)
		end
	end
end

function NpcCommonScriptBehaviour:GoSitOnChair()
	self:DoFreeStateTrigger()
	self:SitOnChair()
	--FIX ME: temp call DoFreeStyle to play the right sit animation , need more systematic way to handle this
	local freestyle = self.PosData[self.pointID].freestyle
	if(freestyle~=nil) then
		self:DoFreeStyleTask(freestyle,true)
	end
	--FIX ME: temp solution to prevent collision , we don't want npc react to collision	
	self.OnAction = 1
end

function NpcCommonScriptBehaviour:SelfPointUpdate()
	local time=self.PosData[self.pointID].time	
	if time~=nil and time > 0 then
		self:GoStandby()
	else
		self:GoPatrol()
	end
end

function NpcCommonScriptBehaviour:StartNight()
	self.isDayTime = false
	if(self.uActor.isPaused == false) then
		self:StartPattern()
	end
end

function NpcCommonScriptBehaviour:GetDistance2D(pos1,pos2)
	local x = pos1.x - pos2.x;
	local y = pos1.y - pos2.y;
	local distance = math.sqrt( x*x + y*y );
	return distance
end

return NpcCommonScriptBehaviour