require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "1431",
		Alias = "Npc1431",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.Day, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = sceneData:GetDummyPoint(3, "NpcFemaleDayPatrol10Pos01"), freestyle = 1130, time = 15, action = PatternData.Stand, },
					{ dummypoint = sceneData:GetDummyPoint(3, "NpcFemaleDayPatrol10Pos02"), freestyle = 1230, time = 10, action = PatternData.Stand, },
					{ dummypoint = sceneData:GetDummyPoint(3, "NpcFemaleDayPatrol10Pos03"), freestyle = 1130, time = 15, action = PatternData.Stand, },
					{ dummypoint = sceneData:GetDummyPoint(3, "NpcFemaleDayPatrol10Pos04"), freestyle = 1170, time = 15, action = PatternData.Stand, },
					{ dummypoint = sceneData:GetDummyPoint(3, "NpcFemaleDayPatrol10Pos04.5"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(3, "NpcFemaleDayPatrol10Pos05"), freestyle = 1190, time = 15, action = PatternData.Stand, },
					{ dummypoint = sceneData:GetDummyPoint(3, "NpcFemaleDayPatrol10Pos06"), freestyle = 1190, time = 15, action = PatternData.Stand, },
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
