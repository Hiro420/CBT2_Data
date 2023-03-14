require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "1430",
		Alias = "Npc1430",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.Night, sceneId = 1008, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = 4.647566,y = 0.02498699,z = -12.72456}, rot = {x = 0,y = 341.1,z = 0}, }, action = PatternData.Stand, },
				},
			},
			{
				condition = { daily = DailyCondition.Day, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ action = PatternData.Hide, },
				},
			},
		},
	},
}

return NPCConfig
