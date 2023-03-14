require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "1463",
		Alias = "Npc1463",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.Day, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = sceneData:GetDummyPoint(3, "NpcFemaleDayPatrol14Pos01"), freestyle = 1170, time = 10, action = PatternData.Stand, },
					{ dummypoint = sceneData:GetDummyPoint(3, "NpcFemaleDayPatrol14Pos02"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(3, "NpcFemaleDayPatrol14Pos02.5"), freestyle = 1230, time = 15, action = PatternData.Stand, },
					{ dummypoint = sceneData:GetDummyPoint(3, "NpcFemaleDayPatrol14Pos03"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(3, "NpcFemaleDayPatrol14Pos04"), freestyle = 1170, time = 15, action = PatternData.Stand, },
					{ dummypoint = sceneData:GetDummyPoint(3, "NpcFemaleDayPatrol14Pos05"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(3, "NpcFemaleDayPatrol14Pos06"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(3, "NpcFemaleDayPatrol14Pos07"), freestyle = 1130, time = 15, action = PatternData.Stand, },
					{ dummypoint = sceneData:GetDummyPoint(3, "NpcFemaleDayPatrol14Pos07.5"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(3, "NpcFemaleDayPatrol14Pos08"), action = PatternData.Patrol, },
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
