require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2211",
		Alias = "Npc2211",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = 872.8489,y = 265.0477,z = 329.7548}, rot = {x = 0,y = 318.4396,z = 0}, }, freestyle = 1190, time = 10, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = 870.9907,y = 265.0477,z = 326.8223}, rot = {x = 0,y = 276.4086,z = 0}, }, freestyle = 1120, time = 10, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = 873.5883,y = 265.0477,z = 326.7214}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 876.6855,y = 265.0477,z = 319.1665}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 882.1829,y = 265.0477,z = 312.724}, rot = {x = 0,y = 173.6599,z = 0}, }, freestyle = 1190, time = 10, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = 886.302,y = 265.0477,z = 312.9532}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 889.0341,y = 265.0557,z = 315.2234}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 873.448,y = 265.0477,z = 329.5213}, rot = {x = 0,y = 314.8056,z = 0}, }, action = PatternData.Patrol, },
				},
			},
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 3, priority = 2, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = 871.0265,y = 265.0468,z = 323.8711}, rot = {x = 0,y = 270.8773,z = 0}, }, freestyle = 1190, action = PatternData.Stand, },
				},
			},
		},
	},
}

return NPCConfig
