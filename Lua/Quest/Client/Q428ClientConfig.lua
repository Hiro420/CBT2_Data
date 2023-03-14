local QuestClientData = {}

QuestClientData.MainID = 428
QuestClientData.ActorAlias = "428"
QuestClientData.SubIDs = 
{
	q42801 = 42801,
	q42802 = 42802,
	q42803 = 42803,
}


QuestClientData.WindData = {
	Wind1 = "Wind1",
	Wind2 = "Wind2",
	Wind3 = "Wind3",
	Wind4 = "Wind4",
	Wind5 = "Wind5",
	Wind6 = "Wind6",
	Wind7 = "Wind7",
	Wind8 = "Wind8",

    WindID = 40200020,
    
	-- Pos1 = sceneData:GetDummyPoint(3,"Q428Wind1").pos,
	-- Pos2 = sceneData:GetDummyPoint(3,"Q428Wind2").pos,
	-- Pos3 = sceneData:GetDummyPoint(3,"Q428Wind3").pos,
	-- Pos4 = sceneData:GetDummyPoint(3,"Q428Wind4").pos,

	-- Pos5 = sceneData:GetDummyPoint(3,"Q428Wind11").pos,
	-- Pos6 = sceneData:GetDummyPoint(3,"Q428Wind12").pos,
	-- Pos7 = sceneData:GetDummyPoint(3,"Q428Wind13").pos,
	-- Pos8 = sceneData:GetDummyPoint(3,"Q428Wind14").pos,

}

QuestClientData.AmborData = 
{
	Ambor = "Ambor",
	AmborScript = "Actor/Quest/Q301/Ambor301",
	AmborID = 1002,

	bornPos = sceneData:GetDummyPoint(3,"Ambor_FlyBegin").pos,
	bornDir = sceneData:GetDummyPoint(3,"Ambor_FlyBegin").rot,	
	bornPos2 = sceneData:GetDummyPoint(3,"Knight_Roof_Ambor").pos,
	bornDir2 = sceneData:GetDummyPoint(3,"Knight_Roof_Ambor").rot,	

}

------------------

return QuestClientData