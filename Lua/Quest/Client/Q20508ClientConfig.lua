local QuestClientData = {}

QuestClientData.MainID = 20508
QuestClientData.ActorAlias = "20508"
QuestClientData.SubIDs = 
{
	q2050801 = 2050801,
	q2050802 = 2050802,
	q2050803 = 2050803,
	q2050804 = 2050804,
	q2050805 = 2050805,
	q2050806 = 2050806,
	q2050807 = 2050807,
	q2050808 = 2050808,
}


QuestClientData.TargetData =
{
	GadgetID = 70900201,
	Alias = "Q20508Target",

	TargetPos1 = sceneData:GetDummyPoint(40100,"Q20508_Target1").pos,
	TargetDir1 = sceneData:GetDummyPoint(40100,"Q20508_Target1").rot,
	TargetPos2 = sceneData:GetDummyPoint(40200,"Q20502Target2").pos,
	TargetDir2 = sceneData:GetDummyPoint(40200,"Q20502Target2").rot,
	TargetPos3 = sceneData:GetDummyPoint(40300,"Q20508_Target3").pos,
	TargetDir3 = sceneData:GetDummyPoint(40300,"Q20508_Target3").rot,
	TargetPos4 = sceneData:GetDummyPoint(40400,"Q20508_Target4").pos,
	TargetDir4 = sceneData:GetDummyPoint(40400,"Q20508_Target4").rot,
}

QuestClientData.NarratorData = {
	Story1 = {
        {dialogID = 205080101, duration = 3},
        {dialogID = 205080102, duration = 3},
	}
}



return QuestClientData