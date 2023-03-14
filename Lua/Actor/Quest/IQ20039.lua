require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest20039 = class("Quest20039", questActorProxy)

Quest20039.defaultAlias = "Quest20039"

local q20039cfg
local NPCData
local n = 0
local t = 0
local MainID

function Quest20039:OnDataLoaded()
	q20039cfg = self.clientData
	MainID =  20039
	NPCData = q20039cfg.NPCData

end

-- Generated
function Quest20039:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["2003901"] = self.OnSubStart2003901
	self.subStartHandlers["2003902"] = self.OnSubStart2003902
	self.subStartHandlers["2003903"] = self.OnSubStart2003903
	self.subStartHandlers["2003904"] = self.OnSubStart2003904
	self.subStartHandlers["2003905"] = self.OnSubStart2003905
	self.subStartHandlers["2003906"] = self.OnSubStart2003906
	self.subStartHandlers["2003907"] = self.OnSubStart2003907
	self.subStartHandlers["2003908"] = self.OnSubStart2003908
	self.subStartHandlers["2003909"] = self.OnSubStart2003909
	self.subStartHandlers["2003910"] = self.OnSubStart2003910
	self.subStartHandlers["2003911"] = self.OnSubStart2003911
	self.subStartHandlers["2003912"] = self.OnSubStart2003912
	self.subStartHandlers["2003913"] = self.OnSubStart2003913
	self.subStartHandlers["2003914"] = self.OnSubStart2003914
	self.subStartHandlers["2003915"] = self.OnSubStart2003915
	self.subStartHandlers["2003916"] = self.OnSubStart2003916
	self.subStartHandlers["2003917"] = self.OnSubStart2003917
	self.subStartHandlers["2003918"] = self.OnSubStart2003918
	self.subStartHandlers["2003919"] = self.OnSubStart2003919
	self.subStartHandlers["2003920"] = self.OnSubStart2003920
	self.subStartHandlers["2003921"] = self.OnSubStart2003921
	self.subStartHandlers["2003922"] = self.OnSubStart2003922
	self.subStartHandlers["2003923"] = self.OnSubStart2003923
	self.subStartHandlers["2003924"] = self.OnSubStart2003924
	self.subStartHandlers["2003925"] = self.OnSubStart2003925
	self.subStartHandlers["2003926"] = self.OnSubStart2003926
	self.subStartHandlers["2003927"] = self.OnSubStart2003927





end

function Quest20039:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["2003901"] = self.OnSubFinish2003901
	self.subFinishHandlers["2003902"] = self.OnSubFinish2003902
	self.subFinishHandlers["2003903"] = self.OnSubFinish2003903
	self.subFinishHandlers["2003904"] = self.OnSubFinish2003904
	self.subFinishHandlers["2003905"] = self.OnSubFinish2003905
	self.subFinishHandlers["2003906"] = self.OnSubFinish2003906
	self.subFinishHandlers["2003907"] = self.OnSubFinish2003907
	self.subFinishHandlers["2003908"] = self.OnSubFinish2003908
	self.subFinishHandlers["2003909"] = self.OnSubFinish2003909
	self.subFinishHandlers["2003910"] = self.OnSubFinish2003910
	self.subFinishHandlers["2003911"] = self.OnSubFinish2003911
	self.subFinishHandlers["2003912"] = self.OnSubFinish2003912
	self.subFinishHandlers["2003913"] = self.OnSubFinish2003913
	self.subFinishHandlers["2003914"] = self.OnSubFinish2003914
	self.subFinishHandlers["2003915"] = self.OnSubFinish2003915
	self.subFinishHandlers["2003916"] = self.OnSubFinish2003916
	self.subFinishHandlers["2003917"] = self.OnSubFinish2003917
	self.subFinishHandlers["2003918"] = self.OnSubFinish2003918
	self.subFinishHandlers["2003919"] = self.OnSubFinish2003919
	self.subFinishHandlers["2003920"] = self.OnSubFinish2003920
	self.subFinishHandlers["2003921"] = self.OnSubFinish2003921
	self.subFinishHandlers["2003922"] = self.OnSubFinish2003922
	self.subFinishHandlers["2003923"] = self.OnSubFinish2003923
	self.subFinishHandlers["2003924"] = self.OnSubFinish2003924
	self.subFinishHandlers["2003925"] = self.OnSubFinish2003925
	self.subFinishHandlers["2003926"] = self.OnSubFinish2003926
	self.subFinishHandlers["2003927"] = self.OnSubFinish2003927

