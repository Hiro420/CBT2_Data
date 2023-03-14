require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2085",
		Alias = "Npc2085",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.Day, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -575.7171,y = 229.1605,z = 373.7417}, rot = {x = 0,y = 100.6835,z = 0}, }, freestyle = 1120, action = PatternData.Stand, },
				},
			},
			{
				condition = { daily = DailyCondition.Night, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -566.8367,y = 244.0236,z = 328.2652}, rot = {x = 0,y = 274.4643,z = 0}, }, freestyle = 8040, action = PatternData.Sit, },
				},
			},
		},
	},
}

return NPCConfig
