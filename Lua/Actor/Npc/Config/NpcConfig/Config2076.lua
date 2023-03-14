require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2076",
		Alias = "Npc2076",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.Day, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -604.2818,y = 204.7485,z = 124.2606}, rot = {x = 0,y = 308.6092,z = 0}, }, freestyle = 4110, action = PatternData.Sit, },
				},
			},
			{
				condition = { daily = DailyCondition.Night, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -613.0336,y = 205.2077,z = 143.0159}, rot = {x = 0,y = 298.3671,z = 0}, }, action = PatternData.Hide, },
				},
			},
		},
	},
}

return NPCConfig
