--baseClass提供基础接口
local baseClass = require('UAuto/Base/UAutoLuaTestBase')
--所有testcase继承baseClass
local UAutoLuaTestCase = class("ServerDemo",baseClass)
local self = UAutoLuaTestCase
self.TestFixture = "ServerDemo"
self.Category = "服务器"
self.Description="服务器用例Demo"

function GetPlayerTokenRsp(proto)
	print(proto)
	print(self.base:GetProtoName(proto))
	print(proto.Retcode)


end


function MessagesCallback(protos)
	print("MessagesCallback")
	for i=0,protos.Count do
		local proto = protos[i]
		print(proto)
		print(proto.Retcode)
		print(self.base:GetProtoName(proto))
		print(self.base:GetProtoDescriptor().Name)
	end
end

self.Step1 = {
	Order = 1,
	Type = CaseType.MonoTest,
	Description = "发包，收包，等包",
	Action = UAutoCoroutine(function()
		local req = CS.Proto.GetPlayerTokenReq()
		req.AccountUid = 10000
		req.AccountType = 0
		--self.base:SendMessage(req)
		--yield_return(self.base:WaitMessage("GetPlayerTokenRsp",GetPlayerTokenRsp))
		--yield_return(self.base:SendMessageAndWaitRecv(req,"GetPlayerTokenRsp",GetPlayerTokenRsp))
		yield_return(self.base:SendMessageAndWaitRecvs(req,"GetPlayerTokenRsp",MessagesCallback))

	end)
}

return self