end

function Quest20039:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["2003901"] = self.OnSubFailed2003901
	self.subFailedHandlers["2003902"] = self.OnSubFailed2003902
	self.subFailedHandlers["2003903"] = self.OnSubFailed2003903
	self.subFailedHandlers["2003904"] = self.OnSubFailed2003904
	self.subFailedHandlers["2003905"] = self.OnSubFailed2003905
	self.subFailedHandlers["2003906"] = self.OnSubFailed2003906
	self.subFailedHandlers["2003907"] = self.OnSubFailed2003907
	self.subFailedHandlers["2003908"] = self.OnSubFailed2003908
	self.subFailedHandlers["2003909"] = self.OnSubFailed2003909
	self.subFailedHandlers["2003910"] = self.OnSubFailed2003910
	self.subFailedHandlers["2003911"] = self.OnSubFailed2003911
	self.subFailedHandlers["2003912"] = self.OnSubFailed2003912
	self.subFailedHandlers["2003913"] = self.OnSubFailed2003913
	self.subFailedHandlers["2003914"] = self.OnSubFailed2003914
	self.subFailedHandlers["2003915"] = self.OnSubFailed2003915
	self.subFailedHandlers["2003916"] = self.OnSubFailed2003916
	self.subFailedHandlers["2003917"] = self.OnSubFailed2003917
	self.subFailedHandlers["2003918"] = self.OnSubFailed2003918
	self.subFailedHandlers["2003919"] = self.OnSubFailed2003919
	self.subFailedHandlers["2003920"] = self.OnSubFailed2003920
	self.subFailedHandlers["2003921"] = self.OnSubFailed2003921
	self.subFailedHandlers["2003922"] = self.OnSubFailed2003922
	self.subFailedHandlers["2003923"] = self.OnSubFailed2003923
	self.subFailedHandlers["2003924"] = self.OnSubFailed2003924
	self.subFailedHandlers["2003925"] = self.OnSubFailed2003925
	self.subFailedHandlers["2003926"] = self.OnSubFailed2003926
	self.subFailedHandlers["2003927"] = self.OnSubFailed2003927




end

---sub start & finish 内调用的函数

--@region sub start & finish handlers
---按流程触发顺序
function Quest20039:OnSubStart2003901(quest)
	math.randomseed(os.time())
	local i = math.random(1,3)
	local p = math.random(1,3)
	n = i
	t = p
	print("01 start")

end


function Quest20039:OnSubFinish2003901(quest)


    print("01 finish")
	
end

function Quest20039:OnSubFailed2003901(quest)
	

end

function Quest20039:OnSubStart2003902(quest)

	print("02 start")
	print("02 n =" .. n)
	


end

function Quest20039:OnSubFinish2003902(quest)

  
    print("02 finish")
end

function Quest20039:OnSubFailed2003902(quest)


end

function Quest20039:OnSubStart2003903(quest)
	print("03 start")

end

function Quest20039:OnSubFinish2003903(quest)

		print("03 finish")
end

function Quest20039:OnSubFailed2003903(quest)
	print("03 fail")
end

function Quest20039:OnSubStart2003904(quest)
	
	print("04 start")
	


end

function Quest20039:OnSubFinish2003904(quest)

		print("04 finish")
end

function Quest20039:OnSubFailed2003904(quest)
	print("04 fail")
