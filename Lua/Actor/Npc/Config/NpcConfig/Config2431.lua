require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2431",
		Alias = "Npc2431",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = 825.1278,y = 253.2844,z = 1272.358}, rot = {x = 0,y = 321.9244,z = 0}, }, freestyle = 4100, action = PatternData.Sit, },
				},
			},
		},
	},
}

return NPCConfig
