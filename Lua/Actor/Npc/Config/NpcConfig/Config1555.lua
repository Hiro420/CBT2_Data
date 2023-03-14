require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "1555",
		Alias = "Npc1555",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.Day, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = sceneData:GetDummyPoint(3, "Npc1555Route1_1"), freestyle = 1130, time = 15, action = PatternData.Stand, },
					{ dummypoint = sceneData:GetDummyPoint(3, "Npc1555Route1_2"), freestyle = 1190, time = 15, action = PatternData.Stand, },
					{ dummypoint = sceneData:GetDummyPoint(3, "Npc1555Route1_3"), freestyle = 1230, time = 15, action = PatternData.Stand, },
					{ dummypoint = sceneData:GetDummyPoint(3, "Npc1555Route1_2"), freestyle = 1280, time = 15, action = PatternData.Stand, },
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
