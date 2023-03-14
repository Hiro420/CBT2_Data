require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "1631",
		Alias = "Npc1631",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = sceneData:GetDummyPoint(3, "Npc1631Born"), freestyle = 1280, time = 5, action = PatternData.Stand, },
					{ dummypoint = sceneData:GetDummyPoint(3, "Npc1631Route1_1"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(3, "Npc1631Route1_2"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(3, "Npc1631Route1_3"), freestyle = 1220, time = 10, action = PatternData.Stand, },
					{ dummypoint = sceneData:GetDummyPoint(3, "Npc1631Route1_2"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(3, "Npc1631Route1_1"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(3, "Npc1631Born"), freestyle = 1190, time = 5, action = PatternData.Stand, },
				},
			},
		},
	},
}

return NPCConfig
