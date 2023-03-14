require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "1627",
		Alias = "Npc1627",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -575.8561,y = 227.915,z = 360.3273}, rot = {x = 0,y = 47.19724,z = 0}, }, freestyle = 1240, time = 0, action = PatternData.Stand, },
				},
			},
		},
	},
}

return NPCConfig
