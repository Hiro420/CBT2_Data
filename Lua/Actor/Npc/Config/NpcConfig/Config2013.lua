require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2013",
		Alias = "Npc2013",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -510.6665,y = 203.2602,z = 322.5507}, rot = {x = 0,y = 134.8993,z = 0}, }, freestyle = 1190, time = 15, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = -505.6664,y = 203.2602,z = 317.1841}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = -506.9163,y = 203.2602,z = 311.4009}, rot = {x = 0,y = 131.7199,z = 0}, }, freestyle = 1320, time = 15, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = -519.9058,y = 203.2602,z = 303.5159}, rot = {x = 0,y = 314.3262,z = 0}, }, freestyle = 1280, time = 10, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = -505.9762,y = 203.2602,z = 317.6464}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
				},
			},
		},
	},
}

return NPCConfig
