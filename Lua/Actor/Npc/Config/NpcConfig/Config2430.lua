require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2430",
		Alias = "Npc2430",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = 54.32903,y = 263.2036,z = 372.6631}, rot = {x = 0,y = 274.4016,z = 0}, }, freestyle = 8010, action = PatternData.Sit, },
				},
			},
		},
	},
}

return NPCConfig
