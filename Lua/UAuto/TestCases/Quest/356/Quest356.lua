local baseClass = require('UAuto/Base/UAutoLuaTestBase')
local UAutoLuaTestCase = class("Quest356new",baseClass)
local self = UAutoLuaTestCase
self.TestFixture = "Quest356"
self.Category = "任务系统" --自行修改分类
self.Description = "任务356：自由之都" --自行修改用例描述


UAutoLuaTestCase.Step_1 = {
	Order = 1, --执行顺序
	Type = CaseType.MonoTest,
	Description = "移动到安柏", --步骤描述
    Action = UAutoCoroutine(function()
        local platform = CS.UnityEngine.SystemInfo.operatingSystem
        if string.find( platform,"Windows" )~=nil then
        yield_return(self.base:UpdateQuestGuide())
        yield_return(self.base:MouseClick( "Canvas/Dialogs/InLevelQuestDialog/GrpQuestBook/GrpQuestDetail/GrpAction/BtnTracker/Content"))        
        elseif string.find( platform,"iOS" )~=nil then
        yield_return(self.base:MouseClick( "Canvas/Pages/InLevelMainPage/GrpMainPage/MapInfo/BtnToggleQuest"))
        yield_return(self.base:MouseClick( "Canvas/Dialogs/InLevelQuestDialog/GrpQuestBook/GrpQuestDetail/GrpAction/BtnTracker/Content"))
        elseif string.find( platform,"ORBIS" )~=nil then
        print("PS4")
        elseif string.find( platform,"Android" )~=nil then
        yield_return(self.base:MouseClick( "Canvas/Pages/InLevelMainPage/GrpMainPage/MapInfo/BtnToggleQuest"))
        yield_return(self.base:MouseClick( "Canvas/Dialogs/InLevelQuestDialog/GrpQuestBook/GrpQuestDetail/GrpAction/BtnTracker/Content"))
        end
        -- local aPos = CS.UnityEngine.Vector3( 2220 , 210 , -950 )
        -- yield_return(self.base:TelePort(aPos))
        yield_return(self.base:WaitFrames(400))
        yield_return(self.base:RunGM("quest finish father 351 352 353 361 355 354 360"))
		yield_return(self.base:Reconnect())
		yield_return(self.base:WaitFrames(200))
		-- for idx,pos in ipairs(self.AmborPos) do
		-- 		yield_return(self.base:MoveToPosition(pos))
		-- end
		-- yield_return(self:WaitCutScene(true))    --对话
        -- yield_return(self.base:WaitFrames(630))
        -- yield_return(self.base:MouseClick( "Canvas/Pages/InLevelMainPage/GrpMainPage/MapInfo/BtnToggleQuest"))
        -- yield_return(self.base:MouseClick( "Canvas/Dialogs/InLevelQuestDialog/GrpQuestBook/GrpQuestDetail/GrpAction/BtnTracker/Content"))
        local initPos = CS.UnityEngine.Vector3( 2324.114 , 249.9898 , -761.9004 )
        yield_return(self.base:TelePort(initPos))
	end)
}
UAutoLuaTestCase.Step_2 = {
	Order = 2, --执行顺序
	Type = CaseType.MonoTest,
	Description = "移动到教学点", --步骤描述
    Action = UAutoCoroutine(function()
        for idx,pos in ipairs(self.teachPos) do
				yield_return(self.base:MoveToPosition(pos))
		end
		yield_return(self:WaitCutScene(true))    --对话
        yield_return(self.base:WaitFrames(20))
        yield_return(self.base:MoveByAngle(270,false))    --W
        yield_return(self.base:WaitFrames(20))
        yield_return(self.base:Jump())    --jump
        yield_return(self.base:WaitFrames(20))
        yield_return(self.base:MoveByAngle(270,false))    --W
        local initPos = CS.UnityEngine.Vector3( 2266.593 , 215.9926 , -872.8354 )
        yield_return(self.base:TelePort(initPos))
        for idx,pos in ipairs(self.cutscenePos) do
            yield_return(self.base:MoveToPosition(pos))
        end
        yield_return(self:WaitCutScene(true)) 

	end)
}
    
UAutoLuaTestCase.Step_3 = {
    Order = 3, --执行顺序
	Type = CaseType.MonoTest,
	Description = "击败风龙", --步骤描述
    Action = UAutoCoroutine(function()
        yield_return(self.base:WaitLevelLoaded("Level"))
        yield_return(self.base:WaitFoundNearByEntityByName("Monster_Dvalin",function(result) self.monster = result end,60,1000))
        yield_return(CS.UnityEngine.WaitForSeconds(5))
        yield_return(self.base:Skill(0,false))
        local timeout=300
        while timeout>0 do
            if self.monster.gameObject~=nil and self.monster.gameObject.activeInHierarchy then
                yield_return(CS.UnityEngine.WaitForSeconds(1))
            else
                break
            end
            timeout=timeout-1
        end
        yield_return(self.base:SkillUp(0))
        yield_return(CS.UnityEngine.WaitForSeconds(5))
        yield_return(self:WaitCutScene(true))

	end)
}
--录制的路点


-- self.AmborPos = {
--     CS.UnityEngine.Vector3(2220.756,210.0562,-951.4457),
--     CS.UnityEngine.Vector3(2224.074,210.0267,-944.9832),
--     CS.UnityEngine.Vector3(2229.3,209.99,-937.9),
    

-- }
self.teachPos = {
    CS.UnityEngine.Vector3(2324.114,249.9898,-761.9004),
    CS.UnityEngine.Vector3(2318.896,249.9859,-766.5822),
    CS.UnityEngine.Vector3(2312.191,249.986,-772.5931),

}
self.cutscenePos = {
	CS.UnityEngine.Vector3(2266.593,215.9926,-872.8354),
    CS.UnityEngine.Vector3(2266.593,215.9926,-872.8355),
    CS.UnityEngine.Vector3(2265.39,215.9909,-875.2865),


}
return self