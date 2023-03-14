require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2428",
		Alias = "Npc2428",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = 564.7165,y = 206.5026,z = 332.1356}, rot = {x = 0,y = 55.09708,z = 0}, }, freestyle = 0, action = PatternData.Stand, },
				},
			},
		},
	},
}

return NPCConfig
