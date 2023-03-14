require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "1531",
		Alias = "Npc1531",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.Day, sceneId = 1018, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = sceneData:GetDummyPoint(1018, "Npc1531Route1_1"), freestyle = 4140, time = 15, action = PatternData.Stand, },
					{ dummypoint = sceneData:GetDummyPoint(1018, "Npc1531Route1_2"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(1018, "Npc1531Route1_3"), freestyle = 4140, time = 15, action = PatternData.Stand, },
					{ dummypoint = sceneData:GetDummyPoint(1018, "Npc1531Route1_4"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(1018, "Npc1531Route1_5"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(1018, "Npc1531Route1_6"), freestyle = 4140, time = 15, action = PatternData.Stand, },
					{ dummypoint = sceneData:GetDummyPoint(1018, "Npc1531Route1_7"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(1018, "Npc1531Route1_8"), time = 15, action = PatternData.Stand, },
				},
			},
			{
				condition = { daily = DailyCondition.Night, sceneId = 1018, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = sceneData:GetDummyPoint(1018, "Npc1531Route1_1"), freestyle = 4140, time = 10, action = PatternData.Stand, },
					{ dummypoint = sceneData:GetDummyPoint(1018, "Npc1531Route1_2"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(1018, "Npc1531Route1_3"), freestyle = 4140, time = 5, action = PatternData.Stand, },
					{ dummypoint = sceneData:GetDummyPoint(1018, "Npc1531Route1_4"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(1018, "Npc1531Route1_5"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(1018, "Npc1531Route1_6"), freestyle = 1170, time = 15, action = PatternData.Stand, },
					{ dummypoint = sceneData:GetDummyPoint(1018, "Npc1531Route1_7"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(1018, "Npc1531Route1_8"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(1018, "Npc1531Route1_9"), freestyle = 1170, time = 15, action = PatternData.Stand, },
					{ dummypoint = sceneData:GetDummyPoint(1018, "Npc1531Route1_8"), action = PatternData.Patrol, },
				},
			},
		},
	},
}

return NPCConfig
