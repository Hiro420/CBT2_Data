require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2209",
		Alias = "Npc2209",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = 929.2694,y = 208.0708,z = 307.7537}, rot = {x = 0,y = 153.1233,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 951.2828,y = 208.3213,z = 330.9135}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 954.4583,y = 208.3213,z = 346.5476}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 947.1373,y = 208.3213,z = 360.0271}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 946.6931,y = 208.3213,z = 366.7847}, rot = {x = 0,y = 343.1949,z = 0}, }, freestyle = 1280, time = 15, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = 944.079,y = 208.3213,z = 359.0686}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 938.165,y = 208.3213,z = 358.5056}, rot = {x = 0,y = 323.3973,z = 0}, }, freestyle = 1120, time = 10, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = 948.9548,y = 208.3213,z = 345.6776}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 945.4308,y = 208.3213,z = 332.3263}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 923.3724,y = 207.935,z = 311.855}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
				},
			},
		},
	},
}

return NPCConfig
