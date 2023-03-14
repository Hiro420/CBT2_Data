----------------------
-- 这是Lua端DummyActorProxy类，用于不用nil判断

-- @classmod DummyActorProxy

local DummyActorProxy = {}



-- Cache Method Start

function DummyActorProxy:DoFreeStyle(freeStyleType, freeStyleForceInterrupt)
	actorUtils.DoFreeStyle(self.alias, freeStyleType, freeStyleForceInterrupt)
end

function DummyActorProxy:LookAt(pos)
	actorUtils.DoLookAt(self.alias, pos)
end

function DummyActorProxy:SitOnChair(freeStyleType)
	actorUtils.DoSitOnChair(self.alias, freeStyleType)
end

function DummyActorProxy:CallOnStart(func)
	actorUtils.DoStartCall(self.alias, func)
end

function DummyActorProxy:AddGeneralMark(iconName)
	actorUtils.DoAddGeneralMark(self.alias, iconName)
end
function DummyActorProxy:ClearGeneralMark()
	actorUtils.DoClearGeneralMark(self.alias)
end

-- Cache Method End



-- Dummy Method Start
function DummyActorProxy:GetByNpcRewindData()
	return 0
end
function DummyActorProxy:GetByGadgetRewindData()
	return 0
end

DummyActorProxy.ActorDic = 0
DummyActorProxy.Alias2EntityIDDic = 0
DummyActorProxy.dummyActor = 0
DummyActorProxy.tempDefaultAlias = 0
DummyActorProxy.OnTest1 = 0
DummyActorProxy.OnTest2 = 0
DummyActorProxy.OnTest3 = 0
DummyActorProxy.InitGlobal = 0
DummyActorProxy.InitSubGlobal = 0
DummyActorProxy.RegisteSubGlobal = 0
DummyActorProxy.UnregisteSubGlobal = 0
DummyActorProxy.CreateActor = 0
DummyActorProxy.CreateActorWithPos = 0
DummyActorProxy.CreateActorWithData = 0
DummyActorProxy.CreateQuestActor = 0
DummyActorProxy.GetActor = 0
DummyActorProxy.DestroyEntityActor = 0
DummyActorProxy.GetActorInternal = 0
DummyActorProxy.ClearActor = 0
DummyActorProxy.DestroyActor = 0
DummyActorProxy.DestroyActorMeta = 0
DummyActorProxy.Destroy = 0
DummyActorProxy.DestroySoft = 0
DummyActorProxy.StartActor = 0
DummyActorProxy.SetEntityHandler = 0
DummyActorProxy.GetEntityHandler = 0
DummyActorProxy.DestroyEntityHandler = 0

function DummyActorProxy:SwitchMode()
	return 0
end

function DummyActorProxy:OnPreInit()
	return 0
end
function DummyActorProxy:OnPostInit()
	return 0
end
function DummyActorProxy:OnPostDataPrepare()
	return 0
end
function DummyActorProxy:OnInit()
	return 0
end
function DummyActorProxy:Register()
	return 0
end
function DummyActorProxy:Start()
	return 0
end
function DummyActorProxy:OnDestroy()
	return 0
end
function DummyActorProxy:Destroy()
	return 0
end
function DummyActorProxy:ClearInfo()
	return 0
end
function DummyActorProxy:ClearCoroutine()
	return 0
end
function DummyActorProxy:IsValid()
	return 0
end
function DummyActorProxy:RegisterActorEvent()
	return 0
end
function DummyActorProxy:UnregisterActorEvent()
	return 0
end
function DummyActorProxy:NotifyTo()
	return 0
end
function DummyActorProxy:CreateTask()
	return 0
end
function DummyActorProxy:ClearTask()
	return 0
end
function DummyActorProxy:ClearTaskQueue()
	return 0
end
function DummyActorProxy:ClearRunningTask()
	return 0
end
function DummyActorProxy:ClearAllTask()
	return 0
end
function DummyActorProxy:ClearFollowTask()
	return 0
end
function DummyActorProxy:RegisterTaskTagCB()
	return 0
end
function DummyActorProxy:UnregisterTaskTagCB()
	return 0
end
function DummyActorProxy:PauseByTag()
	return 0
end
function DummyActorProxy:ResumeByTag()
	return 0
end
function DummyActorProxy:DelayResumeByTag()
	return 0
end
function DummyActorProxy:HasTaskResumed()
	return 0
end
function DummyActorProxy:HasTagTask()
	return 0
end
function DummyActorProxy:ClearActor()
	return 0
end
function DummyActorProxy:DelayInTask()
	return 0
end
function DummyActorProxy:CallDelay()
	return 0
end
function DummyActorProxy:UnCallFunc()
	return 0
end
function DummyActorProxy:Stop()
	return 0
end
function DummyActorProxy:SpawnMonsterImpl()
	return 0
end
function DummyActorProxy:SpawnMonster()
	return 0
end
function DummyActorProxy:SpawnMonsterWithPos()
	return 0
end
function DummyActorProxy:SpawnMonsterById()
	return 0
end
function DummyActorProxy:SpawnMonsterByIdWithPos()
	return 0
end
function DummyActorProxy:SpawnLocalMonster()
	return 0
end
function DummyActorProxy:SpawnItemImpl()
	return 0
end
function DummyActorProxy:SpawnItem()
	return 0
end
function DummyActorProxy:SpawnItemWithPos()
	return 0
end
function DummyActorProxy:SpawnItemById()
	return 0
end
function DummyActorProxy:SpawnItemByIdWithPos()
	return 0
end
function DummyActorProxy:SpawnLocalItem()
	return 0
end
function DummyActorProxy:SpawnGadgetImpl()
	return 0
end
function DummyActorProxy:SpawnGadget()
	return 0
end
function DummyActorProxy:SpawnGadgetWithPos()
	return 0
end
function DummyActorProxy:SpawnGadgetById()
	return 0
end
function DummyActorProxy:SpawnGadgetByIdWithPos()
	return 0
end
function DummyActorProxy:SpawnLocalGadget()
	return 0
end
function DummyActorProxy:SpawnChestImpl()
	return 0
end
function DummyActorProxy:SpawnChest()
	return 0
end
function DummyActorProxy:SpawnChestWithPos()
	return 0
end
function DummyActorProxy:SpawnChestById()
	return 0
end
function DummyActorProxy:SpawnChestByIdWithPos()
	return 0
end
function DummyActorProxy:UnSpawn()
	return 0
end
function DummyActorProxy:PlayCutscene()
	return 0
end
function DummyActorProxy:RegisterSelfDayTime()
	return 0
end
function DummyActorProxy:UnregisterSelfDayTime()
	return 0
end
function DummyActorProxy:RegisterSelfNightTime()
	return 0
end
function DummyActorProxy:UnregisterSelfNightTime()
	return 0
end
function DummyActorProxy:RegisterSelfWeatherChange()
	return 0
end
function DummyActorProxy:UnregisterSelfWeatherChange()
	return 0
end
function DummyActorProxy:RegisterSelfHour()
	return 0
end
function DummyActorProxy:UnregisterSelfHour()
	return 0
end
function DummyActorProxy:GetLevelTime()
	return 0
end
function DummyActorProxy:CountDownUIStart()
	return 0
end
function DummyActorProxy:CountDownUITerminate()
	return 0
end
function DummyActorProxy:CountNumUIStart()
	return 0
end
function DummyActorProxy:CountNumUIUpdate()
	return 0
end
function DummyActorProxy:CountNumUITerminate()
	return 0
end
function DummyActorProxy:ShowQuestQuitUI()
	return 0
end
function DummyActorProxy:HideQuestQuitUI()
	return 0
end
function DummyActorProxy:ShowTeamPage()
	return 0
end
function DummyActorProxy:ShowBlackScreen()
	return 0
end
function DummyActorProxy:ShowTutorialDialog()
	return 0
end
function DummyActorProxy:ShowReadingDialog()
	return 0
end
function DummyActorProxy:TryShowMoveToggle()
	return 0
end
function DummyActorProxy:PlayAudio()
	return 0
end
function DummyActorProxy:PlayAudioState()
	return 0
end
function DummyActorProxy:PlayFreeCutscene()
	return 0
end
function DummyActorProxy:StopFreeCutscene()
	return 0
end
function DummyActorProxy:TryPlayVideo()
	return 0
end
function DummyActorProxy:PlayEffect()
	return 0
end
function DummyActorProxy:PlayEmojiBubble()
	return 0
end
function DummyActorProxy:EnterSceneLookCamera()
	return 0
end
function DummyActorProxy:EnterSceneLookCameraByAlias()
	return 0
end
function DummyActorProxy:ExitSceneLookCamera()
	return 0
end
function DummyActorProxy:RequestInteraction()
	return 0
end
function DummyActorProxy:ActionPreSafeCall()
	return 0
end
function DummyActorProxy:ActionSafeCall()
	return 0
end
function DummyActorProxy:GetSubQuestState()
	return 0
end
function DummyActorProxy:TransmitPlayer()
	return 0
end
function DummyActorProxy:TransmitPlayerWithText()
	return 0
end
function DummyActorProxy:ShowNameDialog()
	return 0
end
function DummyActorProxy:SayNarrator()
	return 0
end
function DummyActorProxy:StopNarrator()
	return 0
end
function DummyActorProxy:SayReminder()
	return 0
end
function DummyActorProxy:GetShowReminder()
	return 0
end
function DummyActorProxy:GetReminderDelay()
	return 0
end
function DummyActorProxy:StopReminder()
	return 0
end
function DummyActorProxy:SayWarningNarrator()
	return 0
end
function DummyActorProxy:StopWarningNarrator()
	return 0
end
function DummyActorProxy:TriggerLevelAbility()
	return 0
end
function DummyActorProxy:TriggerAbility()
	return 0
end
function DummyActorProxy:PerformNarrator()
	return 0
end
function DummyActorProxy:StopPerformNarrator()
	return 0
end
function DummyActorProxy:StartNarrator()
	return 0
end
function DummyActorProxy:ResumeNarrator()
	return 0
end
function DummyActorProxy:PauseNarrator()
	return 0
end
function DummyActorProxy:FinishNarrator()
	return 0
end
function DummyActorProxy:CheckNarratorOnly()
	return 0
end
function DummyActorProxy:ShowMessage()
	return 0
end
function DummyActorProxy:ShowTextMapWithParam()
	return 0
end
function DummyActorProxy:GetCameraPos()
	return 0
end
function DummyActorProxy:GetCameraEuler()
	return 0
end
function DummyActorProxy:CheckNarrator()
	return 0
end
function DummyActorProxy:StartWarningNarrator()
	return 0
end
function DummyActorProxy:PerformWarningNarrator()
	return 0
end
function DummyActorProxy:IsSayingWarningNarrator()
	return 0
end
function DummyActorProxy:CheckStopWarningNarrator()
	return 0
end
function DummyActorProxy:CheckWarningNarrator()
	return 0
end
function DummyActorProxy:ResumeWarningNarrator()
	return 0
end
function DummyActorProxy:PauseWarningNarrator()
	return 0
end
function DummyActorProxy:DestroyWarningNarrator()
	return 0
end
function DummyActorProxy:ClearNarratorTask()
	return 0
end
function DummyActorProxy:NarratorTask()
	return 0
end
function DummyActorProxy:NarratorTaskByData()
	return 0
end
function DummyActorProxy:NarratorOnlyTask()
	return 0
end
function DummyActorProxy:NarratorOnlyTaskByData()
	return 0
end
function DummyActorProxy:WarningNarratorTask()
	return 0
end
function DummyActorProxy:SetAvatarPos()
	return 0
end
function DummyActorProxy:SetOpenState()
	return 0
end
function DummyActorProxy:EnablePlayerInput()
	return 0
end
function DummyActorProxy:ShowPage()
	return 0
end
function DummyActorProxy:InvokePageFunction()
	return 0
end
function DummyActorProxy:BackPage()
	return 0
end
function DummyActorProxy:InvokeOnInteraction()
	return 0
end
function DummyActorProxy:InvokeOnAbility()
	return 0
end
function DummyActorProxy:SayDialogAudio()
	return 0
end
function DummyActorProxy:EnterSneakMode()
	return 0
end
function DummyActorProxy:ExitSneakMode()
	return 0
end
function DummyActorProxy:EnterBomberMode()
	return 0
end
function DummyActorProxy:ExitBomberMode()
	return 0
end
function DummyActorProxy:EnterFindCatMode()
	return 0
end
function DummyActorProxy:ExitFindCatMode()
	return 0
end
function DummyActorProxy:TriggerNpcSpeechBubble()
	return 0
end
function DummyActorProxy:ClearNpcSpeechBubble()
	return 0
end
function DummyActorProxy:CallOnAvatarSit()
	return 0
end
function DummyActorProxy:CallOnAvatarStand()
	return 0
end
function DummyActorProxy:CallOnElemViewOpen()
	return 0
end
function DummyActorProxy:CallOnElemViewClose()
	return 0
end
function DummyActorProxy:CallOnDoorOpen()
	return 0
end
function DummyActorProxy:UncallOnDoorOpen()
	return 0
end
function DummyActorProxy:SetFlyStateParams()
	return 0
end
function DummyActorProxy:ResetFlyStateParams()
	return 0
end
function DummyActorProxy:StopRealReminder()
	return 0
end
function DummyActorProxy:StopPlayerCombat()
	return 0
end
function DummyActorProxy:StopOpenPage()
	return 0
end
function DummyActorProxy:PlayerCombatOnPause()
	return 0
end
function DummyActorProxy:PlayerCombatOnResume()
	return 0
end
function DummyActorProxy:OpenPageOnResume()
	return 0
end
function DummyActorProxy:EmptyCB()
	return 0
end
function DummyActorProxy:RegisterTaskCB()
	return 0
end
function DummyActorProxy:UnregisterTaskCB()
	return 0
end
DummyActorProxy.alias = 0
DummyActorProxy.metaPath = 0
DummyActorProxy.uActor = 0
DummyActorProxy.defaultAlias = 0
DummyActorProxy.bornSceneID = 0
DummyActorProxy.coroutineDic = 0
DummyActorProxy.dataIndex = 0
DummyActorProxy.isAutoStart = 0
DummyActorProxy.actorData = 0
DummyActorProxy.actorType = 0
DummyActorProxy.dontDestroyOnClear = 0
DummyActorProxy.CurrDialogList = 0
DummyActorProxy.CurrDialogIndex = 0
DummyActorProxy.CurrDuration = 0
DummyActorProxy.CurrDurationCnt = 0
DummyActorProxy.NarratorPauseLen = 0
DummyActorProxy.NarratorResumeLen = 0
DummyActorProxy.NarratorState = 0
DummyActorProxy.NarratorOnFinish = 0
DummyActorProxy.ReminderID = 0
DummyActorProxy.WarningNarratorTable = 0
DummyActorProxy.TaskOnResumeDelay = 0
DummyActorProxy.TaskOnPauseReminder = 0
DummyActorProxy.TaskOnResumeReminder = 0



function DummyActorProxy:CreateWindLocal()
	return 0
end
function DummyActorProxy:DestroyWindLocal()
	return 0
end
function DummyActorProxy:ShowEffect()
	return 0
end

function DummyActorProxy:CreateUActor()
	return 0
end



function DummyActorProxy:PreGetAlias()
	return 0
end
function DummyActorProxy:GetPropValue()
	return 0
end
function DummyActorProxy:WalkTo()
	return 0
end
function DummyActorProxy:WalkToRoute()
	return 0
end
function DummyActorProxy:WalkToRouteByData()
	return 0
end
function DummyActorProxy:RunTo()
	return 0
end
function DummyActorProxy:RunToRoute()
	return 0
end
function DummyActorProxy:RunToRouteByData()
	return 0
end
function DummyActorProxy:Standby()
	return 0
end
function DummyActorProxy:StandbyNoResume()
	return 0
end
function DummyActorProxy:ResumeMove()
	return 0
end
function DummyActorProxy:SyncPos()
	return 0
end
function DummyActorProxy:DoingFreeStyle()
	return 0
end
function DummyActorProxy:DoFreeStateTrigger()
	return 0
end
function DummyActorProxy:InvokeOnResetFreeStyle()
	return 0
end
function DummyActorProxy:InvokeOnFinalTalkFinish()
	return 0
end
function DummyActorProxy:TurnTo()
	return 0
end
function DummyActorProxy:GetPos()
	return CS.UnityEngine.Vector3.zero
end
function DummyActorProxy:GetEuler()
	return CS.UnityEngine.Vector3.zero
end
function DummyActorProxy:GetForward()
	return CS.UnityEngine.Vector3.zero
end
function DummyActorProxy:IsInIdle()
	return false
end
function DummyActorProxy:IsTalking()
	return 0
end
function DummyActorProxy:SetPosAndTurnTo()
	return 0
end
function DummyActorProxy:SetPos()
	return 0
end
function DummyActorProxy:IsHided()
	return 0
end
function DummyActorProxy:Hide()
	return 0
end
function DummyActorProxy:HideSelf()
	return 0
end
function DummyActorProxy:ShowSelf()
	return 0
end
function DummyActorProxy:CheckShow()
	return 0
end
function DummyActorProxy:StandFromChair()
	return 0
end
function DummyActorProxy:EnableAI()
	return 0
end
function DummyActorProxy:EnableInteraction()
	return 0
end
function DummyActorProxy:StartWalkTo()
	return 0
end
function DummyActorProxy:StartWalkToRoute()
	return 0
end
function DummyActorProxy:StartWalkToRouteByData()
	return 0
end
function DummyActorProxy:StartRunTo()
	return 0
end
function DummyActorProxy:StartRunToRoute()
	return 0
end
function DummyActorProxy:StartRunToRouteByData()
	return 0
end
function DummyActorProxy:StartFollowRunTo()
	return 0
end
function DummyActorProxy:StartFollowRunToRoute()
	return 0
end
function DummyActorProxy:StartFollowRunToRouteByData()
	return 0
end
function DummyActorProxy:CheckArrived()
	return 0
end
function DummyActorProxy:FinishFollow()
	return 0
end
function DummyActorProxy:CheckBeFollow()
	return 0
end
function DummyActorProxy:DisappearFollow()
	return 0
end
function DummyActorProxy:CheckBeFollowRoute()
	return 0
end
function DummyActorProxy:DisappearFollowRoute()
	return 0
end
function DummyActorProxy:CheckBeLock()
	return 0
end
function DummyActorProxy:WalkToTask()
	return 0
end
function DummyActorProxy:WalkToRouteTask()
	return 0
end
function DummyActorProxy:WalkToRouteByDataTask()
	return 0
end
function DummyActorProxy:RunToTask()
	return 0
end
function DummyActorProxy:RunToRouteTask()
	return 0
end
function DummyActorProxy:RunToRouteByDataTask()
	return 0
end
function DummyActorProxy:BeFollowTask()
	return 0
end
function DummyActorProxy:BeFollowTaskByData()
	return 0
end
function DummyActorProxy:BeFollowTaskByRoutePoints()
	return 0
end
function DummyActorProxy:BeFollowTaskByRouteConfig()
	return 0
end
function DummyActorProxy:ClearBeLockTask()
	return 0
end
function DummyActorProxy:BeLockTask()
	return 0
end
function DummyActorProxy:BeLockTaskByData()
	return 0
end
function DummyActorProxy:StartFreeStyle()
	return 0
end
function DummyActorProxy:ResumeFreeStyle()
	return 0
end
function DummyActorProxy:DoFreeStyleTask()
	return 0
end
function DummyActorProxy:SwitchAirMode()
	return 0
end
function DummyActorProxy:SpawnAttach()
	return 0
end
function DummyActorProxy:UnSpawnAttach()
	return 0
end
function DummyActorProxy:PerformDither()
	return 0
end
function DummyActorProxy:SetVisible()
	return 0
end
function DummyActorProxy:DestroyWithDither()
	return 0
end
function DummyActorProxy:Disappear()
	return 0
end
function DummyActorProxy:DestroyWithDisappear()
	return 0
end
function DummyActorProxy:SetActive()
	return 0
end
function DummyActorProxy:ClearThreatTask()
	return 0
end
function DummyActorProxy:OnThreatInfo()
	return 0
end
function DummyActorProxy:ThreatTask()
	return 0
end
function DummyActorProxy:SteerToTask()
	return 0
end
function DummyActorProxy:SetLocalEntityDist()
	return 0
end
DummyActorProxy.configID = 0
DummyActorProxy.bornPos = 0
DummyActorProxy.bornDir = 0
DummyActorProxy.isNetwork = 0
DummyActorProxy.targetPos = 0
DummyActorProxy.routePoints = 0
DummyActorProxy.routeConfig = 0
DummyActorProxy.BeFollowLen = 0
DummyActorProxy.BeFollowFailedLen = 0
DummyActorProxy.BeFollowState = 0
DummyActorProxy.BeFollowFailed = 0
DummyActorProxy.OnTransFinishCallback = 0
DummyActorProxy.OnTransPreCallback = 0
DummyActorProxy.TransOffset = 0
DummyActorProxy.IsBeLocked = 0
DummyActorProxy.BeLockTransLen = 0
DummyActorProxy.OnFinishCB = 0
DummyActorProxy.OnMovePauseCB = 0
DummyActorProxy.OnMoveResumeCB = 0
DummyActorProxy.OnMoveFailedCB = 0
DummyActorProxy.freeStyleType = 0
DummyActorProxy.freeStyleForceInterrupt = 0

function DummyActorProxy:OnPostComponentPrepare()
	return 0
end

function DummyActorProxy:TriggerIn()
	return 0
end
function DummyActorProxy:TriggerOut()
	return 0
end


function DummyActorProxy:CreateGadgetUActor()
	return 0
end
function DummyActorProxy:OnUActorPostInit()
	return 0
end
function DummyActorProxy:DefaultTriggerIn()
	return 0
end
function DummyActorProxy:DefaultTriggerOut()
	return 0
end
function DummyActorProxy:DefaultTriggerDelayOut()
	return 0
end
function DummyActorProxy:CheckDelayTimeOut()
	return 0
end
function DummyActorProxy:AddComponentTrigger()
	return 0
end
function DummyActorProxy:AddTimeDelayOutTrigger()
	return 0
end
function DummyActorProxy:AddCommonTrigger()
	return 0
end
function DummyActorProxy:DestroySelf()
	return 0
end
DummyActorProxy.isTriggerIn = 0
DummyActorProxy.checkTimeGap = 0
DummyActorProxy.timeCnt = 0
DummyActorProxy.targetTime = 0
DummyActorProxy.triggerInHandler = 0
DummyActorProxy.triggerOutHandler = 0
DummyActorProxy.triggerTickHandler = 0
DummyActorProxy.triggerDelayOutHandler = 0

DummyActorProxy.PATH_QUEST_AREA = 0
DummyActorProxy.PostProcessCreateActor = 0
DummyActorProxy.CreateQuestArea = 0




function DummyActorProxy:TriggerTick()
	return 0
end
DummyActorProxy.shapeData = 0


































function DummyActorProxy:TriggerIn1()
	return 0
end
function DummyActorProxy:TriggerOut1()
	return 0
end





function DummyActorProxy:TriggecrOut()
	return 0
end












































function DummyActorProxy:questTriggerInHandler()
	return 0
end
function DummyActorProxy:questTriggerOutHandler()
	return 0
end
function DummyActorProxy:questTriggerDelayOutHandler()
	return 0
end
DummyActorProxy.areaRadius = 0
DummyActorProxy.areaDistType = 0
DummyActorProxy.avatarOffset = 0
DummyActorProxy.questAreaInHandler = 0
DummyActorProxy.questAreaOutHandler = 0
DummyActorProxy.questAreaDelayOutHandler = 0











function DummyActorProxy:RegisterDayCallback()
	return 0
end
function DummyActorProxy:UnregisterDayCallback()
	return 0
end
function DummyActorProxy:RegisterNightCallback()
	return 0
end
function DummyActorProxy:UnregisterNightCallback()
	return 0
end
function DummyActorProxy:RegisterHourCallback()
	return 0
end
function DummyActorProxy:UnregisterHourCallback()
	return 0
end
function DummyActorProxy:RegisterWeatherCallback()
	return 0
end
function DummyActorProxy:UnregisterWeatherCallback()
	return 0
end
function DummyActorProxy:ChangeDefaultWeather()
	return 0
end
function DummyActorProxy:ChangeWeather()
	return 0
end
function DummyActorProxy:LeaveWeather()
	return 0
end
function DummyActorProxy:GetIsNight()
	return 0
end
function DummyActorProxy:ChangeDay24Time()
	return 0
end
function DummyActorProxy:StartGuide()
	return 0
end
function DummyActorProxy:EndGuide()
	return 0
end
function DummyActorProxy:StopLocalAvatar()
	return 0
end
function DummyActorProxy:LoadSectorByPos()
	return 0
end
function DummyActorProxy:SetAvatarEuler()
	return 0
end
function DummyActorProxy:ChangeToHero()
	return 0
end
function DummyActorProxy:IsHeroMale()
	return 0
end
function DummyActorProxy:FinishAllNarrator()
	return 0
end
function DummyActorProxy:PlayerBackButtonOn()
	return 0
end
function DummyActorProxy:PlayerBackButtonOff()
	return 0
end
function DummyActorProxy:PlayerEnterDungeon()
	return 0
end
function DummyActorProxy:DungeonFogEffects()
	return 0
end
DummyActorProxy.isDay = 0
DummyActorProxy.isNight = 0
DummyActorProxy.currWeather = 0
DummyActorProxy.BtnTransmitData = 0

function DummyActorProxy:OnInterStart()
	return 0
end
function DummyActorProxy:OnInterFinish()
	return 0
end
function DummyActorProxy:Unregister()
	return 0
end










function DummyActorProxy:CallStartDay()
	return 0
end
function DummyActorProxy:CallStartNight()
	return 0
end
function DummyActorProxy:RegisterDailyHandler()
	return 0
end
function DummyActorProxy:UnregisterDailyHandler()
	return 0
end
function DummyActorProxy:DoAppear()
	return 0
end
function DummyActorProxy:DoDisappear()
	return 0
end
function DummyActorProxy:RegisterMode()
	return 0
end
function DummyActorProxy:StartDaily()
	return 0
end
function DummyActorProxy:ResetDaily()
	return 0
end
DummyActorProxy.OnCollisionEnter = 0
DummyActorProxy.OnEvent = 0
DummyActorProxy.StartDay = 0
DummyActorProxy.StartNight = 0
DummyActorProxy.HourBehave = 0
DummyActorProxy.modeDic = 0

function DummyActorProxy:RecoverFromFreeStyle()
	return 0
end
function DummyActorProxy:RecoverFromCollisionEnter()
	return 0
end
function DummyActorProxy:RecoverFreestyle()
	return 0
end
function DummyActorProxy:Recover()
	return 0
end
function DummyActorProxy:OnEvent()
	return 0
end
function DummyActorProxy:OnCollisionEnter()
	return 0
end
DummyActorProxy.OnAction = 0

function DummyActorProxy:PrepareNpcDataAndStart()
	return 0
end
function DummyActorProxy:OnPrepareNpcData()
	return 0
end
function DummyActorProxy:DataInit()
	return 0
end
function DummyActorProxy:InitBubble()
	return 0
end
function DummyActorProxy:ModeHideSelf()
	return 0
end
function DummyActorProxy:RecoverDaily()
	return 0
end
function DummyActorProxy:ModeBanDaily()
	return 0
end
function DummyActorProxy:StartBubble()
	return 0
end
function DummyActorProxy:ShowTalk()
	return 0
end
function DummyActorProxy:Talk()
	return 0
end
function DummyActorProxy:TalkTime()
	return 0
end
function DummyActorProxy:CloseTalk()
	return 0
end
function DummyActorProxy:SendMessage()
	return 0
end
function DummyActorProxy:EndTalk()
	return 0
end
function DummyActorProxy:ReceiveTalk()
	return 0
end
function DummyActorProxy:ShowBubble()
	return 0
end
function DummyActorProxy:BubbleTimer()
	return 0
end
function DummyActorProxy:CloseBubble()
	return 0
end
function DummyActorProxy:BubbleGap()
	return 0
end
DummyActorProxy.BubbleData = 0
DummyActorProxy.ConfigData = 0
DummyActorProxy.TalkInterval = 0
DummyActorProxy.Pattern = 0
DummyActorProxy.TalkMode = 0
DummyActorProxy.BubbleTime = 0
DummyActorProxy.BubbleIntervalMin = 0
DummyActorProxy.BubbleIntervalMax = 0
DummyActorProxy.BubblePath = 0
DummyActorProxy.ConfigPath = 0


function DummyActorProxy:Return()
	return 0
end
function DummyActorProxy:Aware()
	return 0
end
function DummyActorProxy:CheckLure()
	return 0
end
function DummyActorProxy:OnLure()
	return 0
end
function DummyActorProxy:Discover()
	return 0
end
function DummyActorProxy:DisAppear()
	return 0
end
function DummyActorProxy:ChangePlace()
	return 0
end
function DummyActorProxy:VectorCal()
	return 0
end
function DummyActorProxy:Normallize()
	return 0
end
DummyActorProxy.PatrolPosNum = 0
DummyActorProxy.PatrolPos = 0
DummyActorProxy.PatrolDir = 0
DummyActorProxy.PatrolNext = 0

function DummyActorProxy:StartPatrol()
	return 0
end
function DummyActorProxy:Behave()
	return 0
end
function DummyActorProxy:ReturnToPatrol()
	return 0
end

function DummyActorProxy:CreateNpcUActor()
	return 0
end
function DummyActorProxy:AddPriorityInter()
	return 0
end
function DummyActorProxy:ClearPriorityInter()
	return 0
end
function DummyActorProxy:CheckNpcTalk()
	return 0
end
function DummyActorProxy:CallOnCollisionEnter()
	return 0
end
function DummyActorProxy:ClearOnCollisionEnter()
	return 0
end
function DummyActorProxy:GetNpcConfigId()
	return 0
end
function DummyActorProxy:GetNpcAlias()
	return 0
