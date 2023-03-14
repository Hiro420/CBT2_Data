require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2204",
		Alias = "Npc2204",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = 889.0518,y = 255.5634,z = 325.0694}, rot = {x = 0,y = 225.7905,z = 0}, }, freestyle = 1120, time = 20, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = 898.6061,y = 255.5634,z = 325.5866}, rot = {x = 0,y = 158.1534,z = 0}, }, freestyle = 1320, time = 10, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = 888.7495,y = 255.682,z = 329.0081}, rot = {x = 0,y = 281.0624,z = 0}, }, freestyle = 1320, time = 10, action = PatternData.Stand, },
				},
			},
		},
	},
}

return NPCConfig
