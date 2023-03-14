--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 19005, monster_id = 20010901, pos = { x = -413.3, y = 185.2, z = 1217.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 19001, gadget_id = 70290008, pos = { x = -413.2, y = 185.2, z = 1221.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 19002, gadget_id = 70500000, pos = { x = -413.2, y = 185.2, z = 1221.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, point_type = 3008, owner = 19001 },
	{ config_id = 19003, gadget_id = 70290008, pos = { x = -409.7, y = 184.6, z = 1216.2 }, rot = { x = 0.0, y = 279.8, z = 0.0 }, level = 32 },
	{ config_id = 19004, gadget_id = 70500000, pos = { x = -409.7, y = 184.6, z = 1216.2 }, rot = { x = 0.0, y = 279.8, z = 0.0 }, level = 32, point_type = 3008, owner = 19003 }
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
		monsters = { 19005 },
		gadgets = { 19001, 19002, 19003, 19004 },
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