require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "1455",
		Alias = "Npc1455",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.Day, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = sceneData:GetDummyPoint(3, "NpcFemaleDayPatrol13Pos01"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(3, "NpcFemaleDayPatrol13Pos02"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(3, "NpcFemaleDayPatrol13Pos03"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(3, "NpcFemaleDayPatrol13Pos04"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(3, "NpcFemaleDayPatrol13Pos05"), freestyle = 1170, time = 15, action = PatternData.Stand, },
					{ dummypoint = sceneData:GetDummyPoint(3, "NpcFemaleDayPatrol13Pos06"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(3, "NpcFemaleDayPatrol13Pos07"), freestyle = 1190, time = 15, action = PatternData.Stand, },
					{ dummypoint = sceneData:GetDummyPoint(3, "NpcFemaleDayPatrol13Pos08"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(3, "NpcFemaleDayPatrol13Pos09"), freestyle = 1170, time = 15, action = PatternData.Stand, },
					{ dummypoint = sceneData:GetDummyPoint(3, "NpcFemaleDayPatrol13Pos10"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(3, "NpcFemaleDayPatrol13Pos11"), freestyle = 1120, time = 15, action = PatternData.Stand, },
					{ dummypoint = sceneData:GetDummyPoint(3, "NpcFemaleDayPatrol13Pos12"), action = PatternData.Patrol, },
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
