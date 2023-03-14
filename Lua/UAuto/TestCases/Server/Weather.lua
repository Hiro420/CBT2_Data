--baseClass提供基础接口
local baseClass = require("UAuto/Base/UAutoLuaTestBase")
--所有testcase继承baseClass
local UAutoLuaTestCase = class("Weather",baseClass)
local self = UAutoLuaTestCase

self.TestFixture = "天气协议测试"
self.Category = "服务器"
self.Description="天气协议的测试"
--判断返回的retcode是否为成功，仅能判断rsp
function IsSucc(retcode)
    assert(retcode == 0, "get the rsp failed and retmsg is :"..self:getRetCode(retcode)) 
end

local weatherAreaId = {

}

local ClimateType = {
         CLIMATE_NONE = 0, 
         CLIMATE_SUNNY = 0, 
         CLIMATE_CLOUDY = 0,
         CLIMATE_RAIN = 0,
         CLIMATE_THUNDERSTORM = 0, 
         CLIMATE_SNOW = 0, 
         CLIMATE_MIST = 0
}

--天气接收总次数
local weatherchangeTIMES = 0

--区域天气通知(S->C)
function OnSceneAreaWeatherNotify(proto)
    
      weatherchangeTIMES  = weatherchangeTIMES + 1
      for index,v in pairs(ClimateType) do
        print(index)
        print(v)
      end
end

--天气类型
-- public enum ClimateType
--     {
--         CLIMATE_NONE = 0, // 未定义
--         CLIMATE_SUNNY = 1, // 晴天
--         CLIMATE_CLOUDY = 2, // 多云
--         CLIMATE_RAIN = 3, // 雨
--         CLIMATE_THUNDERSTORM = 4, // 雷雨
--         CLIMATE_SNOW = 5, // 雪
--         CLIMATE_MIST = 6, // 雾
--     }

function ChangeGameTime(hour)
    
end


self.Step1 = {
	Order = 1,
	Type = CaseType.MonoTest,
	Description = "改变天气",
    Action = UAutoCoroutine(function()

        


        yield_return(self.base:MouseClick( "Canvas/Pages/InLevelMainPage/GrpMainPage/MapInfo/BtnPlayerProfile"))
        CS.UnityEngine.WaitForSeconds(4)
        yield_return(self.base:MouseClick( "Canvas/Pages/PlayerProfilePage/GrpProfile/GrpEntry/ScrollView/Content/TimeAcceleration/Content"))
        local detaTime = self.base:GetGameTime(0,0)
        local ChangeGameTimeReq = CS.Proto.ChangeGameTimeReq()
        ChangeGameTimeReq.GameTime = detaTime
        ChangeGameTimeReq.IsForceSet = false
        yield_return(self.base:SendMessageAndWaitRecv(ChangeGameTimeReq,"SceneAreaWeatherNotify",OnSceneAreaWeatherNotify))
        CS.UnityEngine.WaitForSeconds(4)
        detaTime=self.base:GetGameTime(2,0)
        local ChangeGameTimeReq = CS.Proto.ChangeGameTimeReq()
        ChangeGameTimeReq.GameTime = detaTime
        ChangeGameTimeReq.IsForceSet = false
        yield_return(self.base:SendMessageAndWaitRecv(ChangeGameTimeReq,"SceneAreaWeatherNotify",OnSceneAreaWeatherNotify))
        yield_return(self.base:MouseClick( "Canvas/Pages/InLevelClockPage/GrpClock/Top/BtnReturn/Content/Btn"))
        yield_return(self.base:MouseClick( "Canvas/Pages/PlayerProfilePage/BgMask"))
		
	end)
}

return self