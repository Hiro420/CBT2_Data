require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2425",
		Alias = "Npc2425",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = 252.6351,y = 200.0363,z = -111.0461}, rot = {x = 0,y = 154.9238,z = 0}, }, freestyle = 4100, action = PatternData.Sit, },
				},
			},
		},
	},
}

return NPCConfig
