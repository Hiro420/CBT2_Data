require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2090",
		Alias = "Npc2090",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -597.3655,y = 226.921,z = 333.3557}, rot = {x = 0,y = 129.3672,z = 0}, }, freestyle = 4010, action = PatternData.Stand, },
				},
			},
		},
	},
}

return NPCConfig
