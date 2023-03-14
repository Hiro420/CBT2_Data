--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 507001, monster_id = 28020102, pos = { x = 971.5, y = 240.8, z = 765.0 }, rot = { x = 0.0, y = 252.3, z = 0.0 }, level = 19, drop_tag = "走兽" },
	{ config_id = 507002, monster_id = 28030402, pos = { x = 978.7, y = 238.1, z = 777.5 }, rot = { x = 0.0, y = 326.9, z = 0.0 }, level = 19, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 507003, monster_id = 28030402, pos = { x = 993.1, y = 234.1, z = 779.2 }, rot = { x = 0.0, y = 101.4, z = 0.0 }, level = 19, drop_tag = "鸟类", pose_id = 901 },
	{ config_id = 507004, monster_id = 28030402, pos = { x = 993.2, y = 234.2, z = 774.5 }, rot = { x = 0.0, y = 325.7, z = 0.0 }, level = 19, drop_tag = "鸟类", pose_id = 2 }
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
		monsters = { 507001, 507002, 507003, 507004 },
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