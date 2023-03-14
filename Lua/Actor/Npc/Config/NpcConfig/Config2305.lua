require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2305",
		Alias = "Npc2305",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.Day, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = 1751.756,y = 210.8917,z = 616.7051}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 1771.419,y = 211.2486,z = 617.166}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 1791.631,y = 211.3439,z = 630.8528}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 1803.429,y = 210.9816,z = 629.2242}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 1803.384,y = 210.9735,z = 620.2927}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 1781.715,y = 211.0186,z = 612.5743}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 1753.813,y = 210.8311,z = 616.2875}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
				},
			},
			{
				condition = { daily = DailyCondition.Night, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = 1793.006,y = 210.988,z = 617.21}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Hide, },
				},
			},
		},
	},
}

return NPCConfig
