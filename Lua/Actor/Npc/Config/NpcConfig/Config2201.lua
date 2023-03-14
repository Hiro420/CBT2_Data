require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2201",
		Alias = "Npc2201",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = 942.7535,y = 201.9114,z = 400.8246}, rot = {x = 0,y = 47.24839,z = 0}, }, freestyle = 4220, action = PatternData.Stand, },
				},
			},
		},
	},
}

return NPCConfig
