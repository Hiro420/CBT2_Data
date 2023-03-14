require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "1549",
		Alias = "Npc1549",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = sceneData:GetDummyPoint(3, "Npc1549Route1_1"), freestyle = 1190, time = 20, action = PatternData.Stand, },
					{ dummypoint = sceneData:GetDummyPoint(3, "Npc1549Route1_2"), freestyle = 1190, time = 20, action = PatternData.Stand, },
					{ dummypoint = sceneData:GetDummyPoint(3, "Npc1549Route1_3"), freestyle = 1280, time = 20, action = PatternData.Stand, },
				},
			},
		},
	},
}

return NPCConfig
