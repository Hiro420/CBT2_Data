require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "1541",
		Alias = "Npc1541",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.Day, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = 1957.019,y = 217.5793,z = -944.8851}, rot = {x = 0,y = 13.52155,z = 0}, }, freestyle = 1190, action = PatternData.Stand, },
				},
			},
			{
				condition = { daily = DailyCondition.Day, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = 1957.019,y = 217.5793,z = -944.8851}, rot = {x = 0,y = 13.52155,z = 0}, }, freestyle = 1120, action = PatternData.Stand, },
				},
			},
			{
				condition = { daily = DailyCondition.Day, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = 1957.019,y = 217.5793,z = -944.8851}, rot = {x = 0,y = 13.52155,z = 0}, }, freestyle = 1190, time = 15, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = 1953.528,y = 218.3219,z = -956.173}, rot = {x = 0,y = 153.2632,z = 0}, }, freestyle = 1280, time = 15, action = PatternData.Stand, },
				},
			},
			{
				condition = { daily = DailyCondition.Night, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ action = PatternData.Hide, },
				},
			},
		},
	},
}

return NPCConfig
