.class public Lcom/lge/camera/setting/VideoMainSettingMenu;
.super Lcom/lge/camera/setting/VideoSettingMenu;
.source "VideoMainSettingMenu.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;Landroid/content/Context;Lcom/lge/camera/setting/VideoSetting;)V
    .locals 1
    .parameter "function"
    .parameter "context"
    .parameter "setting"

    .prologue
    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/camera/setting/VideoSettingMenu;-><init>(Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;Landroid/content/Context;Lcom/lge/camera/setting/VideoSetting;)V

    .line 11
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v0}, Lcom/lge/camera/setting/Setting;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/camera/setting/VideoMainSettingMenu;->setSettingPreferenceGroupForVideo(Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 12
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v0}, Lcom/lge/camera/setting/Setting;->loadQfIndex()V

    .line 13
    invoke-virtual {p0}, Lcom/lge/camera/setting/VideoMainSettingMenu;->initMenu()V

    .line 14
    return-void
.end method


# virtual methods
.method public initSettingMenu()V
    .locals 0

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/lge/camera/setting/VideoMainSettingMenu;->initMenu()V

    .line 17
    return-void
.end method
