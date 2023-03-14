require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "1553",
		Alias = "Npc1553",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = sceneData:GetDummyPoint(3, "Npc1553Route1_1"), freestyle = 1280, time = 15, action = PatternData.Stand, },
					{ dummypoint = sceneData:GetDummyPoint(3, "Npc1553Route1_2"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(3, "Npc1553Route1_3"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(3, "Npc1553Route1_4"), freestyle = 1280, time = 15, action = PatternData.Stand, },
					{ dummypoint = sceneData:GetDummyPoint(3, "Npc1553Route1_5"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(3, "Npc1553Route1_6"), freestyle = 1280, time = 15, action = PatternData.Stand, },
					{ dummypoint = sceneData:GetDummyPoint(3, "Npc1553Route1_7"), freestyle = 1280, time = 15, action = PatternData.Stand, },
					{ dummypoint = sceneData:GetDummyPoint(3, "Npc1553Route1_8"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(3, "Npc1553Route1_9"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(3, "Npc1553Route1_10"), freestyle = 1280, time = 15, action = PatternData.Stand, },
					{ dummypoint = sceneData:GetDummyPoint(3, "Npc1553Route1_9"), action = PatternData.Patrol, },
				},
			},
		},
	},
}

return NPCConfig
