local QuestClientData = {}

QuestClientData.MainID = 20060
QuestClientData.ActorAlias = "20060"
QuestClientData.SubIDs = 
{
	q2006001 = 2006001,
	q2006002 = 2006002,
    q2006003 = 2006003,
    q2006004 = 2006004,
    q2006005 = 2006005,
    q2006006 = 2006006,
    q2006007 = 2006007,
	q2006008 = 2006008,
	q2006008 = 2006008,
	q2006008 = 2006008,
}


QuestClientData.NPCData01 = 
{
    Npc = "Paimon",
	NPCScript = "Actor/Npc/TempNPC",
	NpcID = 1005,

}

QuestClientData.FlowerEnough =
{
	{dialogID = 200600401, audioEvtName = "", duration = 3},
	{dialogID = 200600402, audioEvtName = "", duration = 3},
}

QuestClientData.FlowerNotEnough =
{
	{dialogID = 200600201, audioEvtName = "", duration = 3},
}

QuestClientData.FlowerEnough2 =
{
	{dialogID = 200600301, audioEvtName = "", duration = 3},
}




return QuestClientData