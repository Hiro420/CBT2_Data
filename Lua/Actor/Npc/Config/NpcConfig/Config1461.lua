require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "1461",
		Alias = "Npc1461",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.Day, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = 2264.065,y = 216.09,z = -895.3942}, rot = {x = 0,y = 111.445,z = 0}, }, freestyle = 1190, time = 15, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = 2245.908,y = 215.8235,z = -895.1246}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 2235.174,y = 211.99,z = -913.9623}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 2232.82,y = 211.99,z = -915.1459}, rot = {x = 0,y = 289.7167,z = 0}, }, freestyle = 1170, time = 15, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = 2229.649,y = 210.7206,z = -926.1431}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 2215.117,y = 209.99,z = -921.7766}, rot = {x = 0,y = 217.2785,z = 0}, }, freestyle = 1120, time = 15, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = 2210.635,y = 209.99,z = -907.2636}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 2214.45,y = 210.139,z = -905.3821}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 2229.255,y = 215.9899,z = -876.5628}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 2226.331,y = 215.99,z = -862.3106}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 2235.372,y = 215.99,z = -864.7281}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 2262.513,y = 215.9466,z = -877.6554}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
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
