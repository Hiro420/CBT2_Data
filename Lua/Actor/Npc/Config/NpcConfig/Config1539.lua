require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "1539",
		Alias = "Npc1539",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.Day, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = 1958.285,y = 215.5587,z = -913.1713}, rot = {x = 0,y = 17.93109,z = 0}, }, action = PatternData.Stand, },
				},
			},
			{
				condition = { daily = DailyCondition.Night, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = 1945.589,y = 219.1738,z = -871.6663}, rot = {x = 0,y = 138.8797,z = 0}, }, action = PatternData.Stand, },
				},
			},
		},
	},
}

return NPCConfig
