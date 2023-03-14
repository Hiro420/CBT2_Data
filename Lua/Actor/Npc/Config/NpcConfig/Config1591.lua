require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "1591",
		Alias = "Npc1591",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.Day, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = 2358.317,y = 297.7728,z = -1664.987}, rot = {x = 0,y = 136.4,z = 0}, }, action = PatternData.Stand, },
				},
			},
			{
				condition = { daily = DailyCondition.Night, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = 2352.593,y = 298.487,z = -1644.42}, rot = {x = 0,y = 177.6153,z = 0}, }, freestyle = 4110, action = PatternData.Sit, },
				},
			},
		},
	},
}

return NPCConfig
