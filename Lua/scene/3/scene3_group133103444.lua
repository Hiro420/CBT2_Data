--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 444001, monster_id = 20010601, pos = { x = 298.4, y = 234.5, z = 1026.3 }, rot = { x = 0.0, y = 76.9, z = 0.0 }, level = 19, drop_tag = "史莱姆" },
	{ config_id = 444002, monster_id = 20010701, pos = { x = 299.0, y = 234.6, z = 1029.3 }, rot = { x = 0.0, y = 45.4, z = 0.0 }, level = 19, drop_tag = "史莱姆" }
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
		monsters = { 444001, 444002 },
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