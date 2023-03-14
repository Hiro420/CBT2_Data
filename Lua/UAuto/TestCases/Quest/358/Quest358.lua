local baseClass = require('UAuto/TestCases/Quest/QuestBase')
local UAutoLuaTestCase = class("QuestAuto358",baseClass)

local self = UAutoLuaTestCase
self.TestFixture = "Quest358"
self.Category = "任务系统" --自行修改分类
self.Description = "任务358" --自行修改用例描述
self.questId = "358"

UAutoLuaTestCase.Step_1 = {
	Order = 1, --执行顺序
	Type = CaseType.MonoTest,
	Description = "进入骑士团", --步骤描述
	Action = UAutoCoroutine(function()
		yield_return(self.base:RunGM("quest finish father 351 352 353 361 355 354 360 356 357"))
		yield_return(self.base:Reconnect())
		yield_return(self.base:WaitFrames(300))
		local initPos = CS.UnityEngine.Vector3( 2268.317,235.99,-784.6346 )
		yield_return(self.base:TelePort(initPos))
		for idx,pos in ipairs(self.PaimonPos) do
			yield_return(self.base:MoveToPosition(pos))
        end
		yield_return(self.base:SelectDialog( "进入骑士团" ))
		yield_return(self.base:WaitFrames(400))
		yield_return(self:WaitCutScene(true))
	end)
}

UAutoLuaTestCase.Step_2 = {
	Order = 2, --执行顺序
	Type = CaseType.MonoTest,
	Description = "离开骑士团", --步骤描述
	Action = UAutoCoroutine(function()
		-- yield_return(self:WaitMoveToEntityByName("Kaeya",100,100))
		-- yield_return(self.base:SelectDialog( "琴" ))
		-- yield_return(self:WaitCutScene(true))
		for idx,pos in ipairs(self.roomPos) do
			yield_return(self.base:MoveToPosition(pos))
		end
		yield_return(self.base:SelectDialog( "开门" ))
		for idx,pos in ipairs(self.leavePos) do
			yield_return(self.base:MoveToPosition(pos))
		end
		yield_return(self.base:SelectDialog( "离开骑士团" ))
		yield_return(self.base:WaitLevelLoaded("Level"))
		yield_return(self.base:RunGM("jump 3"))
		yield_return(self.base:WaitLevelLoaded("Level"))
	end)
}

--录制的路点
self.PaimonPos = {
	CS.UnityEngine.Vector3(2256.586,235.99,-788.4191),
	CS.UnityEngine.Vector3(2248.324,235.99,-791.085),
	CS.UnityEngine.Vector3(2247.598,235.99,-789.6319),
	CS.UnityEngine.Vector3(2247.598,235.99,-789.632),
	CS.UnityEngine.Vector3(2245.548,236.4821,-783.3159),
	CS.UnityEngine.Vector3(2243.807,238.6537,-777.9489),
	CS.UnityEngine.Vector3(2243.807,238.6453,-777.9488),
}
self.roomPos = {
	CS.UnityEngine.Vector3(15.00034,-8.72612E-05,8.403027),
	CS.UnityEngine.Vector3(12.49332,-6.565374E-06,7.948827),
	CS.UnityEngine.Vector3(11.36315,0.000192523,7.74407),
}
self.leavePos = {
	CS.UnityEngine.Vector3(11.36315,0.000192523,7.74407),
	CS.UnityEngine.Vector3(3.605803,0.02674796,7.011991),
	CS.UnityEngine.Vector3(1.606714,0.02668874,7.700968),
	CS.UnityEngine.Vector3(0.419624,0.02751446,14.65498),
}

return self
