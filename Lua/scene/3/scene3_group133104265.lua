--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 265001, monster_id = 21011001, pos = { x = 819.7, y = 232.1, z = 715.6 }, rot = { x = 0.0, y = 67.9, z = 0.0 }, level = 22, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32 },
	{ config_id = 265005, monster_id = 21010401, pos = { x = 847.4, y = 222.1, z = 698.6 }, rot = { x = 0.0, y = 179.7, z = 0.0 }, level = 20, drop_tag = "远程丘丘人", pose_id = 402 },
	{ config_id = 265006, monster_id = 21010701, pos = { x = 838.8, y = 224.2, z = 707.3 }, rot = { x = 0.0, y = 156.2, z = 0.0 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 265007, monster_id = 21010201, pos = { x = 840.8, y = 224.2, z = 708.1 }, rot = { x = 0.0, y = 157.5, z = 0.0 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9010 },
	{ config_id = 265008, monster_id = 21010101, pos = { x = 839.1, y = 221.3, z = 680.2 }, rot = { x = 0.0, y = 313.6, z = 0.0 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9016 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = ,
		monsters = { 265001, 265005, 265006, 265007, 265008 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================