require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2007",
		Alias = "Npc2007",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.Day, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -595.149,y = 243.4263,z = 320.6827}, rot = {x = 354.1911,y = 119.5281,z = 2.617233}, }, freestyle = 1171, action = PatternData.Stand, },
				},
			},
			{
				condition = { daily = DailyCondition.Night, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -596.826,y = 226.921,z = 332.9012}, rot = {x = 0,y = 311.1177,z = 0}, }, freestyle = 1171, action = PatternData.Stand, },
				},
			},
			{
				condition = { mainQuestId = 40006, questState = QuestState.UnFinished, daily = DailyCondition.AllDay, sceneId = 3, priority = 1, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -595.149,y = 243.4263,z = 320.6827}, rot = {x = 354.1911,y = 119.5281,z = 2.617233}, }, freestyle = 0, action = PatternData.Stand, },
				},
			},
		},
	},
}

return NPCConfig
