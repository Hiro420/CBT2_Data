require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2087",
		Alias = "Npc2087",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -561.0129,y = 228.03,z = 333.9751}, rot = {x = 0,y = 357.8264,z = 0}, }, freestyle = 0, action = PatternData.Stand, },
				},
			},
		},
	},
}

return NPCConfig
