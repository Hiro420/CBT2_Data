require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "1608",
		Alias = "Npc1608",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.Day, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = sceneData:GetDummyPoint(3, "Npc1608Route1_1"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(3, "Npc1608Route1_2"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(3, "Npc1608Route1_3"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(3, "Npc1608Route1_4"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(3, "Npc1608Route1_5"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(3, "Npc1608Route1_6"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(3, "Npc1608Route1_7"), action = PatternData.Patrol, },
				},
			},
			{
				condition = { daily = DailyCondition.Night, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ action = PatternData.Hide, },
				},
			},
		},
	},
}

return NPCConfig
