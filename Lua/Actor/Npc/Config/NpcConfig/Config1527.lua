require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "1527",
		Alias = "Npc1527",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 1018, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = sceneData:GetDummyPoint(1018, "Npc1527Born"), freestyle = 1190, action = PatternData.Stand, },
				},
			},
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 1018, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = sceneData:GetDummyPoint(1018, "Npc1527Sit1"), freestyle = 8010, action = PatternData.Sit, },
				},
			},
		},
	},
}

return NPCConfig
