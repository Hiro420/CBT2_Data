require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "1595",
		Alias = "Npc1595",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.Day, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = sceneData:GetDummyPoint(3, "Npc1595Born"), freestyle = 1170, action = PatternData.Stand, },
				},
			},
			{
				condition = { daily = DailyCondition.Night, sceneId = 1018, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = sceneData:GetDummyPoint(1018, "Npc1595NightBorn"), freestyle = 4140, action = PatternData.Stand, },
				},
			},
		},
	},
}

return NPCConfig
