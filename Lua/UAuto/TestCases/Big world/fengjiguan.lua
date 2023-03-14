local baseClass = require('UAuto/Base/UAutoLuaTestBase')
local UAutoLuaTestCase = class("fengjiguan",baseClass)
local self = UAutoLuaTestCase
self.TestFixture = "fengjiguan "
self.Category = "大世界" --自行修改分类 
self.Description = "风机关+碎石堆" --自行修改用例描述 

UAutoLuaTestCase.Step_1 = {
	Order = 1, --执行顺序
	Type = CaseType.MonoTest,
	Description = "破坏碎石堆", --步骤描述
	Action = UAutoCoroutine(function()
      yield_return(self.base:RunGM("area 3 all"))
      yield_return(self.base:RunGM("point 3 all"))  
      --解锁地图
      yield_return(self.base:RunGM("quest finish father 351 362 352"))  
      --解锁风元素技能
		yield_return(self.base:RunGM("goto 2506.352 202.7417 -1135.778"))
      yield_return(self.base:RunGM("kill monster all"))
      --yield_return(self.base:WaitFrames(88))
      yield_return(self:WaitCutScene(true, 5, true))
      --准备工作

		
		for idx,pos in ipairs(self.rockPos) do
			yield_return(self.base:MoveToPosition(pos))
		end
		
  

		print("frame index: 103")
		yield_return(self.base:WaitFrames(33))
		yield_return(self.base:MouseClick( "Canvas/Pages/InLevelMainPage/GrpMainPage/ActionPanelContainer/ActionBtnPanel/Skill1/ActionBtn_Skill1(Clone)"))

		print("frame index: 106")
		yield_return(self.base:WaitFrames(2))

		print("frame index: 120")
		yield_return(self.base:WaitFrames(13))
		yield_return(self.base:MouseClick( "Canvas/Pages/InLevelMainPage/GrpMainPage/ActionPanelContainer/ActionBtnPanel/Skill1/ActionBtn_Skill1(Clone)"))

		print("frame index: 124")
		yield_return(self.base:WaitFrames(3))

		print("frame index: 126")
		yield_return(self.base:WaitFrames(1))
		yield_return(self.base:MouseClick( "Canvas/Pages/InLevelMainPage/GrpMainPage/ActionPanelContainer/ActionBtnPanel/Skill1/ActionBtn_Skill1(Clone)"))

		print("frame index: 130")
		yield_return(self.base:WaitFrames(3))

		print("frame index: 132")
		yield_return(self.base:WaitFrames(1))
		yield_return(self.base:MouseClick( "Canvas/Pages/InLevelMainPage/GrpMainPage/ActionPanelContainer/ActionBtnPanel/Skill1/ActionBtn_Skill1(Clone)"))

		print("frame index: 135")
		yield_return(self.base:WaitFrames(2))

		print("frame index: 142")
		yield_return(self.base:WaitFrames(6))
		yield_return(self.base:MouseClick( "Canvas/Pages/InLevelMainPage/GrpMainPage/ActionPanelContainer/ActionBtnPanel/Skill1/ActionBtn_Skill1(Clone)"))

		print("frame index: 145")
		yield_return(self.base:WaitFrames(2))

		print("frame index: 196")
		yield_return(self.base:WaitFrames(50))
		yield_return(self.base:MouseClick( "Canvas/Pages/InLevelMainPage/GrpMainPage/ActionPanelContainer/ActionBtnPanel/Skill1/ActionBtn_Skill1(Clone)"))

		print("frame index: 199")
		yield_return(self.base:WaitFrames(2))

		print("frame index: 204")
		yield_return(self.base:WaitFrames(4))
		yield_return(self.base:MouseClick( "Canvas/Pages/InLevelMainPage/GrpMainPage/ActionPanelContainer/ActionBtnPanel/Skill1/ActionBtn_Skill1(Clone)"))

		print("frame index: 207")
		yield_return(self.base:WaitFrames(2))

		print("frame index: 214")
		yield_return(self.base:WaitFrames(6))
		yield_return(self.base:MouseClick( "Canvas/Pages/InLevelMainPage/GrpMainPage/ActionPanelContainer/ActionBtnPanel/Skill1/ActionBtn_Skill1(Clone)"))

		print("frame index: 218")
		yield_return(self.base:WaitFrames(3))

		print("frame index: 226")
		yield_return(self.base:WaitFrames(7))
		yield_return(self.base:MouseClick( "Canvas/Pages/InLevelMainPage/GrpMainPage/ActionPanelContainer/ActionBtnPanel/Skill1/ActionBtn_Skill1(Clone)"))

		print("frame index: 230")
		yield_return(self.base:WaitFrames(3))

		print("frame index: 239")
		yield_return(self.base:WaitFrames(8))
		yield_return(self.base:MouseClick( "Canvas/Pages/InLevelMainPage/GrpMainPage/ActionPanelContainer/ActionBtnPanel/Skill1/ActionBtn_Skill1(Clone)"))

		print("frame index: 243")
		yield_return(self.base:WaitFrames(3))

		print("frame index: 246")
		yield_return(self.base:WaitFrames(2))
		yield_return(self.base:MouseClick( "Canvas/Pages/InLevelMainPage/GrpMainPage/ActionPanelContainer/ActionBtnPanel/Skill1/ActionBtn_Skill1(Clone)"))

		print("frame index: 250")
		yield_return(self.base:WaitFrames(3))

		print("frame index: 305")
		yield_return(self.base:WaitFrames(54))
		yield_return(self.base:MouseClick( "Canvas/Pages/InLevelMainPage/GrpMainPage/ActionPanelContainer/ActionBtnPanel/Skill1/ActionBtn_Skill1(Clone)"))

		print("frame index: 308")
		yield_return(self.base:WaitFrames(2))

		print("frame index: 311")
		yield_return(self.base:WaitFrames(2))
		yield_return(self.base:MouseClick( "Canvas/Pages/InLevelMainPage/GrpMainPage/ActionPanelContainer/ActionBtnPanel/Skill1/ActionBtn_Skill1(Clone)"))

		print("frame index: 314")
		yield_return(self.base:WaitFrames(2))

		print("frame index: 317")
		yield_return(self.base:WaitFrames(2))
		yield_return(self.base:MouseClick( "Canvas/Pages/InLevelMainPage/GrpMainPage/ActionPanelContainer/ActionBtnPanel/Skill1/ActionBtn_Skill1(Clone)"))

		print("frame index: 320")
		yield_return(self.base:WaitFrames(2))

		print("frame index: 323")
		yield_return(self.base:WaitFrames(2))
		yield_return(self.base:MouseClick( "Canvas/Pages/InLevelMainPage/GrpMainPage/ActionPanelContainer/ActionBtnPanel/Skill1/ActionBtn_Skill1(Clone)"))

		print("frame index: 326")
		yield_return(self.base:WaitFrames(2))

		print("frame index: 352")
		yield_return(self.base:WaitFrames(25))
		yield_return(self.base:MouseClick( "Canvas/Pages/InLevelMainPage/GrpMainPage/ActionPanelContainer/ActionBtnPanel/Skill1/ActionBtn_Skill1(Clone)"))

		print("frame index: 356")
		yield_return(self.base:WaitFrames(3))

		print("frame index: 365")
		yield_return(self.base:WaitFrames(8))
		yield_return(self.base:MouseClick( "Canvas/Pages/InLevelMainPage/GrpMainPage/ActionPanelContainer/ActionBtnPanel/Skill1/ActionBtn_Skill1(Clone)"))

		print("frame index: 367")
		yield_return(self.base:WaitFrames(1))

		print("frame index: 409")
		yield_return(self.base:WaitFrames(41))
		yield_return(self.base:MouseClick( "Canvas/Pages/InLevelMainPage/GrpMainPage/ActionPanelContainer/ActionBtnPanel/Skill1/ActionBtn_Skill1(Clone)"))

		print("frame index: 413")
		yield_return(self.base:WaitFrames(3))

		print("frame index: 425")
		yield_return(self.base:WaitFrames(11))
		yield_return(self.base:MouseClick( "Canvas/Pages/InLevelMainPage/GrpMainPage/ActionPanelContainer/ActionBtnPanel/Skill1/ActionBtn_Skill1(Clone)"))

		print("frame index: 429")
		yield_return(self.base:WaitFrames(3))

		print("frame index: 440")
		yield_return(self.base:WaitFrames(10))
		yield_return(self.base:MouseClick( "Canvas/Pages/InLevelMainPage/GrpMainPage/ActionPanelContainer/ActionBtnPanel/Skill1/ActionBtn_Skill1(Clone)"))

		print("frame index: 443")
		yield_return(self.base:WaitFrames(2))

		print("frame index: 463")
		yield_return(self.base:WaitFrames(19))
		yield_return(self.base:MouseClick( "Canvas/Pages/InLevelMainPage/GrpMainPage/ActionPanelContainer/ActionBtnPanel/Skill1/ActionBtn_Skill1(Clone)"))

		print("frame index: 467")
		yield_return(self.base:WaitFrames(3))

		print("frame index: 518")
		yield_return(self.base:WaitFrames(50))
		yield_return(self.base:MouseClick( "Canvas/Pages/InLevelMainPage/GrpMainPage/ActionPanelContainer/ActionBtnPanel/Skill1/ActionBtn_Skill1(Clone)"))

		print("frame index: 521")
		yield_return(self.base:WaitFrames(2))

		print("frame index: 534")
		yield_return(self.base:WaitFrames(12))
		yield_return(self.base:MouseClick( "Canvas/Pages/InLevelMainPage/GrpMainPage/ActionPanelContainer/ActionBtnPanel/Skill1/ActionBtn_Skill1(Clone)"))

		print("frame index: 538")
		yield_return(self.base:WaitFrames(3))

		print("frame index: 549")
		yield_return(self.base:WaitFrames(10))
		yield_return(self.base:MouseClick( "Canvas/Pages/InLevelMainPage/GrpMainPage/ActionPanelContainer/ActionBtnPanel/Skill1/ActionBtn_Skill1(Clone)"))

		print("frame index: 552")
		yield_return(self.base:WaitFrames(2))

		print("frame index: 564")
		yield_return(self.base:WaitFrames(11))
		yield_return(self.base:MouseClick( "Canvas/Pages/InLevelMainPage/GrpMainPage/ActionPanelContainer/ActionBtnPanel/Skill1/ActionBtn_Skill1(Clone)"))

		print("frame index: 568")
		yield_return(self.base:WaitFrames(3))

		print("frame index: 619")
		yield_return(self.base:WaitFrames(50))
		yield_return(self.base:MouseClick( "Canvas/Pages/InLevelMainPage/GrpMainPage/ActionPanelContainer/ActionBtnPanel/Skill1/ActionBtn_Skill1(Clone)"))

		print("frame index: 622")
		yield_return(self.base:WaitFrames(2))

		print("frame index: 634")
		yield_return(self.base:WaitFrames(11))
		yield_return(self.base:MouseClick( "Canvas/Pages/InLevelMainPage/GrpMainPage/ActionPanelContainer/ActionBtnPanel/Skill1/ActionBtn_Skill1(Clone)"))

		print("frame index: 639")
		yield_return(self.base:WaitFrames(4))

		print("frame index: 653")
		yield_return(self.base:WaitFrames(13))
		yield_return(self.base:MouseClick( "Canvas/Pages/InLevelMainPage/GrpMainPage/ActionPanelContainer/ActionBtnPanel/Skill1/ActionBtn_Skill1(Clone)"))

		print("frame index: 657")
		yield_return(self.base:WaitFrames(3))

		print("frame index: 670")
		yield_return(self.base:WaitFrames(12))
		yield_return(self.base:MouseClick( "Canvas/Pages/InLevelMainPage/GrpMainPage/ActionPanelContainer/ActionBtnPanel/Skill1/ActionBtn_Skill1(Clone)"))

		print("frame index: 673")
		yield_return(self.base:WaitFrames(2))
      yield_return(self.base:MouseClick( "Canvas/Pages/InLevelMainPage/GrpMainPage/ActionPanelContainer/ActionBtnPanel/Skill1/ActionBtn_Skill1(Clone)"))

		print("frame index: 840")
		yield_return(self.base:WaitFrames(22))
      yield_return(self.base:MouseClick( "Canvas/Pages/InLevelMainPage/GrpMainPage/ActionPanelContainer/ActionBtnPanel/Skill1/ActionBtn_Skill1(Clone)"))

      

   


		
	end)
}

