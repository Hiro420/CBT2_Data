require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2054",
		Alias = "Npc2054",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -633.6694,y = 219.543,z = 262.0621}, rot = {x = 0,y = 235.1718,z = 0}, }, freestyle = 4010, action = PatternData.Stand, },
				},
			},
		},
	},
}

return NPCConfig
