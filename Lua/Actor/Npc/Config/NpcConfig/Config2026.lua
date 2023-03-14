require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2026",
		Alias = "Npc2026",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -492.9178,y = 210.0222,z = 349.2933}, rot = {x = 0,y = 43.5878,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = -505.2781,y = 209.7695,z = 333.4557}, rot = {x = 0,y = 131.5124,z = 0}, }, freestyle = 1190, time = 10, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = -508.9585,y = 210.0222,z = 333.3256}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = -516.0218,y = 209.7625,z = 324.9249}, rot = {x = 0,y = 134.6003,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = -512.9601,y = 210.0222,z = 321.9005}, rot = {x = 0,y = 50.93916,z = 0}, }, freestyle = 1280, time = 10, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = -526.3426,y = 210.0222,z = 306.8471}, rot = {x = 344.7206,y = 232.1023,z = 101.5924}, }, freestyle = 1190, time = 10, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = -530.9017,y = 210.0222,z = 311.208}, rot = {x = 0,y = 55.28548,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = -545.7688,y = 210.2188,z = 297.5611}, rot = {x = 0,y = 133.494,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = -548.6742,y = 210.2188,z = 300.526}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = -534.9738,y = 210.0222,z = 315.287}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = -535.8475,y = 210.0222,z = 323.4717}, rot = {x = 0,y = 304.6312,z = 0}, }, freestyle = 1120, time = 10, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = -514.3675,y = 210.0222,z = 332.963}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = -510.323,y = 210.0222,z = 338.8798}, rot = {x = 0,y = 324.1784,z = 0}, }, freestyle = 1280, time = 14, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = -508.2332,y = 210.0222,z = 338.0515}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = -494.7735,y = 210.0222,z = 351.3969}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
				},
			},
			{
				condition = { mainQuestId = 40006, questState = QuestState.UnFinished, sceneId = 3, priority = 4, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -539.4219,y = 201.6422,z = 288.7902}, rot = {x = 0,y = 90.71317,z = 0}, }, freestyle = 1190, action = PatternData.Stand, },
				},
			},
		},
	},
}

return NPCConfig
