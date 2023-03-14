--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 80001, monster_id = 28030404, pos = { x = 1192.6, y = 266.0, z = 1218.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 80002, monster_id = 28030404, pos = { x = 1193.7, y = 265.5, z = 1215.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 80003, monster_id = 28030404, pos = { x = 1198.8, y = 265.3, z = 1217.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "鸟类", pose_id = 2 }
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
		monsters = { 80001, 80002, 80003 },
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