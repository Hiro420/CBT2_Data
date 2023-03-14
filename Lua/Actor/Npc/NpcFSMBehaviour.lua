require('Actor/ActorCommon')
local DailyNpc = require('Actor/Npc/DailyNpc')
local NpcFSMBehaviour = class("NpcFSMBehaviour", DailyNpc)

function NpcFSMBehaviour:DataInit()
	self.ID = self:GetNpcConfigId()
	--print("NpcFSMBehaviour ID ".. tostring(self.ID) .. "Start")
	local tempConfigData=require(self.ConfigPath)
	local tempBubbleData=require(self.BubblePath)

    if tempConfigData~=false and tempConfigData~=true then
		self.ConfigData = tempConfigData.Data
	end
	
	for i = 1, #self.ConfigData.DailyScheduleData do
		local dailyConfigData = 
		{ 
			daily = 0,
			mainQuestId = 0,
			questState = 0,
			sceneId = 0,
			priority = 0,
			actionPoints = 
			{
			},
		}

		local conditionalActionPoint = self.ConfigData.DailyScheduleData[i]
		if(conditionalActionPoint ~= nil) then
				if(conditionalActionPoint.condition ~= nil) then
					dailyConfigData.daily = conditionalActionPoint.condition.daily
					dailyConfigData.mainQuestId = conditionalActionPoint.condition.mainQuestId
					dailyConfigData.questState = conditionalActionPoint.condition.questState
					dailyConfigData.sceneId = conditionalActionPoint.condition.sceneId
					dailyConfigData.priority = conditionalActionPoint.condition.priority
				end
			dailyConfigData.actionPoints = conditionalActionPoint.actionPoints
			self.uActor:AddDailyConfigData(dailyConfigData)
		end
	end

	self.uActor:StartDailyFSM()

	if tempBubbleData~=false and tempBubbleData~=true then
		self.BubbleData = tempBubbleData.Data		
	end

	self:CreateSpeechBubbleTaskWithData(self.ID, self.BubbleData)

	--util.unrequire(tempConfigData)
	--util.unrequire(tempBubbleData)
end

function NpcFSMBehaviour:CreateSpeechBubbleTaskWithData(npcID, data)
	if(data == nil) then
		print("npc bubble data is nil ".. tostring(self.ID))
		return
	end

	--print("CreateSpeechBubbleTaskWithData ".. tostring(self.ID))

	self.speechBubbleTask = self:CreateTask(TaskID.NARRATOR_TASK_ID, LuaTaskType.SPEECH_BUBBLE, "Speech")

	if(self.speechBubbleTask ~= nil) then
		local dialogData = data.DialogData
		local bubbleIntervalMin = data.BubbleInterval[1]
		local bubbleIntervalMax = data.BubbleInterval[2]

		if(dialogData ~= nil) then
			for i=1, #dialogData do
				if(dialogData[i].BubbleInterval ~= nil) then
					bubbleIntervalMin = dialogData[i].BubbleInterval[1]
					bubbleIntervalMax = dialogData[i].BubbleInterval[2]
				end
				self.speechBubbleTask:CreateNpcSpeechBubble(npcID, 0, dialogData[i].Id, dialogData[i].BubbleTime, bubbleIntervalMin, bubbleIntervalMax, true)
			end
		end
	end
end


function NpcFSMBehaviour:StartDay()	
end

return NpcFSMBehaviour