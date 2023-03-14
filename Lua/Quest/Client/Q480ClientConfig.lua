local QuestClientData = {}

QuestClientData.MainID = 480
QuestClientData.ActorAlias = "480"
QuestClientData.SubIDs = 
{
	q48005 = 48005,
	q48001 = 48001,
	q48002 = 48002,
	q48003 = 48003,
	q48004 = 48004,
}


QuestClientData.FinishNarrator =
{
	{dialogID = 4850624, audioEvtName = "", duration = 5},
}

QuestClientData.WindData = 
{
	Wind1 = "Wind1",
	Wind2 = "Wind2",
	Wind3 = "Wind3",
	Wind4 = "Wind4",
	Wind5 = "Wind5",
	Wind6 = "Wind6",
	Wind7 = "Wind7",
	Wind8 = "Wind8",

    WindID = 70710005,
    
	Pos1 = sceneData:GetDummyPoint(3,"Q48002Wind101").pos,
	Pos2 = sceneData:GetDummyPoint(3,"Q48002Wind102").pos,
	Pos3 = sceneData:GetDummyPoint(3,"Q48002Wind103").pos,

}

QuestClientData.AmborData = 
{
	Ambor = "Ambor",
	AmborScript = "Actor/Quest/Q301/Ambor301",
	AmborID = 1002,

	bornPos = sceneData:GetDummyPoint(3,"Q48001Ambor").pos,
	bornDir = sceneData:GetDummyPoint(3,"Q48001Ambor").rot,	
	bornPos2 = sceneData:GetDummyPoint(3,"Q48004Ambor").pos,
	bornDir2 = sceneData:GetDummyPoint(3,"Q48004Ambor").rot,	

}

------------------
QuestClientData.TriggerNum = 0
QuestClientData.TotalNum = 6

QuestClientData.FlyMarks = 
{
	sceneData:GetDummyPoint(3,"Q48002Mark1"),
	sceneData:GetDummyPoint(3,"Q48002Mark2"),
	sceneData:GetDummyPoint(3,"Q48002Mark3"),
	sceneData:GetDummyPoint(3,"Q48002Mark4"),
	sceneData:GetDummyPoint(3,"Q48002Mark5"),
	sceneData:GetDummyPoint(3,"Q48002Mark6"),
}

QuestClientData.Flyline1 = 
{	
	sceneData:GetDummyPoint(3,"Q48002Acc101").pos,
	{
		x = sceneData:GetDummyPoint(3,"Q48002Acc101").pos.x + (sceneData:GetDummyPoint(3,"Q48002Acc102").pos.x - sceneData:GetDummyPoint(3,"Q48002Acc101").pos.x)/4,
		y = sceneData:GetDummyPoint(3,"Q48002Acc101").pos.y + (sceneData:GetDummyPoint(3,"Q48002Acc102").pos.y - sceneData:GetDummyPoint(3,"Q48002Acc101").pos.y)/4,
		z = sceneData:GetDummyPoint(3,"Q48002Acc101").pos.z + (sceneData:GetDummyPoint(3,"Q48002Acc102").pos.z - sceneData:GetDummyPoint(3,"Q48002Acc101").pos.z)/4
	},
	{
		x = sceneData:GetDummyPoint(3,"Q48002Acc101").pos.x + (sceneData:GetDummyPoint(3,"Q48002Acc102").pos.x - sceneData:GetDummyPoint(3,"Q48002Acc101").pos.x)/2,
		y = sceneData:GetDummyPoint(3,"Q48002Acc101").pos.y + (sceneData:GetDummyPoint(3,"Q48002Acc102").pos.y - sceneData:GetDummyPoint(3,"Q48002Acc101").pos.y)/2,
		z = sceneData:GetDummyPoint(3,"Q48002Acc101").pos.z + (sceneData:GetDummyPoint(3,"Q48002Acc102").pos.z - sceneData:GetDummyPoint(3,"Q48002Acc101").pos.z)/2
	},
	{
		x = sceneData:GetDummyPoint(3,"Q48002Acc101").pos.x + (sceneData:GetDummyPoint(3,"Q48002Acc102").pos.x - sceneData:GetDummyPoint(3,"Q48002Acc101").pos.x)/4*3,
		y = sceneData:GetDummyPoint(3,"Q48002Acc101").pos.y + (sceneData:GetDummyPoint(3,"Q48002Acc102").pos.y - sceneData:GetDummyPoint(3,"Q48002Acc101").pos.y)/4*3,
		z = sceneData:GetDummyPoint(3,"Q48002Acc101").pos.z + (sceneData:GetDummyPoint(3,"Q48002Acc102").pos.z - sceneData:GetDummyPoint(3,"Q48002Acc101").pos.z)/4*3
	},
	sceneData:GetDummyPoint(3,"Q48002Acc102").pos,
}

