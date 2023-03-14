require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2017",
		Alias = "Npc2017",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -618.0884,y = 212.7115,z = 187.846}, rot = {x = 0,y = 220.9125,z = 0}, }, freestyle = 1120, time = 15, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = -620.4517,y = 212.7115,z = 179.9179}, rot = {x = 0,y = 163.2108,z = 0}, }, freestyle = 1190, time = 10, action = PatternData.Stand, },
				},
			},
		},
	},
}

return NPCConfig
