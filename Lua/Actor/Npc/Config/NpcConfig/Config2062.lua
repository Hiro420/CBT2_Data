require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2062",
		Alias = "Npc2062",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.Day, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -564.0946,y = 239.0052,z = 317.6748}, rot = {x = 0,y = 0,z = 0}, }, freestyle = 1290, action = PatternData.Stand, },
				},
			},
			{
				condition = { daily = DailyCondition.Night, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -567.554,y = 239.0052,z = 314.127}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Hide, },
				},
			},
		},
	},
}

return NPCConfig
