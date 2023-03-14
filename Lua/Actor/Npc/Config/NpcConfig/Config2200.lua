require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2200",
		Alias = "Npc2200",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = 932.3687,y = 213.257,z = 338.9869}, rot = {x = 0,y = 74.46169,z = 0}, }, freestyle = 8010, action = PatternData.Sit, },
				},
			},
		},
	},
}

return NPCConfig
