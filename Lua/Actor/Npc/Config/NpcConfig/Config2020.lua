require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2020",
		Alias = "Npc2020",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -570.6277,y = 226.8375,z = 329.2475}, rot = {x = 0,y = 128.5705,z = 0}, }, freestyle = 1320, time = 10, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = -575.2325,y = 226.428,z = 331.0689}, rot = {x = 0,y = 322.3207,z = 0}, }, freestyle = 1130, time = 20, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = -573.5724,y = 226.9118,z = 324.7021}, rot = {x = 0,y = 0,z = 0}, }, freestyle = 8010, time = 10, action = PatternData.Sit, },
					{ dummypoint = { pos = {x = -575.0754,y = 226.428,z = 331.1458}, rot = {x = 0,y = 315.2958,z = 0}, }, freestyle = 1130, time = 20, action = PatternData.Stand, },
				},
			},
		},
	},
}

return NPCConfig
