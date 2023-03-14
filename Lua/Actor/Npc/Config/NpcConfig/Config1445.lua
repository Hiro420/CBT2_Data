require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "1445",
		Alias = "Npc1445",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = sceneData:GetDummyPoint(3, "NpcMaleInsomniaPatrol12Pos01"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(3, "NpcMaleInsomniaPatrol12Pos02"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(3, "NpcMaleInsomniaPatrol12Pos03"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(3, "NpcMaleInsomniaPatrol12Pos04"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(3, "NpcMaleInsomniaPatrol12Pos05"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(3, "NpcMaleInsomniaPatrol12Pos06"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(3, "NpcMaleInsomniaPatrol12Pos07"), action = PatternData.Patrol, },
					{ dummypoint = sceneData:GetDummyPoint(3, "NpcMaleInsomniaPatrol12Pos08"), action = PatternData.Patrol, },
				},
			},
		},
	},
}

return NPCConfig
