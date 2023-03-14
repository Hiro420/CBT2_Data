require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2031",
		Alias = "Npc2031",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.Day, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -577.1489,y = 205.7376,z = 131.2961}, rot = {x = 0,y = 113.9755,z = 0}, }, freestyle = 5010, action = PatternData.Stand, },
				},
			},
			{
				condition = { daily = DailyCondition.Night, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -560.7012,y = 201.802,z = 161.0832}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Hide, },
				},
			},
		},
	},
}

return NPCConfig
