local QuestClientData = {}

QuestClientData.MainID = 20030
QuestClientData.ActorAlias = "20030"
QuestClientData.SubIDs = 
{
    q2003000 = 200300,
    q2003001 = 2003001, 
    q2003002 = 2003002, 
    q2003003 = 2003003, 
}

QuestClientData.NarratorData = {
    Story1 = {
        {dialogID = 200300301, duration = 3},
        {dialogID = 200300302, duration = 3},
    }
}

QuestClientData.PaimonData = 
{
	Paimon = "Paimon",
	PaimonScript = "Actor/Quest/Q352/Paimon",
	PaimonID = 1005,		
}


return QuestClientData