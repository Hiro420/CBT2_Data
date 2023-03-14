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
	{ config_id = 1019, gadget_id = 70690001, pos = { x = 1616.6, y = 233.5, z = -500.5 }, rot = { x = 90.0, y = 16.7, z = 0.0 }, level = 10 },
	{ config_id = 1021, gadget_id = 70690001, pos = { x = 1616.7, y = 247.7, z = -492.1 }, rot = { x = 338.3, y = 16.4, z = 0.0 }, level = 10 },
	{ config_id = 1022, gadget_id = 70690001, pos = { x = 1619.0, y = 252.0, z = -480.9 }, rot = { x = 17.9, y = 196.3, z = 180.0 }, level = 10 },
	{ config_id = 1023, gadget_id = 70690001, pos = { x = 1621.9, y = 256.5, z = -467.0 }, rot = { x = 327.9, y = 6.1, z = 0.0 }, level = 10 },
	{ config_id = 2168, gadget_id = 70690001, pos = { x = 1617.0, y = 240.4, z = -501.0 }, rot = { x = 90.0, y = 16.7, z = 0.0 }, level = 10 }
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
		monsters = { },
		gadgets = { 2168 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 1019, 1021, 1022, 1023 },
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