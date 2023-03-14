local baseClass = require('UAuto/Base/UAutoLuaTestBase')
local UAutoLuaTestCase = class("LASnapShot", baseClass)
local self = UAutoLuaTestCase
self.TestFixture = "LASnapShot"
self.Category = "LA"
self.Description = "LA场景跑测"

self.OrderIndex = 0;
self.PosLst = {};
table.insert(self.PosLst, {2726.5, 194.7, -1704.6, -0.8, -0.2, 4.5});
table.insert(self.PosLst, {2611.7, 237.6, -1485.3, -1.0, 0.0, 5.1});
table.insert(self.PosLst, {2611.7, 237.6, -1485.3, -1.0, 0.0, 5.1});
table.insert(self.PosLst, {2258.8, 205.5, -1111.0, -1.6, 0.1, 6.0});
table.insert(self.PosLst, {2133.5, 204.3, -1139.7, 0.4, 0.1, 6.0});
table.insert(self.PosLst, {1980.0, 198.8, -1259.7, 1.4, 0.0, 5.4});
table.insert(self.PosLst, {1980.0, 198.8, -1259.7, 1.4, 0.0, 5.4});
table.insert(self.PosLst, {2133.4, 238.4, -1518.6, 2.4, -0.1, 5.1});
table.insert(self.PosLst, {2335.6, 284.9, -1693.6, 2.0, 0.0, 5.4});
table.insert(self.PosLst, {2592.8, 364.7, -1704.7, -0.8, 0.3, 5.5});

self.OrderIndex = self.OrderIndex + 1;
self.SnapShot = {
	Order = self.OrderIndex,
	Type = CaseType.MonoTest,
	Description = "各点位截图",
	Action = UAutoCoroutine(function()
		self.base:CloseDebugConsole()
		for i, content in pairs(self.PosLst) do
			yield_return(self.base:TelePort(CS.UnityEngine.Vector3(content[1], content[2], content[3])))
			yield_return(self.base:RunGM("WEATHER sun"))
			yield_return(self.base:RunGM("//Time 8"))
			yield_return(self.base:RotateCameraBySpherical(CS.UnityEngine.Vector3(content[4], content[5], content[6])))
			yield_return(self.base:TakeSnapShot(function(filename) self.fileName = filename end, tostring(content[1]).."_"..tostring(content[2]).."_"..tostring(content[3]).."_"..tostring(content[4]).."_"..tostring(content[5]).."_"..tostring(content[6])))
		end
	end)
}

return self