end
function DummyActorProxy:EnableHeadCtrl()
	return 0
end
function DummyActorProxy:ClearLookAt()
	return 0
end

function DummyActorProxy:GoHide()
	return 0
end
function DummyActorProxy:PosDataInit()
	return 0
end
function DummyActorProxy:StartDay()
	return 0
end
function DummyActorProxy:UpdateSelfPattern()
	return 0
end
function DummyActorProxy:StartPattern()
	return 0
end
function DummyActorProxy:GetStartPoint()
	return 0
end
function DummyActorProxy:ShowAndStartPattern()
	return 0
end
function DummyActorProxy:StartPatternInternal()
	return 0
end
function DummyActorProxy:GoPatrol()
	return 0
end
function DummyActorProxy:GoPatrolRoute()
	return 0
end
function DummyActorProxy:GoStandby()
	return 0
end
function DummyActorProxy:GoStandbyInternal()
	return 0
end
function DummyActorProxy:GoSitOnChair()
	return 0
end
function DummyActorProxy:SelfPointUpdate()
	return 0
end
function DummyActorProxy:StartNight()
	return 0
end
function DummyActorProxy:GetDistance2D()
	return 0
end
DummyActorProxy.pointID = 0
DummyActorProxy.isDayTime = 0
DummyActorProxy.isActive = 0




function DummyActorProxy:AfterSit()
	return 0
end

function DummyActorProxy:WalkBack()
	return 0
end




function DummyActorProxy:BubbleTime()
	return 0
end
function DummyActorProxy:RandomStand()
	return 0
end
function DummyActorProxy:ChooseRandomPos()
	return 0
end
function DummyActorProxy:NextMove()
	return 0
end





function DummyActorProxy:GetMode()
	return 0
end
DummyActorProxy.ModeScript = 0







function DummyActorProxy:Stun()
	return 0
end







function DummyActorProxy:DoOnCollisionEnter()
	return 0
end
function DummyActorProxy:GoOn()
	return 0
end
function DummyActorProxy:Walk()
	return 0
end


function DummyActorProxy:OnSubStartHandlerBuild()
	return 0
end
function DummyActorProxy:OnSubFinishHandlerBuild()
	return 0
end
function DummyActorProxy:AmborIntoDungeon()
	return 0
end
function DummyActorProxy:ShowTutorial1()
	return 0
end
function DummyActorProxy:ShowTutorial2()
	return 0
end
function DummyActorProxy:ShowTutorial3()
	return 0
end
function DummyActorProxy:OnSubFinish30600()
	return 0
end
function DummyActorProxy:OnSubStart30602()
	return 0
end
function DummyActorProxy:OnSubStart30610()
	return 0
end
function DummyActorProxy:OnSubFinish30604()
	return 0
end
function DummyActorProxy:OnSubFinish30607()
	return 0
end
function DummyActorProxy:OnSubFinish30608()
	return 0
end
function DummyActorProxy:OnSubFinish30609()
	return 0
end
function DummyActorProxy:OnSubFinish30610()
	return 0
end
function DummyActorProxy:OnSubFinish30612()
	return 0
end

function DummyActorProxy:GaiaIntoDungeon()
	return 0
end
function DummyActorProxy:On30713CutsceneFinish()
	return 0
end
function DummyActorProxy:GaiaDestroy()
	return 0
end
function DummyActorProxy:OnSubFinish30700()
	return 0
end
function DummyActorProxy:OnSubStart30702()
	return 0
end
function DummyActorProxy:OnSubStart30704()
	return 0
end
function DummyActorProxy:OnSubStart30710()
	return 0
end
function DummyActorProxy:OnSubStart30713()
	return 0
end
function DummyActorProxy:OnSubStart30715()
	return 0
end
function DummyActorProxy:OnSubFinish30704()
	return 0
end
function DummyActorProxy:OnSubFinish30710()
	return 0
end
function DummyActorProxy:OnSubFinish30707()
	return 0
end
function DummyActorProxy:OnSubFinish30708()
	return 0
end
function DummyActorProxy:OnSubFinish30709()
	return 0
end
function DummyActorProxy:OnSubFinish30712()
	return 0
end
function DummyActorProxy:OnSubFinish30713()
	return 0
end

function DummyActorProxy:LisaIntoDungeon()
	return 0
end
function DummyActorProxy:LisaDestroy()
	return 0
end
function DummyActorProxy:OnSubFinish30800()
	return 0
end
function DummyActorProxy:OnSubStart30802()
	return 0
end
function DummyActorProxy:OnSubStart30810()
	return 0
end
function DummyActorProxy:OnSubStart30814()
	return 0
end
function DummyActorProxy:OnSubFinish30804()
	return 0
end
function DummyActorProxy:OnSubFinish30810()
	return 0
end
function DummyActorProxy:OnSubFinish30807()
	return 0
end
function DummyActorProxy:OnSubFinish30808()
	return 0
end
function DummyActorProxy:OnSubFinish30809()
	return 0
end
function DummyActorProxy:OnSubFinish30812()
	return 0
end
function DummyActorProxy:OnSubFinish30814()
	return 0
end

function DummyActorProxy:PaimonVanish()
	return 0
end
function DummyActorProxy:OnSubStart30902()
	return 0
end
function DummyActorProxy:OnSubStart30904()
	return 0
end
function DummyActorProxy:OnSubFinish30902()
	return 0
end

function DummyActorProxy:OnSubStart31101()
	return 0
end
function DummyActorProxy:OnSubFinish31101()
	return 0
end

function DummyActorProxy:OnSubStart35001()
	return 0
end
function DummyActorProxy:OnSubFinish35001()
	return 0
end

function DummyActorProxy:OnSubStart35104()
	return 0
end
function DummyActorProxy:PlayAwakeCutscene()
	return 0
end
function DummyActorProxy:StartAllTutorial()
	return 0
end
function DummyActorProxy:On35104CutsceneFinish()
	return 0
end
function DummyActorProxy:OnSubFinish35104()
	return 0
end
function DummyActorProxy:OnSubStart35101()
	return 0
end
function DummyActorProxy:OnSubStart35106()
	return 0
end
function DummyActorProxy:OnSubFinish35106()
	return 0
end
function DummyActorProxy:AfterAni()
	return 0
end
function DummyActorProxy:TotorialContent()
	return 0
end
function DummyActorProxy:OnSubFinish35107()
	return 0
end
function DummyActorProxy:OnSubFinish35101()
	return 0
end
function DummyActorProxy:OnSubStart35103()
	return 0
end
function DummyActorProxy:OnSubFinish35103()
	return 0
end
function DummyActorProxy:OnSubStart35102()
	return 0
end
function DummyActorProxy:OnSubFinish35102()
	return 0
end

function DummyActorProxy:PaimonCreat()
	return 0
end
function DummyActorProxy:On35201CutsceneFinish()
	return 0
end
function DummyActorProxy:ShowGoddess()
	return 0
end
function DummyActorProxy:HideGoddess()
	return 0
end
function DummyActorProxy:On35204CutsceneDestroy()
	return 0
end
function DummyActorProxy:On35204CutsceneFinish()
	return 0
end
function DummyActorProxy:Actionsafe()
	return 0
end
function DummyActorProxy:InteractPaimon()
	return 0
end
function DummyActorProxy:OnSubFinish35200()
	return 0
end
function DummyActorProxy:OnSubFinish35201()
	return 0
end
function DummyActorProxy:OnSubStart35202()
	return 0
end
function DummyActorProxy:OnSubStart35203()
	return 0
end
function DummyActorProxy:OnSubFinish35203()
	return 0
end
function DummyActorProxy:OnSubStart35204()
	return 0
end
function DummyActorProxy:On35204CutsceneStart()
	return 0
end
function DummyActorProxy:OnSubFinish35204()
	return 0
end

function DummyActorProxy:ShowTutorial()
	return 0
end
function DummyActorProxy:On35309CutsceneFinish()
	return 0
end
function DummyActorProxy:On35309CutsceneDestroy()
	return 0
end
function DummyActorProxy:On35309CutsceneStart()
	return 0
end
function DummyActorProxy:PlayerName()
	return 0
end
function DummyActorProxy:Cutscene35309()
	return 0
end
function DummyActorProxy:OnSubStart35301()
	return 0
end
function DummyActorProxy:OnSubFinish35301()
	return 0
end
function DummyActorProxy:OnSubStart35302()
	return 0
end
function DummyActorProxy:TargetDes1()
	return 0
end
function DummyActorProxy:Skill()
	return 0
end
function DummyActorProxy:SkillTurorial()
	return 0
end
function DummyActorProxy:OnSubStart35303()
	return 0
end
function DummyActorProxy:TargetDes2()
	return 0
end
function DummyActorProxy:OnSubStart35304()
	return 0
end
function DummyActorProxy:TargetDes3()
	return 0
end
function DummyActorProxy:OnSubFinish35304()
	return 0
end
function DummyActorProxy:OnSubStart35308()
	return 0
end
function DummyActorProxy:OnSubStart35309()
	return 0
end
function DummyActorProxy:OnSubFinish35308()
	return 0
end
function DummyActorProxy:OnSubStart35312()
	return 0
end
function DummyActorProxy:OnSubFinish35312()
	return 0
end
function DummyActorProxy:OnSubFinish35311()
	return 0
end
function DummyActorProxy:OnNarratorFinish()
	return 0
end

function DummyActorProxy:On35401CutsceneFinish()
	return 0
end
function DummyActorProxy:AmborHide()
	return 0
end
function DummyActorProxy:OnEnableInputAndStartGuide()
	return 0
end
function DummyActorProxy:On35403CutsceneFinish()
	return 0
end
function DummyActorProxy:OnSubFinish35401()
	return 0
end
function DummyActorProxy:OnSubStart35402()
	return 0
end
function DummyActorProxy:OnSubStart35404()
	return 0
end
function DummyActorProxy:OnSubFinish35403()
	return 0
end
function DummyActorProxy:OnEnableInput()
	return 0
end
function DummyActorProxy:Story3()
	return 0
end
function DummyActorProxy:OnSubFinish35404()
	return 0
end
function DummyActorProxy:OnSubFinish35405()
	return 0
end

function DummyActorProxy:On35502CutsceneFinish()
	return 0
end
function DummyActorProxy:Tear()
	return 0
end
function DummyActorProxy:Story1()
	return 0
end
function DummyActorProxy:OnSubStart35503()
	return 0
end
function DummyActorProxy:OnSubFinish35503()
	return 0
end
function DummyActorProxy:OnSubStart35504()
	return 0
end
function DummyActorProxy:OnSubFinish35504()
	return 0
end
function DummyActorProxy:OnSubStart35505()
	return 0
end
function DummyActorProxy:OnSubFinish35505()
	return 0
end

function DummyActorProxy:AmborRoute()
	return 0
end
function DummyActorProxy:On35602CutsceneFinish()
	return 0
end
function DummyActorProxy:OnBright()
	return 0
end
function DummyActorProxy:On35601CutsceneFinish()
	return 0
end
function DummyActorProxy:OnSubStart35601()
	return 0
end
function DummyActorProxy:OnSubStart35602()
	return 0
end
function DummyActorProxy:OnSubStart35603()
	return 0
end
function DummyActorProxy:OnSubStart35604()
	return 0
end
function DummyActorProxy:OnSubStart35605()
	return 0
end
function DummyActorProxy:OnSubStart35606()
	return 0
end
function DummyActorProxy:OnSubFinish35601()
	return 0
end
function DummyActorProxy:OnSubFinish35602()
	return 0
end
function DummyActorProxy:OnSubFinish35603()
	return 0
end
function DummyActorProxy:OnSubFinish35604()
	return 0
end
function DummyActorProxy:OnSubFinish35605()
	return 0
end
function DummyActorProxy:OnSubFinish35606()
	return 0
end

function DummyActorProxy:GaiaVanish()
	return 0
end
function DummyActorProxy:Story2()
	return 0
end
function DummyActorProxy:On35701CutsceneFinish()
	return 0
end
function DummyActorProxy:On35722CutsceneFinish()
	return 0
end
function DummyActorProxy:DesStone4()
	return 0
end
function DummyActorProxy:OnSubFinish35709()
	return 0
end
function DummyActorProxy:OnSubStart35720()
	return 0
end
function DummyActorProxy:OnSubStart35721()
	return 0
end
function DummyActorProxy:OnSubStart35722()
	return 0
end
function DummyActorProxy:OnSubStart35723()
	return 0
end
function DummyActorProxy:OnSubStart35724()
	return 0
end
function DummyActorProxy:OnSubStart35725()
	return 0
end
function DummyActorProxy:OnSubFinish35721()
	return 0
end
function DummyActorProxy:OnSubFinish35722()
	return 0
end
function DummyActorProxy:OnSubFinish35723()
	return 0
end
function DummyActorProxy:OnSubFinish35724()
	return 0
end
function DummyActorProxy:OnSubFinish35725()
	return 0
end

function DummyActorProxy:On35801CutsceneFinish()
	return 0
end
function DummyActorProxy:OnSubFinish35801()
	return 0
end
function DummyActorProxy:OnSubFinish35802()
	return 0
end

function DummyActorProxy:OnSubStart35901()
	return 0
end
function DummyActorProxy:OnSubStart35902()
	return 0
end
function DummyActorProxy:OnSubStart35903()
	return 0
end
function DummyActorProxy:OnSubStart35904()
	return 0
end
function DummyActorProxy:OnSubFinish35901()
	return 0
end
function DummyActorProxy:OnSubFinish35902()
	return 0
end
function DummyActorProxy:OnSubFinish35903()
	return 0
end
function DummyActorProxy:OnSubFinish35904()
	return 0
end

function DummyActorProxy:OnSubStart36001()
	return 0
end
function DummyActorProxy:OnSubFinish36001()
	return 0
end
function DummyActorProxy:OnSubFinish36002()
	return 0
end
function DummyActorProxy:OnSubFinish36003()
	return 0
end
function DummyActorProxy:Interact()
	return 0
end
function DummyActorProxy:OnSubStart36004()
	return 0
end
function DummyActorProxy:Delay1()
	return 0
end
function DummyActorProxy:OnSubFinish36004()
	return 0
end
function DummyActorProxy:Finish36004Do()
	return 0
end
function DummyActorProxy:OnSubFinish36005()
	return 0
end
function DummyActorProxy:On36005CutsceneFinish()
	return 0
end

function DummyActorProxy:CameraMove()
	return 0
end
function DummyActorProxy:OnDragonFly()
	return 0
end
function DummyActorProxy:PaimonQ361Narrator()
	return 0
end
function DummyActorProxy:AutoFinishQuest()
	return 0
end
function DummyActorProxy:OnSubStart36100()
	return 0
end
function DummyActorProxy:OnSubFinish36100()
	return 0
end
function DummyActorProxy:OnSubStart36101()
	return 0
end

function DummyActorProxy:ClueaNarrtor()
	return 0
end
function DummyActorProxy:OnMainStart()
	return 0
end
function DummyActorProxy:OnSubStart()
	return 0
end
function DummyActorProxy:OnSubFinished()
	return 0
end
function DummyActorProxy:OnRewind()
	return 0
end
function DummyActorProxy:OnMainFinished()
	return 0
end
function DummyActorProxy:OnMainFailed()
	return 0
end
function DummyActorProxy:OnMainCanceled()
	return 0
end




function DummyActorProxy:On50402CutsceneFinish()
	return 0
end




function DummyActorProxy:OnSubStart46701()
	return 0
end
function DummyActorProxy:OnSubFinish46701()
	return 0
end
function DummyActorProxy:OnSubFinish46702()
	return 0
end
function DummyActorProxy:Finish46702Do()
	return 0
end
function DummyActorProxy:OnSubFinish46703()
	return 0
end
function DummyActorProxy:Finish46703Do()
	return 0
end

function DummyActorProxy:OnSubStart46801()
	return 0
end
function DummyActorProxy:OnSubFinish46801()
	return 0
end

function DummyActorProxy:OnSubFinish46904()
	return 0
end
function DummyActorProxy:OnSubStart46901()
	return 0
end
function DummyActorProxy:OnSubFinish46901()
	return 0
end
function DummyActorProxy:OnSubFinish46902()
	return 0
end
function DummyActorProxy:OnSubFinish46903()
	return 0
end
function DummyActorProxy:Finish46903Do()
	return 0
end

function DummyActorProxy:PaimonAppearTalk()
	return 0
end
function DummyActorProxy:PaimonAppearTalkAfterBuy()
	return 0
end
function DummyActorProxy:OnSubStart47002()
	return 0
end
function DummyActorProxy:OnSubFinish47002()
	return 0
end
function DummyActorProxy:OnSubStart47004()
	return 0
end
function DummyActorProxy:OnSubFinish47004()
	return 0
end

function DummyActorProxy:OnSubFinish49101()
	return 0
end

function DummyActorProxy:OnSubFailedHandlerBuild()
	return 0
end
function DummyActorProxy:StartTransmit()
	return 0
end
function DummyActorProxy:TransmitCallback()
	return 0
end
function DummyActorProxy:StartCount()
	return 0
end
function DummyActorProxy:CountDown()
	return 0
end
function DummyActorProxy:FinishTransmit()
	return 0
end
function DummyActorProxy:FailTransmit()
	return 0
end
function DummyActorProxy:Transmit()
	return 0
end
function DummyActorProxy:OnSubStart2000001()
	return 0
end
function DummyActorProxy:OnSubFinish2000001()
	return 0
end
function DummyActorProxy:OnSubFailed2000001()
	return 0
end
function DummyActorProxy:OnSubStart2000002()
	return 0
end
function DummyActorProxy:OnSubFinish2000002()
	return 0
end
function DummyActorProxy:OnSubFailed2000002()
	return 0
end
function DummyActorProxy:OnSubStart2000004()
	return 0
end
function DummyActorProxy:OnSubFinish2000004()
	return 0
end
function DummyActorProxy:OnSubFailed2000004()
	return 0
end
function DummyActorProxy:OnSubStart2000006()
	return 0
end
function DummyActorProxy:OnSubFinish2000006()
	return 0
end
function DummyActorProxy:OnSubFailed2000006()
	return 0
end
function DummyActorProxy:OnSubStart2000008()
	return 0
end
function DummyActorProxy:OnSubFinish2000008()
	return 0
end
function DummyActorProxy:OnSubFailed2000008()
	return 0
end
function DummyActorProxy:OnSubStart2000009()
	return 0
end
function DummyActorProxy:OnSubStart2000010()
	return 0
end
function DummyActorProxy:OnSubStart2000011()
	return 0
end
function DummyActorProxy:OnSubStart2000012()
	return 0
end

function DummyActorProxy:ShowBubble1()
	return 0
end
function DummyActorProxy:BubbleTime1()
	return 0
end
function DummyActorProxy:CloseBubble1()
	return 0
end
function DummyActorProxy:BubbleGap1()
	return 0
end
function DummyActorProxy:OnSubStart2000101()
	return 0
end
function DummyActorProxy:OnSubFinish2000101()
	return 0
end
function DummyActorProxy:OnSubFailed2000101()
	return 0
end
function DummyActorProxy:OnSubStart2000102()
	return 0
end
function DummyActorProxy:OnSubFinish2000102()
	return 0
end
function DummyActorProxy:OnSubFailed2000102()
	return 0
end
function DummyActorProxy:OnSubStart2000103()
	return 0
end
function DummyActorProxy:OnSubFinish2000103()
	return 0
end
function DummyActorProxy:OnSubFailed2000103()
	return 0
end
function DummyActorProxy:OnSubStart2000104()
	return 0
end
function DummyActorProxy:OnSubFinish2000104()
	return 0
end
function DummyActorProxy:OnSubFailed2000104()
	return 0
end

function DummyActorProxy:OnSubStart2000301()
	return 0
end
function DummyActorProxy:OnSubFinish2000301()
	return 0
end
function DummyActorProxy:OnSubFailed2000301()
	return 0
end
function DummyActorProxy:OnSubStart2000302()
	return 0
end
function DummyActorProxy:OnSubFinish2000302()
	return 0
end
function DummyActorProxy:OnSubFailed2000302()
	return 0
end
function DummyActorProxy:OnSubStart2000304()
	return 0
end
function DummyActorProxy:OnSubFinish2000304()
	return 0
end
function DummyActorProxy:OnSubFailed2000304()
	return 0
end
function DummyActorProxy:OnSubStart2000306()
	return 0
end
function DummyActorProxy:OnSubFinish2000306()
	return 0
end
function DummyActorProxy:OnSubFailed2000306()
	return 0
end
function DummyActorProxy:OnSubStart2000308()
	return 0
end
function DummyActorProxy:OnSubFinish2000308()
	return 0
end
function DummyActorProxy:OnSubFailed2000308()
	return 0
end
function DummyActorProxy:OnSubStart2000309()
	return 0
end
function DummyActorProxy:OnSubStart2000310()
	return 0
end
function DummyActorProxy:OnSubStart2000311()
	return 0
end
function DummyActorProxy:OnSubStart2000312()
	return 0
end

function DummyActorProxy:OnSubStart2000401()
	return 0
end
function DummyActorProxy:OnSubFinish2000401()
	return 0
end
function DummyActorProxy:OnSubFailed2000401()
	return 0
end
function DummyActorProxy:OnSubStart2000402()
	return 0
end
function DummyActorProxy:OnSubFinish2000402()
	return 0
end
function DummyActorProxy:OnSubFailed2000402()
	return 0
end
function DummyActorProxy:OnSubStart2000404()
	return 0
end
function DummyActorProxy:OnSubFinish2000404()
	return 0
end
function DummyActorProxy:OnSubFailed2000404()
	return 0
end
function DummyActorProxy:OnSubStart2000406()
	return 0
end
function DummyActorProxy:OnSubFinish2000406()
	return 0
end
function DummyActorProxy:OnSubFailed2000406()
	return 0
end
function DummyActorProxy:OnSubStart2000408()
	return 0
end
function DummyActorProxy:OnSubFinish2000408()
	return 0
end
function DummyActorProxy:OnSubFailed2000408()
	return 0
end

function DummyActorProxy:OnSubStart2000501()
	return 0
end
function DummyActorProxy:OnSubFinish2000501()
	return 0
end
function DummyActorProxy:OnSubFailed2000501()
	return 0
end
function DummyActorProxy:OnSubStart2000502()
	return 0
end
function DummyActorProxy:OnSubFinish2000502()
	return 0
end
function DummyActorProxy:OnSubFailed2000502()
	return 0
end
function DummyActorProxy:OnSubStart2000503()
	return 0
end
function DummyActorProxy:OnSubFinish2000503()
	return 0
end
function DummyActorProxy:OnSubFailed2000503()
	return 0
end
function DummyActorProxy:OnSubStart2000504()
	return 0
end
function DummyActorProxy:OnSubFinish2000504()
	return 0
end
function DummyActorProxy:OnSubFailed2000504()
	return 0
end

function DummyActorProxy:ShowPaimonDoWay1()
	return 0
end
function DummyActorProxy:ShowPaimonDoWay2()
	return 0
end
function DummyActorProxy:OnSubStart2000601()
	return 0
end
function DummyActorProxy:OnSubFinish2000601()
	return 0
end
function DummyActorProxy:OnSubFailed2000601()
	return 0
end
function DummyActorProxy:OnSubStart2000602()
	return 0
end
function DummyActorProxy:OnSubFinish2000602()
	return 0
end
function DummyActorProxy:OnSubFailed2000602()
	return 0
end
function DummyActorProxy:OnSubStart2000603()
	return 0
end
function DummyActorProxy:OnSubFinish2000603()
	return 0
end
function DummyActorProxy:OnSubFailed2000603()
	return 0
end
function DummyActorProxy:OnSubStart2000604()
	return 0
end
function DummyActorProxy:OnSubFinish2000604()
	return 0
end
function DummyActorProxy:OnSubFailed2000604()
	return 0
end
function DummyActorProxy:OnSubStart2000605()
	return 0
end
function DummyActorProxy:OnSubFinish2000605()
	return 0
end
function DummyActorProxy:OnSubFailed2000605()
	return 0
end
function DummyActorProxy:OnSubStart2000606()
	return 0
end
function DummyActorProxy:OnSubFinish2000606()
	return 0
end
function DummyActorProxy:OnSubFailed2000606()
	return 0
end
function DummyActorProxy:OnSubStart2000607()
	return 0
end
function DummyActorProxy:OnSubFinish2000607()
	return 0
end
function DummyActorProxy:OnSubFailed2000607()
	return 0
end
function DummyActorProxy:OnSubStart2000608()
	return 0
end
function DummyActorProxy:OnSubFinish2000608()
	return 0
end
function DummyActorProxy:OnSubFailed2000608()
	return 0
end
function DummyActorProxy:OnSubStart2000609()
	return 0
end
function DummyActorProxy:OnSubFinish2000609()
	return 0
end
function DummyActorProxy:OnSubFailed2000609()
	return 0
end
function DummyActorProxy:OnSubStart2000610()
	return 0
end
function DummyActorProxy:OnSubFinish2000610()
	return 0
end
function DummyActorProxy:OnSubFailed2000610()
	return 0
end

function DummyActorProxy:NPCDisappear()
	return 0
end
function DummyActorProxy:OnSubStart2000709()
	return 0
end
function DummyActorProxy:OnSubFinish2000709()
	return 0
end
function DummyActorProxy:OnSubFailed2000709()
	return 0
end
function DummyActorProxy:OnSubStart2000701()
	return 0
end
function DummyActorProxy:OnSubFinish2000701()
	return 0
end
function DummyActorProxy:OnSubFailed2000701()
	return 0
end
function DummyActorProxy:OnSubStart2000702()
	return 0
end
function DummyActorProxy:OnSubFinish2000702()
	return 0
end
function DummyActorProxy:OnSubFailed2000702()
	return 0
end
function DummyActorProxy:OnSubStart2000703()
	return 0
end
function DummyActorProxy:OnSubFinish2000703()
	return 0
end
function DummyActorProxy:OnSubFailed2000703()
	return 0
end
function DummyActorProxy:OnSubStart2000704()
	return 0
end
function DummyActorProxy:OnSubFinish2000704()
	return 0
end
function DummyActorProxy:OnSubFailed2000704()
	return 0
end
function DummyActorProxy:OnSubStart2000705()
	return 0
end
function DummyActorProxy:OnSubFinish2000705()
	return 0
end
function DummyActorProxy:OnSubStart2000706()
	return 0
end
function DummyActorProxy:OnSubStart2000707()
	return 0
end
function DummyActorProxy:OnSubFinish2000707()
	return 0
end
function DummyActorProxy:OnSubFailed2000707()
	return 0
end
function DummyActorProxy:OnSubFinish2000708()
	return 0
end

function DummyActorProxy:OnSubStart2000801()
	return 0
end
function DummyActorProxy:OnSubFinish2000801()
	return 0
end
function DummyActorProxy:OnSubFailed2000801()
	return 0
end
function DummyActorProxy:OnSubStart2000802()
	return 0
end
function DummyActorProxy:OnSubFinish2000802()
	return 0
end
function DummyActorProxy:OnSubFailed2000802()
	return 0
end
function DummyActorProxy:OnSubStart2000803()
	return 0
end
function DummyActorProxy:OnSubFinish2000803()
	return 0
end
function DummyActorProxy:OnSubFailed2000803()
	return 0
end
function DummyActorProxy:OnSubStart2000804()
	return 0
end
function DummyActorProxy:OnSubFinish2000804()
	return 0
end
function DummyActorProxy:OnSubFailed2000804()
	return 0
end
function DummyActorProxy:OnSubStart2000805()
	return 0
end
function DummyActorProxy:OnSubFinish2000805()
	return 0
end
function DummyActorProxy:OnSubFailed2000805()
	return 0
end
function DummyActorProxy:OnSubStart2000806()
	return 0
end
function DummyActorProxy:OnSubFinish2000806()
	return 0
end
function DummyActorProxy:OnSubFailed2000806()
	return 0
end

function DummyActorProxy:FinishQuest02()
	return 0
end
function DummyActorProxy:FinishQuest07()
	return 0
end
function DummyActorProxy:CreateNPC()
	return 0
end
function DummyActorProxy:DestroyHili()
	return 0
end
function DummyActorProxy:OnSubStart2000901()
	return 0
end
function DummyActorProxy:OnSubFinish2000901()
	return 0
end
function DummyActorProxy:OnSubFailed2000901()
	return 0
end
function DummyActorProxy:OnSubStart2000902()
	return 0
end
function DummyActorProxy:OnSubFinish2000902()
	return 0
end
function DummyActorProxy:OnSubFailed2000902()
	return 0
end
function DummyActorProxy:OnSubStart2000903()
	return 0
end
function DummyActorProxy:OnSubFinish2000903()
	return 0
end
function DummyActorProxy:OnSubFailed2000903()
	return 0
end
function DummyActorProxy:OnSubStart2000908()
	return 0
end
function DummyActorProxy:OnSubFinish2000908()
	return 0
end
function DummyActorProxy:OnSubStart2000904()
	return 0
end
function DummyActorProxy:OnSubFinish2000904()
	return 0
end
function DummyActorProxy:OnSubFailed2000904()
	return 0
end
function DummyActorProxy:OnSubFinish2000907()
	return 0
end
function DummyActorProxy:OnSubFinish2000910()
	return 0
end
function DummyActorProxy:OnSubStart2000905()
	return 0
end
function DummyActorProxy:OnSubFinish2000905()
	return 0
end
function DummyActorProxy:OnSubStart2000906()
	return 0
end
function DummyActorProxy:OnSubFinish2000906()
	return 0
end
function DummyActorProxy:OnSubStart2000915()
	return 0
end
function DummyActorProxy:OnSubFinish2000915()
	return 0
end

function DummyActorProxy:OnSubStart2001001()
	return 0
end
function DummyActorProxy:OnSubFinish2001001()
	return 0
end
function DummyActorProxy:OnSubFailed2001001()
	return 0
end
function DummyActorProxy:OnSubStart2001002()
	return 0
end
function DummyActorProxy:OnSubFinish2001002()
	return 0
