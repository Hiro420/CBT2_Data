require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2093",
		Alias = "Npc2093",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.Day, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -477.2594,y = 228.1001,z = 437.2839}, rot = {x = 0,y = 191.5889,z = 0}, }, freestyle = 0, time = 15, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = -482.9788,y = 228.1001,z = 438.1224}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = -485.8749,y = 228.1054,z = 420.7932}, rot = {x = 0,y = 141.7721,z = 0}, }, freestyle = 0, time = 15, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = -497.1286,y = 228.1054,z = 415.3116}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = -506.4889,y = 228.7207,z = 405.197}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = -514.0484,y = 228.7207,z = 412.4308}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = -513.5124,y = 228.1555,z = 421.6925}, rot = {x = 0,y = 102.1237,z = 0}, }, freestyle = 0, time = 15, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = -513.8886,y = 228.7207,z = 411.9536}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = -506.4198,y = 228.8481,z = 404.5042}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = -495.8596,y = 228.1054,z = 414.9393}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = -486.1807,y = 228.1054,z = 420.5843}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = -482.071,y = 228.1001,z = 440.8668}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = -471.4278,y = 228.0577,z = 439.2062}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = -468.4562,y = 230.3624,z = 460.7933}, rot = {x = 0,y = 325.5815,z = 0}, }, freestyle = 0, time = 15, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = -467.8141,y = 230.3676,z = 460.3138}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = -471.0312,y = 228.0577,z = 438.9418}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
				},
			},
			{
				condition = { daily = DailyCondition.Night, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -482.9845,y = 228.1001,z = 438.1933}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Hide, },
				},
			},
			{
				condition = { mainQuestId = 40006, questState = QuestState.UnFinished, sceneId = 3, priority = 4, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -481.2777,y = 210.1577,z = 325.0752}, rot = {x = 0,y = 198.4916,z = 0}, }, freestyle = 0, action = PatternData.Stand, },
				},
			},
		},
	},
}

return NPCConfig
