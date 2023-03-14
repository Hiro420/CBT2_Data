require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "1535",
		Alias = "Npc1535",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.Day, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = 1788.504,y = 221.863,z = -394.8109}, rot = {x = 0,y = 69.44001,z = 0}, }, freestyle = 1230, time = 15, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = 1761.029,y = 221.863,z = -380.7809}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 1747.143,y = 221.863,z = -402.1955}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 1723.874,y = 215.9679,z = -403.3138}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 1702.214,y = 209.8129,z = -410.5026}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 1690.444,y = 206.5383,z = -411.8643}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 1692.451,y = 206.9822,z = -395.1196}, rot = {x = 0,y = 0,z = 0}, }, freestyle = 1190, time = 10, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = 1690.444,y = 206.5383,z = -411.8643}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 1673.244,y = 202.9394,z = -425.8615}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 1738.373,y = 208.5205,z = -476.3788}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 1722.331,y = 207.6972,z = -493.9629}, rot = {x = 0,y = 122.7602,z = 0}, }, freestyle = 1230, time = 10, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = 1738.373,y = 208.5205,z = -476.3788}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 1794.896,y = 214.6756,z = -474.3521}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 1823.472,y = 217.4787,z = -381.2112}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 1785.596,y = 216.991,z = -367.1529}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 1775.261,y = 221.863,z = -387.2553}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
				},
			},
			{
				condition = { daily = DailyCondition.Day, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = 1788.504,y = 221.863,z = -394.8109}, rot = {x = 0,y = 69.44001,z = 0}, }, freestyle = 1230, action = PatternData.Stand, },
				},
			},
			{
				condition = { daily = DailyCondition.Day, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = 1788.504,y = 221.863,z = -394.8109}, rot = {x = 0,y = 69.44001,z = 0}, }, freestyle = 1190, action = PatternData.Stand, },
				},
			},
			{
				condition = { daily = DailyCondition.Day, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = 1788.504,y = 221.863,z = -394.8109}, rot = {x = 0,y = 69.44001,z = 0}, }, freestyle = 1280, action = PatternData.Stand, },
				},
			},
			{
				condition = { daily = DailyCondition.Night, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = 1788.504,y = 221.863,z = -394.8109}, rot = {x = 0,y = 69.44001,z = 0}, }, freestyle = 1230, action = PatternData.Stand, },
				},
			},
			{
				condition = { daily = DailyCondition.Night, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = 1788.504,y = 221.863,z = -394.8109}, rot = {x = 0,y = 69.44001,z = 0}, }, freestyle = 1190, action = PatternData.Stand, },
				},
			},
			{
				condition = { daily = DailyCondition.Night, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = 1788.504,y = 221.863,z = -394.8109}, rot = {x = 0,y = 69.44001,z = 0}, }, freestyle = 1280, action = PatternData.Stand, },
				},
			},
		},
	},
}

return NPCConfig