end
function DummyActorProxy:OnSubFailed2001002()
	return 0
end
function DummyActorProxy:OnSubStart2001003()
	return 0
end
function DummyActorProxy:OnSubFinish2001003()
	return 0
end
function DummyActorProxy:OnSubFailed2001003()
	return 0
end
function DummyActorProxy:OnSubStart2001008()
	return 0
end
function DummyActorProxy:OnSubFinish2001008()
	return 0
end
function DummyActorProxy:OnSubStart2001004()
	return 0
end
function DummyActorProxy:OnSubFinish2001004()
	return 0
end
function DummyActorProxy:OnSubFailed2001004()
	return 0
end
function DummyActorProxy:OnSubFinish2001007()
	return 0
end
function DummyActorProxy:OnSubFinish2001010()
	return 0
end
function DummyActorProxy:OnSubStart2001005()
	return 0
end
function DummyActorProxy:OnSubFinish2001005()
	return 0
end
function DummyActorProxy:OnSubStart2001006()
	return 0
end
function DummyActorProxy:OnSubFinish2001006()
	return 0
end
function DummyActorProxy:OnSubStart2001015()
	return 0
end
function DummyActorProxy:OnSubFinish2001015()
	return 0
end

function DummyActorProxy:OnSubStart2001101()
	return 0
end
function DummyActorProxy:OnSubFinish2001101()
	return 0
end
function DummyActorProxy:OnSubFailed2001101()
	return 0
end
function DummyActorProxy:OnSubStart2001102()
	return 0
end
function DummyActorProxy:OnSubFinish2001102()
	return 0
end
function DummyActorProxy:OnSubFailed2001102()
	return 0
end
function DummyActorProxy:OnSubStart2001103()
	return 0
end
function DummyActorProxy:OnSubFinish2001103()
	return 0
end
function DummyActorProxy:OnSubFailed2001103()
	return 0
end
function DummyActorProxy:OnSubStart2001104()
	return 0
end
function DummyActorProxy:OnSubFinish2001104()
	return 0
end
function DummyActorProxy:OnSubFailed2001104()
	return 0
end

function DummyActorProxy:OnSubStart2001201()
	return 0
end
function DummyActorProxy:OnSubFinish2001201()
	return 0
end
function DummyActorProxy:OnSubFailed2001201()
	return 0
end
function DummyActorProxy:OnSubStart2001202()
	return 0
end
function DummyActorProxy:OnSubFinish2001202()
	return 0
end
function DummyActorProxy:OnSubFailed2001202()
	return 0
end
function DummyActorProxy:OnSubStart2001203()
	return 0
end
function DummyActorProxy:OnSubFinish2001203()
	return 0
end
function DummyActorProxy:OnSubFailed2001203()
	return 0
end
function DummyActorProxy:OnSubStart2001204()
	return 0
end
function DummyActorProxy:OnSubFinish2001204()
	return 0
end
function DummyActorProxy:OnSubFailed2001204()
	return 0
end

function DummyActorProxy:OnSubStart2001301()
	return 0
end
function DummyActorProxy:OnSubFinish2001301()
	return 0
end
function DummyActorProxy:OnSubFailed2001301()
	return 0
end
function DummyActorProxy:OnSubStart2001302()
	return 0
end
function DummyActorProxy:OnSubFinish2001302()
	return 0
end
function DummyActorProxy:OnSubFailed2001302()
	return 0
end
function DummyActorProxy:OnSubStart2001303()
	return 0
end
function DummyActorProxy:OnSubFinish2001303()
	return 0
end
function DummyActorProxy:OnSubFailed2001303()
	return 0
end
function DummyActorProxy:OnSubStart2001304()
	return 0
end
function DummyActorProxy:OnSubFinish2001304()
	return 0
end
function DummyActorProxy:OnSubFailed2001304()
	return 0
end

function DummyActorProxy:OnSubStart2001501()
	return 0
end
function DummyActorProxy:OnSubFinish2001501()
	return 0
end
function DummyActorProxy:OnSubFailed2001501()
	return 0
end
function DummyActorProxy:OnSubStart2001502()
	return 0
end
function DummyActorProxy:OnSubFinish2001502()
	return 0
end
function DummyActorProxy:OnSubFailed2001502()
	return 0
end
function DummyActorProxy:OnSubStart2001503()
	return 0
end
function DummyActorProxy:OnSubFinish2001503()
	return 0
end
function DummyActorProxy:OnSubFailed2001503()
	return 0
end
function DummyActorProxy:OnSubStart2001508()
	return 0
end
function DummyActorProxy:OnSubFinish2001508()
	return 0
end
function DummyActorProxy:OnSubStart2001504()
	return 0
end
function DummyActorProxy:OnSubFinish2001504()
	return 0
end
function DummyActorProxy:OnSubFailed2001504()
	return 0
end
function DummyActorProxy:OnSubFinish2001507()
	return 0
end
function DummyActorProxy:OnSubFinish2001510()
	return 0
end
function DummyActorProxy:OnSubStart2001505()
	return 0
end
function DummyActorProxy:OnSubFinish2001505()
	return 0
end
function DummyActorProxy:OnSubStart2001506()
	return 0
end
function DummyActorProxy:OnSubFinish2001506()
	return 0
end
function DummyActorProxy:OnSubStart2001515()
	return 0
end
function DummyActorProxy:OnSubFinish2001515()
	return 0
end

function DummyActorProxy:OnSubStart2001601()
	return 0
end
function DummyActorProxy:OnSubFinish2001601()
	return 0
end
function DummyActorProxy:OnSubFailed2001601()
	return 0
end
function DummyActorProxy:OnSubStart2001602()
	return 0
end
function DummyActorProxy:OnSubFinish2001602()
	return 0
end
function DummyActorProxy:OnSubFailed2001602()
	return 0
end
function DummyActorProxy:OnSubStart2001603()
	return 0
end
function DummyActorProxy:OnSubFinish2001603()
	return 0
end
function DummyActorProxy:OnSubFailed2001603()
	return 0
end
function DummyActorProxy:OnSubStart2001604()
	return 0
end
function DummyActorProxy:OnSubFinish2001604()
	return 0
end
function DummyActorProxy:OnSubFailed2001604()
	return 0
end
function DummyActorProxy:OnSubStart2001605()
	return 0
end
function DummyActorProxy:OnSubFinish2001605()
	return 0
end
function DummyActorProxy:OnSubFailed2001605()
	return 0
end
function DummyActorProxy:OnSubStart2001606()
	return 0
end
function DummyActorProxy:OnSubFinish2001606()
	return 0
end
function DummyActorProxy:OnSubFailed2001606()
	return 0
end
function DummyActorProxy:OnSubStart2001607()
	return 0
end
function DummyActorProxy:OnSubFinish2001607()
	return 0
end
function DummyActorProxy:OnSubFailed2001607()
	return 0
end
function DummyActorProxy:OnSubStart2001608()
	return 0
end
function DummyActorProxy:OnSubFinish2001608()
	return 0
end
function DummyActorProxy:OnSubFailed2001608()
	return 0
end
function DummyActorProxy:OnSubStart2001609()
	return 0
end
function DummyActorProxy:OnSubFinish2001609()
	return 0
end
function DummyActorProxy:OnSubFailed2001609()
	return 0
end
function DummyActorProxy:OnSubStart2001610()
	return 0
end
function DummyActorProxy:OnSubFinish2001610()
	return 0
end
function DummyActorProxy:OnSubFailed2001610()
	return 0
end
function DummyActorProxy:OnSubStart2001611()
	return 0
end
function DummyActorProxy:OnSubFinish2001611()
	return 0
end
function DummyActorProxy:OnSubFailed2001611()
	return 0
end

function DummyActorProxy:OnSubStart2001709()
	return 0
end
function DummyActorProxy:OnSubFinish2001709()
	return 0
end
function DummyActorProxy:OnSubFailed2001709()
	return 0
end
function DummyActorProxy:OnSubStart2001701()
	return 0
end
function DummyActorProxy:OnSubFinish2001701()
	return 0
end
function DummyActorProxy:OnSubFailed2001701()
	return 0
end
function DummyActorProxy:OnSubStart2001702()
	return 0
end
function DummyActorProxy:OnSubFinish2001702()
	return 0
end
function DummyActorProxy:OnSubFailed2001702()
	return 0
end
function DummyActorProxy:OnSubStart2001703()
	return 0
end
function DummyActorProxy:OnSubFinish2001703()
	return 0
end
function DummyActorProxy:OnSubFailed2001703()
	return 0
end
function DummyActorProxy:OnSubStart2001704()
	return 0
end
function DummyActorProxy:OnSubFinish2001704()
	return 0
end
function DummyActorProxy:OnSubFailed2001704()
	return 0
end
function DummyActorProxy:OnSubStart2001705()
	return 0
end
function DummyActorProxy:OnSubFinish2001705()
	return 0
end
function DummyActorProxy:OnSubStart2001706()
	return 0
end
function DummyActorProxy:OnSubStart2001707()
	return 0
end
function DummyActorProxy:OnSubFinish2001707()
	return 0
end
function DummyActorProxy:OnSubFailed2001707()
	return 0
end
function DummyActorProxy:OnSubFinish2001708()
	return 0
end

function DummyActorProxy:OnSubStart2001809()
	return 0
end
function DummyActorProxy:OnSubFinish2001809()
	return 0
end
function DummyActorProxy:OnSubFailed2001809()
	return 0
end
function DummyActorProxy:OnSubStart2001801()
	return 0
end
function DummyActorProxy:OnSubFinish2001801()
	return 0
end
function DummyActorProxy:OnSubFailed2001801()
	return 0
end
function DummyActorProxy:OnSubStart2001802()
	return 0
end
function DummyActorProxy:OnSubFinish2001802()
	return 0
end
function DummyActorProxy:OnSubFailed2001802()
	return 0
end
function DummyActorProxy:OnSubStart2001803()
	return 0
end
function DummyActorProxy:OnSubFinish2001803()
	return 0
end
function DummyActorProxy:OnSubFailed2001803()
	return 0
end
function DummyActorProxy:OnSubStart2001804()
	return 0
end
function DummyActorProxy:OnSubFinish2001804()
	return 0
end
function DummyActorProxy:OnSubFailed2001804()
	return 0
end
function DummyActorProxy:OnSubStart2001805()
	return 0
end
function DummyActorProxy:OnSubFinish2001805()
	return 0
end
function DummyActorProxy:OnSubStart2001806()
	return 0
end
function DummyActorProxy:OnSubStart2001807()
	return 0
end
function DummyActorProxy:OnSubFinish2001807()
	return 0
end
function DummyActorProxy:OnSubFailed2001807()
	return 0
end
function DummyActorProxy:OnSubFinish2001808()
	return 0
end

function DummyActorProxy:OnSubStart2001901()
	return 0
end
function DummyActorProxy:OnSubFinish2001901()
	return 0
end
function DummyActorProxy:OnSubFailed2001901()
	return 0
end
function DummyActorProxy:OnSubStart2001902()
	return 0
end
function DummyActorProxy:OnSubFinish2001902()
	return 0
end
function DummyActorProxy:OnSubFailed2001902()
	return 0
end
function DummyActorProxy:OnSubStart2001903()
	return 0
end
function DummyActorProxy:OnSubFinish2001903()
	return 0
end
function DummyActorProxy:OnSubFailed2001903()
	return 0
end
function DummyActorProxy:OnSubStart2001904()
	return 0
end
function DummyActorProxy:OnSubFinish2001904()
	return 0
end
function DummyActorProxy:OnSubFailed2001904()
	return 0
end

function DummyActorProxy:TryCameraMatch()
	return 0
end
function DummyActorProxy:OnSubStart2002001()
	return 0
end
function DummyActorProxy:OnSubStart2002002()
	return 0
end
function DummyActorProxy:OnSubStart2002003()
	return 0
end
function DummyActorProxy:OnSubFinish2002001()
	return 0
end
function DummyActorProxy:OnSubFinish2002002()
	return 0
end
function DummyActorProxy:OnSubFinish2002003()
	return 0
end

function DummyActorProxy:OnSubStart2002301()
	return 0
end
function DummyActorProxy:OnSubFinish2002301()
	return 0
end
function DummyActorProxy:OnSubFailed2002301()
	return 0
end
function DummyActorProxy:OnSubStart2002302()
	return 0
end
function DummyActorProxy:OnSubFinish2002302()
	return 0
end
function DummyActorProxy:OnSubFailed2002302()
	return 0
end
function DummyActorProxy:OnSubStart2002303()
	return 0
end
function DummyActorProxy:OnSubFinish2002303()
	return 0
end
function DummyActorProxy:OnSubFailed2002303()
	return 0
end
function DummyActorProxy:OnSubStart2002304()
	return 0
end
function DummyActorProxy:OnSubFinish2002304()
	return 0
end
function DummyActorProxy:OnSubFailed2002304()
	return 0
end
function DummyActorProxy:OnSubStart2002305()
	return 0
end
function DummyActorProxy:OnSubFinish2002305()
	return 0
end
function DummyActorProxy:OnSubFailed2002305()
	return 0
end
function DummyActorProxy:OnSubStart2002306()
	return 0
end
function DummyActorProxy:OnSubStart2002307()
	return 0
end

function DummyActorProxy:OnSubStart2002501()
	return 0
end
function DummyActorProxy:OnSubFinish2002501()
	return 0
end
function DummyActorProxy:OnSubFailed2002501()
	return 0
end
function DummyActorProxy:OnSubStart2002502()
	return 0
end
function DummyActorProxy:OnSubFinish2002502()
	return 0
end
function DummyActorProxy:OnSubFailed2002502()
	return 0
end
function DummyActorProxy:OnSubStart2002503()
	return 0
end
function DummyActorProxy:OnSubFinish2002503()
	return 0
end
function DummyActorProxy:OnSubFailed2002503()
	return 0
end
function DummyActorProxy:OnSubStart2002504()
	return 0
end
function DummyActorProxy:OnSubFinish2002504()
	return 0
end
function DummyActorProxy:OnSubFailed2002504()
	return 0
end

function DummyActorProxy:OnSubStart2002601()
	return 0
end
function DummyActorProxy:OnSubFinish2002601()
	return 0
end
function DummyActorProxy:OnSubFailed2002601()
	return 0
end
function DummyActorProxy:OnSubStart2002602()
	return 0
end
function DummyActorProxy:OnSubFinish2002602()
	return 0
end
function DummyActorProxy:OnSubFailed2002602()
	return 0
end
function DummyActorProxy:OnSubStart2002603()
	return 0
end
function DummyActorProxy:OnSubFinish2002603()
	return 0
end
function DummyActorProxy:OnSubFailed2002603()
	return 0
end
function DummyActorProxy:OnSubStart2002604()
	return 0
end
function DummyActorProxy:OnSubFinish2002604()
	return 0
end
function DummyActorProxy:OnSubFailed2002604()
	return 0
end
function DummyActorProxy:OnSubStart2002605()
	return 0
end
function DummyActorProxy:OnSubFinish2002605()
	return 0
end
function DummyActorProxy:OnSubFailed2002605()
	return 0
end
function DummyActorProxy:OnSubStart2002606()
	return 0
end
function DummyActorProxy:OnSubFinish2002606()
	return 0
end
function DummyActorProxy:OnSubFailed2002606()
	return 0
end
function DummyActorProxy:OnSubStart2002607()
	return 0
end
function DummyActorProxy:OnSubFinish2002607()
	return 0
end
function DummyActorProxy:OnSubFailed2002607()
	return 0
end
function DummyActorProxy:OnSubStart2002608()
	return 0
end
function DummyActorProxy:OnSubFinish2002608()
	return 0
end
function DummyActorProxy:OnSubFailed2002608()
	return 0
end

function DummyActorProxy:OnSubStart2002701()
	return 0
end
function DummyActorProxy:OnSubFinish2002701()
	return 0
end
function DummyActorProxy:OnSubFailed2002701()
	return 0
end
function DummyActorProxy:OnSubStart2002702()
	return 0
end
function DummyActorProxy:OnSubFinish2002702()
	return 0
end
function DummyActorProxy:OnSubFailed2002702()
	return 0
end
function DummyActorProxy:OnSubStart2002703()
	return 0
end
function DummyActorProxy:OnSubFinish2002703()
	return 0
end
function DummyActorProxy:OnSubFailed2002703()
	return 0
end
function DummyActorProxy:OnSubStart2002704()
	return 0
end
function DummyActorProxy:OnSubFinish2002704()
	return 0
end
function DummyActorProxy:OnSubFailed2002704()
	return 0
end
function DummyActorProxy:OnSubStart2002705()
	return 0
end
function DummyActorProxy:OnSubFinish2002705()
	return 0
end
function DummyActorProxy:OnSubFailed2002705()
	return 0
end
function DummyActorProxy:OnSubStart2002706()
	return 0
end
function DummyActorProxy:OnSubFinish2002706()
	return 0
end
function DummyActorProxy:OnSubFailed2002706()
	return 0
end

function DummyActorProxy:OnSubStart2002801()
	return 0
end
function DummyActorProxy:OnSubFinish2002801()
	return 0
end
function DummyActorProxy:OnSubFailed2002801()
	return 0
end
function DummyActorProxy:OnSubStart2002802()
	return 0
end
function DummyActorProxy:OnSubFinish2002802()
	return 0
end
function DummyActorProxy:OnSubFailed2002802()
	return 0
end
function DummyActorProxy:OnSubStart2002803()
	return 0
end
function DummyActorProxy:OnSubFinish2002803()
	return 0
end
function DummyActorProxy:OnSubFailed2002803()
	return 0
end
function DummyActorProxy:OnSubStart2002804()
	return 0
end
function DummyActorProxy:OnSubFinish2002804()
	return 0
end
function DummyActorProxy:OnSubFailed2002804()
	return 0
end
function DummyActorProxy:OnSubStart2002805()
	return 0
end
function DummyActorProxy:OnSubFinish2002805()
	return 0
end
function DummyActorProxy:OnSubFailed2002805()
	return 0
end
function DummyActorProxy:OnSubStart2002806()
	return 0
end
function DummyActorProxy:OnSubFinish2002806()
	return 0
end
function DummyActorProxy:OnSubFailed2002806()
	return 0
end

function DummyActorProxy:OnSubStart2003001()
	return 0
end
function DummyActorProxy:OnSubFinish2003001()
	return 0
end
function DummyActorProxy:OnSubFailed2003001()
	return 0
end
function DummyActorProxy:OnSubStart2003002()
	return 0
end
function DummyActorProxy:OnSubFinish2003002()
	return 0
end
function DummyActorProxy:OnSubFailed2003002()
	return 0
end
function DummyActorProxy:OnSubFinish2003003()
	return 0
end

function DummyActorProxy:OnSubFinish2003102()
	return 0
end
function DummyActorProxy:OnSubFinish2003103()
	return 0
end
function DummyActorProxy:OnSubFinish2003105()
	return 0
end
function DummyActorProxy:OnSubFinish2003106()
	return 0
end

function DummyActorProxy:OnSubStart2003201()
	return 0
end
function DummyActorProxy:OnSubFailed2003201()
	return 0
end
function DummyActorProxy:OnSubStart2003202()
	return 0
end

function DummyActorProxy:NpcLinRuntoStart()
	return 0
end
function DummyActorProxy:NpcLinRuntoTarget()
	return 0
end
function DummyActorProxy:NpcLinCheer()
	return 0
end
function DummyActorProxy:NpcLinPauseAndCallPlayer()
	return 0
end
function DummyActorProxy:ClearNpcs()
	return 0
end
function DummyActorProxy:NpcLinBeFollowTask()
	return 0
end
function DummyActorProxy:NpcLinScared()
	return 0
end
function DummyActorProxy:NpcStrangerCreated()
	return 0
end
function DummyActorProxy:NpcStrangerMoveToPlayer()
	return 0
end
function DummyActorProxy:OnSubStart2003301()
	return 0
end
function DummyActorProxy:OnSubFinish2003301()
	return 0
end
function DummyActorProxy:OnSubFailed2003301()
	return 0
end
function DummyActorProxy:OnSubStart2003302()
	return 0
end
function DummyActorProxy:OnSubFinish2003302()
	return 0
end
function DummyActorProxy:OnSubFailed2003302()
	return 0
end
function DummyActorProxy:OnSubStart2003303()
	return 0
end
function DummyActorProxy:OnSubFinish2003303()
	return 0
end
function DummyActorProxy:OnSubFailed2003303()
	return 0
end
function DummyActorProxy:OnSubStart2003304()
	return 0
end
function DummyActorProxy:OnSubFinish2003304()
	return 0
end
function DummyActorProxy:OnSubFailed2003304()
	return 0
end
function DummyActorProxy:OnSubStart2003305()
	return 0
end
function DummyActorProxy:OnSubFinish2003305()
	return 0
end
function DummyActorProxy:OnSubFailed2003305()
	return 0
end
function DummyActorProxy:OnSubStart2003306()
	return 0
end
function DummyActorProxy:OnSubFinish2003306()
	return 0
end
function DummyActorProxy:OnSubFailed2003306()
	return 0
end

function DummyActorProxy:OnSubStart2003501()
	return 0
end
function DummyActorProxy:OnSubFinish2003501()
	return 0
end
function DummyActorProxy:OnSubFailed2003501()
	return 0
end
function DummyActorProxy:OnSubStart2003502()
	return 0
end
function DummyActorProxy:OnSubFinish2003502()
	return 0
end
function DummyActorProxy:OnSubFailed2003502()
	return 0
end
function DummyActorProxy:OnSubStart2003503()
	return 0
end
function DummyActorProxy:OnSubFinish2003503()
	return 0
end
function DummyActorProxy:OnSubFailed2003503()
	return 0
end
function DummyActorProxy:OnSubStart2003504()
	return 0
end
function DummyActorProxy:OnSubFinish2003504()
	return 0
end
function DummyActorProxy:OnSubFailed2003504()
	return 0
end

function DummyActorProxy:OnSubStart2003601()
	return 0
end
function DummyActorProxy:OnSubFinish2003601()
	return 0
end
function DummyActorProxy:OnSubFailed2003601()
	return 0
end
function DummyActorProxy:OnSubStart2003602()
	return 0
end
function DummyActorProxy:OnSubFinish2003602()
	return 0
end
function DummyActorProxy:OnSubFailed2003602()
	return 0
end
function DummyActorProxy:OnSubStart2003603()
	return 0
end
function DummyActorProxy:OnSubFinish2003603()
	return 0
end
function DummyActorProxy:OnSubFailed2003603()
	return 0
end
function DummyActorProxy:OnSubStart2003604()
	return 0
end
function DummyActorProxy:OnSubFinish2003604()
	return 0
end
function DummyActorProxy:OnSubFailed2003604()
	return 0
end
function DummyActorProxy:OnSubStart2003605()
	return 0
end
function DummyActorProxy:OnSubFinish2003605()
	return 0
end
function DummyActorProxy:OnSubFailed2003605()
	return 0
end
function DummyActorProxy:OnSubStart2003606()
	return 0
end
function DummyActorProxy:OnSubFinish2003606()
	return 0
end
function DummyActorProxy:OnSubFailed2003606()
	return 0
end

function DummyActorProxy:NPCDestroy()
	return 0
end
function DummyActorProxy:OnSubStart2003701()
	return 0
end
function DummyActorProxy:OnSubFinish2003701()
	return 0
end
function DummyActorProxy:OnSubFailed2003701()
	return 0
end
function DummyActorProxy:OnSubStart2003702()
	return 0
end
function DummyActorProxy:OnSubFinish2003702()
	return 0
end
function DummyActorProxy:OnSubFailed2003702()
	return 0
end
function DummyActorProxy:OnSubStart2003703()
	return 0
end
function DummyActorProxy:OnSubFinish2003703()
	return 0
end
function DummyActorProxy:OnSubFailed2003703()
	return 0
end
function DummyActorProxy:OnSubStart2003704()
	return 0
end
function DummyActorProxy:OnSubFinish2003704()
	return 0
end
function DummyActorProxy:OnSubFailed2003704()
	return 0
end
function DummyActorProxy:OnSubStart2003705()
	return 0
end
function DummyActorProxy:OnSubFinish2003705()
	return 0
end
function DummyActorProxy:OnSubFailed2003705()
	return 0
end
function DummyActorProxy:OnSubStart2003706()
	return 0
end
function DummyActorProxy:OnSubFinish2003706()
	return 0
end
function DummyActorProxy:OnSubFailed2003706()
	return 0
end
function DummyActorProxy:OnSubStart2003707()
	return 0
end
function DummyActorProxy:OnSubFinish2003707()
	return 0
end
function DummyActorProxy:OnSubFailed2003707()
	return 0
end

function DummyActorProxy:OnSubStart2003801()
	return 0
end
function DummyActorProxy:OnSubFinish2003801()
	return 0
end
function DummyActorProxy:OnSubFailed2003801()
	return 0
end
function DummyActorProxy:OnSubStart2003802()
	return 0
end
function DummyActorProxy:OnSubFinish2003802()
	return 0
end
function DummyActorProxy:OnSubFailed2003802()
	return 0
end
function DummyActorProxy:OnSubStart2003803()
	return 0
end
function DummyActorProxy:OnSubFinish2003803()
	return 0
end
function DummyActorProxy:OnSubFailed2003803()
	return 0
end
function DummyActorProxy:OnSubStart2003804()
	return 0
end
function DummyActorProxy:OnSubFinish2003804()
	return 0
end
function DummyActorProxy:OnSubFailed2003804()
	return 0
end
function DummyActorProxy:OnSubStart2003805()
	return 0
end
function DummyActorProxy:OnSubFinish2003805()
	return 0
end
function DummyActorProxy:OnSubFailed2003805()
	return 0
end
function DummyActorProxy:OnSubStart2003806()
	return 0
end
function DummyActorProxy:OnSubFinish2003806()
	return 0
end
function DummyActorProxy:OnSubFailed2003806()
	return 0
end
function DummyActorProxy:OnSubStart2003807()
	return 0
end
function DummyActorProxy:OnSubFinish2003807()
	return 0
end
function DummyActorProxy:OnSubFailed2003807()
	return 0
end
function DummyActorProxy:OnSubStart2003808()
	return 0
end
function DummyActorProxy:OnSubFinish2003808()
	return 0
end
function DummyActorProxy:OnSubFailed2003808()
	return 0
end
function DummyActorProxy:OnSubStart2003809()
	return 0
end
function DummyActorProxy:OnSubFinish2003809()
	return 0
end
function DummyActorProxy:OnSubFailed2003809()
	return 0
end
function DummyActorProxy:OnSubStart2003810()
	return 0
end
function DummyActorProxy:OnSubFinish2003810()
	return 0
end
function DummyActorProxy:OnSubFailed2003810()
	return 0
end

function DummyActorProxy:OnSubStart2003901()
	return 0
end
function DummyActorProxy:OnSubFinish2003901()
	return 0
end
function DummyActorProxy:OnSubFailed2003901()
	return 0
end
function DummyActorProxy:OnSubStart2003902()
	return 0
end
function DummyActorProxy:OnSubFinish2003902()
	return 0
end
function DummyActorProxy:OnSubFailed2003902()
	return 0
end
function DummyActorProxy:OnSubStart2003903()
	return 0
end
function DummyActorProxy:OnSubFinish2003903()
	return 0
end
function DummyActorProxy:OnSubFailed2003903()
	return 0
end
function DummyActorProxy:OnSubStart2003904()
	return 0
end
function DummyActorProxy:OnSubFinish2003904()
	return 0
end
function DummyActorProxy:OnSubFailed2003904()
	return 0
end
function DummyActorProxy:OnSubStart2003905()
	return 0
end
function DummyActorProxy:OnSubFinish2003905()
	return 0
end
function DummyActorProxy:OnSubFailed2003905()
	return 0
end
function DummyActorProxy:OnSubStart2003906()
	return 0
end
function DummyActorProxy:OnSubFinish2003906()
	return 0
end
function DummyActorProxy:OnSubFailed2003906()
	return 0
end
function DummyActorProxy:OnSubStart2003907()
	return 0
end
function DummyActorProxy:OnSubFinish2003907()
	return 0
end
function DummyActorProxy:OnSubFailed2003907()
	return 0
end
function DummyActorProxy:OnSubStart2003908()
	return 0
end
function DummyActorProxy:OnSubFinish2003908()
	return 0
end
function DummyActorProxy:OnSubFailed2003908()
	return 0
end
function DummyActorProxy:OnSubStart2003909()
	return 0
end
function DummyActorProxy:OnSubFinish2003909()
	return 0
end
function DummyActorProxy:OnSubFailed2003909()
	return 0
end
function DummyActorProxy:OnSubStart2003910()
	return 0
end
function DummyActorProxy:OnSubFinish2003910()
	return 0
end
function DummyActorProxy:OnSubFailed2003910()
	return 0
end
function DummyActorProxy:OnSubStart2003911()
	return 0
end
function DummyActorProxy:OnSubFinish2003911()
	return 0
end
function DummyActorProxy:OnSubFailed2003911()
	return 0
end
function DummyActorProxy:OnSubStart2003912()
	return 0
end
function DummyActorProxy:OnSubFinish2003912()
	return 0
end
function DummyActorProxy:OnSubFailed2003912()
	return 0
end
function DummyActorProxy:OnSubStart2003913()
	return 0
end
function DummyActorProxy:OnSubFinish2003913()
	return 0
end
function DummyActorProxy:OnSubFailed2003913()
	return 0
end
function DummyActorProxy:OnSubStart2003914()
	return 0
end
function DummyActorProxy:OnSubFinish2003914()
	return 0
end
function DummyActorProxy:OnSubFailed2003914()
	return 0
end
function DummyActorProxy:OnSubStart2003915()
	return 0
end
function DummyActorProxy:OnSubFinish2003915()
	return 0
end
function DummyActorProxy:OnSubFailed2003915()
	return 0
end
function DummyActorProxy:OnSubStart2003916()
	return 0
end
function DummyActorProxy:OnSubFinish2003916()
	return 0
