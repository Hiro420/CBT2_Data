require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2429",
		Alias = "Npc2429",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = 1157.555,y = 205.7586,z = 276.2534}, rot = {x = 285.413,y = 0,z = 0}, }, freestyle = 0, action = PatternData.Stand, },
				},
			},
			{
				condition = { mainQuestId = 21003, questState = QuestState.UnFinished, sceneId = 3, priority = 4, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = 1252.148,y = 200.9554,z = 256.2131}, rot = {x = 0,y = 61.14458,z = 0}, }, freestyle = 0, action = PatternData.Stand, },
				},
			},
		},
	},
}

return NPCConfig
