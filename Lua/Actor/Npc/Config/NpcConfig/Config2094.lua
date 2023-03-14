require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2094",
		Alias = "Npc2094",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -775.2283,y = 228.1637,z = 336.4279}, rot = {x = 0,y = 71.11212,z = 0}, }, freestyle = 1190, action = PatternData.Stand, },
				},
			},
		},
	},
}

return NPCConfig