end
function DummyActorProxy:OnSubFailed2003916()
	return 0
end
function DummyActorProxy:OnSubStart2003917()
	return 0
end
function DummyActorProxy:OnSubFinish2003917()
	return 0
end
function DummyActorProxy:OnSubFailed2003917()
	return 0
end
function DummyActorProxy:OnSubStart2003918()
	return 0
end
function DummyActorProxy:OnSubFinish2003918()
	return 0
end
function DummyActorProxy:OnSubFailed2003918()
	return 0
end
function DummyActorProxy:OnSubStart2003919()
	return 0
end
function DummyActorProxy:OnSubFinish2003919()
	return 0
end
function DummyActorProxy:OnSubFailed2003919()
	return 0
end
function DummyActorProxy:OnSubStart2003920()
	return 0
end
function DummyActorProxy:OnSubFinish2003920()
	return 0
end
function DummyActorProxy:OnSubFailed2003920()
	return 0
end
function DummyActorProxy:OnSubStart2003921()
	return 0
end
function DummyActorProxy:OnSubFinish2003921()
	return 0
end
function DummyActorProxy:OnSubFailed2003921()
	return 0
end
function DummyActorProxy:OnSubStart2003922()
	return 0
end
function DummyActorProxy:OnSubFinish2003922()
	return 0
end
function DummyActorProxy:OnSubFailed2003922()
	return 0
end
function DummyActorProxy:OnSubStart2003923()
	return 0
end
function DummyActorProxy:OnSubFinish2003923()
	return 0
end
function DummyActorProxy:OnSubFailed2003923()
	return 0
end
function DummyActorProxy:OnSubStart2003924()
	return 0
end
function DummyActorProxy:OnSubFinish2003924()
	return 0
end
function DummyActorProxy:OnSubFailed2003924()
	return 0
end
function DummyActorProxy:OnSubStart2003925()
	return 0
end
function DummyActorProxy:OnSubFinish2003925()
	return 0
end
function DummyActorProxy:OnSubFailed2003925()
	return 0
end
function DummyActorProxy:OnSubStart2003926()
	return 0
end
function DummyActorProxy:OnSubFinish2003926()
	return 0
end
function DummyActorProxy:OnSubFailed2003926()
	return 0
end
function DummyActorProxy:OnSubStart2003927()
	return 0
end
function DummyActorProxy:OnSubFinish2003927()
	return 0
end
function DummyActorProxy:OnSubFailed2003927()
	return 0
end

function DummyActorProxy:ShowPaimonDoWay()
	return 0
end
function DummyActorProxy:OnSubStart2004001()
	return 0
end
function DummyActorProxy:OnSubFinish2004001()
	return 0
end
function DummyActorProxy:OnSubFailed2004001()
	return 0
end
function DummyActorProxy:OnSubStart2004002()
	return 0
end
function DummyActorProxy:OnSubFinish2004002()
	return 0
end
function DummyActorProxy:OnSubFailed2004002()
	return 0
end
function DummyActorProxy:OnSubStart2004003()
	return 0
end
function DummyActorProxy:OnSubFinish2004003()
	return 0
end
function DummyActorProxy:OnSubFailed2004003()
	return 0
end
function DummyActorProxy:OnSubStart2004004()
	return 0
end
function DummyActorProxy:OnSubFinish2004004()
	return 0
end
function DummyActorProxy:OnSubFailed2004004()
	return 0
end
function DummyActorProxy:OnSubStart2004007()
	return 0
end
function DummyActorProxy:OnSubFinish2004007()
	return 0
end
function DummyActorProxy:OnSubFailed2004007()
	return 0
end

function DummyActorProxy:OnSubStart2004201()
	return 0
end
function DummyActorProxy:OnSubFinish2004201()
	return 0
end
function DummyActorProxy:OnSubFailed2004201()
	return 0
end
function DummyActorProxy:OnSubStart2004202()
	return 0
end
function DummyActorProxy:OnSubFinish2004202()
	return 0
end
function DummyActorProxy:OnSubFailed2004202()
	return 0
end
function DummyActorProxy:OnSubStart2004203()
	return 0
end
function DummyActorProxy:OnSubFinish2004203()
	return 0
end
function DummyActorProxy:OnSubFailed2004203()
	return 0
end
function DummyActorProxy:OnSubStart2004204()
	return 0
end
function DummyActorProxy:OnSubFinish2004204()
	return 0
end
function DummyActorProxy:OnSubFailed2004204()
	return 0
end
function DummyActorProxy:OnSubStart2004205()
	return 0
end
function DummyActorProxy:OnSubFinish2004205()
	return 0
end
function DummyActorProxy:OnSubFailed2004205()
	return 0
end

function DummyActorProxy:OnSubStart2004301()
	return 0
end
function DummyActorProxy:OnSubFinish2004301()
	return 0
end
function DummyActorProxy:OnSubStart2004306()
	return 0
end
function DummyActorProxy:OnSubFinish2004306()
	return 0
end
function DummyActorProxy:OnSubFinish2004307()
	return 0
end
function DummyActorProxy:OnSubFailed2004301()
	return 0
end
function DummyActorProxy:OnSubStart2004302()
	return 0
end
function DummyActorProxy:OnSubFinish2004302()
	return 0
end
function DummyActorProxy:OnSubFailed2004302()
	return 0
end
function DummyActorProxy:OnSubStart2004303()
	return 0
end
function DummyActorProxy:OnSubFinish2004303()
	return 0
end
function DummyActorProxy:OnSubFailed2004303()
	return 0
end
function DummyActorProxy:OnSubStart2004304()
	return 0
end
function DummyActorProxy:OnSubFinish2004304()
	return 0
end
function DummyActorProxy:OnSubFailed2004304()
	return 0
end
function DummyActorProxy:OnSubStart2004305()
	return 0
end
function DummyActorProxy:OnSubFinish2004305()
	return 0
end
function DummyActorProxy:OnSubFailed2004305()
	return 0
end

function DummyActorProxy:OnSubStart2004701()
	return 0
end
function DummyActorProxy:OnSubFinish2004701()
	return 0
end
function DummyActorProxy:OnSubFailed2004701()
	return 0
end
function DummyActorProxy:OnSubStart2004702()
	return 0
end
function DummyActorProxy:OnSubFinish2004702()
	return 0
end
function DummyActorProxy:OnSubFailed2004702()
	return 0
end
function DummyActorProxy:OnSubStart2004703()
	return 0
end
function DummyActorProxy:OnSubFinish2004703()
	return 0
end
function DummyActorProxy:OnSubFailed2004703()
	return 0
end
function DummyActorProxy:OnSubStart2004704()
	return 0
end
function DummyActorProxy:OnSubFinish2004704()
	return 0
end
function DummyActorProxy:OnSubFailed2004704()
	return 0
end
function DummyActorProxy:OnSubStart2004705()
	return 0
end
function DummyActorProxy:OnSubFinish2004705()
	return 0
end
function DummyActorProxy:OnSubFailed2004705()
	return 0
end
function DummyActorProxy:OnSubStart2004706()
	return 0
end
function DummyActorProxy:OnSubFinish2004706()
	return 0
end
function DummyActorProxy:OnSubFailed2004706()
	return 0
end
function DummyActorProxy:OnSubStart2004707()
	return 0
end
function DummyActorProxy:OnSubFinish2004707()
	return 0
end
function DummyActorProxy:OnSubFailed2004707()
	return 0
end

function DummyActorProxy:CreateFoodRipples()
	return 0
end
function DummyActorProxy:OnSubStart2004801()
	return 0
end
function DummyActorProxy:OnSubFinish2004801()
	return 0
end
function DummyActorProxy:OnSubFailed2004801()
	return 0
end
function DummyActorProxy:OnSubStart2004802()
	return 0
end
function DummyActorProxy:OnSubFinish2004802()
	return 0
end
function DummyActorProxy:OnSubFailed2004802()
	return 0
end
function DummyActorProxy:OnSubStart2004803()
	return 0
end
function DummyActorProxy:OnSubFinish2004803()
	return 0
end
function DummyActorProxy:OnSubFailed2004803()
	return 0
end
function DummyActorProxy:OnSubStart2004804()
	return 0
end
function DummyActorProxy:OnSubFinish2004804()
	return 0
end
function DummyActorProxy:OnSubFailed2004804()
	return 0
end
function DummyActorProxy:OnSubStart2004805()
	return 0
end
function DummyActorProxy:OnSubFinish2004805()
	return 0
end
function DummyActorProxy:OnSubFailed2004805()
	return 0
end
function DummyActorProxy:OnSubStart2004806()
	return 0
end
function DummyActorProxy:OnSubFinish2004806()
	return 0
end
function DummyActorProxy:OnSubFailed2004806()
	return 0
end

function DummyActorProxy:OnSubStart2004901()
	return 0
end
function DummyActorProxy:OnSubFinish2004901()
	return 0
end
function DummyActorProxy:OnSubFailed2004901()
	return 0
end
function DummyActorProxy:OnSubStart2004902()
	return 0
end
function DummyActorProxy:OnSubFinish2004902()
	return 0
end
function DummyActorProxy:OnSubFailed2004902()
	return 0
end
function DummyActorProxy:OnSubStart2004903()
	return 0
end
function DummyActorProxy:OnSubFinish2004903()
	return 0
end
function DummyActorProxy:OnSubFailed2004903()
	return 0
end
function DummyActorProxy:OnSubStart2004904()
	return 0
end
function DummyActorProxy:OnSubFinish2004904()
	return 0
end
function DummyActorProxy:OnSubFailed2004904()
	return 0
end
function DummyActorProxy:OnSubStart2004905()
	return 0
end
function DummyActorProxy:OnSubFinish2004905()
	return 0
end
function DummyActorProxy:OnSubFailed2004905()
	return 0
end

function DummyActorProxy:Rewind_NPC()
	return 0
end
function DummyActorProxy:OnSubStart2005101()
	return 0
end
function DummyActorProxy:OnSubFinish2005101()
	return 0
end
function DummyActorProxy:OnSubFailed2005101()
	return 0
end
function DummyActorProxy:OnSubStart2005102()
	return 0
end
function DummyActorProxy:OnSubFinish2005102()
	return 0
end
function DummyActorProxy:OnSubFailed2005102()
	return 0
end
function DummyActorProxy:OnSubStart2005103()
	return 0
end
function DummyActorProxy:OnSubFinish2005103()
	return 0
end
function DummyActorProxy:OnSubFailed2005103()
	return 0
end
function DummyActorProxy:OnSubStart2005104()
	return 0
end
function DummyActorProxy:OnSubFinish2005104()
	return 0
end
function DummyActorProxy:OnSubFailed2005104()
	return 0
end
function DummyActorProxy:OnSubStart2005105()
	return 0
end
function DummyActorProxy:OnSubFinish2005105()
	return 0
end
function DummyActorProxy:OnSubFailed2005105()
	return 0
end
function DummyActorProxy:OnSubStart2005106()
	return 0
end
function DummyActorProxy:OnSubFinish2005106()
	return 0
end
function DummyActorProxy:OnSubFailed2005106()
	return 0
end
function DummyActorProxy:OnSubStart2005166()
	return 0
end
function DummyActorProxy:OnSubFinish2005166()
	return 0
end
function DummyActorProxy:OnSubFailed2005166()
	return 0
end
function DummyActorProxy:OnSubStart2005107()
	return 0
end
function DummyActorProxy:OnSubFinish2005107()
	return 0
end
function DummyActorProxy:OnSubFailed2005107()
	return 0
end
function DummyActorProxy:OnSubStart2005108()
	return 0
end
function DummyActorProxy:OnSubFinish2005108()
	return 0
end
function DummyActorProxy:OnSubFailed2005108()
	return 0
end
function DummyActorProxy:OnSubStart2005109()
	return 0
end
function DummyActorProxy:OnSubFinish2005109()
	return 0
end
function DummyActorProxy:OnSubFailed2005109()
	return 0
end
function DummyActorProxy:OnSubStart2005110()
	return 0
end
function DummyActorProxy:OnSubFinish2005110()
	return 0
end
function DummyActorProxy:OnSubFailed2005110()
	return 0
end
function DummyActorProxy:OnSubStart2005111()
	return 0
end
function DummyActorProxy:OnSubFinish2005111()
	return 0
end
function DummyActorProxy:OnSubFailed2005111()
	return 0
end
function DummyActorProxy:OnSubStart2005112()
	return 0
end
function DummyActorProxy:OnSubFinish2005112()
	return 0
end
function DummyActorProxy:OnSubFailed2005112()
	return 0
end
function DummyActorProxy:OnSubStart2005113()
	return 0
end
function DummyActorProxy:OnSubFinish2005113()
	return 0
end
function DummyActorProxy:OnSubFailed2005113()
	return 0
end
function DummyActorProxy:OnSubStart2005114()
	return 0
end
function DummyActorProxy:OnSubFinish2005114()
	return 0
end
function DummyActorProxy:OnSubFailed2005114()
	return 0
end
function DummyActorProxy:OnSubStart2005115()
	return 0
end
function DummyActorProxy:OnSubFinish2005115()
	return 0
end
function DummyActorProxy:OnSubFailed2005115()
	return 0
end
function DummyActorProxy:OnSubStart2005116()
	return 0
end
function DummyActorProxy:OnSubFinish2005116()
	return 0
end
function DummyActorProxy:OnSubFailed2005116()
	return 0
end
function DummyActorProxy:OnSubStart2005117()
	return 0
end
function DummyActorProxy:OnSubFinish2005117()
	return 0
end
function DummyActorProxy:OnSubFailed2005117()
	return 0
end
function DummyActorProxy:OnSubStart2005118()
	return 0
end
function DummyActorProxy:OnSubFinish2005118()
	return 0
end
function DummyActorProxy:OnSubFailed2005118()
	return 0
end
function DummyActorProxy:OnSubStart2005119()
	return 0
end
function DummyActorProxy:OnSubFinish2005119()
	return 0
end
function DummyActorProxy:OnSubFailed2005119()
	return 0
end
function DummyActorProxy:OnSubStart2005120()
	return 0
end
function DummyActorProxy:OnSubFinish2005120()
	return 0
end
function DummyActorProxy:OnSubFailed2005120()
	return 0
end
function DummyActorProxy:OnSubStart2005121()
	return 0
end
function DummyActorProxy:OnSubFinish2005121()
	return 0
end
function DummyActorProxy:OnSubFailed2005121()
	return 0
end
function DummyActorProxy:OnSubStart2005122()
	return 0
end
function DummyActorProxy:OnSubFinish2005122()
	return 0
end
function DummyActorProxy:OnSubFailed2005122()
	return 0
end
function DummyActorProxy:OnSubStart2005123()
	return 0
end
function DummyActorProxy:OnSubFinish2005123()
	return 0
end
function DummyActorProxy:OnSubFailed2005123()
	return 0
end
function DummyActorProxy:OnSubStart2005124()
	return 0
end
function DummyActorProxy:OnSubFinish2005124()
	return 0
end
function DummyActorProxy:OnSubFailed2005124()
	return 0
end
function DummyActorProxy:OnSubStart2005125()
	return 0
end
function DummyActorProxy:OnSubFinish2005125()
	return 0
end
function DummyActorProxy:OnSubFailed2005125()
	return 0
end
function DummyActorProxy:OnSubStart2005137()
	return 0
end
function DummyActorProxy:OnSubFinish2005137()
	return 0
end
function DummyActorProxy:OnSubFailed2005137()
	return 0
end
function DummyActorProxy:OnSubStart2005138()
	return 0
end
function DummyActorProxy:OnSubFinish2005138()
	return 0
end
function DummyActorProxy:OnSubFailed2005138()
	return 0
end
function DummyActorProxy:OnSubStart2005139()
	return 0
end
function DummyActorProxy:OnSubFinish2005139()
	return 0
end
function DummyActorProxy:OnSubFailed2005139()
	return 0
end
function DummyActorProxy:OnSubStart2005140()
	return 0
end
function DummyActorProxy:OnSubFinish2005140()
	return 0
end
function DummyActorProxy:OnSubFailed2005140()
	return 0
end
function DummyActorProxy:OnSubStart2005141()
	return 0
end
function DummyActorProxy:OnSubFinish2005141()
	return 0
end
function DummyActorProxy:OnSubFailed2005141()
	return 0
end
function DummyActorProxy:OnSubStart2005142()
	return 0
end
function DummyActorProxy:OnSubFinish2005142()
	return 0
end
function DummyActorProxy:OnSubFailed2005142()
	return 0
end
function DummyActorProxy:OnSubStart2005163()
	return 0
end
function DummyActorProxy:OnSubFinish2005163()
	return 0
end
function DummyActorProxy:OnSubFailed2005163()
	return 0
end
function DummyActorProxy:OnSubStart2005164()
	return 0
end
function DummyActorProxy:OnSubFinish2005164()
	return 0
end
function DummyActorProxy:OnSubFailed2005164()
	return 0
end
function DummyActorProxy:OnSubStart2005165()
	return 0
end
function DummyActorProxy:OnSubFinish2005165()
	return 0
end
function DummyActorProxy:OnSubFailed2005165()
	return 0
end
function DummyActorProxy:OnSubStart2005143()
	return 0
end
function DummyActorProxy:OnSubFinish2005143()
	return 0
end
function DummyActorProxy:OnSubFailed2005143()
	return 0
end
function DummyActorProxy:OnSubStart2005144()
	return 0
end
function DummyActorProxy:OnSubFinish2005144()
	return 0
end
function DummyActorProxy:OnSubFailed2005144()
	return 0
end
function DummyActorProxy:OnSubStart2005145()
	return 0
end
function DummyActorProxy:OnSubFinish2005145()
	return 0
end
function DummyActorProxy:OnSubFailed2005145()
	return 0
end
function DummyActorProxy:OnSubStart2005146()
	return 0
end
function DummyActorProxy:OnSubFinish2005146()
	return 0
end
function DummyActorProxy:OnSubFailed2005146()
	return 0
end
function DummyActorProxy:OnSubStart2005147()
	return 0
end
function DummyActorProxy:OnSubFinish2005147()
	return 0
end
function DummyActorProxy:OnSubFailed2005147()
	return 0
end
function DummyActorProxy:OnSubStart2005148()
	return 0
end
function DummyActorProxy:OnSubFinish2005148()
	return 0
end
function DummyActorProxy:OnSubFailed2005148()
	return 0
end
function DummyActorProxy:OnSubStart2005149()
	return 0
end
function DummyActorProxy:OnSubFinish2005149()
	return 0
end
function DummyActorProxy:OnSubFailed2005149()
	return 0
end
function DummyActorProxy:OnSubStart2005150()
	return 0
end
function DummyActorProxy:OnSubFinish2005150()
	return 0
end
function DummyActorProxy:OnSubFailed2005150()
	return 0
end
function DummyActorProxy:OnSubStart2005151()
	return 0
end
function DummyActorProxy:OnSubFinish2005151()
	return 0
end
function DummyActorProxy:OnSubFailed2005151()
	return 0
end
function DummyActorProxy:OnSubStart2005152()
	return 0
end
function DummyActorProxy:OnSubFinish2005152()
	return 0
end
function DummyActorProxy:OnSubFailed2005152()
	return 0
end
function DummyActorProxy:OnSubStart2005153()
	return 0
end
function DummyActorProxy:OnSubFinish2005153()
	return 0
end
function DummyActorProxy:OnSubFailed2005153()
	return 0
end
function DummyActorProxy:OnSubStart2005154()
	return 0
end
function DummyActorProxy:OnSubFinish2005154()
	return 0
end
function DummyActorProxy:OnSubFailed2005154()
	return 0
end
function DummyActorProxy:OnSubStart2005155()
	return 0
end
function DummyActorProxy:OnSubFinish2005155()
	return 0
end
function DummyActorProxy:OnSubFailed2005155()
	return 0
end
function DummyActorProxy:OnSubStart2005156()
	return 0
end
function DummyActorProxy:OnSubFinish2005156()
	return 0
end
function DummyActorProxy:OnSubFailed2005156()
	return 0
end
function DummyActorProxy:OnSubStart2005157()
	return 0
end
function DummyActorProxy:OnSubFinish2005157()
	return 0
end
function DummyActorProxy:OnSubFailed2005157()
	return 0
end
function DummyActorProxy:OnSubStart2005158()
	return 0
end
function DummyActorProxy:OnSubFinish2005158()
	return 0
end
function DummyActorProxy:OnSubFailed2005158()
	return 0
end
function DummyActorProxy:OnSubStart2005159()
	return 0
end
function DummyActorProxy:OnSubFinish2005159()
	return 0
end
function DummyActorProxy:OnSubFailed2005159()
	return 0
end
function DummyActorProxy:OnSubStart2005160()
	return 0
end
function DummyActorProxy:OnSubFinish2005160()
	return 0
end
function DummyActorProxy:OnSubFailed2005160()
	return 0
end
function DummyActorProxy:OnSubStart2005161()
	return 0
end
function DummyActorProxy:OnSubFinish2005161()
	return 0
end
function DummyActorProxy:OnSubFailed2005161()
	return 0
end
function DummyActorProxy:OnSubStart2005162()
	return 0
end
function DummyActorProxy:OnSubFinish2005162()
	return 0
end
function DummyActorProxy:OnSubFailed2005162()
	return 0
end

function DummyActorProxy:DestroyNPC()
	return 0
end
function DummyActorProxy:OnSubStart2005201()
	return 0
end
function DummyActorProxy:OnSubFinish2005201()
	return 0
end

function DummyActorProxy:OnSubStart2005401()
	return 0
end
function DummyActorProxy:OnSubFinish2005401()
	return 0
end
function DummyActorProxy:OnSubFailed2005401()
	return 0
end
function DummyActorProxy:OnSubStart2005402()
	return 0
end
function DummyActorProxy:OnSubFinish2005402()
	return 0
end
function DummyActorProxy:OnSubFailed2005402()
	return 0
end
function DummyActorProxy:OnSubStart2005403()
	return 0
end
function DummyActorProxy:OnSubFinish2005403()
	return 0
end
function DummyActorProxy:OnSubFailed2005403()
	return 0
end
function DummyActorProxy:OnSubStart2005404()
	return 0
end
function DummyActorProxy:OnSubFinish2005404()
	return 0
end
function DummyActorProxy:OnSubFailed2005404()
	return 0
end
function DummyActorProxy:OnSubStart2005405()
	return 0
end
function DummyActorProxy:OnSubFinish2005405()
	return 0
end
function DummyActorProxy:OnSubFailed2005405()
	return 0
end
function DummyActorProxy:OnSubStart2005406()
	return 0
end
function DummyActorProxy:OnSubFinish2005406()
	return 0
end
function DummyActorProxy:OnSubFailed2005406()
	return 0
end
function DummyActorProxy:OnSubStart2005407()
	return 0
end
function DummyActorProxy:OnSubFinish2005407()
	return 0
end
function DummyActorProxy:OnSubFailed2005407()
	return 0
end
function DummyActorProxy:OnSubStart2005408()
	return 0
end
function DummyActorProxy:OnSubFinish2005408()
	return 0
end
function DummyActorProxy:OnSubFailed2005408()
	return 0
end
function DummyActorProxy:OnSubStart2005409()
	return 0
end
function DummyActorProxy:OnSubFinish2005409()
	return 0
end
function DummyActorProxy:OnSubFailed2005409()
	return 0
end
function DummyActorProxy:OnSubStart2005410()
	return 0
end
function DummyActorProxy:OnSubFinish2005410()
	return 0
end
function DummyActorProxy:OnSubFailed2005410()
	return 0
end
function DummyActorProxy:OnSubStart2005411()
	return 0
end
function DummyActorProxy:OnSubFinish2005411()
	return 0
end
function DummyActorProxy:OnSubFailed2005411()
	return 0
end
function DummyActorProxy:OnSubStart2005412()
	return 0
end
function DummyActorProxy:OnSubFinish2005412()
	return 0
end
function DummyActorProxy:OnSubFailed2005412()
	return 0
end
function DummyActorProxy:OnSubStart2005413()
	return 0
end
function DummyActorProxy:OnSubFinish2005413()
	return 0
end
function DummyActorProxy:OnSubFailed2005413()
	return 0
end
function DummyActorProxy:OnSubStart2005414()
	return 0
end
function DummyActorProxy:OnSubFinish2005414()
	return 0
end
function DummyActorProxy:OnSubFailed2005414()
	return 0
end
function DummyActorProxy:OnSubStart2005415()
	return 0
end
function DummyActorProxy:OnSubFinish2005415()
	return 0
end
function DummyActorProxy:OnSubFailed2005415()
	return 0
end
function DummyActorProxy:OnSubStart2005416()
	return 0
end
function DummyActorProxy:OnSubFinish2005416()
	return 0
end
function DummyActorProxy:OnSubFailed2005416()
	return 0
end

function DummyActorProxy:OnSubStart2005801()
	return 0
end
function DummyActorProxy:OnSubFinish2005801()
	return 0
end
function DummyActorProxy:OnSubFailed2005801()
	return 0
end
function DummyActorProxy:OnSubStart2005802()
	return 0
end
function DummyActorProxy:OnSubFinish2005802()
	return 0
end
function DummyActorProxy:OnSubFailed2005802()
	return 0
end
function DummyActorProxy:OnSubStart2005803()
	return 0
end
function DummyActorProxy:OnSubFinish2005803()
	return 0
end
function DummyActorProxy:OnSubFailed2005803()
	return 0
end
function DummyActorProxy:OnSubStart2005804()
	return 0
end
function DummyActorProxy:OnSubFinish2005804()
	return 0
end
function DummyActorProxy:OnSubFailed2005804()
	return 0
end
function DummyActorProxy:OnSubStart2005805()
	return 0
end
function DummyActorProxy:OnSubFinish2005805()
	return 0
end
function DummyActorProxy:OnSubFailed2005805()
	return 0
end
function DummyActorProxy:OnSubStart2005806()
	return 0
end
function DummyActorProxy:OnSubFinish2005806()
	return 0
end
function DummyActorProxy:OnSubFailed2005806()
	return 0
end
function DummyActorProxy:OnSubStart2005807()
	return 0
end
function DummyActorProxy:OnSubFinish2005807()
	return 0
end
function DummyActorProxy:OnSubFailed2005807()
	return 0
end
function DummyActorProxy:OnSubStart2005808()
	return 0
end
function DummyActorProxy:OnSubFinish2005808()
	return 0
end
function DummyActorProxy:OnSubFailed2005808()
	return 0
end
function DummyActorProxy:OnSubStart2005809()
	return 0
end
function DummyActorProxy:OnSubFinish2005809()
	return 0
end
function DummyActorProxy:OnSubFailed2005809()
	return 0
end

function DummyActorProxy:OnSubStart2006001()
	return 0
end
function DummyActorProxy:OnSubFinish2006001()
	return 0
end
function DummyActorProxy:OnSubFailed2006001()
	return 0
end
function DummyActorProxy:OnSubStart2006002()
	return 0
end
function DummyActorProxy:OnSubFinish2006002()
	return 0
end
function DummyActorProxy:OnSubFailed2006002()
	return 0
end
function DummyActorProxy:OnSubStart2006003()
	return 0
end
function DummyActorProxy:OnSubFinish2006003()
	return 0
end
function DummyActorProxy:OnSubFailed2006003()
	return 0
end
function DummyActorProxy:OnSubStart2006004()
	return 0
end
function DummyActorProxy:OnSubFinish2006004()
	return 0
end
function DummyActorProxy:OnSubFailed2006004()
	return 0
end
function DummyActorProxy:OnSubStart2006005()
	return 0
end
function DummyActorProxy:OnSubFinish2006005()
	return 0
end
function DummyActorProxy:OnSubFailed2006005()
	return 0
end
function DummyActorProxy:OnSubStart2006006()
	return 0
end
function DummyActorProxy:OnSubFinish2006006()
	return 0
end
function DummyActorProxy:OnSubFailed2006006()
	return 0
end
function DummyActorProxy:OnSubStart2006007()
	return 0
end
function DummyActorProxy:OnSubFinish2006007()
	return 0
end
function DummyActorProxy:OnSubFailed2006007()
	return 0
end
function DummyActorProxy:OnSubStart2006008()
	return 0
end
function DummyActorProxy:OnSubFinish2006008()
	return 0
end
function DummyActorProxy:OnSubFailed2006008()
	return 0
end
function DummyActorProxy:OnSubStart2006009()
	return 0
end
function DummyActorProxy:OnSubFinish2006009()
	return 0
end
function DummyActorProxy:OnSubFailed2006009()
	return 0
end
function DummyActorProxy:OnDestroyWithDisappear()
	return 0
end

function DummyActorProxy:DestroyPaimon()
	return 0
end
function DummyActorProxy:OnSubStart2006101()
	return 0
end
function DummyActorProxy:OnSubFinish2006101()
	return 0
end
function DummyActorProxy:OnSubFailed2006101()
	return 0
end
function DummyActorProxy:OnSubStart2006102()
	return 0
end
function DummyActorProxy:OnSubFinish2006102()
	return 0
end
function DummyActorProxy:OnSubFailed2006102()
	return 0
end
function DummyActorProxy:OnSubStart2006103()
	return 0
end
function DummyActorProxy:OnSubFinish2006103()
	return 0
end
function DummyActorProxy:OnSubFailed2006103()
	return 0
end
function DummyActorProxy:OnSubStart2006104()
	return 0
end
function DummyActorProxy:OnSubFinish2006104()
	return 0
end
function DummyActorProxy:OnSubFailed2006104()
	return 0
end
function DummyActorProxy:OnSubStart2006105()
	return 0
end
function DummyActorProxy:OnSubFinish2006105()
	return 0
end
function DummyActorProxy:OnSubFailed2006105()
	return 0
end
function DummyActorProxy:OnSubStart2006106()
	return 0
end
function DummyActorProxy:OnSubFinish2006106()
	return 0
end
function DummyActorProxy:OnSubFailed2006106()
	return 0
end
function DummyActorProxy:OnSubStart2006107()
	return 0
end
function DummyActorProxy:OnSubFinish2006107()
	return 0