UAutoLuaTestCase.Step_2 = {
	Order = 2, --执行顺序
	Type = CaseType.MonoTest,
	Description = "激活风机关获得宝箱", --步骤描述
	Action = UAutoCoroutine(function()
		
		for idx,pos in ipairs(self.windPos) do
			yield_return(self.base:MoveToPosition(pos))
		end

      --print("frame index: 78")
		--yield_return(self.base:WaitFrames(2))
		--endPos = CS.UnityEngine.Vector3( 2500.84 , 203.1109 , -1134.3 )
	


		print("frame index: 129")
		yield_return(self.base:WaitFrames(50))
		yield_return(self.base:MouseClick( "Canvas/Pages/InLevelMainPage/GrpMainPage/ActionPanelContainer/ActionBtnPanel/Skill2/ActionBtn_Skill2(Clone)"))

		print("frame index: 133")
		yield_return(self.base:WaitFrames(3))

      yield_return(self.base:RunGM("goto 2511.29 202.4932 -1133.744"))



      for idx,pos in ipairs(self.boxPos) do
		yield_return(self.base:MoveToPosition(pos))
		end

     

		
		--yield_return(self.base:MouseClick( "Canvas/Pages/InLevelMainPage/GrpMainPage/InteePanel/Viewport/Content/DialogItems/DlgTextListItem(Clone)/ActionButton"))
      yield_return(self.base:SelectDialog( "精致的宝箱" ))

		

   end)


}


