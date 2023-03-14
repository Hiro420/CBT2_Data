--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 347004, monster_id = 21010501, pos = { x = 272.3, y = 214.6, z = 282.7 }, rot = { x = 0.0, y = 73.7, z = 0.0 }, level = 19, drop_tag = "远程丘丘人", pose_id = 9003 },
	{ config_id = 347005, monster_id = 21010601, pos = { x = 274.3, y = 214.3, z = 284.0 }, rot = { x = 0.0, y = 12.3, z = 0.0 }, level = 19, drop_tag = "丘丘人", pose_id = 9016 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 347001, gadget_id = 70220005, pos = { x = 274.6, y = 214.2, z = 284.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 347002, gadget_id = 70220005, pos = { x = 274.3, y = 214.2, z = 285.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 347003, gadget_id = 70220005, pos = { x = 273.8, y = 214.2, z = 285.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 347006, gadget_id = 70220013, pos = { x = 276.2, y = 214.7, z = 279.2 }, rot = { x = 8.0, y = 0.2, z = 3.6 }, level = 19 },
	{ config_id = 347007, gadget_id = 70220013, pos = { x = 271.9, y = 214.8, z = 279.4 }, rot = { x = 3.6, y = 0.0, z = 0.9 }, level = 19 },
	{ config_id = 347008, gadget_id = 70211001, pos = { x = 276.3, y = 214.5, z = 281.4 }, rot = { x = 355.3, y = 210.9, z = 359.2 }, level = 19, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
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
		monsters = { 347004, 347005 },
		gadgets = { 347001, 347002, 347003, 347006, 347007, 347008 },
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