end
function DummyActorProxy:OnSubFailed2006107()
	return 0
end
function DummyActorProxy:OnSubStart2006108()
	return 0
end
function DummyActorProxy:OnSubFinish2006108()
	return 0
end
function DummyActorProxy:OnSubFailed2006108()
	return 0
end
function DummyActorProxy:OnSubStart2006109()
	return 0
end
function DummyActorProxy:OnSubFinish2006109()
	return 0
end
function DummyActorProxy:OnSubFailed2006109()
	return 0
end
function DummyActorProxy:OnSubStart2006110()
	return 0
end
function DummyActorProxy:OnSubFinish2006110()
	return 0
end
function DummyActorProxy:OnSubFailed2006110()
	return 0
end
function DummyActorProxy:OnSubStart2006111()
	return 0
end
function DummyActorProxy:OnSubFinish2006111()
	return 0
end
function DummyActorProxy:OnSubFailed2006111()
	return 0
end
function DummyActorProxy:OnSubStart2006112()
	return 0
end
function DummyActorProxy:OnSubFinish2006112()
	return 0
end
function DummyActorProxy:OnSubFailed2006112()
	return 0
end
function DummyActorProxy:OnSubStart2006113()
	return 0
end
function DummyActorProxy:OnSubFinish2006113()
	return 0
end
function DummyActorProxy:OnSubFailed2006113()
	return 0
end
function DummyActorProxy:OnSubStart2006114()
	return 0
end
function DummyActorProxy:OnSubFinish2006114()
	return 0
end
function DummyActorProxy:OnSubFailed2006114()
	return 0
end
function DummyActorProxy:OnSubStart2006115()
	return 0
end
function DummyActorProxy:OnSubFinish2006115()
	return 0
end
function DummyActorProxy:OnSubFailed2006115()
	return 0
end
function DummyActorProxy:OnSubStart2006116()
	return 0
end
function DummyActorProxy:OnSubFinish2006116()
	return 0
end
function DummyActorProxy:OnSubFailed2006116()
	return 0
end

function DummyActorProxy:OnSubStart2006201()
	return 0
end
function DummyActorProxy:OnSubFinish2006201()
	return 0
end
function DummyActorProxy:OnSubFailed2006201()
	return 0
end
function DummyActorProxy:OnSubStart2006202()
	return 0
end
function DummyActorProxy:OnSubFinish2006202()
	return 0
end
function DummyActorProxy:OnSubFailed2006202()
	return 0
end
function DummyActorProxy:OnSubStart2006203()
	return 0
end
function DummyActorProxy:OnSubFinish2006203()
	return 0
end
function DummyActorProxy:OnSubFailed2006203()
	return 0
end
function DummyActorProxy:OnSubStart2006204()
	return 0
end
function DummyActorProxy:OnSubFinish2006204()
	return 0
end
function DummyActorProxy:OnSubFailed2006204()
	return 0
end
function DummyActorProxy:OnSubStart2006205()
	return 0
end
function DummyActorProxy:OnSubFinish2006205()
	return 0
end
function DummyActorProxy:OnSubFailed2006205()
	return 0
end
function DummyActorProxy:OnSubStart2006206()
	return 0
end
function DummyActorProxy:OnSubFinish2006206()
	return 0
end
function DummyActorProxy:OnSubFailed2006206()
	return 0
end
function DummyActorProxy:OnSubStart2006207()
	return 0
end
function DummyActorProxy:OnSubFinish2006207()
	return 0
end
function DummyActorProxy:OnSubFailed2006207()
	return 0
end

function DummyActorProxy:OnSubStart2010102()
	return 0
end
function DummyActorProxy:OnSubStart2010103()
	return 0
end
function DummyActorProxy:OnSubStart2010141()
	return 0
end
function DummyActorProxy:OnSubStart2010104()
	return 0
end
function DummyActorProxy:OnSubStart2010111()
	return 0
end
function DummyActorProxy:OnSubStart2010142()
	return 0
end
function DummyActorProxy:OnSubStart2010114()
	return 0
end
function DummyActorProxy:OnSubStart2010121()
	return 0
end
function DummyActorProxy:OnSubStart2010124()
	return 0
end
function DummyActorProxy:OnSubStart2010131()
	return 0
end
function DummyActorProxy:OnSubStart2010134()
	return 0
end
function DummyActorProxy:OnSubStart2010136()
	return 0
end
function DummyActorProxy:OnSubStart2010138()
	return 0
end
function DummyActorProxy:OnSubStart2010143()
	return 0
end
function DummyActorProxy:OnSubStart2010152()
	return 0
end
function DummyActorProxy:OnSubStart2010151()
	return 0
end
function DummyActorProxy:RequestDiluc()
	return 0
end
function DummyActorProxy:OnSubFinish2010100()
	return 0
end
function DummyActorProxy:OnSubFinish2010103()
	return 0
end
function DummyActorProxy:OnSubFinish2010142()
	return 0
end
function DummyActorProxy:DestroyScaredNPC()
	return 0
end
function DummyActorProxy:TellStory()
	return 0
end
function DummyActorProxy:OnSubFinish2010104()
	return 0
end
function DummyActorProxy:OnSubFinish2010109()
	return 0
end
function DummyActorProxy:OnSubFinish2010112()
	return 0
end
function DummyActorProxy:OnSubFinish2010119()
	return 0
end
function DummyActorProxy:OnSubFinish2010122()
	return 0
end
function DummyActorProxy:OnSubFinish2010129()
	return 0
end
function DummyActorProxy:OnSubFinish2010132()
	return 0
end
function DummyActorProxy:OnSubFinish2010111()
	return 0
end
function DummyActorProxy:DestroyGuardNPC1()
	return 0
end
function DummyActorProxy:OnSubFinish2010114()
	return 0
end
function DummyActorProxy:OnSubFinish2010121()
	return 0
end
function DummyActorProxy:DestroyGuardNPC2()
	return 0
end
function DummyActorProxy:OnSubFinish2010151()
	return 0
end
function DummyActorProxy:OnSubFinish2010113()
	return 0
end
function DummyActorProxy:OnSubFinish2010123()
	return 0
end
function DummyActorProxy:OnSubFinish2010135()
	return 0
end
function DummyActorProxy:OnSubFinish2010139()
	return 0
end
function DummyActorProxy:MoveDiluc()
	return 0
end
function DummyActorProxy:ShowBubble2()
	return 0
end
function DummyActorProxy:BubbleTime2()
	return 0
end
function DummyActorProxy:CloseBubble2()
	return 0
end
function DummyActorProxy:BubbleGap2()
	return 0
end

function DummyActorProxy:OnSubStart2050003()
	return 0
end

function DummyActorProxy:OnSubStart2050105()
	return 0
end
function DummyActorProxy:OnSubFinish2050105()
	return 0
end
function DummyActorProxy:OnSubStart2050106()
	return 0
end
function DummyActorProxy:OnSubFinish2050106()
	return 0
end
function DummyActorProxy:OnSubStart2050107()
	return 0
end
function DummyActorProxy:OnSubFinish2050107()
	return 0
end
function DummyActorProxy:OnSubStart2050108()
	return 0
end
function DummyActorProxy:OnSubFinish2050108()
	return 0
end

function DummyActorProxy:OnSubStart2050201()
	return 0
end
function DummyActorProxy:OnSubFinish2050202()
	return 0
end

function DummyActorProxy:OnSubFinish2050301()
	return 0
end
function DummyActorProxy:OnSubFinish2050302()
	return 0
end
function DummyActorProxy:OnSubFinish2050303()
	return 0
end
function DummyActorProxy:OnSubFinish2050305()
	return 0
end
function DummyActorProxy:OnSubFinish2050306()
	return 0
end

function DummyActorProxy:OnSubFinish2050401()
	return 0
end
function DummyActorProxy:OnSubFinish2050402()
	return 0
end

function DummyActorProxy:OnSubFinish2050501()
	return 0
end

function DummyActorProxy:OnSubFinish2050601()
	return 0
end

function DummyActorProxy:OnSubFinish2050701()
	return 0
end
function DummyActorProxy:OnSubStart2050702()
	return 0
end

function DummyActorProxy:OnSubStart2050802()
	return 0
end
function DummyActorProxy:OnSubFinish2050802()
	return 0
end
function DummyActorProxy:OnSubStart2050804()
	return 0
end
function DummyActorProxy:OnSubFinish2050804()
	return 0
end
function DummyActorProxy:OnSubStart2050806()
	return 0
end
function DummyActorProxy:OnSubFinish2050806()
	return 0
end
function DummyActorProxy:OnSubStart2050808()
	return 0
end
function DummyActorProxy:OnSubFinish2050808()
	return 0
end

function DummyActorProxy:OnSubStart2050902()
	return 0
end

function DummyActorProxy:OnSubStart2100501()
	return 0
end
function DummyActorProxy:OnSubFinish2100501()
	return 0
end
function DummyActorProxy:OnSubFailed2100501()
	return 0
end
function DummyActorProxy:OnSubStart2100502()
	return 0
end
function DummyActorProxy:OnSubFinish2100502()
	return 0
end
function DummyActorProxy:OnSubFailed2100502()
	return 0
end
function DummyActorProxy:OnSubStart2100504()
	return 0
end
function DummyActorProxy:OnSubFinish2100504()
	return 0
end
function DummyActorProxy:OnSubFailed2100504()
	return 0
end
function DummyActorProxy:OnSubStart2100506()
	return 0
end
function DummyActorProxy:OnSubFinish2100506()
	return 0
end
function DummyActorProxy:OnSubFailed2100506()
	return 0
end
function DummyActorProxy:OnSubStart2100508()
	return 0
end
function DummyActorProxy:OnSubFinish2100508()
	return 0
end
function DummyActorProxy:OnSubFailed2100508()
	return 0
end
function DummyActorProxy:OnSubStart2100509()
	return 0
end
function DummyActorProxy:OnSubStart2100510()
	return 0
end
function DummyActorProxy:OnSubStart2100511()
	return 0
end
function DummyActorProxy:OnSubStart2100512()
	return 0
end

function DummyActorProxy:Create02()
	return 0
end
function DummyActorProxy:OnSubStart2101202()
	return 0
end

function DummyActorProxy:OnSubStart2101400()
	return 0
end
function DummyActorProxy:OnSubFinish2101400()
	return 0
end
function DummyActorProxy:OnSubFailed2101400()
	return 0
end

function DummyActorProxy:OnSubStart2101501()
	return 0
end
function DummyActorProxy:OnSubFinish2101501()
	return 0
end
function DummyActorProxy:OnSubFailed2101501()
	return 0
end
function DummyActorProxy:OnSubStart2101502()
	return 0
end
function DummyActorProxy:OnSubFinish2101502()
	return 0
end
function DummyActorProxy:OnSubFailed2101502()
	return 0
end
function DummyActorProxy:OnSubStart2101503()
	return 0
end
function DummyActorProxy:OnSubFinish2101503()
	return 0
end
function DummyActorProxy:OnSubFailed2101503()
	return 0
end
function DummyActorProxy:OnSubStart2101504()
	return 0
end
function DummyActorProxy:OnSubFinish2101504()
	return 0
end
function DummyActorProxy:OnSubFailed2101504()
	return 0
end
function DummyActorProxy:OnSubStart2101505()
	return 0
end
function DummyActorProxy:OnSubFinish2101505()
	return 0
end
function DummyActorProxy:OnSubFailed2101505()
	return 0
end
function DummyActorProxy:OnSubStart2101506()
	return 0
end
function DummyActorProxy:OnSubFinish2101506()
	return 0
end
function DummyActorProxy:OnSubFailed2101506()
	return 0
end

function DummyActorProxy:OnSubStart2101601()
	return 0
end
function DummyActorProxy:OnSubFinish2101601()
	return 0
end
function DummyActorProxy:OnSubFailed2101601()
	return 0
end
function DummyActorProxy:OnSubStart2101602()
	return 0
end
function DummyActorProxy:OnSubFinish2101602()
	return 0
end
function DummyActorProxy:OnSubFailed2101602()
	return 0
end
function DummyActorProxy:OnSubStart2101604()
	return 0
end
function DummyActorProxy:OnSubFinish2101604()
	return 0
end
function DummyActorProxy:OnSubFailed2101604()
	return 0
end
function DummyActorProxy:OnSubStart2101606()
	return 0
end
function DummyActorProxy:OnSubFinish2101606()
	return 0
end
function DummyActorProxy:OnSubFailed2101606()
	return 0
end
function DummyActorProxy:OnSubStart2101608()
	return 0
end
function DummyActorProxy:OnSubFinish2101608()
	return 0
end
function DummyActorProxy:OnSubFailed2101608()
	return 0
end
function DummyActorProxy:OnSubStart2101609()
	return 0
end
function DummyActorProxy:OnSubStart2101610()
	return 0
end
function DummyActorProxy:OnSubStart2101611()
	return 0
end
function DummyActorProxy:OnSubStart2101612()
	return 0
end

function DummyActorProxy:OnSubStart2101701()
	return 0
end
function DummyActorProxy:OnSubFinish2101701()
	return 0
end
function DummyActorProxy:OnSubFailed2101701()
	return 0
end
function DummyActorProxy:OnSubStart2101702()
	return 0
end
function DummyActorProxy:OnSubFinish2101702()
	return 0
end
function DummyActorProxy:OnSubFailed2101702()
	return 0
end
function DummyActorProxy:OnSubStart2101704()
	return 0
end
function DummyActorProxy:OnSubFinish2101704()
	return 0
end
function DummyActorProxy:OnSubFailed2101704()
	return 0
end
function DummyActorProxy:OnSubStart2101706()
	return 0
end
function DummyActorProxy:OnSubFinish2101706()
	return 0
end
function DummyActorProxy:OnSubFailed2101706()
	return 0
end
function DummyActorProxy:OnSubStart2101708()
	return 0
end
function DummyActorProxy:OnSubFinish2101708()
	return 0
end
function DummyActorProxy:OnSubFailed2101708()
	return 0
end
function DummyActorProxy:OnSubStart2101709()
	return 0
end
function DummyActorProxy:OnSubStart2101710()
	return 0
end
function DummyActorProxy:OnSubStart2101711()
	return 0
end
function DummyActorProxy:OnSubStart2101712()
	return 0
end

function DummyActorProxy:OnSubStart2101801()
	return 0
end
function DummyActorProxy:OnSubFinish2101801()
	return 0
end
function DummyActorProxy:OnSubFailed2101801()
	return 0
end
function DummyActorProxy:OnSubStart2101802()
	return 0
end
function DummyActorProxy:OnSubFinish2101802()
	return 0
end
function DummyActorProxy:OnSubFailed2101802()
	return 0
end
function DummyActorProxy:OnSubStart2101803()
	return 0
end
function DummyActorProxy:OnSubFinish2101803()
	return 0
end
function DummyActorProxy:OnSubFailed2101803()
	return 0
end
function DummyActorProxy:OnSubStart2101804()
	return 0
end
function DummyActorProxy:OnSubFinish2101804()
	return 0
end
function DummyActorProxy:OnSubFailed2101804()
	return 0
end
function DummyActorProxy:OnSubStart2101805()
	return 0
end
function DummyActorProxy:OnSubFinish2101805()
	return 0
end
function DummyActorProxy:OnSubFailed2101805()
	return 0
end
function DummyActorProxy:OnSubStart2101806()
	return 0
end
function DummyActorProxy:OnSubFinish2101806()
	return 0
end
function DummyActorProxy:OnSubFailed2101806()
	return 0
end
function DummyActorProxy:OnSubStart2101807()
	return 0
end
function DummyActorProxy:OnSubFinish2101807()
	return 0
end
function DummyActorProxy:OnSubFailed2101807()
	return 0
end
function DummyActorProxy:OnSubStart2101808()
	return 0
end
function DummyActorProxy:OnSubFinish2101808()
	return 0
end
function DummyActorProxy:OnSubFailed2101808()
	return 0
end
function DummyActorProxy:OnSubStart2101809()
	return 0
end
function DummyActorProxy:OnSubFinish2101809()
	return 0
end
function DummyActorProxy:OnSubFailed2101809()
	return 0
end
function DummyActorProxy:OnSubStart2101810()
	return 0
end
function DummyActorProxy:OnSubFinish2101810()
	return 0
end
function DummyActorProxy:OnSubFailed2101810()
	return 0
end
function DummyActorProxy:OnSubStart2101811()
	return 0
end
function DummyActorProxy:OnSubFinish2101811()
	return 0
end
function DummyActorProxy:OnSubFailed2101811()
	return 0
end

function DummyActorProxy:OnSubStart9000101()
	return 0
end
function DummyActorProxy:OnSubFinish9000101()
	return 0
end
function DummyActorProxy:OnSubFailed9000101()
	return 0
end

function DummyActorProxy:PaimonDis()
	return 0
end
function DummyActorProxy:PaimonDelay()
	return 0
end
function DummyActorProxy:PlayCutscene451()
	return 0
end
function DummyActorProxy:Razor05()
	return 0
end
function DummyActorProxy:OnSubStart45109()
	return 0
end
function DummyActorProxy:OnSubStart45101()
	return 0
end
function DummyActorProxy:OnSubStart45102()
	return 0
end
function DummyActorProxy:OnSubStart45103()
	return 0
end
function DummyActorProxy:OnSubStart45104()
	return 0
end
function DummyActorProxy:OnSubStart45105()
	return 0
end
function DummyActorProxy:OnSubStart45106()
	return 0
end
function DummyActorProxy:OnSubStart45108()
	return 0
end
function DummyActorProxy:OnSubFinish45109()
	return 0
end
function DummyActorProxy:OnSubFinish45101()
	return 0
end
function DummyActorProxy:OnSubFinish45102()
	return 0
end
function DummyActorProxy:OnSubFinish45103()
	return 0
end
function DummyActorProxy:OnSubFinish45104()
	return 0
end
function DummyActorProxy:OnSubFinish45105()
	return 0
end
function DummyActorProxy:OnSubFinish45106()
	return 0
end
function DummyActorProxy:OnSubFinish45108()
	return 0
end

function DummyActorProxy:AmborToFight()
	return 0
end
function DummyActorProxy:AmborEnd()
	return 0
end
function DummyActorProxy:OnSubStart45201()
	return 0
end
function DummyActorProxy:OnSubStart45202()
	return 0
end
function DummyActorProxy:OnSubStart45203()
	return 0
end
function DummyActorProxy:OnSubStart45206()
	return 0
end
function DummyActorProxy:OnSubStart45204()
	return 0
end
function DummyActorProxy:OnSubStart45205()
	return 0
end
function DummyActorProxy:OnSubFinish45201()
	return 0
end
function DummyActorProxy:OnSubFinish45202()
	return 0
end
function DummyActorProxy:OnSubFinish45203()
	return 0
end
function DummyActorProxy:OnSubFinish45206()
	return 0
end
function DummyActorProxy:OnSubFinish45204()
	return 0
end
function DummyActorProxy:OnSubFinish45205()
	return 0
end

function DummyActorProxy:FarmersPrepare()
	return 0
end
function DummyActorProxy:FamersChange()
	return 0
end
function DummyActorProxy:Ambor01()
	return 0
end
function DummyActorProxy:Ambor06()
	return 0
end
function DummyActorProxy:OnSubStart45301()
	return 0
end
function DummyActorProxy:OnSubStart45302()
	return 0
end
function DummyActorProxy:OnSubStart45307()
	return 0
end
function DummyActorProxy:OnSubStart45303()
	return 0
end
function DummyActorProxy:OnSubStart45308()
	return 0
end
function DummyActorProxy:OnSubStart45304()
	return 0
end
function DummyActorProxy:OnSubStart45305()
	return 0
end
function DummyActorProxy:OnSubStart45306()
	return 0
end
function DummyActorProxy:OnSubFinish45301()
	return 0
end
function DummyActorProxy:OnSubFinish45302()
	return 0
end
function DummyActorProxy:OnSubFinish45307()
	return 0
end
function DummyActorProxy:OnSubFinish45303()
	return 0
end
function DummyActorProxy:OnSubFinish45308()
	return 0
end
function DummyActorProxy:OnSubFinish45304()
	return 0
end
function DummyActorProxy:OnSubFinish45305()
	return 0
end
function DummyActorProxy:OnSubFinish45306()
	return 0
end

function DummyActorProxy:PlayCutscene454()
	return 0
end
function DummyActorProxy:ShowBlack()
	return 0
end
function DummyActorProxy:Create11()
	return 0
end
function DummyActorProxy:Create12()
	return 0
end
function DummyActorProxy:Create14()
	return 0
end
function DummyActorProxy:Create14Delay()
	return 0
end
function DummyActorProxy:Create06()
	return 0
end
function DummyActorProxy:Bopian()
	return 0
end
function DummyActorProxy:Destroy03()
	return 0
end
function DummyActorProxy:Finish05()
	return 0
end
function DummyActorProxy:Change03()
	return 0
end
function DummyActorProxy:Change06()
	return 0
end
function DummyActorProxy:OnSubStart45407()
	return 0
end
function DummyActorProxy:OnSubStart45401()
	return 0
end
function DummyActorProxy:OnSubStart45410()
	return 0
end
function DummyActorProxy:OnSubStart45411()
	return 0
end
function DummyActorProxy:OnSubStart45412()
	return 0
end
function DummyActorProxy:OnSubStart45413()
	return 0
end
function DummyActorProxy:OnSubStart45414()
	return 0
end
function DummyActorProxy:OnSubStart45408()
	return 0
end
function DummyActorProxy:OnSubStart45409()
	return 0
end
function DummyActorProxy:OnSubStart45415()
	return 0
end
function DummyActorProxy:OnSubStart45402()
	return 0
end
function DummyActorProxy:OnSubStart45403()
	return 0
end
function DummyActorProxy:OnSubStart45404()
	return 0
end
function DummyActorProxy:OnSubStart45416()
	return 0
end
function DummyActorProxy:OnSubStart45405()
	return 0
end
function DummyActorProxy:OnSubStart45406()
	return 0
end
function DummyActorProxy:OnSubFinish45407()
	return 0
end
function DummyActorProxy:OnSubFinish45401()
	return 0
end
function DummyActorProxy:OnSubFinish45410()
	return 0
end
function DummyActorProxy:OnSubFinish45411()
	return 0
end
function DummyActorProxy:OnSubFinish45412()
	return 0
end
function DummyActorProxy:OnSubFinish45413()
	return 0
end
function DummyActorProxy:OnSubFinish45414()
	return 0
end
function DummyActorProxy:OnSubFinish45408()
	return 0
end
function DummyActorProxy:OnSubFinish45409()
	return 0
end
function DummyActorProxy:OnSubFinish45415()
	return 0
end
function DummyActorProxy:OnSubFinish45402()
	return 0
end
function DummyActorProxy:OnSubFinish45403()
	return 0
end
function DummyActorProxy:OnSubFinish45416()
	return 0
end
function DummyActorProxy:OnSubFinish45404()
	return 0
end
function DummyActorProxy:OnSubFinish45405()
	return 0
end
function DummyActorProxy:OnSubFinish45406()
	return 0
end

function DummyActorProxy:DestroyNpc()
	return 0
end
function DummyActorProxy:MoveKaeya()
	return 0
end
function DummyActorProxy:DestroyKaeya()
	return 0
end
function DummyActorProxy:KaeyaTask()
	return 0
end
function DummyActorProxy:KaeyaTask2()
	return 0
end
function DummyActorProxy:KaeyaTask3()
	return 0
end
function DummyActorProxy:NPCTask()
	return 0
end
function DummyActorProxy:OnSubStart46101()
	return 0
end
function DummyActorProxy:OnSubFinish46101()
	return 0
end
function DummyActorProxy:OnSubStart46102()
	return 0
end
function DummyActorProxy:OnSubFinish46102()
	return 0
end
function DummyActorProxy:OnSubStart46109()
	return 0
end
function DummyActorProxy:StartTalk()
	return 0
end
function DummyActorProxy:OnSubFinish46109()
	return 0
end
function DummyActorProxy:OnSubStart46103()
	return 0
end
function DummyActorProxy:OnSubStart46104()
	return 0
end
function DummyActorProxy:CountTalk()
	return 0
end
function DummyActorProxy:OnSubFinish46104()
	return 0
end
function DummyActorProxy:OnSubFinish46105()
	return 0
end
function DummyActorProxy:OnSubFinish46106()
	return 0
end
function DummyActorProxy:OnSubFinish46107()
	return 0
end
function DummyActorProxy:OnSubStart46107()
	return 0
end

function DummyActorProxy:OnSubStart46201()
	return 0
end
function DummyActorProxy:OnSubStart46202()
	return 0
end
function DummyActorProxy:SceneLookCamera()
	return 0
end
function DummyActorProxy:PaimonNarrator()
	return 0
end
function DummyActorProxy:PlayerInputOn()
	return 0
end
function DummyActorProxy:OnSubStart46203()
	return 0
end
function DummyActorProxy:OnSubFinish46203()
	return 0
end
function DummyActorProxy:OnSubStart46204()
	return 0
end
function DummyActorProxy:StartTalk46204()
	return 0
end
function DummyActorProxy:OnSubFinish46204()
	return 0
end
function DummyActorProxy:OnSubStart46206()
	return 0
end
function DummyActorProxy:OnSubFinish46206()
	return 0
end
function DummyActorProxy:OnSubFinish46205()
	return 0
end
function DummyActorProxy:OnSubFinish46207()
	return 0
end
function DummyActorProxy:OnSubStart46210()
	return 0
end
function DummyActorProxy:OnSubFinish46210()
	return 0
end

function DummyActorProxy:PaimonEnter()
	return 0
end
function DummyActorProxy:KaeyaLeave()
	return 0
end
function DummyActorProxy:Soldier1Enter()
	return 0
end
function DummyActorProxy:Soldier2Enter()
	return 0
end
function DummyActorProxy:KaeyaEnter()
	return 0
end
function DummyActorProxy:NPCEnter()
	return 0
end
function DummyActorProxy:NPCRun()
	return 0
end
function DummyActorProxy:NPCRun2()
	return 0
end
function DummyActorProxy:NPCTrans()
	return 0
end
function DummyActorProxy:PaiMonTrans()
	return 0
end
function DummyActorProxy:KaeyaTrans()
	return 0
end
function DummyActorProxy:OnSubFinish46306()
	return 0
end
function DummyActorProxy:StartTalk46300()
	return 0
end
function DummyActorProxy:StartTalk46301()
	return 0
end
function DummyActorProxy:OnSubStart46300()
	return 0
end
function DummyActorProxy:OnSubFinish46300()
	return 0
end
function DummyActorProxy:OnSubStart46301()
	return 0
end
function DummyActorProxy:OnSubFinish46301()
	return 0
end
function DummyActorProxy:OnSubStart46302()
	return 0
end
function DummyActorProxy:OnSubStart46303()
	return 0
end
function DummyActorProxy:OnSubStart46304()
	return 0
end
function DummyActorProxy:OnSubStart46307()
	return 0
end
function DummyActorProxy:OnSubFinish46307()
	return 0
end
function DummyActorProxy:OnSubStart46305()
	return 0
end
function DummyActorProxy:OnSubFinish46305()
	return 0
end

function DummyActorProxy:OnSubStart46402()
	return 0
end
function DummyActorProxy:Start46402Do()
	return 0
end
function DummyActorProxy:OnSubFinish46402()
	return 0
end
function DummyActorProxy:Finish46402Do()
	return 0
end
function DummyActorProxy:OnSubStart46403()
	return 0
end
function DummyActorProxy:OnSubFinish46403()
	return 0
end
function DummyActorProxy:Finish46403Do()
	return 0
end
function DummyActorProxy:OnSubStart46404()
	return 0
end
function DummyActorProxy:OnSubFinish46404()
	return 0
end
function DummyActorProxy:Finish46404Do()
	return 0
end
function DummyActorProxy:OnSubFinish46405()
	return 0
end
function DummyActorProxy:OnSubFinish46406()
	return 0
end
function DummyActorProxy:AfterCSDo()
	return 0
end
function DummyActorProxy:OnSubStart46407()
	return 0
end
function DummyActorProxy:OnSubFinish46407()
	return 0
end
function DummyActorProxy:Finish46407Do()
	return 0
end
function DummyActorProxy:OnSubStart46408()
	return 0
end
function DummyActorProxy:OnSubFinish46408()
	return 0
end
function DummyActorProxy:OnBright2()
	return 0
end
function DummyActorProxy:OnSubStart46409()
	return 0
end
function DummyActorProxy:OnSubFinish46409()
	return 0
end
function DummyActorProxy:Finish46409Do()
	return 0
end
function DummyActorProxy:OnBright1()
	return 0
end
function DummyActorProxy:DilucVanish()
	return 0
end
function DummyActorProxy:CreatPaimon()
	return 0
end

function DummyActorProxy:OnSubStart46502()
	return 0
end
function DummyActorProxy:OnSubStart46503()
	return 0
end
function DummyActorProxy:CreatHoffman()
	return 0
end
function DummyActorProxy:OnSubFinish46503()
	return 0
end
function DummyActorProxy:DesHoffman()
	return 0
end
function DummyActorProxy:OnSubStart46504()
	return 0
end
function DummyActorProxy:OnSubFinish46504()
	return 0
end
function DummyActorProxy:OnSubFinish46522()
	return 0
end
function DummyActorProxy:Finish46522Do()
	return 0
end
function DummyActorProxy:OnSubFinish46505()
	return 0
end
function DummyActorProxy:Finish46505Do()
	return 0
end
function DummyActorProxy:OnBright3()
	return 0
end
function DummyActorProxy:OnSubFinish46507()
	return 0
end
function DummyActorProxy:OnSubFinish46508()
	return 0
end
function DummyActorProxy:OnSubFinish46509()
	return 0
end
function DummyActorProxy:NPCVanish()
	return 0
end
function DummyActorProxy:SANMinusi()
	return 0
end
function DummyActorProxy:SANMinusj()
	return 0
end
function DummyActorProxy:SANMinusk()
	return 0
