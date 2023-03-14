require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2011",
		Alias = "Npc2011",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.Day, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -569.7651,y = 239.0052,z = 316.8778}, rot = {x = 0,y = 355.1675,z = 0}, }, freestyle = 5010, action = PatternData.Stand, },
				},
			},
			{
				condition = { daily = DailyCondition.Night, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -567.5287,y = 239.0052,z = 313.8445}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Hide, },
				},
			},
			{
				condition = { daily = DailyCondition.AllDay, mainQuestId = 40006, questState = QuestState.UnFinished, sceneId = 3, priority = 3, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -490.4894,y = 210.0222,z = 372.7946}, rot = {x = 0,y = 282.3509,z = 0}, }, freestyle = 0, action = PatternData.Stand, },
				},
			},
		},
	},
}

return NPCConfig
