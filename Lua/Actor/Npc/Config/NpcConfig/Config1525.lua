require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "1525",
		Alias = "Npc1525",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.Day, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = 2344.228,y = 249.99,z = -741.5013}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 2339.133,y = 249.99,z = -762.9564}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 2318.163,y = 249.99,z = -775.3755}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 2302.677,y = 249.99,z = -759.3965}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 2305.909,y = 249.99,z = -740.017}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 2324.025,y = 249.99,z = -725.6743}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 2340.833,y = 259.9982,z = -689.0589}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 2348.954,y = 259.9982,z = -688.0071}, rot = {x = 0,y = 33.97187,z = 0}, }, freestyle = 1170, time = 20, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = 2361.875,y = 259.9982,z = -694.9063}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 2343.219,y = 249.99,z = -724.5257}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
				},
			},
			{
				condition = { daily = DailyCondition.Night, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = 2349.39,y = 259.9982,z = -688.1037}, rot = {x = 0,y = 22.30245,z = 0}, }, freestyle = 1170, time = 20, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = 2343.152,y = 259.9982,z = -685.545}, rot = {x = 0,y = 211.377,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 2330.368,y = 249.99,z = -714.117}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 2289.819,y = 249.99,z = -714.8466}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 2279.007,y = 241.6763,z = -741.9023}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 2283.816,y = 235.99,z = -779.2271}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 2252.177,y = 235.99,z = -789.3565}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 2241.662,y = 235.99,z = -789.1332}, rot = {x = 0,y = 336.0056,z = 0}, }, freestyle = 1170, time = 20, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = 2252.177,y = 235.99,z = -789.3565}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 2283.816,y = 235.99,z = -779.2271}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 2279.007,y = 241.6763,z = -741.9023}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 2289.819,y = 249.99,z = -714.8466}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 2330.368,y = 249.99,z = -714.117}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 2343.152,y = 259.9982,z = -685.545}, rot = {x = 0,y = 211.377,z = 0}, }, action = PatternData.Patrol, },
				},
			},
			{
				condition = { daily = DailyCondition.Day, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = 2330.163,y = 249.99,z = -734.5495}, rot = {x = 0,y = 207.3718,z = 0}, }, freestyle = 1220, action = PatternData.Stand, },
				},
			},
		},
	},
}

return NPCConfig
