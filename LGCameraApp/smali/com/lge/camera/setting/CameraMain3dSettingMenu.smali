.class public Lcom/lge/camera/setting/CameraMain3dSettingMenu;
.super Lcom/lge/camera/setting/CameraSettingMenu;
.source "CameraMain3dSettingMenu.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;Landroid/content/Context;Lcom/lge/camera/setting/CameraSetting;)V
    .locals 1
    .parameter "function"
    .parameter "context"
    .parameter "setting"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/camera/setting/CameraSettingMenu;-><init>(Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;Landroid/content/Context;Lcom/lge/camera/setting/CameraSetting;)V

    .line 14
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v0}, Lcom/lge/camera/setting/Setting;->loadQfIndex()V

    .line 15
    invoke-virtual {p0}, Lcom/lge/camera/setting/CameraMain3dSettingMenu;->initMenu()V

    .line 16
    return-void
.end method


# virtual methods
.method public initSettingMenu()V
    .locals 0

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/lge/camera/setting/CameraMain3dSettingMenu;->initMenu()V

    .line 19
    return-void
.end method
