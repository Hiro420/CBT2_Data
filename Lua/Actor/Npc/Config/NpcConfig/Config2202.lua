require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2202",
		Alias = "Npc2202",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = 926.9905,y = 258.9934,z = 364.8126}, rot = {x = 0,y = 44.38718,z = 0}, }, freestyle = 1120, time = 10, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = 914.2737,y = 258.9885,z = 368.536}, rot = {x = 0,y = 327.2501,z = 0}, }, freestyle = 1190, time = 10, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = 914.2561,y = 259.5409,z = 358.3734}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 900.4495,y = 259.7196,z = 346.3165}, rot = {x = 0,y = 281.7385,z = 0}, }, freestyle = 1190, time = 10, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = 908.7914,y = 259.7196,z = 346.8001}, rot = {x = 0,y = 107.9579,z = 0}, }, freestyle = 1170, time = 10, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = 908.9275,y = 259.7796,z = 349.9868}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
				},
			},
			{
				condition = { mainQuestId = 40006, questState = QuestState.UnFinished, daily = DailyCondition.AllDay, sceneId = 3, priority = 1, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -492.7469,y = 211.2201,z = 373.4423}, rot = {x = 0,y = 85.89425,z = 0}, }, freestyle = 1170, action = PatternData.Stand, },
				},
			},
		},
	},
}

return NPCConfig
