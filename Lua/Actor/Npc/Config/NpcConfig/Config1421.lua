require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "1421",
		Alias = "Npc1421",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.Day, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = 2328.368,y = 224.9898,z = -846.9022}, rot = {x = 0,y = 240.7767,z = 0}, }, freestyle = 1280, time = 25, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = 2334.221,y = 224.0933,z = -847.8395}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 2337.255,y = 224.0934,z = -842.7153}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 2332.441,y = 224.093,z = -835.3687}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 2294.014,y = 219.9296,z = -848.9865}, rot = {x = 0,y = 94.39029,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 2279.986,y = 220.6144,z = -856.8396}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 2207.323,y = 229.9901,z = -819.3616}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 2221.873,y = 229.9901,z = -792.6716}, rot = {x = 0,y = 163.7074,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 2210.103,y = 230.0884,z = -771.5928}, rot = {x = 0,y = 297.1952,z = 0}, }, freestyle = 1280, time = 25, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = 2221.277,y = 230.0884,z = -790.8256}, rot = {x = 0,y = 273.774,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 2248.118,y = 229.9901,z = -805.3922}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 2275.313,y = 229.9901,z = -796.4968}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 2329.311,y = 223.9899,z = -821.3759}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 2337.496,y = 224.0935,z = -845.0652}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 2334.537,y = 224.0934,z = -850.4462}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
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