end
function DummyActorProxy:ESC()
	return 0
end
function DummyActorProxy:SUC()
	return 0
end
function DummyActorProxy:showstate()
	return 0
end
function DummyActorProxy:Worry()
	return 0
end
function DummyActorProxy:Sweat()
	return 0
end
function DummyActorProxy:Shock()
	return 0
end
function DummyActorProxy:showESC()
	return 0
end
function DummyActorProxy:OnSubStart46510()
	return 0
end
function DummyActorProxy:AutoTalk()
	return 0
end
function DummyActorProxy:OnBright6()
	return 0
end
function DummyActorProxy:OnSubStart46514()
	return 0
end
function DummyActorProxy:Invoke7Do()
	return 0
end
function DummyActorProxy:OnBright4()
	return 0
end
function DummyActorProxy:Invoke9Do()
	return 0
end
function DummyActorProxy:OnBright8()
	return 0
end
function DummyActorProxy:HideAbyss()
	return 0
end
function DummyActorProxy:OnBright10()
	return 0
end
function DummyActorProxy:OnSubFinish46518()
	return 0
end
function DummyActorProxy:CreatMonster()
	return 0
end
function DummyActorProxy:OnSubFinish46514()
	return 0
end
function DummyActorProxy:Finish46514Do()
	return 0
end
function DummyActorProxy:OnSubStart46520()
	return 0
end
function DummyActorProxy:Start46520Do()
	return 0
end
function DummyActorProxy:OnBright7()
	return 0
end
function DummyActorProxy:OnSubFinish46511()
	return 0
end
function DummyActorProxy:OnSubFinish46524()
	return 0
end
function DummyActorProxy:Finish46524Do()
	return 0
end
function DummyActorProxy:OnBright9()
	return 0
end
function DummyActorProxy:OnSubStart46513()
	return 0
end
function DummyActorProxy:OnSubFinish46513()
	return 0
end
function DummyActorProxy:Finish46513Do()
	return 0
end
function DummyActorProxy:OnBright5()
	return 0
end
function DummyActorProxy:OnSubStart46521()
	return 0
end
function DummyActorProxy:OnSubFinish46521()
	return 0
end
function DummyActorProxy:Finish46521Do()
	return 0
end

function DummyActorProxy:OnSubStart46601()
	return 0
end
function DummyActorProxy:OnSubFinish46601()
	return 0
end
function DummyActorProxy:OnSubFinish46602()
	return 0
end
function DummyActorProxy:Finish46602Do()
	return 0
end
function DummyActorProxy:OnSubFinish46603()
	return 0
end
function DummyActorProxy:Finish46603Do()
	return 0
end
function DummyActorProxy:OnSubFinish46621()
	return 0
end
function DummyActorProxy:OnSubFinish46622()
	return 0
end
function DummyActorProxy:Finish46622Do()
	return 0
end
function DummyActorProxy:OnSubStart46604()
	return 0
end
function DummyActorProxy:OnSubFinish46604()
	return 0
end
function DummyActorProxy:OnSubFinish46605()
	return 0
end
function DummyActorProxy:Finish46605Do()
	return 0
end
function DummyActorProxy:OnSubStart46606()
	return 0
end
function DummyActorProxy:OnSubFinish46606()
	return 0
end
function DummyActorProxy:OnSubFinish46607()
	return 0
end
function DummyActorProxy:Finish46607Do()
	return 0
end
function DummyActorProxy:OnSubStart46608()
	return 0
end
function DummyActorProxy:OnSubFinish46608()
	return 0
end
function DummyActorProxy:OnSubStart46610()
	return 0
end
function DummyActorProxy:OnSubFinish46610()
	return 0
end
function DummyActorProxy:OnSubStart46611()
	return 0
end
function DummyActorProxy:OnSubStart46619()
	return 0
end
function DummyActorProxy:AdvanceQuest()
	return 0
end
function DummyActorProxy:OnSubFinish46620()
	return 0
end
function DummyActorProxy:OnSubFinish46611()
	return 0
end
function DummyActorProxy:Inter1()
	return 0
end
function DummyActorProxy:OnSubFinish46612()
	return 0
end
function DummyActorProxy:OnSubStart46613()
	return 0
end
function DummyActorProxy:OnSubFinish46613()
	return 0
end
function DummyActorProxy:OnSubStart46614()
	return 0
end
function DummyActorProxy:OnSubFinish46614()
	return 0
end
function DummyActorProxy:OnSubFinish46615()
	return 0
end
function DummyActorProxy:Finish46615Do()
	return 0
end
function DummyActorProxy:Delay2()
	return 0
end
function DummyActorProxy:OnSubStart46616()
	return 0
end
function DummyActorProxy:OnSubFinish46616()
	return 0
end
function DummyActorProxy:Finish46616Do()
	return 0
end
function DummyActorProxy:OnSubFinish46617()
	return 0
end
function DummyActorProxy:OnSubStart46618()
	return 0
end
function DummyActorProxy:OnSubFinish46618()
	return 0
end
function DummyActorProxy:Finish46618Do()
	return 0
end
function DummyActorProxy:GuardVanish()
	return 0
end
function DummyActorProxy:HoffmanVanish()
	return 0
end
function DummyActorProxy:KaeyaVanish()
	return 0
end

function DummyActorProxy:OnSubStart48005()
	return 0
end
function DummyActorProxy:OnSubStart48001()
	return 0
end
function DummyActorProxy:OnSubStart48002()
	return 0
end
function DummyActorProxy:OnSubStart48003()
	return 0
end
function DummyActorProxy:OnSubStart48004()
	return 0
end
function DummyActorProxy:OnSubFinish48001()
	return 0
end
function DummyActorProxy:OnSubFinish48002()
	return 0
end
function DummyActorProxy:OnSubFailed48002()
	return 0
end
function DummyActorProxy:OnSubFinish48003()
	return 0
end
function DummyActorProxy:OnSubFinish48004()
	return 0
end

function DummyActorProxy:OnSubStart48101()
	return 0
end
function DummyActorProxy:OnSubStart48102()
	return 0
end
function DummyActorProxy:OnSubStart48103()
	return 0
end
function DummyActorProxy:OnSubStart48104()
	return 0
end
function DummyActorProxy:RequestPaimon()
	return 0
end
function DummyActorProxy:OnSubStart48105()
	return 0
end
function DummyActorProxy:OnSubStart48106()
	return 0
end
function DummyActorProxy:amborVanish()
	return 0
end
function DummyActorProxy:OnSubFinish48101()
	return 0
end
function DummyActorProxy:OnSubFinish48102()
	return 0
end
function DummyActorProxy:OnSubFinish48103()
	return 0
end
function DummyActorProxy:OnSubFinish48104()
	return 0
end
function DummyActorProxy:OnSubFinish48105()
	return 0
end
function DummyActorProxy:OnSubFinish48106()
	return 0
end

function DummyActorProxy:CreateAmbor()
	return 0
end
function DummyActorProxy:AmborVanish()
	return 0
end
function DummyActorProxy:Interaction()
	return 0
end
function DummyActorProxy:FailQuest()
	return 0
end
function DummyActorProxy:OnSubStart48201()
	return 0
end
function DummyActorProxy:OnSubStart48202()
	return 0
end
function DummyActorProxy:OnSubStart48203()
	return 0
end
function DummyActorProxy:OnSubStart48209()
	return 0
end
function DummyActorProxy:OnSubStart48207()
	return 0
end
function DummyActorProxy:OnSubStart48204()
	return 0
end
function DummyActorProxy:OnSubStart48208()
	return 0
end
function DummyActorProxy:OnSubStart48205()
	return 0
end
function DummyActorProxy:OnSubFinish48201()
	return 0
end
function DummyActorProxy:OnSubFinish48202()
	return 0
end
function DummyActorProxy:OnSubFinish48203()
	return 0
end
function DummyActorProxy:OnSubFinish48204()
	return 0
end
function DummyActorProxy:OnSubFinish48205()
	return 0
end

function DummyActorProxy:OnSubStart48401()
	return 0
end
function DummyActorProxy:OnSubStart48402()
	return 0
end
function DummyActorProxy:RequestAmbor()
	return 0
end
function DummyActorProxy:OnSubStart48403()
	return 0
end
function DummyActorProxy:OnSubStart48404()
	return 0
end
function DummyActorProxy:OnSubStart48405()
	return 0
end
function DummyActorProxy:OnSubStart48406()
	return 0
end
function DummyActorProxy:OnSubStart48407()
	return 0
end
function DummyActorProxy:OnSubStart48408()
	return 0
end
function DummyActorProxy:OnSubStart48409()
	return 0
end
function DummyActorProxy:OnSubStart48410()
	return 0
end
function DummyActorProxy:OnSubStart48411()
	return 0
end
function DummyActorProxy:OnSubStart48413()
	return 0
end
function DummyActorProxy:OnSubStart48414()
	return 0
end
function DummyActorProxy:OnSubStart48415()
	return 0
end
function DummyActorProxy:OnSubStart48416()
	return 0
end
function DummyActorProxy:OnSubStart48417()
	return 0
end
function DummyActorProxy:OnSubStart48418()
	return 0
end
function DummyActorProxy:OnSubStart48419()
	return 0
end
function DummyActorProxy:OnSubStart48420()
	return 0
end
function DummyActorProxy:OnSubStart48421()
	return 0
end
function DummyActorProxy:OnSubStart48422()
	return 0
end
function DummyActorProxy:OnSubStart48423()
	return 0
end
function DummyActorProxy:OnSubStart48426()
	return 0
end
function DummyActorProxy:OnSubStart48427()
	return 0
end
function DummyActorProxy:OnSubStart48428()
	return 0
end
function DummyActorProxy:OnSubStart48429()
	return 0
end
function DummyActorProxy:OnSubStart48431()
	return 0
end
function DummyActorProxy:OnSubStart48432()
	return 0
end
function DummyActorProxy:OnSubStart48433()
	return 0
end
function DummyActorProxy:OnSubFinish48401()
	return 0
end
function DummyActorProxy:OnSubFinish48402()
	return 0
end
function DummyActorProxy:OnSubFinish48403()
	return 0
end
function DummyActorProxy:OnSubFinish48404()
	return 0
end
function DummyActorProxy:OnSubFinish48405()
	return 0
end
function DummyActorProxy:OnSubFinish48406()
	return 0
end
function DummyActorProxy:OnSubFinish48407()
	return 0
end
function DummyActorProxy:OnSubFinish48408()
	return 0
end
function DummyActorProxy:OnSubFinish48409()
	return 0
end
function DummyActorProxy:OnSubFinish48410()
	return 0
end
function DummyActorProxy:OnSubFinish48411()
	return 0
end
function DummyActorProxy:OnSubFinish48417()
	return 0
end
function DummyActorProxy:OnSubFinish48423()
	return 0
end
function DummyActorProxy:OnSubFinish48432()
	return 0
end

function DummyActorProxy:CreateAmbor1()
	return 0
end
function DummyActorProxy:CreateAmbor2()
	return 0
end
function DummyActorProxy:CheckHight()
	return 0
end
function DummyActorProxy:CheckHightOut()
	return 0
end
function DummyActorProxy:DestroyFlow()
	return 0
end
function DummyActorProxy:OnSubStart48501()
	return 0
end
function DummyActorProxy:OnSubStart48511()
	return 0
end
function DummyActorProxy:SpawnGadgetNow()
	return 0
end
function DummyActorProxy:OnSubStart48509()
	return 0
end
function DummyActorProxy:OnSubStart48512()
	return 0
end
function DummyActorProxy:OnSubStart48510()
	return 0
end
function DummyActorProxy:OnSubStart48502()
	return 0
end
function DummyActorProxy:OnSubStart48503()
	return 0
end
function DummyActorProxy:OnSubStart48504()
	return 0
end
function DummyActorProxy:OnSubStart48505()
	return 0
end
function DummyActorProxy:OnSubStart48506()
	return 0
end
function DummyActorProxy:OnSubStart48507()
	return 0
end
function DummyActorProxy:OnSubStart48508()
	return 0
end
function DummyActorProxy:OnSubFinish48501()
	return 0
end
function DummyActorProxy:OnSubFinish48511()
	return 0
end
function DummyActorProxy:OnSubFinish48502()
	return 0
end
function DummyActorProxy:OnSubFinish48503()
	return 0
end
function DummyActorProxy:OnSubFinish48504()
	return 0
end
function DummyActorProxy:OnSubFinish48505()
	return 0
end
function DummyActorProxy:OnSubFinish48506()
	return 0
end
function DummyActorProxy:OnSubFinish48507()
	return 0
end
function DummyActorProxy:OnSubFinish48508()
	return 0
end

function DummyActorProxy:OnSubStart48601()
	return 0
end
function DummyActorProxy:OnSubFinish48601()
	return 0
end
function DummyActorProxy:OnSubFinish48602()
	return 0
end
function DummyActorProxy:OnSubStart48603()
	return 0
end
function DummyActorProxy:OnSubFinish48603()
	return 0
end
function DummyActorProxy:OnSubStart48604()
	return 0
end
function DummyActorProxy:OnSubStart48605()
	return 0
end
function DummyActorProxy:StartTalk48605()
	return 0
end
function DummyActorProxy:OnSubFinish48605()
	return 0
end
function DummyActorProxy:OnSubStart48606()
	return 0
end
function DummyActorProxy:OnSubStart48607()
	return 0
end
function DummyActorProxy:StartTalk48607()
	return 0
end
function DummyActorProxy:OnSubFinish48607()
	return 0
end
function DummyActorProxy:OnSubStart48608()
	return 0
end
function DummyActorProxy:OnSubFinish48608()
	return 0
end
function DummyActorProxy:OnSubStart48609()
	return 0
end
function DummyActorProxy:OnSubStart48610()
	return 0
end
function DummyActorProxy:StartTalk48610()
	return 0
end
function DummyActorProxy:OnSubFinish48610()
	return 0
end
function DummyActorProxy:OnSubFinish48611()
	return 0
end
function DummyActorProxy:OnSubFinish48612()
	return 0
end
function DummyActorProxy:OnSubFinish48613()
	return 0
end
function DummyActorProxy:OnSubStart48615()
	return 0
end
function DummyActorProxy:OnSubFinish48615()
	return 0
end
function DummyActorProxy:StartTalkBabara()
	return 0
end

function DummyActorProxy:CatRun()
	return 0
end
function DummyActorProxy:FinishQuest()
	return 0
end
function DummyActorProxy:SpawnDummy()
	return 0
end
function DummyActorProxy:GetCat()
	return 0
end
function DummyActorProxy:OpenCompass()
	return 0
end
function DummyActorProxy:CloseCompass()
	return 0
end
function DummyActorProxy:OnSubStart48701()
	return 0
end
function DummyActorProxy:OnSubFinish48701()
	return 0
end
function DummyActorProxy:OnSubStart48711()
	return 0
end
function DummyActorProxy:OnSubStart48702()
	return 0
end
function DummyActorProxy:OnSubStart48703()
	return 0
end
function DummyActorProxy:OnSubStart48710()
	return 0
end
function DummyActorProxy:OnSubFinish48710()
	return 0
end
function DummyActorProxy:ExitCat()
	return 0
end
function DummyActorProxy:OnSubFinish48702()
	return 0
end
function DummyActorProxy:OnSubFinish48703()
	return 0
end
function DummyActorProxy:OnSubStart48704()
	return 0
end
function DummyActorProxy:OnSubFinish48704()
	return 0
end
function DummyActorProxy:OnSubFinish48705()
	return 0
end
function DummyActorProxy:StartTalk48705()
	return 0
end
function DummyActorProxy:OnSubStart48706()
	return 0
end
function DummyActorProxy:OnSubFinish48706()
	return 0
end
function DummyActorProxy:OnSubFinish48707()
	return 0
end
function DummyActorProxy:OnSubFinish48708()
	return 0
end
function DummyActorProxy:OnSubFinish48712()
	return 0
end
function DummyActorProxy:OnSubStart48712()
	return 0
end
function DummyActorProxy:StartTalk48709()
	return 0
end
function DummyActorProxy:OnSubFinish48709()
	return 0
end

function DummyActorProxy:OnSubStart48800()
	return 0
end
function DummyActorProxy:OnSubFinish48800()
	return 0
end
function DummyActorProxy:OnSubStart48801()
	return 0
end
function DummyActorProxy:OnSubFinish48801()
	return 0
end
function DummyActorProxy:OnSubFinish48802()
	return 0
end
function DummyActorProxy:OnSubFailed48802()
	return 0
end
function DummyActorProxy:OnSubStart48803()
	return 0
end
function DummyActorProxy:OnSubFinish48803()
	return 0
end
function DummyActorProxy:finish48804()
	return 0
end
function DummyActorProxy:OnSubStart48804()
	return 0
end

function DummyActorProxy:OnSubStart48901()
	return 0
end
function DummyActorProxy:OnSubFinish48901()
	return 0
end
function DummyActorProxy:OnSubFinish48902()
	return 0
end
function DummyActorProxy:OnSubStart48903()
	return 0
end
function DummyActorProxy:OnSubFinish48903()
	return 0
end
function DummyActorProxy:OnSubFinish48904()
	return 0
end
function DummyActorProxy:OnSubStart48905()
	return 0
end
function DummyActorProxy:OnSubFinish48905()
	return 0
end
function DummyActorProxy:OnSubStart48906()
	return 0
end
function DummyActorProxy:OnSubFinish48906()
	return 0
end
function DummyActorProxy:OnSubStart48907()
	return 0
end
function DummyActorProxy:OnSubFinish48907()
	return 0
end
function DummyActorProxy:OnSubStart48908()
	return 0
end
function DummyActorProxy:OnSubFinish48908()
	return 0
end
function DummyActorProxy:OnSubStart48909()
	return 0
end
function DummyActorProxy:OnSubFinish48909()
	return 0
end
function DummyActorProxy:OnSubFinish48910()
	return 0
end
function DummyActorProxy:OnSubFinish48911()
	return 0
end

function DummyActorProxy:OnSubStart49001()
	return 0
end
function DummyActorProxy:OnSubFinish49001()
	return 0
end
function DummyActorProxy:OnSubStart49002()
	return 0
end
function DummyActorProxy:OnSubFinish49002()
	return 0
end
function DummyActorProxy:OnSubStart49003()
	return 0
end
function DummyActorProxy:On49003CutsceneFinish()
	return 0
end
function DummyActorProxy:OnSubFinish49003()
	return 0
end
function DummyActorProxy:OnSubStart49006()
	return 0
end
function DummyActorProxy:StartTalk49006()
	return 0
end
function DummyActorProxy:OnSubFinish49006()
	return 0
end
function DummyActorProxy:MoveQin()
	return 0
end
function DummyActorProxy:MoveQin2()
	return 0
end
function DummyActorProxy:OnSubStart49007()
	return 0
end
function DummyActorProxy:OnSubFinish49007()
	return 0
end
function DummyActorProxy:OnSubStart49008()
	return 0
end
function DummyActorProxy:StartTalk49009()
	return 0
end
function DummyActorProxy:OnSubStart49009()
	return 0
end
function DummyActorProxy:OnSubFinish49009()
	return 0
end
function DummyActorProxy:CreateNpc()
	return 0
end
function DummyActorProxy:FinishCallback()
	return 0
end
function DummyActorProxy:OnSubStart49010()
	return 0
end
function DummyActorProxy:OnSubFinish49010()
	return 0
end
function DummyActorProxy:OnSubStart49012()
	return 0
end
function DummyActorProxy:StartTalk49012()
	return 0
end
function DummyActorProxy:OnSubFinish49012()
	return 0
end
function DummyActorProxy:SpawnEn()
	return 0
end
function DummyActorProxy:SpawnEn1()
	return 0
end
function DummyActorProxy:OnSubFinish49014()
	return 0
end
function DummyActorProxy:Finish49012()
	return 0
end
function DummyActorProxy:Finish49014()
	return 0
end
function DummyActorProxy:StartTalkQin()
	return 0
end

function DummyActorProxy:RepeatCheckSit()
	return 0
end
function DummyActorProxy:CheckSitPos()
	return 0
end
function DummyActorProxy:FindBookNum()
	return 0
end
function DummyActorProxy:LisaShowBubble()
	return 0
end
function DummyActorProxy:LisaBubbleTime()
	return 0
end
function DummyActorProxy:LisaCloseBubble()
	return 0
end
function DummyActorProxy:LisaBubbleGap()
	return 0
end
function DummyActorProxy:LisaFreeStyle()
	return 0
end
function DummyActorProxy:FinalMood()
	return 0
end
function DummyActorProxy:OnSubStart1010002()
	return 0
end
function DummyActorProxy:OnSubStart1010003()
	return 0
end
function DummyActorProxy:OnSubStart1010010()
	return 0
end
function DummyActorProxy:OnSubStart1010005()
	return 0
end
function DummyActorProxy:OnSubStart1010006()
	return 0
end
function DummyActorProxy:OnSubStart1010007()
	return 0
end
function DummyActorProxy:OnSubStart1010009()
	return 0
end
function DummyActorProxy:OnSubStart1010041()
	return 0
end
function DummyActorProxy:Book1Creat()
	return 0
end
function DummyActorProxy:Book1Destroy()
	return 0
end
function DummyActorProxy:OnSubStart1010042()
	return 0
end
function DummyActorProxy:Book2Creat()
	return 0
end
function DummyActorProxy:Book2Destroy()
	return 0
end
function DummyActorProxy:OnSubStart1010043()
	return 0
end
function DummyActorProxy:Book3Creat()
	return 0
end
function DummyActorProxy:Book3Destroy()
	return 0
end
function DummyActorProxy:OnSubStart1010044()
	return 0
end
function DummyActorProxy:Book4Creat()
	return 0
end
function DummyActorProxy:Book4Destroy()
	return 0
end
function DummyActorProxy:OnSubFinish1010002()
	return 0
end
function DummyActorProxy:OnSubFinish1010010()
	return 0
end
function DummyActorProxy:OnSubFinish1010004()
	return 0
end
function DummyActorProxy:OnSubFinish1010006()
	return 0
end
function DummyActorProxy:OnSubFinish1010007()
	return 0
end
function DummyActorProxy:OnSubFinish1010008()
	return 0
end
function DummyActorProxy:OnSubFinish1010009()
	return 0
end
function DummyActorProxy:OnSubFinish1010029()
	return 0
end
function DummyActorProxy:OnSubFinish1010041()
	return 0
end
function DummyActorProxy:OnSubFinish1010042()
	return 0
end
function DummyActorProxy:OnSubFinish1010043()
	return 0
end
function DummyActorProxy:OnSubFinish1010044()
	return 0
end
function DummyActorProxy:OnSubFinish1010045()
	return 0
end
function DummyActorProxy:OnSubFinish1010047()
	return 0
end

function DummyActorProxy:OnSubStart1010101()
	return 0
end
function DummyActorProxy:OnSubStart1010102()
	return 0
end
function DummyActorProxy:OnSubStart1010103()
	return 0
end
function DummyActorProxy:OnSubStart1010104()
	return 0
end
function DummyActorProxy:OnSubStart1010105()
	return 0
end
function DummyActorProxy:OnSubStart1010106()
	return 0
end
function DummyActorProxy:OnSubStart1010108()
	return 0
end
function DummyActorProxy:OnSubStart1010110()
	return 0
end
function DummyActorProxy:OnSubStart1010111()
	return 0
end
function DummyActorProxy:OnSubStart1010112()
	return 0
end
function DummyActorProxy:OnSubStart1010113()
	return 0
end
function DummyActorProxy:OnSubStart1010117()
	return 0
end
function DummyActorProxy:OnSubStart1010118()
	return 0
end
function DummyActorProxy:OnSubStart1010119()
	return 0
end
function DummyActorProxy:OnSubFinish1010102()
	return 0
end
function DummyActorProxy:OnSubFinish1010105()
	return 0
end
function DummyActorProxy:OnSubFinish1010117()
	return 0
end
function DummyActorProxy:OnSubFinish1010118()
	return 0
end
function DummyActorProxy:OnSubFinish1010106()
	return 0
end
function DummyActorProxy:OnSubFinish1010109()
	return 0
end
function DummyActorProxy:OnSubFinish1010112()
	return 0
end
function DummyActorProxy:OnSubFinish1010108()
	return 0
end
function DummyActorProxy:OnSubFinish1010110()
	return 0
end
function DummyActorProxy:OnSubFinish1010114()
	return 0
end
function DummyActorProxy:OnSubFinish1010119()
	return 0
end
function DummyActorProxy:OnSubFinish1010120()
	return 0
end
function DummyActorProxy:PlayBSEffect()
	return 0
end
function DummyActorProxy:PlayASEffect()
	return 0
end
function DummyActorProxy:AbyssSpawn()
	return 0
end

function DummyActorProxy:OnSubStart1020002()
	return 0
end
function DummyActorProxy:OnSubFinish1020002()
	return 0
end
function DummyActorProxy:OnSubStart1020015()
	return 0
end
function DummyActorProxy:OnSubFinish1020004()
	return 0
end
function DummyActorProxy:OnSubFinish1020011()
	return 0
end
function DummyActorProxy:OnSubFinish1020012()
	return 0
end
function DummyActorProxy:OnSubFinish1020013()
	return 0
end
function DummyActorProxy:OnSubStart1020005()
	return 0
end
function DummyActorProxy:OnSubFinish1020006()
	return 0
end
function DummyActorProxy:OnSubStart1020008()
	return 0
end
function DummyActorProxy:OnSubFinish1020008()
	return 0
end
function DummyActorProxy:OnSubFinish1020010()
	return 0
end

function DummyActorProxy:OnSubStart1020103()
	return 0
end
function DummyActorProxy:OnSubFinish1020104()
	return 0
end
function DummyActorProxy:OnSubStart1020105()
	return 0
end
function DummyActorProxy:OnSubFinish1020106()
	return 0
end
function DummyActorProxy:OnSubStart1020107()
	return 0
end
function DummyActorProxy:OnSubStart1020108()
	return 0
end

function DummyActorProxy:OnSubStart1020201()
	return 0
end
function DummyActorProxy:OnSubFinish1020201()
	return 0
end
function DummyActorProxy:OnSubStart1020202()
	return 0
end
function DummyActorProxy:OnSubFinish1020202()
	return 0
end

function DummyActorProxy:Finish02()
	return 0
end
function DummyActorProxy:OnSubStart1100001()
	return 0
end
function DummyActorProxy:OnSubStart1100002()
	return 0
end
function DummyActorProxy:OnSubStart1100003()
	return 0
end
function DummyActorProxy:OnSubStart1100004()
	return 0
end
function DummyActorProxy:OnSubStart1100005()
	return 0
end
function DummyActorProxy:OnSubStart1100006()
	return 0
end
function DummyActorProxy:OnSubFinish1100001()
	return 0
end
function DummyActorProxy:OnSubFinish1100002()
	return 0
end
function DummyActorProxy:OnSubFinish1100003()
	return 0
end
function DummyActorProxy:OnSubFinish1100004()
	return 0
end
function DummyActorProxy:OnSubFinish1100005()
	return 0
end
function DummyActorProxy:OnSubFinish1100006()
	return 0
end

function DummyActorProxy:Finish03()
	return 0
end
function DummyActorProxy:OnSubStart1100101()
	return 0
end
function DummyActorProxy:OnSubStart1100102()
	return 0
end
function DummyActorProxy:OnSubStart1100103()
	return 0
end
function DummyActorProxy:OnSubStart1100104()
	return 0
end
function DummyActorProxy:OnSubFinish1100101()
	return 0
end
function DummyActorProxy:OnSubFinish1100102()
	return 0
end
function DummyActorProxy:OnSubFinish1100103()
	return 0
end
function DummyActorProxy:OnSubFinish1100104()
	return 0
end

function DummyActorProxy:OnSubStart1100201()
	return 0
end
function DummyActorProxy:OnSubStart1100202()
	return 0
end
function DummyActorProxy:OnSubStart1100203()
	return 0
end
function DummyActorProxy:OnSubStart1100204()
	return 0
end
function DummyActorProxy:OnSubStart1100205()
	return 0
end
function DummyActorProxy:OnSubStart1100206()
	return 0
end
function DummyActorProxy:OnSubStart1100207()
	return 0
end
function DummyActorProxy:OnSubFinish1100201()
	return 0
end
function DummyActorProxy:OnSubFinish1100202()
	return 0
end
function DummyActorProxy:OnSubFinish1100203()
	return 0
end
function DummyActorProxy:OnSubFinish1100204()
	return 0
end
function DummyActorProxy:OnSubFinish1100205()
	return 0
end
function DummyActorProxy:OnSubFinish1100206()
	return 0
end
function DummyActorProxy:OnSubFinish1100207()
	return 0
end

function DummyActorProxy:OnSubStart1100301()
	return 0
end
function DummyActorProxy:OnSubStart1100302()
	return 0
end
function DummyActorProxy:OnSubStart1100303()
	return 0
end
function DummyActorProxy:OnSubStart1100304()
	return 0
end
function DummyActorProxy:OnSubFinish1100301()
	return 0
end
function DummyActorProxy:OnSubFinish1100302()
	return 0
end
function DummyActorProxy:OnSubFinish1100303()
	return 0
end
function DummyActorProxy:OnSubFinish1100304()
	return 0
end

function DummyActorProxy:OnSubStart1100401()
	return 0
end
function DummyActorProxy:OnSubStart1100402()
	return 0
end
function DummyActorProxy:OnSubStart1100403()
	return 0
end
function DummyActorProxy:OnSubFinish1100401()
	return 0
end
function DummyActorProxy:OnSubFinish1100402()
	return 0
end
function DummyActorProxy:OnSubFinish1100403()
	return 0
end

function DummyActorProxy:Create01()
	return 0
end
function DummyActorProxy:Create03()
	return 0
end
function DummyActorProxy:Fail08()
	return 0
end
function DummyActorProxy:Fail10()
	return 0
end
function DummyActorProxy:Fail05()
	return 0
end
function DummyActorProxy:XLMove()
	return 0
end
function DummyActorProxy:BRMove()
	return 0
