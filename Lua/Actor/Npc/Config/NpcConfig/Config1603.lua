require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "1603",
		Alias = "Npc1603",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.Day, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = 2242.968,y = 210.017,z = -942.4093}, rot = {x = 0,y = 350.9917,z = 0}, }, freestyle = 4110, action = PatternData.Sit, },
				},
			},
			{
				condition = { daily = DailyCondition.Night, sceneId = 1009, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -5.355353,y = 4.802241,z = -2.164307}, rot = {x = 0,y = 1.180226,z = 0}, }, freestyle = 8010, action = PatternData.Sit, },
				},
			},
		},
	},
}

return NPCConfig
