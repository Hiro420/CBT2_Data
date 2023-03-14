require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2036",
		Alias = "Npc2036",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.Day, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -590.5342,y = 204.6362,z = 125.453}, rot = {x = 0,y = 129.2128,z = 0}, }, freestyle = 1160, action = PatternData.Stand, },
				},
			},
			{
				condition = { daily = DailyCondition.Night, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -638.5707,y = 227.5214,z = 294.0698}, rot = {x = 0,y = 0,z = 0}, }, freestyle = 8010, action = PatternData.Sit, },
				},
			},
		},
	},
}

return NPCConfig
