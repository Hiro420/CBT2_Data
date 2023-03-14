require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2012",
		Alias = "Npc2012",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -574.7131,y = 210.0222,z = 296.3249}, rot = {x = 0,y = 355.8356,z = 0}, }, freestyle = 0, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = -560.5663,y = 209.8436,z = 284.0653}, rot = {x = 0,y = 134.4981,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = -554.5664,y = 210.0222,z = 287.1273}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = -550.0446,y = 209.7472,z = 282.3001}, rot = {x = 0,y = 136.9193,z = 0}, }, freestyle = 1230, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = -541.1232,y = 210.2188,z = 302.9405}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = -499.8141,y = 210.0222,z = 342.7753}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = -497.4001,y = 210.3437,z = 339.3178}, rot = {x = 349.4749,y = 123.3866,z = 15.49166}, }, freestyle = 1280, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = -506.3556,y = 211.1544,z = 347.9196}, rot = {x = 0,y = 139.2717,z = 0}, }, freestyle = 1190, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = -505.479,y = 210.0222,z = 341.7068}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = -562.0358,y = 210.0222,z = 288.8014}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = -573.941,y = 210.0222,z = 295.9294}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
				},
			},
			{
				condition = { mainQuestId = 40006, questState = QuestState.UnFinished, sceneId = 3, priority = 1, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -492.4941,y = 210.0723,z = 346.8048}, rot = {x = 0,y = 88.46406,z = 0}, }, freestyle = 1120, action = PatternData.Stand, },
				},
			},
		},
	},
}

return NPCConfig
