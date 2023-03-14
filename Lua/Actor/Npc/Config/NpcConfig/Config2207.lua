require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2207",
		Alias = "Npc2207",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = 938.751,y = 212.7797,z = 340.9774}, rot = {x = 0,y = 56.8826,z = 0}, }, freestyle = 8040, action = PatternData.Sit, },
				},
			},
		},
	},
}

return NPCConfig
