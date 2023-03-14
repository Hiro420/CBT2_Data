require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2023",
		Alias = "Npc2023",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.Night, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -582.9326,y = 226.94,z = 348.1039}, rot = {x = 0,y = 132.8194,z = 0}, }, freestyle = 1050, action = PatternData.Stand, },
				},
			},
			{
				condition = { daily = DailyCondition.Day, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -487.8897,y = 210.0222,z = 381.4894}, rot = {x = 0,y = 0,z = 0}, }, freestyle = 1190, time = 15, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = -488.4708,y = 210.0222,z = 354.8444}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = -478.4753,y = 209.1242,z = 345.2128}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = -480.4424,y = 209.7475,z = 331.0273}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = -438.291,y = 207.5845,z = 289.8363}, rot = {x = 0,y = 134.3129,z = 0}, }, freestyle = 1240, time = 15, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = -484.8011,y = 209.9017,z = 325.8344}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = -488.7811,y = 209.213,z = 348.1436}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = -491.5295,y = 210.0222,z = 366.5622}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
				},
			},
		},
	},
}

return NPCConfig
