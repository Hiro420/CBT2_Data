require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "1601",
		Alias = "Npc1601",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.Day, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = 2322.656,y = 249.99,z = -718.8344}, rot = {x = 0,y = 0,z = 0}, }, time = 10, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = 2347.813,y = 249.99,z = -731.6962}, rot = {x = 0,y = 0,z = 0}, }, time = 5, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = 2332.194,y = 249.99,z = -772.7801}, rot = {x = 0,y = 0,z = 0}, }, time = 10, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = 2300.036,y = 249.99,z = -757.8533}, rot = {x = 0,y = 0,z = 0}, }, time = 5, action = PatternData.Stand, },
				},
			},
			{
				condition = { daily = DailyCondition.Day, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = 2306.403,y = 249.99,z = -749.7982}, rot = {x = 0,y = 87.66487,z = 0}, }, action = PatternData.Stand, },
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
