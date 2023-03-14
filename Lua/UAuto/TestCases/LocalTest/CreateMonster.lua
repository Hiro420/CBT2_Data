--baseClass提供基础接口
local baseClass = require('UAuto/Base/UAutoLuaTestBase')
--所有testcase继承baseClass
local UAutoLuaTestCase = class("CreateMonster",baseClass)
local self = UAutoLuaTestCase
self.TestFixture = "CreateMonster"
self.Category = "单机场景"
self.Description="招怪测试"
self.Order = 2001


self.Step1 = {
	Order = 1,
	Type = CaseType.MonoTest,
	Description = "招怪",
	Action = UAutoCoroutine(function()
		yield_return(self:ChangeAvatar("Anbo"))
		yield_return(self:ChangeAvatar("Anbo"))
		yield_return(self:ChangeAvatar("Ayaka"))
		yield_return(self:ChangeAvatar("Qin"))
		yield_return(self:ChangeAvatar("PlayerBoy"))
		yield_return(self:ChangeAvatar("PlayerGirl"))
		yield_return(self:ChangeAvatar("Anbo"))
		yield_return(self:ChangeAvatar("Ayaka"))
		yield_return(self:ChangeAvatar("Qin"))
		yield_return(self:ChangeAvatar("Diluc"))
		yield_return(self:ChangeAvatar("Lisa"))
		yield_return(self:ChangeAvatar("Venti"))
		yield_return(self:ChangeAvatar("Xiangling"))
	end)
}

return self