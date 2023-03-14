local baseClass = require('UAuto/Base/UAutoLuaTestBase')
local UAutoLuaTestCase = class("Quest360new",baseClass)
local self = UAutoLuaTestCase
self.TestFixture = "Quest360"
self.Category = "任务系统" --自行修改分类
self.Description = "任务360：与轻风同行" --自行修改用例描述

UAutoLuaTestCase.Step_1 = {
	Order = 1, --执行顺序
	Type = CaseType.MonoTest,
	Description = "移动到怪点", --步骤描述
	Action = UAutoCoroutine(function()
		yield_return(self.base:RunGM("quest finish father 351 352 353 361 355 354"))
		yield_return(self.base:Reconnect())
		yield_return(self.base:WaitFrames(300))
		local initPos = CS.UnityEngine.Vector3( 2300.11 , 209.32 , -1136.024 )
		yield_return(self.base:TelePort(initPos))
		yield_return(self.base:WaitFrames(400))
		for idx,pos in ipairs(self.monsterPos) do
			yield_return(self.base:MoveToPosition(pos))
        end
		yield_return(self.base:RunGM("kill monster all"))
    end)
}
UAutoLuaTestCase.Step_2 = {
	Order = 2, --执行顺序
	Type = CaseType.MonoTest,
	Description = "移动到怪巢穴", --步骤描述
	Action = UAutoCoroutine(function()
		for idx,pos in ipairs(self.monsterDen) do
				yield_return(self.base:MoveToPosition(pos))
		end
		yield_return(self.base:RunGM("kill monster all"))
		yield_return(self:WaitCutScene(true))
		yield_return(self.base:WaitFrames(10))
	end)
}
UAutoLuaTestCase.Step_3 = {
	Order = 3, --执行顺序
	Type = CaseType.MonoTest,
	Description = "移动到蒙德", --步骤描述
	Action = UAutoCoroutine(function()
		for idx,pos in ipairs(self.mengdePos) do
			yield_return(self.base:MoveToPosition(pos))
        end
        yield_return(self:WaitCutScene(true))    --cutscene
        yield_return(self.base:WaitFrames(10))
    end)
}
	
--录制的路点
self.monsterPos = {
	CS.UnityEngine.Vector3(2296.94,209.4806,-1131.382),
	CS.UnityEngine.Vector3(2288.677,207.827,-1126.28),
	CS.UnityEngine.Vector3(2280.488,205.9278,-1121.223),
	CS.UnityEngine.Vector3(2275.9,205.6935,-1120.344),
	CS.UnityEngine.Vector3(2268.106,207.0885,-1119.951),
	CS.UnityEngine.Vector3(2259.568,207.7232,-1119.521),
	CS.UnityEngine.Vector3(2250.034,206.916,-1119.043),
	CS.UnityEngine.Vector3(2241.39,207.6657,-1118.608),
	CS.UnityEngine.Vector3(2232.906,208.4442,-1118.181),
	CS.UnityEngine.Vector3(2222.71,207.5113,-1117.669),
	CS.UnityEngine.Vector3(2214.081,208.3812,-1117.235),
	CS.UnityEngine.Vector3(2210.431,209.1276,-1117.051),
	CS.UnityEngine.Vector3(2207.48,210.8723,-1120.473),
	CS.UnityEngine.Vector3(2205.844,214.5138,-1121.666),
	CS.UnityEngine.Vector3(2202.071,215.0279,-1125.688),
	CS.UnityEngine.Vector3(2199.596,216.711,-1132.641),
	CS.UnityEngine.Vector3(2197.519,219.0053,-1138.474),
	CS.UnityEngine.Vector3(2196.359,219.8071,-1141.735),
}

self.monsterDen = {
	CS.UnityEngine.Vector3(2196.359,219.8095,-1141.735),
	CS.UnityEngine.Vector3(2196.407,220.1901,-1143.219),
	CS.UnityEngine.Vector3(2196.756,221.9232,-1150.374),
	CS.UnityEngine.Vector3(2197.131,223.0651,-1158.12),
	CS.UnityEngine.Vector3(2197.351,223.9163,-1162.673),
	CS.UnityEngine.Vector3(2201.17,226.1068,-1166.158),
	CS.UnityEngine.Vector3(2206.648,225.4923,-1171.148),
	CS.UnityEngine.Vector3(2208.901,224.9027,-1174.186),
	CS.UnityEngine.Vector3(2212.804,223.901,-1181.209),
	CS.UnityEngine.Vector3(2212.805,223.9009,-1181.21),

}
self.mengdePos = {
	CS.UnityEngine.Vector3(2218.151,224.1131,-1185.97),
    CS.UnityEngine.Vector3(2209.308,223.6994,-1184.836),
    CS.UnityEngine.Vector3(2203.827,223.4079,-1179.029),
    CS.UnityEngine.Vector3(2197.369,224.4257,-1172.186),
    CS.UnityEngine.Vector3(2194.459,223.0859,-1159.122),
    CS.UnityEngine.Vector3(2192.478,220.1523,-1146.044),
    CS.UnityEngine.Vector3(2190.907,217.3003,-1135.671),
    CS.UnityEngine.Vector3(2189.511,215.0945,-1126.445),
    CS.UnityEngine.Vector3(2188.053,213.8497,-1116.817),
    CS.UnityEngine.Vector3(2186.408,210.9391,-1105.97),
    CS.UnityEngine.Vector3(2184.56,208.5392,-1093.789),
    CS.UnityEngine.Vector3(2184.478,208.4538,-1093.248),
    CS.UnityEngine.Vector3(2183.453,207.6963,-1086.463),
    CS.UnityEngine.Vector3(2181.239,206.1954,-1071.83),
    CS.UnityEngine.Vector3(2179.369,207.0606,-1059.473),
    CS.UnityEngine.Vector3(2176.907,207.4834,-1055.552),
    CS.UnityEngine.Vector3(2173.883,207.7923,-1051.476),
    CS.UnityEngine.Vector3(2177.769,209.2936,-1042.124),
    CS.UnityEngine.Vector3(2182.879,210.9934,-1029.847),
    CS.UnityEngine.Vector3(2188.058,211.5463,-1017.402),
    CS.UnityEngine.Vector3(2190.623,211.6802,-1012.311),
    CS.UnityEngine.Vector3(2195.105,211.7607,-1004.301),
    CS.UnityEngine.Vector3(2196.03,211.7737,-1002.398),
    CS.UnityEngine.Vector3(2201.633,211.6152,-990.8653),
    CS.UnityEngine.Vector3(2207.509,211.1652,-978.7748),
    CS.UnityEngine.Vector3(2213.222,210.1432,-967.0259),
    CS.UnityEngine.Vector3(2217.679,209.9935,-957.8553),
    CS.UnityEngine.Vector3(2219.92,209.9898,-953.2457),
    CS.UnityEngine.Vector3(2221.106,210.14,-950.8035),

}
return self
