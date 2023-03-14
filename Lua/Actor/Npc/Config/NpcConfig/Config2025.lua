require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2025",
		Alias = "Npc2025",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -562.6409,y = 210.0222,z = 282.886}, rot = {x = 0,y = 0,z = 0}, }, freestyle = 0, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = -491.2191,y = 210.0222,z = 352.2532}, rot = {x = 0,y = 132.9407,z = 0}, }, freestyle = 0, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = -493.0016,y = 210.0222,z = 354.1449}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = -564.3625,y = 210.0222,z = 284.7614}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
				},
			},
		},
	},
}

return NPCConfig
