--baseClass提供基础接口
local baseClass = require("UAuto/Server/ServerBase")
--所有testcase继承baseClass
local UAutoLuaTestCase = class("Item",baseClass)
local self = UAutoLuaTestCase
self.TestFixture = "item协议"
self.Category = "服务器"
self.Description="收发道具相关协议测试"

local notifyItemId = 0

--存储道具变更通知协议
function OnStoreItemChangeNotify(proto)
	local item = proto.ItemList[0]
	notifyItemId = item.ItemId
	print("notifyItemId"..notifyItemId)
end

--存储道具删除通知协议
function OnStoreItemDelNotify(proto)
	
end

--道具增加通知协议
function OnItemAddHintNotify(proto)
	local addItem = proto.ItemList
	if addItem.ItemId ~= 108032 then 
		print("failed:")
	end
	print("test info "..proto)
end

--丢弃道具通知协议
function OnDropHintNotify(proto)
	
end

--道具cd时间通知协议
function OnItemCdGroupTimeNotify(proto)
	
end

--GrantRewardNotify
function OnGrantRewardNotify(proto)
	
end


--Response协议相关
--使用道具rsp
function OnUseItemRsp(proto)
	self:IsSucc(proto.Retcode)
	print("OnUseItemRsp"..proto)
end
--丢弃道具rsp
function OnDropItemRsp(proto)
	self:IsSucc(proto.Retcode)
	print("OnUseItemRsp"..proto)
end

--角色卡变更rsp
function OnAvatarCardChangeRsp(proto)
	self:IsSucc(proto.Retcode)
	print("OnUseItemRsp"..proto)
end


--测试数据建立
local itemid = {
	{108032,1},
	{108033,2},
	{108034,3}
}



self.Step1 = {
	Order = 1,
	Type = CaseType.MonoTest,
	Description = "增加道具协议测试",
	Action = UAutoCoroutine(function()
		local req = CS.Proto.GmTalkReq()

		req.Msg = "item add 108032 1"
		yield_return(self.base:SendMessageAndWaitRecv(req,"ItemAddHintNotify",OnItemAddHintNotify))

		for idx,item in ipairs(itemid) do
			req.Msg = "item add "..item[1].." "..item[2]
			yield_return(self.base:SendMessageAndWaitRecv(req,"StoreItemChangeNotify",OnStoreItemChangeNotify))
		end
	end)
}
local TGuid = {
	{108032,6715328679553011730,1},
	{108033,6715333915199934482,2},
	{108034,6715334001100328978,3},
	{108006,6716411283407638546,4}
}

local targetGuid = {
	{"女主角",6715272512177967121}
}

self.Step2 = {
	Order = 2,
	Type = CaseType.MonoTest,
	Description = "道具负重上限测试",
	Action = UAutoCoroutine(function()
		local req = CS.Proto.GmTalkReq()
		req.Msg = "hp -100000"
		self:SendMessage(req)
		req.Msg = "item add 108006 11"
		self:SendMessage(req)

		local req = CS.Proto.UseItemReq()
		req.Guid = a
		req.Count = 1
		req.TargetGuid = 6715272512177967121

		for idx,item in ipairs(itemid) do
			req.Msg = "item add "..item[1].." "..item[2]
			yield_return(self.base:SendMessageAndWaitRecv(req,"StoreItemChangeNotify",OnStoreItemChangeNotify))
		end
	end)
}

return self