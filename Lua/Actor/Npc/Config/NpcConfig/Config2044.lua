require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2044",
		Alias = "Npc2044",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -678.186,y = 220.5802,z = 251.7763}, rot = {x = 0,y = 44.47393,z = 0}, }, freestyle = 4010, time = 0, action = PatternData.Stand, },
				},
			},
		},
	},
}

return NPCConfig
