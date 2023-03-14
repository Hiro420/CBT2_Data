require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "1563",
		Alias = "Npc1563",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.Day, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = sceneData:GetDummyPoint(3, "Npc1563Born"), freestyle = 1190, action = PatternData.Stand, },
					{ dummypoint = sceneData:GetDummyPoint(3, "Npc1563Route1_1"), freestyle = 1120, action = PatternData.Stand, },
					{ dummypoint = sceneData:GetDummyPoint(3, "Npc1563Route1_2"), freestyle = 1190, action = PatternData.Stand, },
					{ dummypoint = sceneData:GetDummyPoint(3, "Npc1563Route1_3"), freestyle = 1230, action = PatternData.Stand, },
					{ dummypoint = sceneData:GetDummyPoint(3, "Npc1563Route1_2"), freestyle = 1190, action = PatternData.Stand, },
					{ dummypoint = sceneData:GetDummyPoint(3, "Npc1563Route1_1"), freestyle = 1280, action = PatternData.Stand, },
				},
			},
			{
				condition = { daily = DailyCondition.Day, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = sceneData:GetDummyPoint(3, "Npc1563Night"), freestyle = 1190, action = PatternData.Stand, },
				},
			},
			{
				condition = { daily = DailyCondition.Night, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = sceneData:GetDummyPoint(3, "Npc1563Night"), freestyle = 4110, action = PatternData.Sit, },
				},
			},
		},
	},
}

return NPCConfig
