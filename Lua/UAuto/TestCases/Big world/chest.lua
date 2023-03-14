local baseClass = require('UAuto/Base/UAutoLuaTestBase')
local UAutoLuaTestCase = class("chest",baseClass)
local self = UAutoLuaTestCase
self.TestFixture = "chest"
self.Category = "大世界" --自行修改分类 
self.Description = "蒙得城宝箱" --自行修改用例描述 

UAutoLuaTestCase.Step_1 = {
	Order = 1, --执行顺序
	Type = CaseType.MonoTest,
	Description = "遍历蒙得城宝箱", --步骤描述
	Action = UAutoCoroutine(function()
        for k,v in ipairs(self.chestPos) do
            yield_return(self.base:TelePort(v))
            yield_return(CS.UnityEngine.WaitForSeconds(2))
            yield_return(self.base:SelectDialog(0))
            yield_return(CS.UnityEngine.WaitForSeconds(1))
        end
	end)
}



self.chestPos ={
  CS.UnityEngine.Vector3(2220.4,227.9,-941.8),
  CS.UnityEngine.Vector3(2146.3,233.6,-862.3),
  CS.UnityEngine.Vector3(2208.0,255.7,-768.8),
  
}


return self