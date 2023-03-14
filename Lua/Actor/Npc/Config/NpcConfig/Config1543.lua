require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "1543",
		Alias = "Npc1543",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.Day, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = sceneData:GetDummyPoint(3, "Npc1543Born"), freestyle = 4010, time = 40, action = PatternData.Stand, },
					{ dummypoint = sceneData:GetDummyPoint(3, "Npc1543Route1_1"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(3, "Npc1543Route1_2"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(3, "Npc1543Route1_3"), freestyle = 4010, time = 40, action = PatternData.Stand, },
				},
			},
			{
				condition = { daily = DailyCondition.Night, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = sceneData:GetDummyPoint(3, "Npc1543Night"), freestyle = 4151, action = PatternData.Stand, },
				},
			},
		},
	},
}

return NPCConfig
