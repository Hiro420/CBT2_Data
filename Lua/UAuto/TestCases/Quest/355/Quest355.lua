local baseClass = require('UAuto/Base/UAutoLuaTestBase')
local UAutoLuaTestCase = class("Quest355",baseClass)
local self = UAutoLuaTestCase
self.TestFixture = "Quest355"
self.Category = "任务系统" --自行修改分类
self.Description = "任务355:与巨龙相会" --自行修改用例描述
UAutoLuaTestCase.Step_1 = {
	Order = 1, --执行顺序
	Type = CaseType.MonoTest,
	Description = "风龙cutscene1", --步骤描述
	Action = UAutoCoroutine(function()

		local avatarLoc = self.base:GetAvatarLocation()
		local initPos = CS.UnityEngine.Vector3(2563.166,213.1959,-1331.805)
		if (CS.UnityEngine.Vector3.Distance(avatarLoc,initPos) > 20) then
			yield_return(self.base:TelePort(initPos))
		end
		
		CS.MoleMole.GlobalVars.enemyRange = 10.0
		--yield_return(self.base:RunGM("combat ai"))
		for idx,pos in ipairs(self.CutscenePos) do
			yield_return(self.base:MoveToPosition(pos))
		end
		--yield_return(self.base:RunGM("combat ai off"))
		yield_return(self:WaitCutScene(true))
	end)
}
UAutoLuaTestCase.Step_2 = {
	Order = 2, --执行顺序
	Type = CaseType.MonoTest,
	Description = "拾取风龙结晶", --步骤描述
	Action = UAutoCoroutine(function()
		for idx,pos in ipairs(self.leidi) do
			yield_return(self.base:MoveToPosition(pos,10,1,1,true))
		end
		yield_return(CS.UnityEngine.WaitForSeconds(3))
		yield_return(self.base:Pick(0))
		yield_return(self:WaitCutScene(true))
	end)
}

self.CutscenePos = {
	CS.UnityEngine.Vector3(2563.166,213.1959,-1331.805),
CS.UnityEngine.Vector3(2561.141,211.9214,-1340.64),
CS.UnityEngine.Vector3(2556.914,212.5712,-1335.514),
CS.UnityEngine.Vector3(2558.251,213.669,-1327.682),
CS.UnityEngine.Vector3(2557.603,209.9413,-1323.255),
CS.UnityEngine.Vector3(2555.561,210.3173,-1319.51),
CS.UnityEngine.Vector3(2552.294,210.3172,-1313.969),
CS.UnityEngine.Vector3(2550.098,210.3172,-1310.301),
CS.UnityEngine.Vector3(2547.597,211.2435,-1305.148),
CS.UnityEngine.Vector3(2544.408,211.5719,-1296.524),
CS.UnityEngine.Vector3(2540.853,211.7195,-1287.495),
CS.UnityEngine.Vector3(2538.094,213.1245,-1280.396),
CS.UnityEngine.Vector3(2535.173,214.3664,-1273.17),
CS.UnityEngine.Vector3(2530.143,208.1519,-1266.23),
CS.UnityEngine.Vector3(2524.552,205.8951,-1258.338),
CS.UnityEngine.Vector3(2519.317,203.9763,-1250.179),
CS.UnityEngine.Vector3(2514.093,202.9379,-1241.616),
CS.UnityEngine.Vector3(2509.968,202.2575,-1232.268),
CS.UnityEngine.Vector3(2501.941,201.3502,-1225.888),
CS.UnityEngine.Vector3(2494.136,199.5376,-1220.31),
CS.UnityEngine.Vector3(2486.161,198.0938,-1214.611),
CS.UnityEngine.Vector3(2480.154,198.1846,-1207.176),
CS.UnityEngine.Vector3(2473.882,198.1574,-1199.417),
CS.UnityEngine.Vector3(2467.162,198.1855,-1191.903),
CS.UnityEngine.Vector3(2461.87,198.8454,-1185.026),
CS.UnityEngine.Vector3(2455.471,199.35,-1178.834),
CS.UnityEngine.Vector3(2447.98,199.7117,-1173.517),
CS.UnityEngine.Vector3(2440.117,199.9824,-1169.009),
CS.UnityEngine.Vector3(2437.843,200.0297,-1167.617),
CS.UnityEngine.Vector3(2435.231,200.2657,-1166.436),
CS.UnityEngine.Vector3(2428.09,201.2355,-1162.594),
CS.UnityEngine.Vector3(2419.506,201.5931,-1159.191),
CS.UnityEngine.Vector3(2411.741,202.5941,-1156.667),
CS.UnityEngine.Vector3(2404.988,203.088,-1151.362),
CS.UnityEngine.Vector3(2398.361,202.8065,-1144.039),
CS.UnityEngine.Vector3(2391.602,204.0222,-1140.913),

}

self.leidi={
CS.UnityEngine.Vector3(2391.901,204.0083,-1141.059),
CS.UnityEngine.Vector3(2386.766,204.2118,-1140.365),
CS.UnityEngine.Vector3(2378.678,205.1835,-1139.403),
CS.UnityEngine.Vector3(2369.605,205.603,-1137.92),
CS.UnityEngine.Vector3(2364.638,206.3183,-1136.729),
CS.UnityEngine.Vector3(2358.834,207.1012,-1135.323),
CS.UnityEngine.Vector3(2355.619,207.3143,-1134.546),
CS.UnityEngine.Vector3(2354.287,208.8213,-1134.225),
CS.UnityEngine.Vector3(2348.597,211.5934,-1132.848),
CS.UnityEngine.Vector3(2347.396,211.6614,-1132.557)
}
return self
