require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2050",
		Alias = "Npc2050",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -710.47,y = 214.3197,z = 162.3765}, rot = {x = 0,y = 274.5701,z = 0}, }, freestyle = 1280, time = 15, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = -656.8845,y = 214.0672,z = 162.1667}, rot = {x = 0,y = 0,z = 0}, }, freestyle = 1190, time = 15, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = -657.4926,y = 214.0672,z = 158.6759}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = -708.6444,y = 214.3197,z = 159.9983}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
				},
			},
		},
	},
}

return NPCConfig
