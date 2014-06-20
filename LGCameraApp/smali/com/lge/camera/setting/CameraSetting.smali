.class public Lcom/lge/camera/setting/CameraSetting;
.super Lcom/lge/camera/setting/Setting;
.source "CameraSetting.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/setting/Setting$SettingFunction;Landroid/content/Context;Ljava/lang/String;Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 0
    .parameter "function"
    .parameter "context"
    .parameter "configName"
    .parameter "prefGroup"

    .prologue
    .line 9
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/camera/setting/Setting;-><init>(Lcom/lge/camera/setting/Setting$SettingFunction;Landroid/content/Context;Ljava/lang/String;Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 10
    invoke-virtual {p0, p2}, Lcom/lge/camera/setting/CameraSetting;->loadSetting(Landroid/content/Context;)V

    .line 11
    return-void
.end method


# virtual methods
.method public loadSetting(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/lge/camera/setting/Setting;->mGet:Lcom/lge/camera/setting/Setting$SettingFunction;

    invoke-interface {v0}, Lcom/lge/camera/setting/Setting$SettingFunction;->isAttachIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    :cond_0
    return-void
.end method

.method public saveSetting(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lge/camera/setting/Setting;->mGet:Lcom/lge/camera/setting/Setting$SettingFunction;

    invoke-interface {v0}, Lcom/lge/camera/setting/Setting$SettingFunction;->isAttachIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    :cond_0
    return-void
.end method
