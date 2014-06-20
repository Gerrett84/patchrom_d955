.class public Lcom/lge/camera/command/setting/ApplyAllSettings;
.super Lcom/lge/camera/command/setting/SettingCommand;
.source "ApplyAllSettings.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .parameter "function"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SettingCommand;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 22
    return-void
.end method


# virtual methods
.method public execute(Landroid/hardware/Camera$Parameters;)V
    .locals 11
    .parameter "parameters"

    .prologue
    const/4 v10, 0x1

    .line 26
    const-string v7, "CameraApp"

    const-string v8, "ApplyAllSettings-start"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v5

    .line 32
    .local v5, prefGroup:Lcom/lge/camera/setting/PreferenceGroup;
    if-nez v5, :cond_0

    .line 33
    const-string v7, "CameraApp"

    const-string v8, "prefGroup null error"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportSmartMode()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v7

    if-nez v7, :cond_1

    .line 38
    const-string v7, "on"

    iget-object v8, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v9, "key_smart_mode"

    invoke-interface {v8, v9}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 39
    const-string v7, "CameraApp"

    const-string v8, "Set SET_OPTIONAL_PARAMETERS again for The Intelligent Auto Shot when apply all settings."

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 43
    .local v0, bundle:Landroid/os/Bundle;
    const-string v7, "useSmartMode"

    invoke-virtual {v0, v7, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 44
    const-string v7, "allSetting"

    invoke-virtual {v0, v7, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 45
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "com.lge.camera.command.setting.SetCameraImageSize"

    invoke-interface {v7, v8, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "com.lge.camera.command.setting.SetFlashMode"

    invoke-interface {v7, v8, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "com.lge.camera.command.setting.SetOptionalParameters"

    invoke-interface {v7, v8, p1, v0}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 48
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "com.lge.camera.command.setting.SetSmartCameraMode"

    invoke-interface {v7, v8, p1, v0}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 53
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_1
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v7

    if-nez v7, :cond_4

    .line 54
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "key_camera_shot_mode"

    const-string v9, "shotmode_hdr"

    invoke-interface {v7, v8, v9}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 55
    const-string v7, "CameraApp"

    const-string v8, "Set CAMERA_IMAGE_SIZE and SET_OPTIONAL_PARAMETERS again when apply all settings."

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "HDRShot"

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->setModule(Ljava/lang/String;)V

    .line 57
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "com.lge.camera.command.setting.SetCameraImageSize"

    invoke-interface {v7, v8, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "com.lge.camera.command.setting.SetZoom"

    invoke-interface {v7, v8, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "com.lge.camera.command.setting.SetCameraTimer"

    invoke-interface {v7, v8, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportedAutoReview()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 61
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "com.lge.camera.command.setting.SetCameraShowCapturedImage"

    invoke-interface {v7, v8, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    :cond_2
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v8, 0x0

    invoke-interface {v7, p1, v8}, Lcom/lge/camera/ControllerFunction;->setEnable3ALocks(Landroid/hardware/Camera$Parameters;Z)Z

    .line 65
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 66
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v7, "useHDR"

    invoke-virtual {v0, v7, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 67
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "com.lge.camera.command.setting.SetOptionalParameters"

    invoke-interface {v7, v8, p1, v0}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 69
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_3
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->isTimeMachineModeOn()Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "key_camera_shot_mode"

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/lge/camera/util/CheckStatusManager;->checkVoiceShutterEnable(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 71
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "key_voiceshutter"

    const-string v9, "off"

    invoke-interface {v7, v8, v9}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 75
    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 76
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v7, "allSetting"

    invoke-virtual {v0, v7, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 77
    invoke-virtual {v5}, Lcom/lge/camera/setting/PreferenceGroup;->size()I

    move-result v6

    .line 78
    .local v6, prefSize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v6, :cond_8

    .line 79
    invoke-virtual {v5, v2}, Lcom/lge/camera/setting/PreferenceGroup;->getListPreference(I)Lcom/lge/camera/setting/ListPreference;

    move-result-object v4

    .line 80
    .local v4, listPref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v4, :cond_5

    .line 81
    invoke-virtual {v4}, Lcom/lge/camera/setting/ListPreference;->getEntryCommand()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, command:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, listKey:Ljava/lang/String;
    const-string v7, "key_camera_anti_banding"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v7

    const/4 v8, 0x4

    if-eq v7, v8, :cond_6

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v7

    const/4 v8, 0x7

    if-eq v7, v8, :cond_6

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v7

    const/16 v8, 0x20

    if-eq v7, v8, :cond_6

    .line 88
    const-string v7, "CameraApp"

    const-string v8, "kddi ApplyAllSettings"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .end local v1           #command:Ljava/lang/String;
    .end local v3           #listKey:Ljava/lang/String;
    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 91
    .restart local v1       #command:Ljava/lang/String;
    .restart local v3       #listKey:Ljava/lang/String;
    :cond_6
    if-eqz v1, :cond_5

    .line 93
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getCommandManager()Lcom/lge/camera/command/CommandManager;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/lge/camera/command/CommandManager;->getCommand(Ljava/lang/String;)Lcom/lge/camera/command/Command;

    move-result-object v7

    instance-of v7, v7, Lcom/lge/camera/command/setting/SettingCommand;

    if-eqz v7, :cond_7

    .line 94
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7, v1, p1, v0}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 96
    :cond_7
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7, v1, v0}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 101
    .end local v1           #command:Ljava/lang/String;
    .end local v3           #listKey:Ljava/lang/String;
    .end local v4           #listPref:Lcom/lge/camera/setting/ListPreference;
    :cond_8
    const-string v7, "CameraApp"

    const-string v8, "ApplyAllSettings-end"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