end


function Quest20039:OnSubStart2003905(quest)
	print("05 start")

end

function Quest20039:OnSubFinish2003905(quest)

		print("05 finish")
end

function Quest20039:OnSubFailed2003905(quest)
	print("05 fail")
end


function Quest20039:OnSubStart2003906(quest)

	print("06 start")
	if n == 1 then
		local quest = actorMgr:GetActor(q20039cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuestID(false, 2003904)
		quest:FinishQuestID(true, 2003905)
		quest:FinishQuestID(true, 2003906)
		print("finish 2003904")
	end
	end

	if n == 2 then
		local quest = actorMgr:GetActor(q20039cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuestID(false, 2003905)
		quest:FinishQuestID(true, 2003904)
		quest:FinishQuestID(true, 2003906)
		print("finish 2003905")
	end
	end

	if n == 3 then
		local quest = actorMgr:GetActor(q20039cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuestID(false, 2003906)
		quest:FinishQuestID(true, 2003905)
		quest:FinishQuestID(true, 2003904)
		print("finish 2003906")
	end
    end
end

function Quest20039:OnSubFinish2003906(quest)
	
		print("06 finish")
end

function Quest20039:OnSubFailed2003906(quest)
	print("06 fail")
end

function Quest20039:OnSubStart2003907(quest)

	print("07 start")

end

function Quest20039:OnSubFinish2003907(quest)
	
		print("07 finish")
end

function Quest20039:OnSubFailed2003907(quest)
	print("07 fail")
end

function Quest20039:OnSubStart2003908(quest)

	print("08 start")

end

function Quest20039:OnSubFinish2003908(quest)
	
		print("08 finish")
end

function Quest20039:OnSubFailed2003908(quest)
	print("08 fail")
end

function Quest20039:OnSubStart2003909(quest)

	print("09 start")

end

function Quest20039:OnSubFinish2003909(quest)
	
		print("09 finish")
end

function Quest20039:OnSubFailed2003909(quest)
	print("09 fail")
end

function Quest20039:OnSubStart2003910(quest)

	print("10 start")
	if t == 1 then
		local quest = actorMgr:GetActor(q20039cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuestID(false, 2003910)
		print("finish 2003910")
	end
	end

	if t == 2 then
		local quest = actorMgr:GetActor(q20039cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuestID(false, 2003911)
		print("finish 2003911")
	end
	end

	if t == 3 then
		local quest = actorMgr:GetActor(q20039cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuestID(false, 2003912)
		print("finish 2003912")
	end
    end



end

function Quest20039:OnSubFinish2003910(quest)
	
		print("10 finish")
end

function Quest20039:OnSubFailed2003910(quest)
	print("10 fail")
end


function Quest20039:OnSubStart2003911(quest)

	print("11 start")

end

function Quest20039:OnSubFinish2003911(quest)
	
		print("11 finish")
end

function Quest20039:OnSubFailed2003911(quest)
	print("11 fail")
end


function Quest20039:OnSubStart2003912(quest)

	print("12 start")

end

function Quest20039:OnSubFinish2003912(quest)
	
		print("12 finish")
end

function Quest20039:OnSubFailed2003912(quest)
	print("12 fail")
end



function Quest20039:OnSubStart2003913(quest)

	print("13 start")

end

function Quest20039:OnSubFinish2003913(quest)
	
		print("13 finish")
end

function Quest20039:OnSubFailed2003913(quest)
	print("13 fail")
end


function Quest20039:OnSubStart2003914(quest)

	print("14 start")

end

function Quest20039:OnSubFinish2003914(quest)
	
		print("14 finish")
end

function Quest20039:OnSubFailed2003914(quest)
	print("14 fail")
end


function Quest20039:OnSubStart2003915(quest)

	print("15 start")

end

function Quest20039:OnSubFinish2003915(quest)
	
		print("15 finish")
end

function Quest20039:OnSubFailed2003915(quest)
	print("15 fail")
end


function Quest20039:OnSubStart2003916(quest)

	print("16 start")

end

function Quest20039:OnSubFinish2003916(quest)
	
		print("16 finish")
end

function Quest20039:OnSubFailed2003916(quest)
	print("16 fail")
end


function Quest20039:OnSubStart2003917(quest)

	print("17 start")

end

function Quest20039:OnSubFinish2003917(quest)
	
		print("17 finish")
end

function Quest20039:OnSubFailed2003917(quest)
	print("17 fail")
end


function Quest20039:OnSubStart2003918(quest)

	print("18 start")

end

function Quest20039:OnSubFinish2003918(quest)
	
		print("18 finish")
end

function Quest20039:OnSubFailed2003918(quest)
	print("18 fail")
end


function Quest20039:OnSubStart2003919(quest)

	print("19 start")

end

function Quest20039:OnSubFinish2003919(quest)
	
		print("19 finish")
end

function Quest20039:OnSubFailed2003919(quest)
	print("19 fail")
end


function Quest20039:OnSubStart2003920(quest)

	print("20 start")

end

function Quest20039:OnSubFinish2003920(quest)
	
		print("20 finish")
end

function Quest20039:OnSubFailed2003920(quest)
	print("20 fail")
end

function Quest20039:OnSubStart2003921(quest)

	print("21 start")

end

function Quest20039:OnSubFinish2003921(quest)
	
		print("21 finish")
end

function Quest20039:OnSubFailed2003921(quest)
	print("21 fail")
end

function Quest20039:OnSubStart2003922(quest)

	local quest = actorMgr:GetActor(q20039cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuestID(false, 2003907)
		print("finish 2003907")
	end


	print("22 start")

end

function Quest20039:OnSubFinish2003922(quest)
	
		print("22 finish")
end

function Quest20039:OnSubFailed2003922(quest)
	print("22 fail")
end

function Quest20039:OnSubStart2003923(quest)

	print("23 start")

	local quest = actorMgr:GetActor(q20039cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuestID(false, 2003908)
		print("finish 2003908")
	end


end

function Quest20039:OnSubFinish2003923(quest)
	
		print("23 finish")
end

function Quest20039:OnSubFailed2003923(quest)
	print("23 fail")
end

function Quest20039:OnSubStart2003924(quest)

	print("24 start")
	local quest = actorMgr:GetActor(q20039cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuestID(false, 2003909)
		print("finish 2003909")
	end



end

function Quest20039:OnSubFinish2003924(quest)
	
		print("24 finish")
end

function Quest20039:OnSubFailed2003924(quest)
	print("24 fail")
end

function Quest20039:OnSubStart2003925(quest)

	print("25 start")

	local quest = actorMgr:GetActor(q20039cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuestID(false, 2003913)
		print("finish 2003913")
	end

end

function Quest20039:OnSubFinish2003925(quest)
	
		print("25 finish")
end

function Quest20039:OnSubFailed2003925(quest)
	print("25 fail")
end


function Quest20039:OnSubStart2003926(quest)

	print("26 start")

	local quest = actorMgr:GetActor(q20039cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuestID(false, 2003914)
		print("finish 2003914")
	end

end

function Quest20039:OnSubFinish2003926(quest)
	
		print("26 finish")
end

function Quest20039:OnSubFailed2003926(quest)
	print("26 fail")
end

function Quest20039:OnSubStart2003927(quest)

	print("27 start")


	local quest = actorMgr:GetActor(q20039cfg.ActorAlias)
	if quest ~= nil then
		quest:FinishQuestID(false, 2003915)
		print("finish 2003915")
	end

end

function Quest20039:OnSubFinish2003927(quest)
	
		print("27 finish")
end

function Quest20039:OnSubFailed2003927(quest)
	print("27 fail")
end


--@endregion

function Quest20039:Start()
end

function Quest20039:OnDestroy()
end

return Quest20039