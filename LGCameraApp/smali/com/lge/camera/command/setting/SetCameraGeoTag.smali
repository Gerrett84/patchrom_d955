.class public Lcom/lge/camera/command/setting/SetCameraGeoTag;
.super Lcom/lge/camera/command/setting/SettingCommand;
.source "SetCameraGeoTag.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .parameter "function"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SettingCommand;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 19
    return-void
.end method

.method private reSetting(Z)V
    .locals 3
    .parameter "locationOn"

    .prologue
    const/4 v2, 0x1

    .line 96
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getOpenLBSSetting()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    if-eqz p1, :cond_1

    .line 98
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/command/setting/SetCameraGeoTag$3;

    invoke-direct {v1, p0}, Lcom/lge/camera/command/setting/SetCameraGeoTag$3;-><init>(Lcom/lge/camera/command/setting/SetCameraGeoTag;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 116
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setOpenLBSSetting(Z)V

    .line 133
    :cond_0
    :goto_1
    return-void

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/command/setting/SetCameraGeoTag$4;

    invoke-direct {v1, p0}, Lcom/lge/camera/command/setting/SetCameraGeoTag$4;-><init>(Lcom/lge/camera/command/setting/SetCameraGeoTag;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 118
    :cond_2
    if-nez p1, :cond_3

    .line 119
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_tag_location"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/command/setting/SetCameraGeoTag$5;

    invoke-direct {v1, p0}, Lcom/lge/camera/command/setting/SetCameraGeoTag$5;-><init>(Lcom/lge/camera/command/setting/SetCameraGeoTag;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 130
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_tag_location"

    invoke-interface {v0, v1, v2, v2}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    goto :goto_1
.end method


# virtual methods
.method public execute(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 22
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetCameraGeoTag;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V

    .line 23
    return-void
.end method

.method public execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
    .locals 11
    .parameter "parameters"
    .parameter "arg"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 27
    invoke-static {}, Lcom/lge/camera/util/Common;->useSecureLockImage()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 28
    iget-object v8, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v9, "key_camera_tag_location"

    const-string v10, "off"

    invoke-interface {v8, v9, v10}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 29
    iget-object v8, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v9, "key_camera_tag_location"

    invoke-interface {v8, v9, v7, v7}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 93
    :goto_0
    return-void

    .line 32
    :cond_0
    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v10, "key_camera_tag_location"

    invoke-interface {v9, v10, v8, v7}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    move-object v1, p2

    .line 34
    check-cast v1, Landroid/os/Bundle;

    .line 35
    .local v1, bundle:Landroid/os/Bundle;
    const-string v9, "allSetting"

    invoke-virtual {v1, v9, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 37
    .local v0, allSetting:Z
    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "gps"

    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    .line 39
    .local v3, locationOnGps:Z
    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "network"

    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v4

    .line 42
    .local v4, locationOnNetwork:Z
    if-nez v3, :cond_1

    if-eqz v4, :cond_2

    :cond_1
    move v2, v8

    .line 43
    .local v2, locationOn:Z
    :goto_1
    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9, v2}, Lcom/lge/camera/ControllerFunction;->setLocationOn(Z)V

    .line 45
    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v10, "key_camera_tag_location"

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 47
    .local v5, onOff:Ljava/lang/String;
    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getLocationOn()Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "on"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 48
    if-nez v0, :cond_4

    .line 49
    invoke-direct {p0, v2}, Lcom/lge/camera/command/setting/SetCameraGeoTag;->reSetting(Z)V

    .line 51
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->beSupportEulaPopup()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 52
    iget-object v8, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "EULA_POPUP"

    invoke-virtual {v8, v9, v7}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 54
    .local v6, pref:Landroid/content/SharedPreferences;
    if-eqz v6, :cond_3

    const-string v8, "EULA_DO_NOT_SHOW"

    invoke-interface {v6, v8, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_3

    .line 55
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v8, 0x17

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->showDialogPopup(I)V

    goto :goto_0

    .end local v2           #locationOn:Z
    .end local v5           #onOff:Ljava/lang/String;
    .end local v6           #pref:Landroid/content/SharedPreferences;
    :cond_2
    move v2, v7

    .line 42
    goto :goto_1

    .line 59
    .restart local v2       #locationOn:Z
    .restart local v5       #onOff:Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v8, 0xa

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->showDialogPopup(I)V

    goto :goto_0

    .line 64
    :cond_4
    invoke-direct {p0, v2}, Lcom/lge/camera/command/setting/SetCameraGeoTag;->reSetting(Z)V

    .line 67
    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v10, "key_camera_tag_location"

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 70
    const-string v9, "off"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 71
    iget-object v8, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8, v7}, Lcom/lge/camera/ControllerFunction;->setRecordLocation(Z)V

    .line 76
    :goto_2
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->stopReceivingLocationUpdates()V

    .line 78
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v8, Lcom/lge/camera/command/setting/SetCameraGeoTag$1;

    invoke-direct {v8, p0}, Lcom/lge/camera/command/setting/SetCameraGeoTag$1;-><init>(Lcom/lge/camera/command/setting/SetCameraGeoTag;)V

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 87
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v8, Lcom/lge/camera/command/setting/SetCameraGeoTag$2;

    invoke-direct {v8, p0}, Lcom/lge/camera/command/setting/SetCameraGeoTag$2;-><init>(Lcom/lge/camera/command/setting/SetCameraGeoTag;)V

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 73
    :cond_5
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->setRecordLocation(Z)V

    goto :goto_2
.end method

.method protected onExecuteAlone()V
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_tag_location"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->allSettingMenuSelectedChild(Ljava/lang/String;Z)V

    .line 137
    return-void
.end method
