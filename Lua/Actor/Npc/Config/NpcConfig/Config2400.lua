require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2400",
		Alias = "Npc2400",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = 938.2098,y = 255.3943,z = 1233.651}, rot = {x = 0,y = 295.3445,z = 0}, }, freestyle = 4110, action = PatternData.Sit, },
				},
			},
		},
	},
}

return NPCConfig
