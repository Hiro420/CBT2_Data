require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2077",
		Alias = "Npc2077",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -616.258,y = 205.2077,z = 135.925}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = -599.8359,y = 204.8092,z = 123.5993}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = -595.6076,y = 204.8322,z = 140.8264}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = -587.9035,y = 204.7617,z = 156.77}, rot = {x = 0,y = 0,z = 0}, }, freestyle = 1190, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = -595.1506,y = 204.777,z = 162.5415}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = -613.3203,y = 205.209,z = 139.3047}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
				},
			},
		},
	},
}

return NPCConfig