end
function DummyActorProxy:OnSubStart1100501()
	return 0
end
function DummyActorProxy:OnSubStart1100502()
	return 0
end
function DummyActorProxy:OnSubStart1100503()
	return 0
end
function DummyActorProxy:OnSubStart1100508()
	return 0
end
function DummyActorProxy:OnSubStart1100509()
	return 0
end
function DummyActorProxy:OnSubStart1100504()
	return 0
end
function DummyActorProxy:OnSubStart1100510()
	return 0
end
function DummyActorProxy:OnSubStart1100511()
	return 0
end
function DummyActorProxy:OnSubStart1100513()
	return 0
end
function DummyActorProxy:OnSubStart1100505()
	return 0
end
function DummyActorProxy:OnSubStart1100512()
	return 0
end
function DummyActorProxy:OnSubStart1100506()
	return 0
end
function DummyActorProxy:OnSubStart1100507()
	return 0
end
function DummyActorProxy:OnSubFinish1100501()
	return 0
end
function DummyActorProxy:OnSubFinish1100502()
	return 0
end
function DummyActorProxy:OnSubFinish1100503()
	return 0
end
function DummyActorProxy:OnSubFinish1100508()
	return 0
end
function DummyActorProxy:OnSubFinish1100509()
	return 0
end
function DummyActorProxy:OnSubFinish1100504()
	return 0
end
function DummyActorProxy:OnSubFinish1100510()
	return 0
end
function DummyActorProxy:OnSubFinish1100511()
	return 0
end
function DummyActorProxy:OnSubFinish1100513()
	return 0
end
function DummyActorProxy:OnSubFinish1100505()
	return 0
end
function DummyActorProxy:OnSubFinish1100512()
	return 0
end
function DummyActorProxy:OnSubFinish1100506()
	return 0
end
function DummyActorProxy:OnSubFinish1100507()
	return 0
end

function DummyActorProxy:XingQiuDestroy()
	return 0
end
function DummyActorProxy:CHDestroy()
	return 0
end
function DummyActorProxy:OnSubStart1200001()
	return 0
end
function DummyActorProxy:OnSubFinish1200001()
	return 0
end
function DummyActorProxy:OnSubStart1200002()
	return 0
end
function DummyActorProxy:OnSubFinish1200002()
	return 0
end
function DummyActorProxy:OnSubStart1200003()
	return 0
end
function DummyActorProxy:OnSubFinish1200003()
	return 0
end
function DummyActorProxy:OnSubStart1200004()
	return 0
end
function DummyActorProxy:OnSubFinish1200004()
	return 0
end
function DummyActorProxy:OnSubStart1200005()
	return 0
end
function DummyActorProxy:OnSubFinish1200005()
	return 0
end
function DummyActorProxy:OnSubStart1200006()
	return 0
end
function DummyActorProxy:OnSubFinish1200006()
	return 0
end
function DummyActorProxy:OnSubStart1200007()
	return 0
end
function DummyActorProxy:OnSubFinish1200007()
	return 0
end
function DummyActorProxy:OnSubStart1200008()
	return 0
end
function DummyActorProxy:OnSubFinish1200008()
	return 0
end
function DummyActorProxy:OnSubStart1200011()
	return 0
end
function DummyActorProxy:OnSubFinish1200011()
	return 0
end
function DummyActorProxy:OnSubStart1200009()
	return 0
end
function DummyActorProxy:OnSubFinish1200009()
	return 0
end
function DummyActorProxy:OnSubStart1200010()
	return 0
end
function DummyActorProxy:OnSubFinish1200010()
	return 0
end

function DummyActorProxy:WlyDestroy()
	return 0
end
function DummyActorProxy:GuardDestroy()
	return 0
end
function DummyActorProxy:SneakStart()
	return 0
end
function DummyActorProxy:FailMovePlayer()
	return 0
end
function DummyActorProxy:SuccessMovePlayer()
	return 0
end
function DummyActorProxy:SuccTrans()
	return 0
end
function DummyActorProxy:FinishSneak()
	return 0
end
function DummyActorProxy:SneakAIPrepare()
	return 0
end
function DummyActorProxy:SneakAIDestroy()
	return 0
end
function DummyActorProxy:OnSubStart1200101()
	return 0
end
function DummyActorProxy:OnSubFinish1200101()
	return 0
end
function DummyActorProxy:OnSubStart1200102()
	return 0
end
function DummyActorProxy:OnSubFinish1200102()
	return 0
end
function DummyActorProxy:OnSubStart1200103()
	return 0
end
function DummyActorProxy:OnSubFinish1200103()
	return 0
end
function DummyActorProxy:OnSubStart1200104()
	return 0
end
function DummyActorProxy:OnSubFinish1200104()
	return 0
end
function DummyActorProxy:OnSubStart1200105()
	return 0
end
function DummyActorProxy:OnSubFinish1200105()
	return 0
end
function DummyActorProxy:OnSubStart1200109()
	return 0
end
function DummyActorProxy:OnSubFinish1200109()
	return 0
end
function DummyActorProxy:OnSubStart1200110()
	return 0
end
function DummyActorProxy:OnSubFinish1200110()
	return 0
end
function DummyActorProxy:OnSubStart1200111()
	return 0
end
function DummyActorProxy:OnSubFinish1200111()
	return 0
end
function DummyActorProxy:OnSubStart1200106()
	return 0
end
function DummyActorProxy:OnSubFinish1200106()
	return 0
end
function DummyActorProxy:OnSubStart1200107()
	return 0
end
function DummyActorProxy:OnSubFinish1200107()
	return 0
end
function DummyActorProxy:OnSubStart1200108()
	return 0
end
function DummyActorProxy:OnSubFinish1200108()
	return 0
end

function DummyActorProxy:OnSubStart1200201()
	return 0
end
function DummyActorProxy:OnSubFinish1200201()
	return 0
end
function DummyActorProxy:OnSubStart1200202()
	return 0
end
function DummyActorProxy:OnSubFinish1200202()
	return 0
end
function DummyActorProxy:OnSubStart1200203()
	return 0
end
function DummyActorProxy:OnSubFinish1200203()
	return 0
end
function DummyActorProxy:OnSubStart1200204()
	return 0
end
function DummyActorProxy:OnSubFinish1200204()
	return 0
end
function DummyActorProxy:OnSubStart1200205()
	return 0
end
function DummyActorProxy:OnSubFinish1200205()
	return 0
end
function DummyActorProxy:OnSubStart1200206()
	return 0
end
function DummyActorProxy:OnSubFinish1200206()
	return 0
end
function DummyActorProxy:OnSubStart1200207()
	return 0
end
function DummyActorProxy:OnSubFinish1200207()
	return 0
end
function DummyActorProxy:OnSubStart1200208()
	return 0
end
function DummyActorProxy:OnSubFinish1200208()
	return 0
end
function DummyActorProxy:OnSubStart1200209()
	return 0
end
function DummyActorProxy:OnSubFinish1200209()
	return 0
end
function DummyActorProxy:OnSubStart1200212()
	return 0
end
function DummyActorProxy:OnSubFinish1200212()
	return 0
end
function DummyActorProxy:OnSubStart1200213()
	return 0
end
function DummyActorProxy:OnSubFinish1200213()
	return 0
end
function DummyActorProxy:OnSubStart1200210()
	return 0
end
function DummyActorProxy:OnSubFinish1200210()
	return 0
end
function DummyActorProxy:OnSubStart1200211()
	return 0
end
function DummyActorProxy:OnSubFinish1200211()
	return 0
end

function DummyActorProxy:CollectorsDestroy()
	return 0
end
function DummyActorProxy:JiaDingDestroy()
	return 0
end
function DummyActorProxy:OnSubStart1200301()
	return 0
end
function DummyActorProxy:OnSubFinish1200301()
	return 0
end
function DummyActorProxy:OnSubStart1200302()
	return 0
end
function DummyActorProxy:OnSubFinish1200302()
	return 0
end
function DummyActorProxy:OnSubStart1200303()
	return 0
end
function DummyActorProxy:OnSubFinish1200303()
	return 0
end
function DummyActorProxy:OnSubStart1200304()
	return 0
end
function DummyActorProxy:OnSubFinish1200304()
	return 0
end
function DummyActorProxy:OnSubStart1200305()
	return 0
end
function DummyActorProxy:OnSubFinish1200305()
	return 0
end
function DummyActorProxy:OnSubStart1200307()
	return 0
end
function DummyActorProxy:OnSubFinish1200307()
	return 0
end
function DummyActorProxy:OnSubStart1200308()
	return 0
end
function DummyActorProxy:OnSubFinish1200308()
	return 0
end
function DummyActorProxy:OnSubStart1200309()
	return 0
end
function DummyActorProxy:OnSubFinish1200309()
	return 0
end

function DummyActorProxy:OnSubStart1300101()
	return 0
end
function DummyActorProxy:OnSubFinish1300101()
	return 0
end
function DummyActorProxy:OnSubStart1300102()
	return 0
end
function DummyActorProxy:OnSubFinish1300102()
	return 0
end
function DummyActorProxy:OnSubStart1300103()
	return 0
end
function DummyActorProxy:OnSubFinish1300103()
	return 0
end
function DummyActorProxy:OnSubStart1300104()
	return 0
end
function DummyActorProxy:OnSubFinish1300104()
	return 0
end
function DummyActorProxy:OnSubStart1300105()
	return 0
end
function DummyActorProxy:OnSubFinish1300105()
	return 0
end
function DummyActorProxy:OnSubStart1300106()
	return 0
end
function DummyActorProxy:OnSubFinish1300106()
	return 0
end
function DummyActorProxy:OnSubStart1300107()
	return 0
end
function DummyActorProxy:OnSubFinish1300107()
	return 0
end
function DummyActorProxy:OnSubStart1300108()
	return 0
end
function DummyActorProxy:OnSubFinish1300108()
	return 0
end
function DummyActorProxy:OnSubStart1300109()
	return 0
end
function DummyActorProxy:OnSubFinish1300109()
	return 0
end
function DummyActorProxy:OnSubStart1300110()
	return 0
end
function DummyActorProxy:OnSubFinish1300110()
	return 0
end

function DummyActorProxy:OnSubStart1300201()
	return 0
end
function DummyActorProxy:OnSubFinish1300201()
	return 0
end
function DummyActorProxy:OnSubStart1300202()
	return 0
end
function DummyActorProxy:OnSubFinish1300202()
	return 0
end
function DummyActorProxy:OnSubStart1300203()
	return 0
end
function DummyActorProxy:OnSubFinish1300203()
	return 0
end
function DummyActorProxy:OnSubStart1300204()
	return 0
end
function DummyActorProxy:OnSubFinish1300204()
	return 0
end
function DummyActorProxy:OnSubStart1300205()
	return 0
end
function DummyActorProxy:OnSubFinish1300205()
	return 0
end
function DummyActorProxy:OnSubStart1300206()
	return 0
end
function DummyActorProxy:OnSubFinish1300206()
	return 0
end
function DummyActorProxy:OnSubStart1300207()
	return 0
end
function DummyActorProxy:OnSubFinish1300207()
	return 0
end
function DummyActorProxy:OnSubStart1300208()
	return 0
end
function DummyActorProxy:OnSubFinish1300208()
	return 0
end
function DummyActorProxy:OnSubStart1300209()
	return 0
end
function DummyActorProxy:OnSubFinish1300209()
	return 0
end
function DummyActorProxy:OnSubStart1300210()
	return 0
end
function DummyActorProxy:OnSubFinish1300210()
	return 0
end

function DummyActorProxy:OnSubStart1300301()
	return 0
end
function DummyActorProxy:OnSubFinish1300301()
	return 0
end
function DummyActorProxy:OnSubStart1300302()
	return 0
end
function DummyActorProxy:OnSubFinish1300302()
	return 0
end
function DummyActorProxy:OnSubStart1300303()
	return 0
end
function DummyActorProxy:OnSubFinish1300303()
	return 0
end
function DummyActorProxy:OnSubStart1300304()
	return 0
end
function DummyActorProxy:OnSubFinish1300304()
	return 0
end
function DummyActorProxy:OnSubStart1300305()
	return 0
end
function DummyActorProxy:OnSubFinish1300305()
	return 0
end
function DummyActorProxy:OnSubStart1300306()
	return 0
end
function DummyActorProxy:OnSubFinish1300306()
	return 0
end
function DummyActorProxy:OnSubStart1300307()
	return 0
end
function DummyActorProxy:OnSubFinish1300307()
	return 0
end
function DummyActorProxy:OnSubStart1300308()
	return 0
end
function DummyActorProxy:OnSubFinish1300308()
	return 0
end
function DummyActorProxy:OnSubStart1300309()
	return 0
end
function DummyActorProxy:OnSubFinish1300309()
	return 0
end
function DummyActorProxy:OnSubStart1300310()
	return 0
end
function DummyActorProxy:OnSubFinish1300310()
	return 0
end

function DummyActorProxy:OnSubStart1300401()
	return 0
end
function DummyActorProxy:OnSubFinish1300401()
	return 0
end
function DummyActorProxy:OnSubStart1300402()
	return 0
end
function DummyActorProxy:OnSubFinish1300402()
	return 0
end
function DummyActorProxy:OnSubStart1300403()
	return 0
end
function DummyActorProxy:OnSubFinish1300403()
	return 0
end
function DummyActorProxy:OnSubStart1300404()
	return 0
end
function DummyActorProxy:OnSubFinish1300404()
	return 0
end
function DummyActorProxy:OnSubStart1300405()
	return 0
end
function DummyActorProxy:OnSubFinish1300405()
	return 0
end
function DummyActorProxy:OnSubStart1300406()
	return 0
end
function DummyActorProxy:OnSubFinish1300406()
	return 0
end
function DummyActorProxy:OnSubStart1300407()
	return 0
end
function DummyActorProxy:OnSubFinish1300407()
	return 0
end
function DummyActorProxy:OnSubStart1300408()
	return 0
end
function DummyActorProxy:OnSubFinish1300408()
	return 0
end
function DummyActorProxy:OnSubStart1300409()
	return 0
end
function DummyActorProxy:OnSubFinish1300409()
	return 0
end
function DummyActorProxy:OnSubStart1300410()
	return 0
end
function DummyActorProxy:OnSubFinish1300410()
	return 0
end


function DummyActorProxy:OnRewind30403()
	return 0
end



function DummyActorProxy:OnSubStart37001()
	return 0
end
function DummyActorProxy:OnSubStart37002()
	return 0
end
function DummyActorProxy:OnSubStart37004()
	return 0
end
function DummyActorProxy:OnSubStart37005()
	return 0
end
function DummyActorProxy:OnSubStart37003()
	return 0
end
function DummyActorProxy:OnSubFinish37001()
	return 0
end
function DummyActorProxy:OnSubFinish37002()
	return 0
end
function DummyActorProxy:OnSubFinish37004()
	return 0
end
function DummyActorProxy:OnSubFinish37005()
	return 0
end
function DummyActorProxy:OnSubFinish37003()
	return 0
end
function DummyActorProxy:StartStory()
	return 0
end

function DummyActorProxy:OnSubStart37101()
	return 0
end
function DummyActorProxy:OnSubStart37102()
	return 0
end
function DummyActorProxy:OnSubStart37103()
	return 0
end
function DummyActorProxy:OnSubStart37104()
	return 0
end
function DummyActorProxy:OnSubStart37105()
	return 0
end
function DummyActorProxy:OnSubStart37106()
	return 0
end
function DummyActorProxy:OnSubStart37107()
	return 0
end
function DummyActorProxy:OnSubStart37108()
	return 0
end
function DummyActorProxy:OnSubStart37109()
	return 0
end
function DummyActorProxy:OnSubStart37110()
	return 0
end
function DummyActorProxy:OnSubStart37111()
	return 0
end
function DummyActorProxy:OnSubStart37112()
	return 0
end
function DummyActorProxy:OnSubStart37113()
	return 0
end
function DummyActorProxy:OnSubStart37114()
	return 0
end
function DummyActorProxy:OnSubStart37115()
	return 0
end
function DummyActorProxy:OnSubFinish37101()
	return 0
end
function DummyActorProxy:OnSubFinish37102()
	return 0
end
function DummyActorProxy:WendyRun()
	return 0
end
function DummyActorProxy:OnSubFinish37103()
	return 0
end
function DummyActorProxy:OnSubFinish37104()
	return 0
end
function DummyActorProxy:OnSubFinish37105()
	return 0
end
function DummyActorProxy:OnSubFinish37106()
	return 0
end
function DummyActorProxy:OnSubFinish37107()
	return 0
end
function DummyActorProxy:OnSubFinish37108()
	return 0
end
function DummyActorProxy:OnSubFinish37109()
	return 0
end
function DummyActorProxy:OnSubFinish37110()
	return 0
end
function DummyActorProxy:OnSubFinish37111()
	return 0
end
function DummyActorProxy:OnSubFinish37112()
	return 0
end
function DummyActorProxy:OnSubFinish37113()
	return 0
end
function DummyActorProxy:OnSubFinish37114()
	return 0
end
function DummyActorProxy:OnSubFinish37115()
	return 0
end

function DummyActorProxy:OnSubStart37201()
	return 0
end
function DummyActorProxy:OnSubStart37202()
	return 0
end
function DummyActorProxy:OnSubStart37203()
	return 0
end
function DummyActorProxy:Play372Cutscene()
	return 0
end
function DummyActorProxy:VideoNow()
	return 0
end
function DummyActorProxy:RequestWendy()
	return 0
end
function DummyActorProxy:OnSubFinish37201()
	return 0
end
function DummyActorProxy:OnSubFinish37202()
	return 0
end
function DummyActorProxy:OnSubFinish37203()
	return 0
end
function DummyActorProxy:OnSubFinish37204()
	return 0
end
function DummyActorProxy:BlackDoSth()
	return 0
end
function DummyActorProxy:wendyVanish()
	return 0
end

function DummyActorProxy:OnSubStart37301()
	return 0
end
function DummyActorProxy:OnSubStart37302()
	return 0
end
function DummyActorProxy:OnSubStart37303()
	return 0
end
function DummyActorProxy:OnSubStart37304()
	return 0
end
function DummyActorProxy:OnSubFinish37301()
	return 0
end
function DummyActorProxy:OnSubFinish37302()
	return 0
end
function DummyActorProxy:OnSubFinish37303()
	return 0
end
function DummyActorProxy:OnSubFinish37304()
	return 0
end
function DummyActorProxy:CleanNPC()
	return 0
end

function DummyActorProxy:OnSubStart37407()
	return 0
end
function DummyActorProxy:OnSubStart37401()
	return 0
end
function DummyActorProxy:OnSubStart37402()
	return 0
end
function DummyActorProxy:OnSubStart37403()
	return 0
end
function DummyActorProxy:OnSubStart37404()
	return 0
end
function DummyActorProxy:OnSubStart37405()
	return 0
end
function DummyActorProxy:OnSubStart37406()
	return 0
end
function DummyActorProxy:OnSubFinish37407()
	return 0
end
function DummyActorProxy:OnSubFinish37401()
	return 0
end
function DummyActorProxy:OnSubFinish37402()
	return 0
end
function DummyActorProxy:OnSubFinish37403()
	return 0
end
function DummyActorProxy:OnSubFinish37404()
	return 0
end
function DummyActorProxy:OnSubFinish37405()
	return 0
end
function DummyActorProxy:OnSubFinish37406()
	return 0
end

function DummyActorProxy:PlayFirstCutscene()
	return 0
end
function DummyActorProxy:PlaySecondCutscene()
	return 0
end
function DummyActorProxy:OnSubStart37501()
	return 0
end
function DummyActorProxy:OnSubStart37502()
	return 0
end
function DummyActorProxy:OnSubStart37503()
	return 0
end
function DummyActorProxy:OnSubStart37504()
	return 0
end
function DummyActorProxy:OnSubStart37505()
	return 0
end
function DummyActorProxy:OnSubStart37506()
	return 0
end
function DummyActorProxy:OnSubStart37507()
	return 0
end
function DummyActorProxy:Trans()
	return 0
end
function DummyActorProxy:OnSubFinish37501()
	return 0
end
function DummyActorProxy:OnSubFinish37502()
	return 0
end
function DummyActorProxy:OnSubFinish37503()
	return 0
end
function DummyActorProxy:OnSubFinish37504()
	return 0
end
function DummyActorProxy:OnSubFinish37505()
	return 0
end
function DummyActorProxy:OnSubFinish37506()
	return 0
end
function DummyActorProxy:OnSubFinish37507()
	return 0
end

function DummyActorProxy:WendyDis()
	return 0
end
function DummyActorProxy:WendyDelay()
	return 0
end
function DummyActorProxy:EscapePrepare()
	return 0
end
function DummyActorProxy:EscapeDestroy()
	return 0
end
function DummyActorProxy:OnSubStart37601()
	return 0
end
function DummyActorProxy:OnSubStart37602()
	return 0
end
function DummyActorProxy:OnSubStart37603()
	return 0
end
function DummyActorProxy:OnSubStart37604()
	return 0
end
function DummyActorProxy:OnSubStart37605()
	return 0
end
function DummyActorProxy:OnSubStart37606()
	return 0
end
function DummyActorProxy:OnSubStart37607()
	return 0
end
function DummyActorProxy:OnSubStart37608()
	return 0
end
function DummyActorProxy:OnSubFinish37601()
	return 0
end
function DummyActorProxy:OnSubFinish37602()
	return 0
end
function DummyActorProxy:OnSubFinish37603()
	return 0
end
function DummyActorProxy:OnSubFinish37604()
	return 0
end
function DummyActorProxy:OnSubFinish37605()
	return 0
end
function DummyActorProxy:OnSubFinish37606()
	return 0
end
function DummyActorProxy:OnSubFinish37607()
	return 0
end
function DummyActorProxy:OnSubFinish37608()
	return 0
end

function DummyActorProxy:OnSubStart37701()
	return 0
end
function DummyActorProxy:OnSubStart37702()
	return 0
end
function DummyActorProxy:OnSubStart37703()
	return 0
end
function DummyActorProxy:OnSubStart37704()
	return 0
end
function DummyActorProxy:OnSubStart37705()
	return 0
end
function DummyActorProxy:OnSubStart37706()
	return 0
end
function DummyActorProxy:OnSubFinish37701()
	return 0
end
function DummyActorProxy:OnSubFinish37702()
	return 0
end
function DummyActorProxy:OnSubFinish37703()
	return 0
end
function DummyActorProxy:OnSubFinish37704()
	return 0
end
function DummyActorProxy:OnSubFinish37705()
	return 0
end
function DummyActorProxy:OnSubFinish37706()
	return 0
end
function DummyActorProxy:DestroyDiluc()
	return 0
end
function DummyActorProxy:QinVanish()
	return 0
end

function DummyActorProxy:OnSubStart37801()
	return 0
end
function DummyActorProxy:OnSubStart37802()
	return 0
end
function DummyActorProxy:OnSubStart37803()
	return 0
end
function DummyActorProxy:OnSubStart37804()
	return 0
end
function DummyActorProxy:OnSubStart37805()
	return 0
end
function DummyActorProxy:OnSubFinish37801()
	return 0
end
function DummyActorProxy:OnSubFinish37802()
	return 0
end
function DummyActorProxy:OnSubFinish37803()
	return 0
end
function DummyActorProxy:OnSubFinish37804()
	return 0
end
function DummyActorProxy:OnSubFinish37805()
	return 0
end
function DummyActorProxy:CreateQin()
	return 0
end

function DummyActorProxy:OnSubStart37901()
	return 0
end
function DummyActorProxy:OnSubStart37902()
	return 0
end
function DummyActorProxy:OnSubStart37903()
	return 0
end
function DummyActorProxy:OnSubStart37904()
	return 0
end
function DummyActorProxy:OnSubFinish37901()
	return 0
end
function DummyActorProxy:OnSubFinish37902()
	return 0
end
function DummyActorProxy:OnSubFinish37903()
	return 0
end
function DummyActorProxy:OnSubFinish37904()
	return 0
end

function DummyActorProxy:OnSubStart38001()
	return 0
end
function DummyActorProxy:OnSubStart38002()
	return 0
end
function DummyActorProxy:OnSubStart38003()
	return 0
end
function DummyActorProxy:OnSubStart38004()
	return 0
end
function DummyActorProxy:StartDialog()
	return 0
end
function DummyActorProxy:EnterDialog()
	return 0
end
function DummyActorProxy:OnSubFinish38001()
	return 0
end
function DummyActorProxy:OnSubFinish38002()
	return 0
end
function DummyActorProxy:OnSubFinish38003()
	return 0
end
function DummyActorProxy:OnSubFinish38004()
	return 0
end
function DummyActorProxy:ExitDialog()
	return 0
end

function DummyActorProxy:OnSubStart38101()
	return 0
end
function DummyActorProxy:OnSubStart38102()
	return 0
end
function DummyActorProxy:OnSubStart38103()
	return 0
end
function DummyActorProxy:OnSubStart38104()
	return 0
end
function DummyActorProxy:OnSubStart38105()
	return 0
end
function DummyActorProxy:OnSubFinish38101()
	return 0
end
function DummyActorProxy:OnSubFinish38102()
	return 0
end
function DummyActorProxy:OnSubFinish38103()
	return 0
end
function DummyActorProxy:OnSubFinish38104()
	return 0
end
function DummyActorProxy:OnSubFinish38105()
	return 0
end

function DummyActorProxy:OnSubStart38201()
	return 0
end
function DummyActorProxy:OnSubStart38202()
	return 0
end
function DummyActorProxy:OnSubStart38203()
	return 0
end
function DummyActorProxy:OnSubFinish38201()
	return 0
end
function DummyActorProxy:OnSubFinish38202()
	return 0
end
function DummyActorProxy:DestroyMark()
	return 0
end
function DummyActorProxy:OnSubFinish38203()
	return 0
end

function DummyActorProxy:OnSubStart38301()
	return 0
end
function DummyActorProxy:OnSubStart38302()
	return 0
end
function DummyActorProxy:OnSubStart38303()
	return 0
end
function DummyActorProxy:OnSubStart38304()
	return 0
end
function DummyActorProxy:OnSubFinish38301()
	return 0
end
function DummyActorProxy:OnSubFinish38302()
	return 0
end
function DummyActorProxy:OnSubFinish38303()
	return 0
end
function DummyActorProxy:OnSubFinish38304()
	return 0
end

function DummyActorProxy:OnSubStart38401()
	return 0
end
function DummyActorProxy:OnSubStart38402()
	return 0
end
function DummyActorProxy:OnSubStart38403()
	return 0
end
function DummyActorProxy:OnSubStart38404()
	return 0
end
function DummyActorProxy:Play384Cutscene()
	return 0
end
function DummyActorProxy:Play384Cutscene02()
	return 0
end
function DummyActorProxy:OnSubStart38405()
	return 0
end
function DummyActorProxy:OnSubStart38406()
	return 0
end
function DummyActorProxy:OnSubFinish38401()
	return 0
end
function DummyActorProxy:OnSubFinish38402()
	return 0
end
function DummyActorProxy:OnSubFinish38403()
	return 0
end
function DummyActorProxy:OnSubFinish38404()
	return 0
end
function DummyActorProxy:OnSubFinish38405()
	return 0
end
function DummyActorProxy:OnSubFinish38406()
	return 0
end
function DummyActorProxy:OnSubFinish38410()
	return 0
end
function DummyActorProxy:InteractionWendy()
	return 0
end
function DummyActorProxy:FinishCS()
	return 0
end
function DummyActorProxy:DeleteNPC()
	return 0
end
function DummyActorProxy:BeginNarrator()
	return 0
end
function DummyActorProxy:AbyssHide()
	return 0
end

function DummyActorProxy:OnSubStart38501()
	return 0
end
function DummyActorProxy:OnSubFinish38501()
	return 0
end

function DummyActorProxy:Narrator38802()
	return 0
end
function DummyActorProxy:NPCdis38802()
	return 0
end
function DummyActorProxy:OnSubStart38801()
	return 0
end
function DummyActorProxy:OnSubStart38802()
	return 0
end
function DummyActorProxy:OnSubStart38803()
	return 0
end
function DummyActorProxy:OnSubStart38804()
	return 0
end
function DummyActorProxy:OnSubStart38805()
	return 0
end
function DummyActorProxy:OnSubStart38806()
	return 0
end
function DummyActorProxy:OnSubFinish38801()
	return 0
end
function DummyActorProxy:OnSubFinish38802()
	return 0
end
function DummyActorProxy:OnSubFinish38803()
	return 0
end
function DummyActorProxy:OnSubFinish38804()
	return 0
end
function DummyActorProxy:OnSubFinish38805()
	return 0
end
function DummyActorProxy:OnSubFinish38806()
	return 0
end

function DummyActorProxy:OnSubStart38901()
	return 0
end
function DummyActorProxy:OnSubStart38902()
	return 0
end
function DummyActorProxy:OnSubStart38903()
	return 0
end
function DummyActorProxy:OnSubStart38904()
	return 0
end
function DummyActorProxy:OnSubStart38905()
	return 0
end
function DummyActorProxy:OnSubStart38906()
	return 0
end
function DummyActorProxy:OnSubFinish38901()
	return 0
end
function DummyActorProxy:OnSubFinish38902()
	return 0
end
function DummyActorProxy:OnSubFinish38903()
	return 0
end
function DummyActorProxy:OnSubFinish38904()
	return 0
end
function DummyActorProxy:OnSubFinish38905()
	return 0
end
function DummyActorProxy:OnSubFinish38906()
	return 0
end

function DummyActorProxy:FindOrganNarrator()
	return 0
end
function DummyActorProxy:FindOrganTalk()
	return 0
end
function DummyActorProxy:RequestTalk()
	return 0
end
function DummyActorProxy:FindClueNarrator()
	return 0
end
function DummyActorProxy:SealOpenCutscene()
	return 0
end
function DummyActorProxy:OnSubStart39001()
	return 0
end
function DummyActorProxy:OnSubStart39002()
	return 0
