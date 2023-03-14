require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2048",
		Alias = "Npc2048",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -668.4194,y = 218.8662,z = 186.6691}, rot = {x = 0,y = 138.7791,z = 0}, }, freestyle = 7010, action = PatternData.Stand, },
				},
			},
		},
	},
}

return NPCConfig
