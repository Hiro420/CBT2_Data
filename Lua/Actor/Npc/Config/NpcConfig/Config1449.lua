require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "1449",
		Alias = "Npc1449",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = sceneData:GetDummyPoint(3, "NpcMaleInsomniaPatrol14Pos01"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(3, "NpcMaleInsomniaPatrol14Pos02"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(3, "NpcMaleInsomniaPatrol14Pos03"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(3, "NpcMaleInsomniaPatrol14Pos04"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(3, "NpcMaleInsomniaPatrol14Pos05"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(3, "NpcMaleInsomniaPatrol14Pos06"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(3, "NpcMaleInsomniaPatrol14Pos07"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(3, "NpcMaleInsomniaPatrol14Pos08"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(3, "NpcMaleInsomniaPatrol14Pos09"), action = PatternData.Patrol, },
				},
			},
		},
	},
}

return NPCConfig
