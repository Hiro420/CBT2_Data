require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2203",
		Alias = "Npc2203",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = 898.4847,y = 258.9812,z = 367.0537}, rot = {x = 0,y = 44.36394,z = 0}, }, freestyle = 1230, action = PatternData.Stand, },
				},
			},
		},
	},
}

return NPCConfig
