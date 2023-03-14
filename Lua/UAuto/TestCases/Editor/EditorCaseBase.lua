
local baseClass = require("UAuto/Base/UAutoLuaTestBase")
local UAutoLuaTestCase = class("EditorCaseBase", baseClass)
local self = UAutoLuaTestCase
self.TestFixture = "EditorCaseBase"
local count=0
local TestCaseEditorBase = CS.MoleMole.UAuto.TestCaseEditorBase
for k,v in pairs(TestCaseEditorBase) do
	count = count + 1
end
if count<=1 then
	self.base=nil
else
	self.base = TestCaseEditorBase()
end

return self
