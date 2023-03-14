require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "1581",
		Alias = "Npc1581",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = sceneData:GetDummyPoint(3, "Npc1581Route1_2"), freestyle = 1130, time = 20, action = PatternData.Stand, },
					{ dummypoint = sceneData:GetDummyPoint(3, "Npc1581Route1_1"), freestyle = 4000, time = 20, action = PatternData.Stand, },
					{ dummypoint = sceneData:GetDummyPoint(3, "Npc1581Route1_3"), freestyle = 1250, time = 20, action = PatternData.Stand, },
					{ dummypoint = sceneData:GetDummyPoint(3, "Npc1581Route1_4"), freestyle = 4000, time = 20, action = PatternData.Stand, },
					{ dummypoint = sceneData:GetDummyPoint(3, "Npc1581Route1_3"), freestyle = 1130, time = 20, action = PatternData.Stand, },
					{ dummypoint = sceneData:GetDummyPoint(3, "Npc1581Route1_1"), freestyle = 4000, time = 20, action = PatternData.Stand, },
				},
			},
		},
	},
}

return NPCConfig
