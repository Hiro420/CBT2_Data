require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "1626",
		Alias = "Npc1626",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.Day, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -564.5659,y = 239.0052,z = 319.2167}, rot = {x = 0,y = 0,z = 0}, }, freestyle = 8010, action = PatternData.Sit, },
				},
			},
			{
				condition = { daily = DailyCondition.Night, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -567.5506,y = 239.0052,z = 313.8973}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Hide, },
				},
			},
		},
	},
}

return NPCConfig
