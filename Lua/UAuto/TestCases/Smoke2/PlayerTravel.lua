local baseClass = require('UAuto/Base/UAutoLuaTestBase')
local UAutoLuaTestCase = class("PlayerTravel",baseClass)
local self = UAutoLuaTestCase
UAutoLuaTestCase.TestFixture = "PlayerTravel"
UAutoLuaTestCase.Category = "Other"
self.Description = "各种地标旅游"
self.Order = 1001

UAutoLuaTestCase.Mengde = {
	Order = 1,
	Type = CaseType.MonoTest,
	Description = "蒙德",
	Action = UAutoCoroutine(function()
		local TargetPosition = CS.UnityEngine.Vector3(2272,225,-869)
		yield_return(self.base:TelePort(TargetPosition))
		yield_return(CS.UnityEngine.WaitForSeconds(3))

	end)
}

UAutoLuaTestCase.MengdeShenXiang = {
	Order = 2,
	Type = CaseType.MonoTest,
	Description = "蒙德女神像",
	Action = UAutoCoroutine(function()
		local TargetPosition = CS.UnityEngine.Vector3(2317,270,-754)
		yield_return(self.base:TelePort(TargetPosition))
		yield_return(CS.UnityEngine.WaitForSeconds(3))
	end)
}



UAutoLuaTestCase.Fengqidi = {
	Order = 3,
	Type = CaseType.MonoTest,
	Description = "风起地女神像",
	Action = UAutoCoroutine(function()
		local TargetPosition = CS.UnityEngine.Vector3(1934,195,-1266)
		yield_return(self.base:TelePort(TargetPosition))
		yield_return(CS.UnityEngine.WaitForSeconds(3))
	end)
}


UAutoLuaTestCase.Xingluohu = {
	Order = 4,
	Type = CaseType.MonoTest,
	Description = "星落湖女神像",
	Action = UAutoCoroutine(function()
		local TargetPosition = CS.UnityEngine.Vector3(2564,213,-1399)
		yield_return(self.base:TelePort(TargetPosition))
		yield_return(CS.UnityEngine.WaitForSeconds(3))
	end)
}

-- UAutoLuaTestCase.Chengxi = {
-- 	Order = 5,
-- 	Type = CaseType.MonoTest,
-- 	Description = "晨曦酒庄女神像",
-- 	Action = UAutoCoroutine(function()
-- 		local TargetPosition = CS.UnityEngine.Vector3(1858,258,-574)
-- 		yield_return(self.base:TelePort(TargetPosition))
-- 		yield_return(CS.UnityEngine.WaitForSeconds(3))
-- 	end)
-- }



return self
