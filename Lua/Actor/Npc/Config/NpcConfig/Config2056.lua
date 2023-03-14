require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2056",
		Alias = "Npc2056",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -563.3856,y = 227.9149,z = 376.4337}, rot = {x = 0,y = 132.3322,z = 0}, }, freestyle = 0, time = 10, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = -577.2142,y = 227.9149,z = 363.0718}, rot = {x = 0,y = 132.5255,z = 0}, }, freestyle = 0, time = 10, action = PatternData.Stand, },
				},
			},
			{
				condition = { daily = DailyCondition.AllDay, mainQuestId = 40006, questState = QuestState.UnFinished, sceneId = 3, priority = 4, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -564.9236,y = 227.9149,z = 375.6218}, rot = {x = 0,y = 138.4561,z = 0}, }, freestyle = 0, action = PatternData.Stand, },
				},
			},
		},
	},
}

return NPCConfig