QuestClientData.Flyline2 = 
{	
	sceneData:GetDummyPoint(3,"Q48002Acc201").pos,
	{
		x = sceneData:GetDummyPoint(3,"Q48002Acc201").pos.x + (sceneData:GetDummyPoint(3,"Q48002Acc202").pos.x - sceneData:GetDummyPoint(3,"Q48002Acc201").pos.x)/3,
		y = sceneData:GetDummyPoint(3,"Q48002Acc201").pos.y + (sceneData:GetDummyPoint(3,"Q48002Acc202").pos.y - sceneData:GetDummyPoint(3,"Q48002Acc201").pos.y)/3,
		z = sceneData:GetDummyPoint(3,"Q48002Acc201").pos.z + (sceneData:GetDummyPoint(3,"Q48002Acc202").pos.z - sceneData:GetDummyPoint(3,"Q48002Acc201").pos.z)/3
	},
	{
		x = sceneData:GetDummyPoint(3,"Q48002Acc201").pos.x + (sceneData:GetDummyPoint(3,"Q48002Acc202").pos.x - sceneData:GetDummyPoint(3,"Q48002Acc201").pos.x)/3*2,
		y = sceneData:GetDummyPoint(3,"Q48002Acc201").pos.y + (sceneData:GetDummyPoint(3,"Q48002Acc202").pos.y - sceneData:GetDummyPoint(3,"Q48002Acc201").pos.y)/3*2,
		z = sceneData:GetDummyPoint(3,"Q48002Acc201").pos.z + (sceneData:GetDummyPoint(3,"Q48002Acc202").pos.z - sceneData:GetDummyPoint(3,"Q48002Acc201").pos.z)/3*2
	},
	sceneData:GetDummyPoint(3,"Q48002Acc202").pos,
}

QuestClientData.Flyline3 = 
{	
	sceneData:GetDummyPoint(3,"Q48002Acc1301").pos,
	{
		x = sceneData:GetDummyPoint(3,"Q48002Acc1301").pos.x + (sceneData:GetDummyPoint(3,"Q48002Acc1302").pos.x - sceneData:GetDummyPoint(3,"Q48002Acc1301").pos.x)/3,
		y = sceneData:GetDummyPoint(3,"Q48002Acc1301").pos.y + (sceneData:GetDummyPoint(3,"Q48002Acc1302").pos.y - sceneData:GetDummyPoint(3,"Q48002Acc1301").pos.y)/3,
		z = sceneData:GetDummyPoint(3,"Q48002Acc1301").pos.z + (sceneData:GetDummyPoint(3,"Q48002Acc1302").pos.z - sceneData:GetDummyPoint(3,"Q48002Acc1301").pos.z)/3
	},
	{
		x = sceneData:GetDummyPoint(3,"Q48002Acc1301").pos.x + (sceneData:GetDummyPoint(3,"Q48002Acc1302").pos.x - sceneData:GetDummyPoint(3,"Q48002Acc1301").pos.x)/3*2,
		y = sceneData:GetDummyPoint(3,"Q48002Acc1301").pos.y + (sceneData:GetDummyPoint(3,"Q48002Acc1302").pos.y - sceneData:GetDummyPoint(3,"Q48002Acc1301").pos.y)/3*2,
		z = sceneData:GetDummyPoint(3,"Q48002Acc1301").pos.z + (sceneData:GetDummyPoint(3,"Q48002Acc1302").pos.z - sceneData:GetDummyPoint(3,"Q48002Acc1301").pos.z)/3*2
	},
	sceneData:GetDummyPoint(3,"Q48002Acc1302").pos,
}

QuestClientData.Flyline4 = 
{	
	sceneData:GetDummyPoint(3,"Q48002Acc1401").pos,
	{
		x = sceneData:GetDummyPoint(3,"Q48002Acc1401").pos.x + (sceneData:GetDummyPoint(3,"Q48002Acc1402").pos.x - sceneData:GetDummyPoint(3,"Q48002Acc1401").pos.x)/3,
		y = sceneData:GetDummyPoint(3,"Q48002Acc1401").pos.y + (sceneData:GetDummyPoint(3,"Q48002Acc1402").pos.y - sceneData:GetDummyPoint(3,"Q48002Acc1401").pos.y)/3,
		z = sceneData:GetDummyPoint(3,"Q48002Acc1401").pos.z + (sceneData:GetDummyPoint(3,"Q48002Acc1402").pos.z - sceneData:GetDummyPoint(3,"Q48002Acc1401").pos.z)/3
	},
	{
		x = sceneData:GetDummyPoint(3,"Q48002Acc1401").pos.x + (sceneData:GetDummyPoint(3,"Q48002Acc1402").pos.x - sceneData:GetDummyPoint(3,"Q48002Acc1401").pos.x)/3*2,
		y = sceneData:GetDummyPoint(3,"Q48002Acc1401").pos.y + (sceneData:GetDummyPoint(3,"Q48002Acc1402").pos.y - sceneData:GetDummyPoint(3,"Q48002Acc1401").pos.y)/3*2,
		z = sceneData:GetDummyPoint(3,"Q48002Acc1401").pos.z + (sceneData:GetDummyPoint(3,"Q48002Acc1402").pos.z - sceneData:GetDummyPoint(3,"Q48002Acc1401").pos.z)/3*2
	},
	sceneData:GetDummyPoint(3,"Q48002Acc1402").pos,
}

