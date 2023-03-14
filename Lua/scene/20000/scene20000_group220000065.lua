--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 366, gadget_id = 70500000, pos = { x = 55.7, y = 0.5, z = 367.8 }, rot = { x = 0.0, y = 300.0, z = 0.0 }, level = 1, point_type = 1000002 },
	{ config_id = 367, gadget_id = 70500000, pos = { x = 61.0, y = 0.5, z = 368.7 }, rot = { x = 0.0, y = 300.0, z = 0.0 }, level = 1, point_type = 1000002 },
	{ config_id = 368, gadget_id = 70500000, pos = { x = 57.4, y = 0.5, z = 371.2 }, rot = { x = 0.0, y = 300.0, z = 0.0 }, level = 1, point_type = 1000002 },
	{ config_id = 369, gadget_id = 70500000, pos = { x = 56.9, y = 0.5, z = 364.5 }, rot = { x = 0.0, y = 300.0, z = 0.0 }, level = 1, point_type = 1000002 },
	{ config_id = 370, gadget_id = 70500000, pos = { x = 58.3, y = 0.5, z = 378.5 }, rot = { x = 0.0, y = 300.0, z = 0.0 }, level = 1, point_type = 1000002 },
	{ config_id = 549, gadget_id = 70500000, pos = { x = 89.2, y = 0.5, z = 423.1 }, rot = { x = 0.0, y = 300.0, z = 0.0 }, level = 1, point_type = 1000002 },
	{ config_id = 550, gadget_id = 70500000, pos = { x = 87.4, y = 0.5, z = 419.1 }, rot = { x = 0.0, y = 300.0, z = 0.0 }, level = 1, point_type = 1000002 }
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
	rand_suite = true,
	npcs = { }
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
		monsters = { },
		gadgets = { 366, 367, 368, 369, 370, 549, 550 },
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