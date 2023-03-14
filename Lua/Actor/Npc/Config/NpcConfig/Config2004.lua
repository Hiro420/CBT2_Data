require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2004",
		Alias = "Npc2004",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.Day, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -675.061,y = 214.2778,z = 152.5672}, rot = {x = 0,y = 124.1016,z = 0}, }, freestyle = 0, time = 15, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = -674.0436,y = 214.2778,z = 161.8204}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = -658.2092,y = 214.0245,z = 162.7946}, rot = {x = 0,y = 13.66836,z = 0}, }, freestyle = 0, time = 15, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = -678.7311,y = 214.2778,z = 159.2132}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = -716.3425,y = 213.738,z = 158.4564}, rot = {x = 0,y = 273.5918,z = 0}, }, freestyle = 0, time = 15, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = -698.599,y = 213.7512,z = 149.2137}, rot = {x = 0,y = 180.9071,z = 0}, }, freestyle = 0, time = 15, action = PatternData.Stand, },
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
				condition = { mainQuestId = 40006, questState = QuestState.UnFinished, sceneId = 3, priority = 4, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -494.6133,y = 210.0222,z = 341.4981}, rot = {x = 0.02820644,y = 305.0786,z = 1.645565}, }, freestyle = 0, action = PatternData.Stand, },
				},
			},
		},
	},
}

return NPCConfig
