require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2018",
		Alias = "Npc2018",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.Day, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -594.502,y = 243.4263,z = 320.2311}, rot = {x = 0,y = 310.2667,z = 0}, }, freestyle = 1070, action = PatternData.Stand, },
				},
			},
			{
				condition = { daily = DailyCondition.Night, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ action = PatternData.Hide, },
				},
			},
			{
				condition = { daily = DailyCondition.AllDay, mainQuestId = 40006, questState = QuestState.UnFinished, sceneId = 3, priority = 1, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -594.502,y = 243.4263,z = 320.2311}, rot = {x = 0,y = 310.2667,z = 0}, }, freestyle = 1070, action = PatternData.Stand, },
				},
			},
		},
	},
}

return NPCConfig
