require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "1447",
		Alias = "Npc1447",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = sceneData:GetDummyPoint(3, "NpcMaleInsomniaPatrol13Pos01"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(3, "NpcMaleInsomniaPatrol13Pos02"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(3, "NpcMaleInsomniaPatrol13Pos03"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(3, "NpcMaleInsomniaPatrol13Pos04"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(3, "NpcMaleInsomniaPatrol13Pos05"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(3, "NpcMaleInsomniaPatrol13Pos06"), action = PatternData.Patrol, },
				},
			},
		},
	},
}

return NPCConfig
