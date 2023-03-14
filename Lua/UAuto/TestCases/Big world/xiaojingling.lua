local baseClass = require('UAuto/Base/UAutoLuaTestBase')
local UAutoLuaTestCase = class("xiaojingling",baseClass)
local self = UAutoLuaTestCase
self.TestFixture = "xiaojingling"
self.Category = "大世界" --自行修改分类 
self.Description = "新手区小精灵" --自行修改用例描述 

UAutoLuaTestCase.Step_1 = {
	Order = 1, --执行顺序
	Type = CaseType.MonoTest,
	Description = "尾行小精灵拿宝箱", --步骤描述
	Action = UAutoCoroutine(function()
        yield_return(self.base:RunGM("area 3 all"))
        yield_return(self.base:RunGM("point 3 all"))  
      --解锁地图
	    yield_return(CS.UnityEngine.WaitForSeconds(5))


	    yield_return(self.base:RunGM("goto 2050.609 196.3887 -1181.142"))
		yield_return(CS.UnityEngine.WaitForSeconds(5))
		
		for idx,pos in ipairs(self.boxPos) do
			yield_return(self.base:MoveToPosition(pos))
		end
        
	
		


		
		yield_return(self.base:MouseClick( "Canvas/Pages/InLevelMainPage/GrpMainPage/InteePanel/Viewport/Content/DialogItems/DlgTextListItem(Clone)/ActionButton"))
		
		
		



	end)
}



self.boxPos ={
 CS.UnityEngine.Vector3(2050.304,196.7398,-1183.165),
 CS.UnityEngine.Vector3(2049.255,198.0926,-1190.608),
 CS.UnityEngine.Vector3(2048.074,198.2812,-1192.569),
 CS.UnityEngine.Vector3(2050.373,198.1994,-1191.155),
 CS.UnityEngine.Vector3(2051.137,198.1879,-1190.857),
 CS.UnityEngine.Vector3(2048.466,198.0119,-1190.121),
 CS.UnityEngine.Vector3(2051.144,198.2508,-1191.33),
 CS.UnityEngine.Vector3(2050.351,198.1694,-1190.923),
 CS.UnityEngine.Vector3(2045.734,198.3791,-1195.274),
 CS.UnityEngine.Vector3(2039.076,198.513,-1202.922),
 CS.UnityEngine.Vector3(2032.889,198.6052,-1210.447),
 CS.UnityEngine.Vector3(2026.811,197.6097,-1218.48),
 CS.UnityEngine.Vector3(2020.79,196.1587,-1226.346),
 CS.UnityEngine.Vector3(2016.857,196.383,-1231.959),
 CS.UnityEngine.Vector3(2016.857,196.3827,-1231.96),


}


return self