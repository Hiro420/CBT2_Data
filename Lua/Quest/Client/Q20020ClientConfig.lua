local QuestClientData = {}

QuestClientData.MainID = 20020
QuestClientData.ActorAlias = "20020"
QuestClientData.SubIDs = 
{
	q2002001 = 2002001,
	q2002002 = 2002002,
	q2002003 = 2002003,
}

QuestClientData.CameraData = { pos = { x = 216.2, y = 9.2, z = -200.9 }, rot = { x = 18.7, y = 0, z = 0.0 } }

QuestClientData.Ray = {
	[1] = { posA = { x = 217.38, y = 6.08, z = -195.07}, posB = { x = 218.01, y = 4.42, z = -191.98}},
	[2] = { posA = { x = 217.46, y = 7.70, z = -194.81}, posB = { x = 217.76, y = 7.15, z = -190.95}},
	[3] = { posA = { x = 216.2, y = 5.00, z = -194.45}, posB = { x = 216.2, y = 4.14, z = -193.12}}
}

QuestClientData.Start = false

QuestClientData.Finish = false

QuestClientData.Reminder = 
{
	Start = "解谜开始",
	Finish = "解谜完成",
}

return QuestClientData