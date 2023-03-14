require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2420",
		Alias = "Npc2420",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = 1561.276,y = 218.756,z = 263.9671}, rot = {x = 0,y = 124.5126,z = 0}, }, freestyle = 8040, action = PatternData.Sit, },
				},
			},
		},
	},
}

return NPCConfig
