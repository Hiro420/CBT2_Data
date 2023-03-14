require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2005",
		Alias = "Npc2005",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -675.4587,y = 216.6374,z = 129.682}, rot = {x = 0,y = 185.9491,z = 0}, }, freestyle = 1320, action = PatternData.Stand, },
				},
			},
		},
	},
}

return NPCConfig
