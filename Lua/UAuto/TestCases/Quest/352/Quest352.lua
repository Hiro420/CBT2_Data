local baseClass = require('UAuto/Base/UAutoLuaTestBase')
local UAutoLuaTestCase = class("Quest352",baseClass)
local self = UAutoLuaTestCase
self.TestFixture = "Quest352"
self.Category = "任务系统" --自行修改分类
self.Description = "任务352：鸟瞰风物" --自行修改用例描述

UAutoLuaTestCase.Step_1 = {
	Order = 1, --执行顺序
	Type = CaseType.MonoTest,
	Description = "移动到播放cutscene点", --步骤描述
	Action = UAutoCoroutine(function()
		for idx,pos in ipairs(self.cutscenePos) do
			yield_return(self.base:MoveToPosition(pos,10,1,1,true))
		end
		yield_return(self:WaitCutScene(true,20,true))
		yield_return(self.base:WaitFrames(100))
	end)
}

UAutoLuaTestCase.Step_2 = {
	Order = 2, --执行顺序
	Type = CaseType.MonoTest,
	Description = "登岛并解锁教程", --步骤描述
	Action = UAutoCoroutine(function()
		yield_return(self:WaitMoveToEntityByName("Paimon"))
		for idx,pos in ipairs(self.LakePos) do
			yield_return(self.base:MoveToPosition(pos,10,1,1,true))
		end
		yield_return(self:WaitCutScene(true,20,true))
		yield_return(self:CloseMapIfExist())
	end)
}

self.cutscenePos ={
	CS.UnityEngine.Vector3(2680.647,194.7584,-1648.444),
	CS.UnityEngine.Vector3(2679.344,194.9309,-1648.078),
	CS.UnityEngine.Vector3(2676.724,194.8306,-1648.341),
	CS.UnityEngine.Vector3(2674.657,194.9277,-1646.717),
	CS.UnityEngine.Vector3(2673.943,195.2125,-1644.28),
	CS.UnityEngine.Vector3(2671.922,195.5015,-1642.522),
	CS.UnityEngine.Vector3(2657.386,196.8751,-1629.686),
	CS.UnityEngine.Vector3(2642.892,200.9745,-1619.321),
	CS.UnityEngine.Vector3(2632.308,204.9605,-1612.793),
	CS.UnityEngine.Vector3(2626.124,207.8813,-1608.98),
	CS.UnityEngine.Vector3(2622.262,210.8356,-1606.646),
	CS.UnityEngine.Vector3(2622.665,212.3354,-1606.886),
	CS.UnityEngine.Vector3(2619.004,215.5733,-1603.778),
	CS.UnityEngine.Vector3(2613.617,218.3505,-1598.5),
	CS.UnityEngine.Vector3(2608.699,221.195,-1592.986),
	CS.UnityEngine.Vector3(2603.093,223.1903,-1585.99),
	CS.UnityEngine.Vector3(2600.228,224.4417,-1577.035),
	CS.UnityEngine.Vector3(2601.415,226.2353,-1568.719),
	CS.UnityEngine.Vector3(2604.717,227.25,-1559.251),
	CS.UnityEngine.Vector3(2605.908,227.9392,-1548.213),
	CS.UnityEngine.Vector3(2607.408,228.7435,-1534.29),
	CS.UnityEngine.Vector3(2610.562,230.2417,-1522.355),
	CS.UnityEngine.Vector3(2611.112,230.5843,-1519.736),
	CS.UnityEngine.Vector3(2611.112,235.5843,-1489.736),
}

self.LakePos ={
	CS.UnityEngine.Vector3(2611.429,235.7079,-1485.015),
CS.UnityEngine.Vector3(2616.085,235.5037,-1484.856),
CS.UnityEngine.Vector3(2621.485,232.9252,-1477.259),
CS.UnityEngine.Vector3(2627.008,231.6789,-1468.589),
CS.UnityEngine.Vector3(2632.554,230.5143,-1460.344),
CS.UnityEngine.Vector3(2638.057,230.1472,-1451.593),
CS.UnityEngine.Vector3(2641.51,229.4585,-1441.793),
CS.UnityEngine.Vector3(2643.379,228.5369,-1431.657),
CS.UnityEngine.Vector3(2642.459,227.5573,-1421.575),
CS.UnityEngine.Vector3(2641.002,226.2284,-1411.724),
CS.UnityEngine.Vector3(2638.108,224.526,-1402.265),
CS.UnityEngine.Vector3(2634.517,222.3049,-1393.442),
CS.UnityEngine.Vector3(2628.635,220.3721,-1385.898),
CS.UnityEngine.Vector3(2622.564,218.1214,-1378.725),
CS.UnityEngine.Vector3(2616.259,216.4548,-1371.937),
CS.UnityEngine.Vector3(2609.396,214.8967,-1365.169),
CS.UnityEngine.Vector3(2601.93,213.3542,-1358.549),
CS.UnityEngine.Vector3(2594.135,212.1823,-1352.74),
CS.UnityEngine.Vector3(2585.448,210.8027,-1348.106),
CS.UnityEngine.Vector3(2579.896,210.3163,-1344.947),
CS.UnityEngine.Vector3(2574.644,210.3172,-1341.696),
CS.UnityEngine.Vector3(2567.052,212.3195,-1337.016),
CS.UnityEngine.Vector3(2563.059,213.2161,-1331.632),
CS.UnityEngine.Vector3(2563.058,213.221,-1331.63),
CS.UnityEngine.Vector3(2563.058,213.2209,-1331.63),
}
return self