self.rockPos = {
    CS.UnityEngine.Vector3(2506.352,202.7417,-1135.778),
    CS.UnityEngine.Vector3(2505.413,202.8696,-1137.058),
    CS.UnityEngine.Vector3(2504.174,203.0585,-1136.686),
    CS.UnityEngine.Vector3(2504.174,203.0576,-1136.686),
    CS.UnityEngine.Vector3(2503.692,203.1104,-1137.341),
    CS.UnityEngine.Vector3(2502.591,203.1376,-1136.563),
    CS.UnityEngine.Vector3(2502.587,203.1366,-1136.559)

}

self.windPos ={
    CS.UnityEngine.Vector3(2500.551,203.0986,-1134.644),
    CS.UnityEngine.Vector3(2500.84,203.1109,-1134.3),

}    

self.boxPos ={
    CS.UnityEngine.Vector3(2511.29,202.4932,-1133.744),
    CS.UnityEngine.Vector3(2509.564,202.5646,-1133.645),
    CS.UnityEngine.Vector3(2508.927,202.6358,-1133.608),
    CS.UnityEngine.Vector3(2508.081,202.707,-1133.56),
    CS.UnityEngine.Vector3(2505.603,202.983,-1133.418),
    CS.UnityEngine.Vector3(2505.339,203.0346,-1133.403),
    CS.UnityEngine.Vector3(2505.134,202.9076,-1136.769),
    CS.UnityEngine.Vector3(2505.134,202.9093,-1136.776),
    CS.UnityEngine.Vector3(2503.021,203.1265,-1136.665),
    CS.UnityEngine.Vector3(2503.021,203.1268,-1136.665),


}

return self