end
function DummyActorProxy:OnSubStart39003()
	return 0
end
function DummyActorProxy:OnSubStart39004()
	return 0
end
function DummyActorProxy:OnSubStart39005()
	return 0
end
function DummyActorProxy:OnSubStart39006()
	return 0
end
function DummyActorProxy:OnSubStart39007()
	return 0
end
function DummyActorProxy:OnSubStart39008()
	return 0
end
function DummyActorProxy:OnSubStart39009()
	return 0
end
function DummyActorProxy:OnSubStart39010()
	return 0
end
function DummyActorProxy:OnSubFinish39001()
	return 0
end
function DummyActorProxy:OnSubFinish39002()
	return 0
end
function DummyActorProxy:OnSubFinish39003()
	return 0
end
function DummyActorProxy:OnSubFinish39004()
	return 0
end
function DummyActorProxy:OnSubFinish39005()
	return 0
end
function DummyActorProxy:OnSubFinish39006()
	return 0
end
function DummyActorProxy:OnSubFinish39007()
	return 0
end
function DummyActorProxy:OnSubFinish39008()
	return 0
end
function DummyActorProxy:OnSubFinish39009()
	return 0
end
function DummyActorProxy:OnSubFinish39010()
	return 0
end

function DummyActorProxy:OnSubStart39101()
	return 0
end
function DummyActorProxy:OnSubStart39102()
	return 0
end
function DummyActorProxy:OnSubStart39103()
	return 0
end
function DummyActorProxy:OnSubStart39104()
	return 0
end
function DummyActorProxy:OnSubStart39105()
	return 0
end
function DummyActorProxy:OnSubStart39106()
	return 0
end
function DummyActorProxy:OnSubStart39107()
	return 0
end
function DummyActorProxy:OnSubStart39108()
	return 0
end
function DummyActorProxy:OnSubStart39109()
	return 0
end
function DummyActorProxy:OnSubStart39110()
	return 0
end
function DummyActorProxy:OnSubFinish39101()
	return 0
end
function DummyActorProxy:OnSubFinish39102()
	return 0
end
function DummyActorProxy:OnSubFinish39103()
	return 0
end
function DummyActorProxy:OnSubFinish39104()
	return 0
end
function DummyActorProxy:OnSubFinish39105()
	return 0
end
function DummyActorProxy:OnSubFinish39106()
	return 0
end
function DummyActorProxy:OnSubFinish39107()
	return 0
end
function DummyActorProxy:OnSubFinish39108()
	return 0
end
function DummyActorProxy:OnSubFinish39109()
	return 0
end
function DummyActorProxy:OnSubFinish39110()
	return 0
end

function DummyActorProxy:OnSubStart39201()
	return 0
end
function DummyActorProxy:OnSubStart39202()
	return 0
end
function DummyActorProxy:OnSubStart39203()
	return 0
end
function DummyActorProxy:OnSubStart39204()
	return 0
end
function DummyActorProxy:OnSubStart39205()
	return 0
end
function DummyActorProxy:OnSubStart39206()
	return 0
end
function DummyActorProxy:OnSubStart39207()
	return 0
end
function DummyActorProxy:OnSubStart39208()
	return 0
end
function DummyActorProxy:OnSubStart39209()
	return 0
end
function DummyActorProxy:OnSubStart39210()
	return 0
end
function DummyActorProxy:OnSubFinish39201()
	return 0
end
function DummyActorProxy:OnSubFinish39202()
	return 0
end
function DummyActorProxy:OnSubFinish39203()
	return 0
end
function DummyActorProxy:OnSubFinish39204()
	return 0
end
function DummyActorProxy:OnSubFinish39205()
	return 0
end
function DummyActorProxy:OnSubFinish39206()
	return 0
end
function DummyActorProxy:OnSubFinish39207()
	return 0
end
function DummyActorProxy:OnSubFinish39208()
	return 0
end
function DummyActorProxy:OnSubFinish39209()
	return 0
end
function DummyActorProxy:OnSubFinish39210()
	return 0
end

function DummyActorProxy:OnSubStart39301()
	return 0
end
function DummyActorProxy:OnSubStart39302()
	return 0
end
function DummyActorProxy:OnSubStart39303()
	return 0
end
function DummyActorProxy:OnSubFinish39301()
	return 0
end
function DummyActorProxy:OnSubFinish39302()
	return 0
end
function DummyActorProxy:OnSubFinish39303()
	return 0
end

function DummyActorProxy:On39403CutSceneFinish()
	return 0
end
function DummyActorProxy:OnSubStart39401()
	return 0
end
function DummyActorProxy:OnSubStart39402()
	return 0
end
function DummyActorProxy:OnSubStart39403()
	return 0
end
function DummyActorProxy:OnSubFinish39401()
	return 0
end
function DummyActorProxy:OnSubFinish39402()
	return 0
end
function DummyActorProxy:OnSubFinish39403()
	return 0
end

function DummyActorProxy:OnSubStart39501()
	return 0
end
function DummyActorProxy:OnSubStart39502()
	return 0
end
function DummyActorProxy:OnSubStart39503()
	return 0
end
function DummyActorProxy:OnSubFinish39501()
	return 0
end
function DummyActorProxy:OnSubFinish39502()
	return 0
end
function DummyActorProxy:OnSubFinish39503()
	return 0
end
function DummyActorProxy:CreateBBR()
	return 0
end

function DummyActorProxy:PlayerBackMengde()
	return 0
end
function DummyActorProxy:On39601CutSceneFinish()
	return 0
end
function DummyActorProxy:OnSubStart39601()
	return 0
end
function DummyActorProxy:OnSubStart39602()
	return 0
end
function DummyActorProxy:OnSubStart39603()
	return 0
end
function DummyActorProxy:OnSubStart39604()
	return 0
end
function DummyActorProxy:OnSubStart39605()
	return 0
end
function DummyActorProxy:OnSubStart39606()
	return 0
end
function DummyActorProxy:OnSubFinish39601()
	return 0
end
function DummyActorProxy:OnSubFinish39602()
	return 0
end
function DummyActorProxy:OnSubFinish39603()
	return 0
end
function DummyActorProxy:OnSubFinish39604()
	return 0
end
function DummyActorProxy:OnSubFinish39605()
	return 0
end
function DummyActorProxy:OnSubFinish39606()
	return 0
end
function DummyActorProxy:BBRdisappear()
	return 0
end

function DummyActorProxy:OnSubStart39701()
	return 0
end
function DummyActorProxy:OnSubStart39702()
	return 0
end
function DummyActorProxy:OnSubStart39703()
	return 0
end
function DummyActorProxy:OnSubStart39704()
	return 0
end
function DummyActorProxy:OnSubFinish39701()
	return 0
end
function DummyActorProxy:OnSubFinish39702()
	return 0
end
function DummyActorProxy:OnSubFinish39703()
	return 0
end
function DummyActorProxy:OnSubFinish39704()
	return 0
end

function DummyActorProxy:OnSubFinish41901()
	return 0
end

function DummyActorProxy:OnSubFinish42001()
	return 0
end

function DummyActorProxy:OnSubStart42101()
	return 0
end
function DummyActorProxy:OnSubStart42102()
	return 0
end
function DummyActorProxy:OnSubStart42103()
	return 0
end
function DummyActorProxy:OnSubStart42104()
	return 0
end
function DummyActorProxy:Clean()
	return 0
end
function DummyActorProxy:OnSubFinish42101()
	return 0
end
function DummyActorProxy:OnSubFinish42102()
	return 0
end
function DummyActorProxy:OnSubFinish42103()
	return 0
end
function DummyActorProxy:OnSubFinish42104()
	return 0
end

function DummyActorProxy:OnSubFinish42201()
	return 0
end

function DummyActorProxy:StartBeFollow()
	return 0
end

function DummyActorProxy:StartDance()
	return 0
end
function DummyActorProxy:FinishDance()
	return 0
end

function DummyActorProxy:MoveToSeat()
	return 0
end
function DummyActorProxy:ReturnToNormal()
	return 0
end
DummyActorProxy.seatPos = 0
DummyActorProxy.seatDir = 0
DummyActorProxy.returnCallback = 0

function DummyActorProxy:ShowStart()
	return 0
end
function DummyActorProxy:Vanish()
	return 0
end
function DummyActorProxy:VanishDirect()
	return 0
end

function DummyActorProxy:StartBeFollow1()
	return 0
end
function DummyActorProxy:Sleep()
	return 0
end
function DummyActorProxy:OnSleep()
	return 0
end
function DummyActorProxy:StartBeFollow2()
	return 0
end
function DummyActorProxy:StartBeFollow5()
	return 0
end
function DummyActorProxy:StartBeFollow3()
	return 0
end
function DummyActorProxy:StartBeFollow6()
	return 0
end
function DummyActorProxy:StartBeFollow4()
	return 0
end
function DummyActorProxy:Show()
	return 0
end



function DummyActorProxy:Escape()
	return 0
end

function DummyActorProxy:IsRaining()
	return 0
end
function DummyActorProxy:FinishBehave()
	return 0
end
function DummyActorProxy:OnWeather()
	return 0
end
function DummyActorProxy:MoveHome()
	return 0
end

function DummyActorProxy:FlyCircle()
	return 0
end
function DummyActorProxy:FlyCircle2()
	return 0
end

function DummyActorProxy:TransPreCallBack()
	return 0
end
function DummyActorProxy:TransFinishCallBack()
	return 0
end
function DummyActorProxy:FollowWater()
	return 0
end
function DummyActorProxy:Follow3()
	return 0
end
function DummyActorProxy:Follow2()
	return 0
end
function DummyActorProxy:Follow1()
	return 0
end
function DummyActorProxy:FirstStartFollow1()
	return 0
end
function DummyActorProxy:FirstStartFollow2()
	return 0
end
function DummyActorProxy:FirstStartFollow3()
	return 0
end
function DummyActorProxy:FirstStartFollowFinish()
	return 0
end
function DummyActorProxy:VanishKeep()
	return 0
end
function DummyActorProxy:ByQueen()
	return 0
end
function DummyActorProxy:AirModeOn()
	return 0
end
function DummyActorProxy:AirModeOff()
	return 0
end


function DummyActorProxy:BornOnce()
	return 0
end
function DummyActorProxy:GoWork()
	return 0
end
function DummyActorProxy:GoHome()
	return 0
end
function DummyActorProxy:HourBehave()
	return 0
end
function DummyActorProxy:StartNightNow()
	return 0
end
function DummyActorProxy:StartDayNow()
	return 0
end




function DummyActorProxy:WalkFollow()
	return 0
end

function DummyActorProxy:Rescue()
	return 0
end









function DummyActorProxy:RunToMerchant()
	return 0
end
function DummyActorProxy:RunToWatchSunRise()
	return 0
end
function DummyActorProxy:WalkFollow2()
	return 0
end
function DummyActorProxy:WalkFollow3()
	return 0
end
function DummyActorProxy:WalkFollow4()
	return 0
end

function DummyActorProxy:VanishDungeon()
	return 0
end
function DummyActorProxy:StartLive()
	return 0
end
function DummyActorProxy:FinishLive()
	return 0
end






function DummyActorProxy:OnDataLoad()
	return 0
end
function DummyActorProxy:OnHandlerBuild()
	return 0
end
function DummyActorProxy:OnSubFailed()
	return 0
end
function DummyActorProxy:OnSoftRewind()
	return 0
end
function DummyActorProxy:DoRewind()
	return 0
end
function DummyActorProxy:DoSoftRewind()
	return 0
end
function DummyActorProxy:DoRewindAvatar()
	return 0
end
function DummyActorProxy:DoRewindNpc()
	return 0
end
function DummyActorProxy:DoRewindGadget()
	return 0
end
function DummyActorProxy:DoRewindItem()
	return 0
end
function DummyActorProxy:FinishQuestID()
	return 0
end
function DummyActorProxy:UnFinishQuest()
	return 0
end
function DummyActorProxy:GetRandomFactorValue()
	return 0
end
function DummyActorProxy:IsRandom()
	return 0
end
function DummyActorProxy:GetRandomNpcAlias()
	return 0
end
function DummyActorProxy:GetRandomGadgetAlias()
	return 0
end
function DummyActorProxy:GetRandomItemAlias()
	return 0
end
function DummyActorProxy:GetGivingRecord()
	return 0
end
function DummyActorProxy:CreateSpeechBubbleTask()
	return 0
end
function DummyActorProxy:ClearSpeechBubbleTask()
	return 0
end
function DummyActorProxy:CreateNPCActorData()
	return 0
end
function DummyActorProxy:CreateQuestNPCActorInternal()
	return 0
end
function DummyActorProxy:SetQuestVar()
	return 0
end
function DummyActorProxy:SetQuestVarWithInterval()
	return 0
end
function DummyActorProxy:GetQuestVar()
	return 0
end
DummyActorProxy.mainQuestID = 0
DummyActorProxy.mainQuestConfigID = 0
DummyActorProxy.shareData = 0
DummyActorProxy.clientData = 0
DummyActorProxy.subStartHandlers = 0
DummyActorProxy.subFinishHandlers = 0
DummyActorProxy.subFailedHandlers = 0
DummyActorProxy.speechBubbleTask = 0

function DummyActorProxy:QuestDestroy()
	return 0
end
function DummyActorProxy:OnSubStart3000001()
	return 0
end
function DummyActorProxy:OnSubStart3000002()
	return 0
end
function DummyActorProxy:OnSubFinish3000002()
	return 0
end
function DummyActorProxy:OnSubFinish3000004()
	return 0
end
function DummyActorProxy:OnSubFailed3000004()
	return 0
end

function DummyActorProxy:NPCShowBubble()
	return 0
end
function DummyActorProxy:OnSubStart3000101()
	return 0
end
function DummyActorProxy:OnSubStart3000102()
	return 0
end
function DummyActorProxy:OnSubFinish3000102()
	return 0
end

function DummyActorProxy:OnSubStart3000201()
	return 0
end
function DummyActorProxy:OnSubStart3000202()
	return 0
end
function DummyActorProxy:OnSubStart3000203()
	return 0
end
function DummyActorProxy:OnSubFinish3000202()
	return 0
end

function DummyActorProxy:OnSubStart3000301()
	return 0
end
function DummyActorProxy:OnSubStart3000302()
	return 0
end
function DummyActorProxy:OnSubFinish3000302()
	return 0
end
function DummyActorProxy:OnSubFinish3000304()
	return 0
end
function DummyActorProxy:OnSubFailed3000304()
	return 0
end

function DummyActorProxy:OnSubStart3000401()
	return 0
end
function DummyActorProxy:OnSubStart3000402()
	return 0
end
function DummyActorProxy:OnSubFinish3000402()
	return 0
end
function DummyActorProxy:OnSubFinish3000404()
	return 0
end
function DummyActorProxy:OnSubFailed3000404()
	return 0
end

function DummyActorProxy:OnSubStart3000501()
	return 0
end
function DummyActorProxy:OnSubStart3000502()
	return 0
end
function DummyActorProxy:OnSubFinish3000502()
	return 0
end
function DummyActorProxy:OnSubFinish3000504()
	return 0
end
function DummyActorProxy:OnSubFailed3000504()
	return 0
end

function DummyActorProxy:OnSubStart3000601()
	return 0
end
function DummyActorProxy:OnSubStart3000602()
	return 0
end
function DummyActorProxy:OnSubFinish3000602()
	return 0
end
function DummyActorProxy:OnSubFinish3000604()
	return 0
end
function DummyActorProxy:OnSubFailed3000604()
	return 0
end

function DummyActorProxy:OnSubStart3000701()
	return 0
end
function DummyActorProxy:OnSubStart3000702()
	return 0
end
function DummyActorProxy:OnSubFinish3000702()
	return 0
end
function DummyActorProxy:OnSubFinish3000704()
	return 0
end
function DummyActorProxy:OnSubFailed3000704()
	return 0
end

function DummyActorProxy:OnSubStart3001101()
	return 0
end
function DummyActorProxy:OnSubStart3001102()
	return 0
end
function DummyActorProxy:OnSubStart3001103()
	return 0
end
function DummyActorProxy:OnSubFinish3001102()
	return 0
end

function DummyActorProxy:OnSubStart3001201()
	return 0
end
function DummyActorProxy:OnSubStart3001202()
	return 0
end
function DummyActorProxy:OnSubStart3001203()
	return 0
end
function DummyActorProxy:OnSubFinish3001202()
	return 0
end

function DummyActorProxy:OnSubStart3001301()
	return 0
end
function DummyActorProxy:OnSubStart3001302()
	return 0
end
function DummyActorProxy:OnSubStart3001303()
	return 0
end
function DummyActorProxy:OnSubFinish3001302()
	return 0
end

function DummyActorProxy:OnSubStart3001401()
	return 0
end
function DummyActorProxy:OnSubStart3001402()
	return 0
end
function DummyActorProxy:OnSubStart3001403()
	return 0
end
function DummyActorProxy:OnSubFinish3001402()
	return 0
end

function DummyActorProxy:OnSubStart3001501()
	return 0
end
function DummyActorProxy:OnSubStart3001502()
	return 0
end
function DummyActorProxy:OnSubStart3001503()
	return 0
end
function DummyActorProxy:OnSubFinish3001502()
	return 0
end

function DummyActorProxy:OnSubStart3002101()
	return 0
end
function DummyActorProxy:OnSubStart3002102()
	return 0
end
function DummyActorProxy:OnSubFinish3002101()
	return 0
end
function DummyActorProxy:OnSubFinish3002102()
	return 0
end

function DummyActorProxy:OnSubStart3002201()
	return 0
end
function DummyActorProxy:OnSubStart3002202()
	return 0
end
function DummyActorProxy:OnSubFinish3002201()
	return 0
end
function DummyActorProxy:OnSubFinish3002202()
	return 0
end

function DummyActorProxy:OnSubStart3002301()
	return 0
end
function DummyActorProxy:OnSubStart3002302()
	return 0
end
function DummyActorProxy:OnSubFinish3002301()
	return 0
end
function DummyActorProxy:OnSubFinish3002302()
	return 0
end

function DummyActorProxy:OnSubStart3002401()
	return 0
end
function DummyActorProxy:OnSubStart3002402()
	return 0
end
function DummyActorProxy:OnSubFinish3002401()
	return 0
end
function DummyActorProxy:OnSubFinish3002402()
	return 0
end

function DummyActorProxy:OnSubStart3002501()
	return 0
end
function DummyActorProxy:OnSubStart3002502()
	return 0
end
function DummyActorProxy:OnSubFinish3002501()
	return 0
end
function DummyActorProxy:OnSubFinish3002502()
	return 0
end




function DummyActorProxy:AmborToJudgePos()
	return 0
end
function DummyActorProxy:RunAmbor()
	return 0
end
function DummyActorProxy:AbleQuit1()
	return 0
end
function DummyActorProxy:AbleQuit2()
	return 0
end
function DummyActorProxy:StartCount2()
	return 0
end
function DummyActorProxy:MovePlayer()
	return 0
end
function DummyActorProxy:BlackScreen()
	return 0
end
function DummyActorProxy:FailCount()
	return 0
end
function DummyActorProxy:SuccCount()
	return 0
end
function DummyActorProxy:OnSubStart40400()
	return 0
end
function DummyActorProxy:OnSubStart40401()
	return 0
end
function DummyActorProxy:OnSubStart40402()
	return 0
end
function DummyActorProxy:OnSubStart40403()
	return 0
end
function DummyActorProxy:OnSubStart40404()
	return 0
end
function DummyActorProxy:OnSubStart40405()
	return 0
end
function DummyActorProxy:OnSubStart40407()
	return 0
end
function DummyActorProxy:OnSubStart40408()
	return 0
end
function DummyActorProxy:OnSubStart40410()
	return 0
end
function DummyActorProxy:OnSubFinish40400()
	return 0
end
function DummyActorProxy:OnSubFinish40401()
	return 0
end
function DummyActorProxy:OnSubFinish40402()
	return 0
end
function DummyActorProxy:OnSubFinish40403()
	return 0
end
function DummyActorProxy:OnSubFinish40404()
	return 0
end
function DummyActorProxy:OnSubFinish40405()
	return 0
end
function DummyActorProxy:OnSubFinish40407()
	return 0
end







function DummyActorProxy:EndSpeedField()
	return 0
end
function DummyActorProxy:StartSpeedField()
	return 0
end

function DummyActorProxy:GaiaToHide()
	return 0
end
function DummyActorProxy:GaiaToObserve()
	return 0
end
function DummyActorProxy:GaiaToAnswer()
	return 0
end



function DummyActorProxy:OnSubStart41501()
	return 0
end
function DummyActorProxy:OnSubStart41502()
	return 0
end
function DummyActorProxy:OnSubStart41503()
	return 0
end
function DummyActorProxy:OnSubStart41504()
	return 0
end
function DummyActorProxy:OnSubStart41505()
	return 0
end
function DummyActorProxy:OnSubFinish41501()
	return 0
end
function DummyActorProxy:OnSubFinish41502()
	return 0
end
function DummyActorProxy:OnSubFinish41503()
	return 0
end
function DummyActorProxy:OnSubFinish41504()
	return 0
end
function DummyActorProxy:OnSubFinish41505()
	return 0
end

function DummyActorProxy:OnSubStart41601()
	return 0
end
function DummyActorProxy:OnSubStart41602()
	return 0
end
function DummyActorProxy:OnSubFinish41601()
	return 0
end
function DummyActorProxy:OnSubFinish41602()
	return 0
end

function DummyActorProxy:TreasurePrepare()
	return 0
end
function DummyActorProxy:TreasureDestroy()
	return 0
end
function DummyActorProxy:DoorPrepare()
	return 0
end
function DummyActorProxy:DoorDestroy()
	return 0
end
function DummyActorProxy:ItemPrepare()
	return 0
end
function DummyActorProxy:ItemDestroy()
	return 0
end
function DummyActorProxy:GetScore()
	return 0
end
function DummyActorProxy:GetTreasure()
	return 0
end
function DummyActorProxy:OnSubStart42401()
	return 0
end
function DummyActorProxy:OnSubStart42402()
	return 0
end
function DummyActorProxy:OnSubStart42403()
	return 0
end
function DummyActorProxy:OnSubStart42404()
	return 0
end
function DummyActorProxy:OnSubStart42405()
	return 0
end
function DummyActorProxy:OnSubFinish42401()
	return 0
end
function DummyActorProxy:OnSubFinish42402()
	return 0
end
function DummyActorProxy:OnSubFinish42403()
	return 0
end
function DummyActorProxy:OnSubFinish42404()
	return 0
end
function DummyActorProxy:OnSubFinish42405()
	return 0
end

function DummyActorProxy:OnSubStart42501()
	return 0
end
function DummyActorProxy:OnSubStart42502()
	return 0
end
function DummyActorProxy:OnSubStart42503()
	return 0
end
function DummyActorProxy:OnSubStart42504()
	return 0
end
function DummyActorProxy:OnSubFinish42501()
	return 0
end
function DummyActorProxy:OnSubFinish42502()
	return 0
end
function DummyActorProxy:OnSubFinish42503()
	return 0
end
function DummyActorProxy:OnSubFinish42504()
	return 0
end

function DummyActorProxy:OnPlayerSit()
	return 0
end
function DummyActorProxy:OnPlayerStand()
	return 0
end
function DummyActorProxy:OnSubStart42601()
	return 0
end
function DummyActorProxy:OnSubStart42602()
	return 0
end
function DummyActorProxy:OnSubFinish42601()
	return 0
end
function DummyActorProxy:OnSubFinish42602()
	return 0
end

function DummyActorProxy:CountDown2()
	return 0
end
function DummyActorProxy:OnSubStart42709()
	return 0
end
function DummyActorProxy:OnSubStart42701()
	return 0
end
function DummyActorProxy:OnSubStart42702()
	return 0
end
function DummyActorProxy:OnSubStart42703()
	return 0
end
function DummyActorProxy:OnSubStart42704()
	return 0
end
function DummyActorProxy:OnSubStart42705()
	return 0
end
function DummyActorProxy:OnSubStart42706()
	return 0
end
function DummyActorProxy:OnSubStart42707()
	return 0
end
function DummyActorProxy:OnSubStart42708()
	return 0
end
function DummyActorProxy:CreateSoldier()
	return 0
end
function DummyActorProxy:OnSubFinish42701()
	return 0
end
function DummyActorProxy:OnSubFinish42702()
	return 0
end
function DummyActorProxy:OnSubFinish42703()
	return 0
end
function DummyActorProxy:OnSubFinish42704()
	return 0
end
function DummyActorProxy:OnSubFinish42705()
	return 0
end
function DummyActorProxy:OnSubFinish42706()
	return 0
end
function DummyActorProxy:OnSubFinish42707()
	return 0
end
function DummyActorProxy:OnSubFinish42708()
	return 0
end
function DummyActorProxy:OnSubFailed42702()
	return 0
end
function DummyActorProxy:OnSubFailed42705()
	return 0
end

function DummyActorProxy:OnSubStart42801()
	return 0
end
function DummyActorProxy:OnSubStart42802()
	return 0
end
function DummyActorProxy:OnSubStart42803()
	return 0
end
function DummyActorProxy:OnSubFinish42801()
	return 0
end
function DummyActorProxy:OnSubFinish42802()
	return 0
end
function DummyActorProxy:OnSubFinish42803()
	return 0
end

function DummyActorProxy:EnemyWaveStart()
	return 0
end
function DummyActorProxy:CoinGrow()
	return 0
end
function DummyActorProxy:GameDestroy()
	return 0
end
function DummyActorProxy:OnSubStart42901()
	return 0
end
function DummyActorProxy:OnSubStart42902()
	return 0
end
function DummyActorProxy:OnSubFinish42903()
	return 0
end
function DummyActorProxy:OnSubStart42904()
	return 0
end
function DummyActorProxy:OnSubStart42905()
	return 0
end

function DummyActorProxy:OnSubStart99101()
	return 0
end
function DummyActorProxy:OnSubStart99102()
	return 0
end
function DummyActorProxy:OnSubStart99103()
	return 0
end
function DummyActorProxy:OnSubFinish99103()
	return 0
end

function DummyActorProxy:OnSubStart99201()
	return 0
end
function DummyActorProxy:OnSubStart99202()
	return 0
end
function DummyActorProxy:OnSubStart99203()
	return 0
end
function DummyActorProxy:OnSubFinish99203()
	return 0
end

function DummyActorProxy:OnSubStart99301()
	return 0
end
function DummyActorProxy:OnSubStart99302()
	return 0
end
function DummyActorProxy:OnSubStart99303()
	return 0
end
function DummyActorProxy:OnSubStart99304()
	return 0
end
function DummyActorProxy:OnSubFinish99301()
	return 0
end

function DummyActorProxy:OnSubStart99401()
	return 0
end
function DummyActorProxy:OnSubFinish99401()
	return 0
end

function DummyActorProxy:OnSubStart99601()
	return 0
end
function DummyActorProxy:OnSubStart99602()
	return 0
end
function DummyActorProxy:OnSubFinish99601()
	return 0
end
function DummyActorProxy:OnSubFinish99602()
	return 0
end

function DummyActorProxy:OnSubStart99701()
	return 0
end
function DummyActorProxy:OnSubFinish99701()
	return 0
end

function DummyActorProxy:OnSubStart99801()
	return 0
end
function DummyActorProxy:OnSubStart99802()
	return 0
end
function DummyActorProxy:OnSubStart99803()
	return 0
end
function DummyActorProxy:OnSubStart99804()
	return 0
end
function DummyActorProxy:OnSubStart99805()
	return 0
end
function DummyActorProxy:OnSubFinish99801()
	return 0
end
function DummyActorProxy:OnSubFinish99802()
	return 0
end
function DummyActorProxy:OnSubFinish99803()
	return 0
end
function DummyActorProxy:OnSubFinish99804()
	return 0
end
function DummyActorProxy:OnSubFinish99805()
	return 0
end

function DummyActorProxy:OnSubStart99901()
	return 0
end
function DummyActorProxy:OnSubStart99902()
	return 0
end

function DummyActorProxy:StopPerformAllNarrator()
	return 0
end
function DummyActorProxy:PerformTeachingNarrator()
	return 0
end
function DummyActorProxy:CheckLimit()
	return 0
end
function DummyActorProxy:UseFreshmeatRegion()
	return 0
end
function DummyActorProxy:OnFinishedRegion()
	return 0
end
function DummyActorProxy:FinishLimitRegion()
	return 0
end
DummyActorProxy.TeachingDialogList = 0
DummyActorProxy.TeachingDuration = 0
DummyActorProxy.TeachingDurationCnt = 0
DummyActorProxy.Teaching = 0
DummyActorProxy.WarningDialogList = 0
DummyActorProxy.WarningDialogIndex = 0
DummyActorProxy.WarningDuration = 0
DummyActorProxy.WarningDurationCnt = 0
DummyActorProxy.testLength = 0
DummyActorProxy.transOffset = 0
DummyActorProxy.checkTask = 0
DummyActorProxy.pauseTask = 0
DummyActorProxy.Warnning = 0

function DummyActorProxy:CreateLimitRegion()
	return 0
end
function DummyActorProxy:DestroyLimitRegion()
	return 0
end
function DummyActorProxy:CheckNeedTrans()
	return 0
end
function DummyActorProxy:GetLimitRegionDis()
	return 0
end

DummyActorProxy.SpeedFieldDir = 0
DummyActorProxy.SpeedFieldPos = 0
DummyActorProxy.StartSpeedField = 0
DummyActorProxy.EndSpeedField = 0
DummyActorProxy.DoTestHour = 0

function DummyActorProxy:GetSingleton()
	return 0
end
function DummyActorProxy:Init()
	return 0
end
function DummyActorProxy:OnSceneLoaded()
	return 0
end
function DummyActorProxy:OnFinishLoadScene()
	return 0
end
function DummyActorProxy:Cutscene()
	return 0
end
function DummyActorProxy:FreeCutscene()
	return 0
end
DummyActorProxy.CutsceneTestDic = 0


-- Dummy Method End


return DummyActorProxy