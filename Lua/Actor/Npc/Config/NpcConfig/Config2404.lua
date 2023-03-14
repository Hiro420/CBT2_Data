require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2404",
		Alias = "Npc2404",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = 1547.61,y = 218.756,z = 254.1523}, rot = {x = 0,y = 153.3432,z = 0}, }, freestyle = 0, action = PatternData.Stand, },
				},
			},
		},
	},
}

return NPCConfig