QuestClientData.Flyline5 = 
{	
	sceneData:GetDummyPoint(3,"Q48002Acc1501").pos,
	{
		x = sceneData:GetDummyPoint(3,"Q48002Acc1501").pos.x + (sceneData:GetDummyPoint(3,"Q48002Acc1502").pos.x - sceneData:GetDummyPoint(3,"Q48002Acc1501").pos.x)/3,
		y = sceneData:GetDummyPoint(3,"Q48002Acc1501").pos.y + (sceneData:GetDummyPoint(3,"Q48002Acc1502").pos.y - sceneData:GetDummyPoint(3,"Q48002Acc1501").pos.y)/3,
		z = sceneData:GetDummyPoint(3,"Q48002Acc1501").pos.z + (sceneData:GetDummyPoint(3,"Q48002Acc1502").pos.z - sceneData:GetDummyPoint(3,"Q48002Acc1501").pos.z)/3
	},
	{
		x = sceneData:GetDummyPoint(3,"Q48002Acc1501").pos.x + (sceneData:GetDummyPoint(3,"Q48002Acc1502").pos.x - sceneData:GetDummyPoint(3,"Q48002Acc1501").pos.x)/3*2,
		y = sceneData:GetDummyPoint(3,"Q48002Acc1501").pos.y + (sceneData:GetDummyPoint(3,"Q48002Acc1502").pos.y - sceneData:GetDummyPoint(3,"Q48002Acc1501").pos.y)/3*2,
		z = sceneData:GetDummyPoint(3,"Q48002Acc1501").pos.z + (sceneData:GetDummyPoint(3,"Q48002Acc1502").pos.z - sceneData:GetDummyPoint(3,"Q48002Acc1501").pos.z)/3*2
	},
	sceneData:GetDummyPoint(3,"Q48002Acc1502").pos,
}

QuestClientData.Flyline6 = 
{	
	sceneData:GetDummyPoint(3,"Q48002Acc1502").pos,
	{
		x = sceneData:GetDummyPoint(3,"Q48002Acc1502").pos.x + (sceneData:GetDummyPoint(3,"Q48002Acc1601").pos.x - sceneData:GetDummyPoint(3,"Q48002Acc1502").pos.x)/2,
		y = sceneData:GetDummyPoint(3,"Q48002Acc1502").pos.y + (sceneData:GetDummyPoint(3,"Q48002Acc1601").pos.y - sceneData:GetDummyPoint(3,"Q48002Acc1502").pos.y)/2,
		z = sceneData:GetDummyPoint(3,"Q48002Acc1502").pos.z + (sceneData:GetDummyPoint(3,"Q48002Acc1601").pos.z - sceneData:GetDummyPoint(3,"Q48002Acc1502").pos.z)/2
	},
	sceneData:GetDummyPoint(3,"Q48002Acc1601").pos,
}

QuestClientData.Flyline7 = 
{	
	sceneData:GetDummyPoint(3,"Q48002Acc1601").pos,
	{
		x = sceneData:GetDummyPoint(3,"Q48002Acc1601").pos.x + (sceneData:GetDummyPoint(3,"Q48002Acc1602").pos.x - sceneData:GetDummyPoint(3,"Q48002Acc1601").pos.x)/3,
		y = sceneData:GetDummyPoint(3,"Q48002Acc1601").pos.y + (sceneData:GetDummyPoint(3,"Q48002Acc1602").pos.y - sceneData:GetDummyPoint(3,"Q48002Acc1601").pos.y)/3,
		z = sceneData:GetDummyPoint(3,"Q48002Acc1601").pos.z + (sceneData:GetDummyPoint(3,"Q48002Acc1602").pos.z - sceneData:GetDummyPoint(3,"Q48002Acc1601").pos.z)/3
	},
	{
		x = sceneData:GetDummyPoint(3,"Q48002Acc1601").pos.x + (sceneData:GetDummyPoint(3,"Q48002Acc1602").pos.x - sceneData:GetDummyPoint(3,"Q48002Acc1601").pos.x)/3*2,
		y = sceneData:GetDummyPoint(3,"Q48002Acc1601").pos.y + (sceneData:GetDummyPoint(3,"Q48002Acc1602").pos.y - sceneData:GetDummyPoint(3,"Q48002Acc1601").pos.y)/3*2,
		z = sceneData:GetDummyPoint(3,"Q48002Acc1601").pos.z + (sceneData:GetDummyPoint(3,"Q48002Acc1602").pos.z - sceneData:GetDummyPoint(3,"Q48002Acc1601").pos.z)/3*2
	},
	sceneData:GetDummyPoint(3,"Q48002Acc1602").pos,
}

QuestClientData.Flyline8 = 
{	
	sceneData:GetDummyPoint(3,"Q48002Acc1603").pos,
	sceneData:GetDummyPoint(3,"Q48002Acc1604").pos,
}

return QuestClientData