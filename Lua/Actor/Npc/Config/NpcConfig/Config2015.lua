require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2015",
		Alias = "Npc2015",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.Day, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -583.6636,y = 204.8143,z = 146.894}, rot = {x = 0,y = 307.8921,z = 0}, }, freestyle = 1120, action = PatternData.Stand, },
				},
			},
			{
				condition = { daily = DailyCondition.Night, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -581.3433,y = 226.94,z = 347.5313}, rot = {x = 0,y = 295.786,z = 0}, }, freestyle = 1170, action = PatternData.Stand, },
				},
			},
		},
	},
}

return NPCConfig
