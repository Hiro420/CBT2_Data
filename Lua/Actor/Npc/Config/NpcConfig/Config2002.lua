require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2002",
		Alias = "Npc2002",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -595.8299,y = 204.7963,z = 159.1176}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = -614.5634,y = 205.2106,z = 135.7681}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = -607.5974,y = 204.7687,z = 130.4532}, rot = {x = 0,y = 109.37,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = -588.352,y = 204.7617,z = 153.9826}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
				},
			},
		},
	},
}

return NPCConfig
