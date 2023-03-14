local QuestClientData = {}

QuestClientData.MainID = 20051
QuestClientData.ActorAlias = "20051"
QuestClientData.SubIDs = 
{
q2005101=2005101,
q2005102=2005102,
q2005103=2005103,
q2005104=2005104,
q2005105=2005105,
q2005106=2005106,
q2005116=2005116,
q2005117=2005117,
q2005118=2005118,
q2005119=2005119,
q2005166=2005166,
q2005108=2005108,
q2005109=2005109,
q2005110=2005110,
q2005111=2005111,
q2005112=2005112,
q2005113=2005113,
q2005114=2005114,
q2005115=2005115,
q2005124=2005124,
q2005125=2005125,
q2005107=2005107,
q2005120=2005120,
q2005121=2005121,
q2005122=2005122,
q2005123=2005123,
q2005137=2005137,
q2005138=2005138,
q2005139=2005139,
q2005140=2005140,
q2005141=2005141,
q2005142=2005142,
q2005143=2005143,
q2005144=2005144,
q2005163=2005163,
q2005145=2005145,
q2005146=2005146,
q2005147=2005147,
q2005148=2005148,
q2005164=2005164,
q2005165=2005165,
q2005149=2005149,
q2005150=2005150,
q2005151=2005151,
q2005152=2005152,
q2005153=2005153,
q2005154=2005154,
q2005155=2005155,
q2005156=2005156,
q2005157=2005157,
q2005159=2005159,
q2005170=2005170,
q2005171=2005171,
q2005172=2005172,
q2005173=2005173,
q2005174=2005174,
q2005175=2005175,
q2005176=2005176,
q2005177=2005177,
q2005178=2005178,
q2005179=2005179,
q2005180=2005180,
q2005181=2005181,
q2005182=2005182,
q2005183=2005183,
q2005184=2005184,
q2005185=2005185,
q2005186=2005186,
q2005187=2005187,
q2005188=2005188,
q2005189=2005189,
q2005158=2005158,

}

QuestClientData.NPC1Data = 
{
	Npc = "Npc140301",
	NPCScript = "Actor/Npc/TempNPC",
	NpcID = 140301,
	NPCPos = sceneData:GetDummyPoint(1009,"Q20051NPCCreat").pos,
	NPCDir = sceneData:GetDummyPoint(1009,"Q20051NPCCreat").rot,
	NPCSitPos = sceneData:GetDummyPoint(1009,"Q20051NPCSit").pos,
}

QuestClientData.NPC2Data = 
{
	Npc = "Npc143101",
	NPCScript = "Actor/Npc/TempNPC",
	NpcID = 143101,
	NPCPos = sceneData:GetDummyPoint(1009,"Q20051NPCCreat").pos,
	NPCDir = sceneData:GetDummyPoint(1009,"Q20051NPCCreat").rot,
	NPCSitPos = sceneData:GetDummyPoint(1009,"Q20051NPCSit").pos,
}

QuestClientData.NPC3Data = 
{
	Npc = "Npc153701",
	NPCScript = "Actor/Npc/TempNPC",
	NpcID = 153701,
	NPCPos = sceneData:GetDummyPoint(1009,"Q20051NPCCreat").pos,
	NPCDir = sceneData:GetDummyPoint(1009,"Q20051NPCCreat").rot,
	NPCSitPos = sceneData:GetDummyPoint(1009,"Q20051NPCSit").pos,
}

QuestClientData.NPC4Data = 
{
	Npc = "Npc141301",
	NPCScript = "Actor/Npc/TempNPC",
	NpcID = 141301,
	NPCPos = sceneData:GetDummyPoint(1009,"Q20051NPCCreat").pos,
	NPCDir = sceneData:GetDummyPoint(1009,"Q20051NPCCreat").rot,
	NPCSitPos = sceneData:GetDummyPoint(1009,"Q20051NPCSit").pos,
}

QuestClientData.DrinkData = 
{
	Alias = "Q20051DrinkCreat",
	DrinkID = 70210102,

	BornPos = sceneData:GetDummyPoint(1009,"Q20051DrinkCreat").pos,
    BornDir = sceneData:GetDummyPoint(1009,"Q20051DrinkCreat").rot,
}

local Rectification = {}


function Rectification:new()
	o = o or {}
	setmetatable(o,self)
	self.__index = self
	self.Drink = 0
	return o
end

function Rectification:BaseLiquor(BaseLiquor)
	self.Drink = self.Drink - math.modf(self.Drink/1000000)*1000000
	self.Drink = self.Drink + BaseLiquor * 1000000
	print("BaseLiquor")
	print(self.Drink)
end

function Rectification:AdditionalMaterial(AdditionalMaterial)
	self.Drink = self.Drink - math.fmod(math.modf(self.Drink/10000),100)*10000
	self.Drink = self.Drink + AdditionalMaterial* 10000
	print("AdditionalMaterial")
	print(self.Drink)
