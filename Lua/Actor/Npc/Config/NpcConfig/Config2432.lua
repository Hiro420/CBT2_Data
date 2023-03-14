require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2432",
		Alias = "Npc2432",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = 885.4323,y = 382.5114,z = 1408.016}, rot = {x = 0,y = 27.13766,z = 0}, }, freestyle = 1280, action = PatternData.Sit, },
				},
			},
		},
	},
}

return NPCConfig
