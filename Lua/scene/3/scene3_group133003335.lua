--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1081, monster_id = 28020301, pos = { x = 2928.4, y = 251.8, z = -1639.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽", affix = { 1001 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3365, gadget_id = 70211101, pos = { x = 2912.2, y = 253.7, z = -1622.7 }, rot = { x = 0.0, y = 52.5, z = 4.4 }, level = 30, drop_tag = "解谜低级蒙德", isOneoff = true }
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
	rand_suite = true
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
		monsters = { 1081 },
		gadgets = { 3365 },
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