end

function Rectification:Step1(Step1)
	self.Drink = self.Drink - math.fmod(math.modf(self.Drink/1000),10)*1000
	self.Drink = self.Drink + Step1*1000
	print("Step1")
	print(self.Drink)
end

function Rectification:Step2(Step2)
	self.Drink = self.Drink - math.fmod(math.modf(self.Drink/100),10)*100
	self.Drink = self.Drink + Step2*100
	print("Step2")
	print(self.Drink)
end

function Rectification:Step3(Step3)
	self.Drink = self.Drink - math.fmod(math.modf(self.Drink/10),10)*10
	self.Drink = self.Drink + Step3*10
	print("Step3")
	print(self.Drink)
end

function Rectification:Step4(Step4)
	self.Drink = self.Drink - math.fmod(self.Drink,10)
	self.Drink = self.Drink + Step4*1
	print("Step4")
	print(self.Drink)
end

QuestClientData.Rectification = Rectification

local DrinkResult = {}

DrinkResult['1011234']=100316
DrinkResult['1023124']=100317
DrinkResult['1034441']=100318
DrinkResult['2041222']=100319
DrinkResult['1053312']=100329
DrinkResult['1021234']=100324
DrinkResult['1031234']=100324
DrinkResult['1041234']=100324
DrinkResult['1051234']=100324
DrinkResult['1061234']=100324
DrinkResult['1013124']=100325
DrinkResult['1033124']=100325
DrinkResult['1043124']=100325
DrinkResult['1053124']=100325
DrinkResult['1063124']=100325
DrinkResult['1014441']=100326
DrinkResult['1024441']=100326
DrinkResult['1044441']=100326
DrinkResult['1054441']=100326
DrinkResult['1064441']=100326
DrinkResult['2011222']=100327
DrinkResult['2021222']=100327
DrinkResult['2031222']=100327
DrinkResult['2051222']=100327
DrinkResult['2061222']=100327


QuestClientData.DrinkResult = DrinkResult


local DrinkResult_MM = {}
DrinkResult_MM['101']=100320
DrinkResult_MM['102']=100321
DrinkResult_MM['103']=100322
DrinkResult_MM['204']=100323
DrinkResult_MM['107']=100328
DrinkResult_MM['207']=100328

QuestClientData.DrinkResult_MM = DrinkResult_MM

local DrinkAward = {}

DrinkAward['1100316']=5
DrinkAward['1100317']=3
DrinkAward['1100318']=3
DrinkAward['1100319']=4
DrinkAward['1100320']=1
DrinkAward['1100321']=1
DrinkAward['1100322']=1
DrinkAward['1100323']=1
DrinkAward['1100324']=3
DrinkAward['1100325']=3
DrinkAward['1100326']=3
DrinkAward['1100327']=3
DrinkAward['1100328']=2
DrinkAward['1100329']=5
DrinkAward['1100330']=2
DrinkAward['2100316']=3
DrinkAward['2100317']=4
DrinkAward['2100318']=3
DrinkAward['2100319']=3
DrinkAward['2100320']=3
DrinkAward['2100321']=3
DrinkAward['2100322']=3
DrinkAward['2100323']=3
DrinkAward['2100324']=1
DrinkAward['2100325']=1
DrinkAward['2100326']=1
DrinkAward['2100327']=1
DrinkAward['2100328']=2
DrinkAward['2100329']=5
DrinkAward['2100330']=2
DrinkAward['3100316']=2
DrinkAward['3100317']=4
DrinkAward['3100318']=4
DrinkAward['3100319']=3
DrinkAward['3100320']=1
DrinkAward['3100321']=1
DrinkAward['3100322']=1
DrinkAward['3100323']=1
DrinkAward['3100324']=1
DrinkAward['3100325']=1
DrinkAward['3100326']=1
DrinkAward['3100327']=1
DrinkAward['3100328']=2
DrinkAward['3100329']=5
DrinkAward['3100330']=2
DrinkAward['4100316']=3
DrinkAward['4100317']=1
DrinkAward['4100318']=1
DrinkAward['4100319']=5
DrinkAward['4100320']=1
DrinkAward['4100321']=1
DrinkAward['4100322']=1
DrinkAward['4100323']=4
DrinkAward['4100324']=3
DrinkAward['4100325']=1
DrinkAward['4100326']=1
DrinkAward['4100327']=3
DrinkAward['4100328']=2
DrinkAward['4100329']=5
DrinkAward['4100330']=2

QuestClientData.DrinkAward = DrinkAward

return QuestClientData

--[[

原酒枚举
1 蒸馏酒
2 啤酒

材料枚举




调制枚举
1 加入材料
2 摇晃
3 搅拌
4 静置

]]--