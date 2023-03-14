require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2405",
		Alias = "Npc2405",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = 1562.731,y = 218.756,z = 262.2314}, rot = {x = 0,y = 309.157,z = 0}, }, freestyle = 8010, action = PatternData.Sit, },
				},
			},
		},
	},
}

return NPCConfig
