
local baseClass = require('UAuto/Base/UAutoLuaTestBase')
local UAutoLuaTestCase = class("PlayCutScene01",baseClass)
local self = UAutoLuaTestCase
self.TestFixture = "CutScene01"
self.Category = "CutScene" --自行修改分类
self.Description = "主角睁眼" --自行修改用例描述


function unlockAll(  )
	local retry = 20
	yield_return(self.base:RunGM("quest finish 35001"))
	while (retry > 0) do
		local map = CS.UnityEngine.GameObject.Find("InLevelMapPage")
		if(map ~= nil and map.activeInHierarchy == true)
		then
			yield_return(self:CloseMapIfExist())
		else
			yield_return(CS.UnityEngine.WaitForSeconds(1))
		end
		retry = retry -1
	end
	
end

UAutoLuaTestCase.Step_1 = {
	Order = 1, --执行顺序
	Type = CaseType.MonoTest,
	Description = "主角睁眼", --步骤描述
	Action = UAutoCoroutine(function()

		yield_return(self:EnterWorldBySex(true))

		yield_return(unlockAll())

		yield_return(self:GotoPos("2745 194 -1718"))

		yield_return(self:PlayCutscene(35102,self.TestFixture))

	end)
}

return self
