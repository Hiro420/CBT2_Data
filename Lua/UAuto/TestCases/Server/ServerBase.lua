local baseClass = require('UAuto/Base/UAutoLuaTestBase')
local UAutoLuaTestCase = class("ServerBase",baseClass)
UAutoLuaTestCase.TestFixture = "ServerBase"

local self = UAutoLuaTestCase

--判断retcode是否成功
function self:IsSucc(retcode)
    assert(retcode == 0, "get the rsp failed and retmsg is :"..self:getRetCode(retcode)) 
end
--判断retcode是否返回指定的数值
function self:IsSuccRetByInt(ret,retcode)
    assert(retcode==ret, "错误的retcode")
end
--判断两个itemid是否一致
function self:IsSameItemId(item1, item2)
	assert(item1==item2,"failed:两者的itemid不一致")
end




return self