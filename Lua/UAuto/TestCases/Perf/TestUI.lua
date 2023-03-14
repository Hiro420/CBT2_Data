local baseClass = require('UAuto/Base/UAutoLuaTestBase')
local UAutoLuaTestCase = class("TestUI",baseClass)
local self = UAutoLuaTestCase
self.TestFixture = "TestUI"
self.Category = "PerformanceTest"
self.Description = "Auto UI"
self.Order=10000

self.Step1 = {
	Order = 1,
	Type = CaseType.MonoTest,
	Description = "Auto UI",
    Action = UAutoCoroutine(function()
        local uiManager = singletonManager:GetSingletonInstance("MoleMole.UIManager")

        --------------- 背包界面测试 ---------------
        -- 背包
        yield_return(self.base:MouseClick( "Canvas/Pages/InLevelMainPage/GrpMainPage/GrpMainBtn/GrpMainToggle/GrpTopPanel/BtnBag/Button"))
        yield_return(self.base:WaitFrames(66))

        local TabMobile = CS.UnityEngine.GameObject.Find("Tab_Mobile")
        local tabs = TabMobile:GetComponentsInChildren(typeof(CS.MoleMole.MonoImgTab))
        print(tabs.Length)

        -- 武器分页
        tabs[0]:OnPointerClick(nil)
        yield_return(self.base:WaitFrames(66))
        
        -- 详情按钮
        yield_return(self.base:MouseClick( "Canvas/Pages/BagPage/GrpBag/GrpOp/BtnUse/Content/ImgBg"))
        yield_return(self.base:WaitFrames(66))

        -- 返回按钮
        yield_return(self.base:MouseClick( "Canvas/Pages/EquipOverviewPage/GrpEquip/BtnBack/Content/Btn"))
        yield_return(self.base:WaitFrames(66))

        -- 圣遗物分页
        tabs[1]:OnPointerClick(nil)
        yield_return(self.base:WaitFrames(66))

        -- 角色分页
        tabs[2]:OnPointerClick(nil)
        yield_return(self.base:WaitFrames(66))

        -- 食物分页
        tabs[3]:OnPointerClick(nil)
        yield_return(self.base:WaitFrames(66))

        -- 材料分页
        tabs[4]:OnPointerClick(nil)
        yield_return(self.base:WaitFrames(66))

        -- 任务分页
        tabs[5]:OnPointerClick(nil)
        yield_return(self.base:WaitFrames(66))

        -- 消耗品分页
        tabs[6]:OnPointerClick(nil)
        yield_return(self.base:WaitFrames(66))

        -- 关闭背包
        yield_return(self.base:MouseClick( "Canvas/Pages/BagPage/GrpBag/BtnReturn/Content/Btn"))
        yield_return(self.base:WaitFrames(66))

        --------------- 角色界面测试 ---------------
        -- 角色
        yield_return(self.base:MouseClick( "Canvas/Pages/InLevelMainPage/GrpMainPage/GrpMainBtn/GrpMainToggle/GrpTopPanel/BtnSystem/Button"))
        yield_return(self.base:WaitFrames(66))

        -- 属性分页
        yield_return(self.base:MouseClick( "Canvas/Pages/CharacterPage/GrpCharacter/GrpTab/Menu/Content/BtnAvatar/Text/Touch"))
        yield_return(self.base:WaitFrames(66))

        -- 武器分页
        yield_return(self.base:MouseClick( "Canvas/Pages/CharacterPage/GrpCharacter/GrpTab/Menu/Content/BtnWeapon/Text/Touch"))
        yield_return(self.base:WaitFrames(66))

        -- 圣遗物分页
        yield_return(self.base:MouseClick( "Canvas/Pages/CharacterPage/GrpCharacter/GrpTab/Menu/Content/BtnRelic/Text/Touch"))
        yield_return(self.base:WaitFrames(66))

        -- 命之座分页
        yield_return(self.base:MouseClick( "Canvas/Pages/CharacterPage/GrpCharacter/GrpTab/Menu/Content/BtnTalent/Text/Touch"))
        yield_return(self.base:WaitFrames(66))

        -- 天赋分页
        yield_return(self.base:MouseClick( "Canvas/Pages/CharacterPage/GrpCharacter/GrpTab/Menu/Content/BtnSkill/Text/Touch"))
        yield_return(self.base:WaitFrames(66))

        -- 资料分页
        yield_return(self.base:MouseClick( "Canvas/Pages/CharacterPage/GrpCharacter/GrpTab/Menu/Content/BtnFetter/Text/Touch"))
        yield_return(self.base:WaitFrames(66))

        -- 关闭角色
        yield_return(self.base:MouseClick( "Canvas/Pages/CharacterPage/GrpCharacter/BtnReturn/Content/Btn"))
        yield_return(self.base:WaitFrames(66))

        --------------- 派蒙界面测试 ---------------
        -- 派蒙
        yield_return(self.base:MouseClick( "Canvas/Pages/InLevelMainPage/GrpMainPage/MapInfo/BtnPlayerProfile"))
        yield_return(self.base:WaitFrames(66))

        -- 打开角色一览
        yield_return(self.base:MouseClick( "Canvas/Pages/PlayerProfilePage/GrpProfile/GrpEntry/ScrollView/Content/AvatarList/Content"))
        yield_return(self.base:WaitFrames(66))

        -- 关闭角色一览
        yield_return(self.base:MouseClick( "Canvas/Pages/AvatarPreviewPage/GrpAvatarPreview/BtnReturn/Content/Btn"))
        yield_return(self.base:WaitFrames(66))

        -- 打开商店
        yield_return(self.base:MouseClick( "Canvas/Pages/PlayerProfilePage/GrpProfile/GrpEntry/ScrollView/Content/Shop/Content"))
        yield_return(self.base:WaitFrames(66))

        -- 点击兑换
        yield_return(self.base:MouseClick( "Canvas/Pages/ShopPage/GrpShop/GrpBottom/GrpAction/BtnExchange/Content/ImgBg"))
        yield_return(self.base:WaitFrames(66))

        -- 点击取消
        yield_return(self.base:MouseClick( "Canvas/Dialogs/GeneralDialog/Dialog/Content/ActionButton/CancelBtn/Content/ImgBg"))
        yield_return(self.base:WaitFrames(66))

        -- 关闭商店
        yield_return(self.base:MouseClick( "Canvas/Pages/ShopPage/GrpShop/BtnReturn/Content/Btn"))
        yield_return(self.base:WaitFrames(66))

        -- 打开设置
        yield_return(self.base:MouseClick( "Canvas/Pages/PlayerProfilePage/GrpProfile/GrpEntry/ScrollView/Content/Setting/Content"))
        yield_return(self.base:WaitFrames(66))

        -- 控制页
        yield_return(self.base:MouseClick( "Canvas/Pages/SettingPage/GrpSetting/GrpTab/Menu/Content/BtnControl/Text/Touch"))
        yield_return(self.base:WaitFrames(66))

        -- 图像页
        yield_return(self.base:MouseClick( "Canvas/Pages/SettingPage/GrpSetting/GrpTab/Menu/Content/BtnGraphic/Text/Touch"))
        yield_return(self.base:WaitFrames(66))

        -- 声音页
        yield_return(self.base:MouseClick( "Canvas/Pages/SettingPage/GrpSetting/GrpTab/Menu/Content/BtnSound/Text/Touch"))
        yield_return(self.base:WaitFrames(66))

        -- 消息页
        yield_return(self.base:MouseClick( "Canvas/Pages/SettingPage/GrpSetting/GrpTab/Menu/Content/BtnMessage/Text/Touch"))
        yield_return(self.base:WaitFrames(66))

        -- 语言页
        yield_return(self.base:MouseClick( "Canvas/Pages/SettingPage/GrpSetting/GrpTab/Menu/Content/BtnLanguage/Text/Touch"))
        yield_return(self.base:WaitFrames(66))

        -- 其他页
        yield_return(self.base:MouseClick( "Canvas/Pages/SettingPage/GrpSetting/GrpTab/Menu/Content/BtnOther/Text/Touch"))
        yield_return(self.base:WaitFrames(66))

        -- 关闭设置
        yield_return(self.base:MouseClick( "Canvas/Pages/SettingPage/GrpSetting/BtnReturn/Content/Btn"))
        yield_return(self.base:WaitFrames(66))

        -- 打开邮件
        yield_return(self.base:MouseClick( "Canvas/Pages/PlayerProfilePage/GrpProfile/GrpEntry/ScrollView/Content/Mail/Content"))
        yield_return(self.base:WaitFrames(66))

        -- 关闭邮件
        yield_return(self.base:MouseClick( "Canvas/Pages/MailOverviewPage/GrpMail/BtnReturn/Content/Btn"))
        yield_return(self.base:WaitFrames(66))

        -- 打开时间
        yield_return(self.base:MouseClick( "Canvas/Pages/PlayerProfilePage/GrpProfile/GrpEntry/ScrollView/Content/TimeAcceleration/Content"))
        yield_return(self.base:WaitFrames(66))

        -- 关闭时间
        yield_return(self.base:MouseClick( "Canvas/Pages/InLevelClockPage/GrpClock/Top/BtnReturn/Content/Btn"))
        yield_return(self.base:WaitFrames(66))

        -- 打开队伍配置
        yield_return(self.base:MouseClick( "Canvas/Pages/PlayerProfilePage/GrpProfile/GrpEntry/ScrollView/Content/Team/Content"))
        yield_return(self.base:WaitFrames(66))

        -- 关闭队伍配置
        yield_return(self.base:MouseClick( "Canvas/Pages/TeamPage/GrpTeam/BtnReturn/Content/Btn"))
        yield_return(self.base:WaitFrames(66))

        -- 关闭派蒙
        yield_return(self.base:MouseClick( "Canvas/Pages/PlayerProfilePage/BgMask"))
        yield_return(self.base:WaitFrames(66))

        --------------- 任务界面测试 ---------------
        -- 任务
        yield_return(self.base:MouseClick( "Canvas/Pages/InLevelMainPage/GrpMainPage/MapInfo/BtnToggleQuest"))
        yield_return(self.base:WaitFrames(66))

        -- 关闭任务
        yield_return(self.base:MouseClick( "Canvas/Dialogs/InLevelQuestDialog/GrpQuestBook/BtnClose/Content/Btn"))
        yield_return(self.base:WaitFrames(66))

        --------------- 地图界面测试 ---------------
        -- 打开地图
        yield_return(self.base:MouseClick( "Canvas/Pages/InLevelMainPage/GrpMainPage/MapInfo/GrpMiniMap/GrpMap/Btn"))
        yield_return(self.base:WaitFrames(66))

        -- 选择地图锚点
        yield_return(self.base:MouseClick( "Canvas/Pages/InLevelMapPage/GrpMap/MarkContainer/Layer1/7/Point/Icon"))
        yield_return(self.base:WaitFrames(66))

        -- 取消
        yield_return(self.base:MouseClick( "Canvas/Pages/InLevelMapPage/GrpMap/MapTipsContainer/MapTips/BtnCancel/Content/Btn"))
        yield_return(self.base:WaitFrames(66))

        -- 关闭地图
        yield_return(self.base:MouseClick( "Canvas/Pages/InLevelMapPage/GrpMap/Top/BtnClose/Content/Btn"))
        yield_return(self.base:WaitFrames(66))

        --------------- 联机界面测试 ---------------
        -- 打开联机
        yield_return(self.base:MouseClick( "Canvas/Pages/InLevelMainPage/GrpMainPage/MapInfo/BtnTogglePlayerList", true ))
        yield_return(self.base:WaitFrames(66))

        -- 关闭联机
        yield_return(self.base:MouseClick( "Canvas/Pages/MPLobbyPage/GrpMPLobby/BtnReturn/Content/Btn"))
        yield_return(self.base:WaitFrames(66))

        --------------- 烹饪界面测试 ---------------
        -- 打开烹饪界面
        uiManager:ShowPage(CS.MoleMole.CookingPageContext(CS.MoleMole.CookingPageType.COOK))
        yield_return(self.base:WaitFrames(66))

        -- 制作
        yield_return(self.base:MouseClick( "Canvas/Pages/CookingPage/GrpCooking/GrpOp/BtnUse/Content/ImgBg"))
        yield_return(self.base:WaitFrames(66))

        -- 开始
        yield_return(self.base:MouseClick( "Canvas/Pages/CookingQTEPage/GrpCooking/GrpOp/SELAction/GrpAction/BtnStart/Content/ImgBg"))
        yield_return(self.base:WaitFrames(300))

        -- 关闭开始
        yield_return(self.base:MouseClick( "Canvas/Pages/CookingQTEPage/GrpCooking/GrpSettlement/ActionPanel/BtnClose/Content/ImgBg"))
        yield_return(self.base:WaitFrames(66))

        -- 关闭制作
        yield_return(self.base:MouseClick( "Canvas/Pages/CookingQTEPage/GrpCooking/BtnReturn/Content/Btn"))
        yield_return(self.base:WaitFrames(66))

        -- 关闭烹饪界面
        yield_return(self.base:MouseClick( "Canvas/Pages/CookingPage/GrpCooking/BtnReturn/Content/Btn"))
        yield_return(self.base:WaitFrames(66))

        --------------- 地城界面测试 ---------------
        -- 打开地城界面
        singletonManager:GetSingletonInstance("MoleMole.UIManager"):ShowPage(CS.MoleMole.DungeonEntryPageContext(20))
        yield_return(self.base:WaitFrames(66))

        -- 关闭地城界面
        yield_return(self.base:MouseClick( "Canvas/Pages/DungeonEntryPage/GrpDungeon/BtnReturn/Content/Btn"))
        yield_return(self.base:WaitFrames(66))

        ------------- 探索委托界面测试 ---------------
        -- 打开探索委托界面
        local uiManager = singletonManager:GetSingletonInstance("MoleMole.UIManager")
        uiManager:ShowPage(CS.MoleMole.ExplorationPageContext())
        yield_return(self.base:WaitFrames(66))

        -- 切换左侧ScrollView
        yield_return(self.base:MouseClick( "Canvas/Pages/ExplorationPage/GrpExplore/GrpExploreArea/ScrollView/Content/1/Text/Touch"))
        yield_return(self.base:WaitFrames(66))
        
        -- 关闭探索委托
        yield_return(self.base:MouseClick( "Canvas/Pages/ExplorationPage/GrpExplore/BtnReturn/Content/Btn"))
        yield_return(self.base:WaitFrames(66))

        --------------- 扭蛋界面测试 ---------------
        -- 打开扭蛋界面
        yield_return(self.base:MouseClick( "Canvas/Pages/InLevelMainPage/GrpMainPage/GrpMainBtn/GrpMainToggle/GrpTopPanel/BtnGacha/Button"))
        yield_return(self.base:WaitFrames(66))

        -- 十连抽
        yield_return(self.base:MouseClick( "Canvas/Pages/InLevelGachaPage/GrpGacha/GrpAction/BtnTenTimes/Content/ImgBg"))
        yield_return(self.base:WaitFrames(200))

        -- 许愿
        local gachaManager = singletonManager:GetSingletonInstance("MoleMole.GachaManager")
        local page = gachaManager:GetPrivateField("_gachaGazingPage")
        page:DoGacha()

        yield_return(self.base:WaitFrames(66))

        yield_return(self.base:MouseClick( "Canvas/SpecialDialogs/SkipWidgetContext/Touch"))
        yield_return(self.base:WaitFrames(200))
        
        -- 点击跳过按钮
        yield_return(self.base:MouseClick( "Canvas/SpecialDialogs/SkipWidgetContext/Skip/BtnSkip/Content/Touch"))
        yield_return(self.base:WaitFrames(66))

        -- 点击OK按钮
        yield_return(self.base:MouseClick( "Canvas/SpecialDialogs/GeneralDialog/Dialog/Content/ActionButton/OKBtn/Content/ImgBg"))
        yield_return(self.base:WaitFrames(66))

        -- 点击关闭
        yield_return(self.base:MouseClick( "Canvas/Pages/InLevelGachaSettlementPage/GrpGacha/BtnReturn/Content/Btn"))

        -- 关闭扭蛋
        yield_return(self.base:MouseClick( "Canvas/Pages/InLevelGachaPage/GrpGacha/BtnReturn/Content/Btn"))


        --------------- 合成界面测试 ---------------
        -- 打开合成界面
        uiManager:ShowPage(CS.MoleMole.SynthesisPageContext())
        yield_return(self.base:WaitFrames(66))

        -- 关闭合成界面
        yield_return(self.base:MouseClick( "Canvas/Pages/SynthesisPage/GrpSynthesis/BtnReturn/Content/Btn"))
        yield_return(self.base:WaitFrames(66))

        --------------- 锻造界面测试 ---------------
        -- 打开锻造界面
        uiManager:ShowPage(CS.MoleMole.ForgingPageContext())
        yield_return(self.base:WaitFrames(66))

        -- 关闭锻造界面
        yield_return(self.base:MouseClick( "Canvas/Pages/ForgingPage/GrpForging/BtnReturn/Content/Btn"))
        yield_return(self.base:WaitFrames(66))

	end)
}

return self
