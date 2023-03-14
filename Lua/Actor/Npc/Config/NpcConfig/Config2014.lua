require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2014",
		Alias = "Npc2014",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.Day, mainQuestId = 1003, questState = QuestState.Finished, sceneId = 3, priority = 1, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -618.5388,y = 251.4103,z = 393.3284}, rot = {x = 0,y = 324.738,z = 0}, }, freestyle = 4000, action = PatternData.Stand, },
				},
			},
			{
				condition = { daily = DailyCondition.Night, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -599.7817,y = 250.6663,z = 412.0137}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Hide, },
				},
			},
			{
				condition = { daily = DailyCondition.Day, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -599.5497,y = 250.3073,z = 442.8886}, rot = {x = 0,y = 136.8938,z = 0}, }, freestyle = 4000, action = PatternData.Stand, },
				},
			},
		},
	},
}

return NPCConfig
