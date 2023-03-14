require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2029",
		Alias = "Npc2029",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.Day, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -574.852,y = 251.4221,z = 460.3195}, rot = {x = 0,y = 109.8567,z = 0}, }, freestyle = 0, action = PatternData.Stand, },
				},
			},
			{
				condition = { daily = DailyCondition.Night, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -482.7581,y = 228.1001,z = 445.8052}, rot = {x = 0,y = 322.5479,z = 0}, }, freestyle = 1130, time = 15, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = -484.7982,y = 228.1054,z = 420.5274}, rot = {x = 0,y = 124.9919,z = 0}, }, freestyle = 4100, action = PatternData.Sit, },
					{ dummypoint = { pos = {x = -496.6953,y = 229.6879,z = 415.4348}, rot = {x = 0,y = 156.0255,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = -509.2877,y = 229.6879,z = 401.4269}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = -504.0468,y = 229.6879,z = 393.691}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = -493.3213,y = 230.5965,z = 393.9989}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = -477.8772,y = 230.5679,z = 407.4529}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = -472.9791,y = 230.5664,z = 425.5759}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = -470.4287,y = 228.0577,z = 442.1367}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
				},
			},
			{
				condition = { mainQuestId = 40006, questState = QuestState.UnFinished, sceneId = 3, priority = 4, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -505.4932,y = 209.7695,z = 329.9335}, rot = {x = 0,y = 315.8055,z = 0}, }, freestyle = 1230, action = PatternData.Stand, },
				},
			},
		},
	},
}

return NPCConfig
