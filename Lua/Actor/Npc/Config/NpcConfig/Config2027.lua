require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2027",
		Alias = "Npc2027",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.Day, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -477.6247,y = 228.1001,z = 442.415}, rot = {x = 0,y = 229.2464,z = 0}, }, freestyle = 1170, action = PatternData.Stand, },
				},
			},
			{
				condition = { daily = DailyCondition.Night, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -483.0098,y = 228.1054,z = 436.6224}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Hide, },
				},
			},
		},
	},
}

return NPCConfig
