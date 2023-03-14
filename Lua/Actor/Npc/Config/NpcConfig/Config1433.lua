require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "1433",
		Alias = "Npc1433",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = sceneData:GetDummyPoint(3, "NpcMaleInsomniaPatrol07Pos01"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(3, "NpcMaleInsomniaPatrol07Pos02"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(3, "NpcMaleInsomniaPatrol07Pos03"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(3, "NpcMaleInsomniaPatrol07Pos04"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(3, "NpcMaleInsomniaPatrol07Pos05"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(3, "NpcMaleInsomniaPatrol07Pos06"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(3, "NpcMaleInsomniaPatrol07Pos07"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(3, "NpcMaleInsomniaPatrol07Pos08"), action = PatternData.Patrol, },
				},
			},
		},
	},
}

return NPCConfig
