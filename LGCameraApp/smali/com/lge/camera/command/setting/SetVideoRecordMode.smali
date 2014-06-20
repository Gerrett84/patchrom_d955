.class public Lcom/lge/camera/command/setting/SetVideoRecordMode;
.super Lcom/lge/camera/command/setting/SettingCommand;
.source "SetVideoRecordMode.java"


# instance fields
.field private isFromGridView:Z

.field private mRequestedRecordMode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 1
    .parameter "function"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SettingCommand;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mRequestedRecordMode:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->isFromGridView:Z

    .line 30
    return-void
.end method

.method private showHelpPopup(Ljava/lang/String;)Z
    .locals 5
    .parameter "recordingMode"

    .prologue
    const/4 v4, 0x1

    .line 328
    const/4 v0, 0x1

    .line 329
    .local v0, retVal:Z
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isRotateDialogVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->onDismissRotateDialog()V

    .line 333
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->isFromGridView:Z

    if-eqz v1, :cond_2

    .line 335
    :cond_1
    const-string v1, "recordmode_wdr"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 336
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isHDRRecordingNameUsed()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 337
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "hdr_movie"

    const/16 v3, 0x76

    invoke-interface {v1, v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->showHelpGuidePopup(Ljava/lang/String;IZ)Z

    move-result v0

    .line 344
    :cond_2
    :goto_0
    const-string v1, "recordmode_dual"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 345
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "dual_recording"

    const/16 v3, 0x70

    invoke-interface {v1, v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->showHelpGuidePopup(Ljava/lang/String;IZ)Z

    move-result v0

    .line 352
    :cond_3
    :goto_1
    return v0

    .line 339
    :cond_4
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "wdr"

    const/16 v3, 0x6f

    invoke-interface {v1, v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->showHelpGuidePopup(Ljava/lang/String;IZ)Z

    move-result v0

    goto :goto_0

    .line 346
    :cond_5
    const-string v1, "recordmode_smart_zoom"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 347
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "smart_zoom"

    const/16 v3, 0x75

    invoke-interface {v1, v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->showHelpGuidePopup(Ljava/lang/String;IZ)Z

    move-result v0

    goto :goto_1

    .line 348
    :cond_6
    const-string v1, "recordmode_live_effect"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 349
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "live_effect"

    const/16 v3, 0x6b

    invoke-interface {v1, v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->showHelpGuidePopup(Ljava/lang/String;IZ)Z

    move-result v0

    goto :goto_1
.end method


# virtual methods
.method public execute(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 35
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetVideoRecordMode;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V

    .line 36
    return-void
.end method

.method public execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
    .locals 9
    .parameter "parameters"
    .parameter "arg"

    .prologue
    const/4 v8, 0x0

    .line 41
    const/4 v1, 0x0

    .line 42
    .local v1, argValue:Z
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mRequestedRecordMode:Ljava/lang/String;

    .line 44
    instance-of v5, p2, Ljava/lang/String;

    if-eqz v5, :cond_3

    move-object v3, p2

    .line 45
    check-cast v3, Ljava/lang/String;

    .line 46
    .local v3, recordMode:Ljava/lang/String;
    iput-object v3, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mRequestedRecordMode:Ljava/lang/String;

    .line 53
    :goto_0
    move v0, v1

    .line 55
    .local v0, allSetting:Z
    instance-of v5, p2, Ljava/lang/String;

    if-eqz v5, :cond_0

    move-object v2, p2

    .line 56
    check-cast v2, Landroid/os/Bundle;

    .line 57
    .local v2, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 58
    const-string v5, "fromGridView"

    invoke-virtual {v2, v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->isFromGridView:Z

    .line 62
    .end local v2           #bundle:Landroid/os/Bundle;
    :cond_0
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getPreviousRecordModeString()Ljava/lang/String;

    move-result-object v4

    .line 63
    .local v4, strPreviousRecordMode:Ljava/lang/String;
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SetVideoRecordMode-start: CurrentRecordmode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", PreviousRecordmode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v5, "recordmode_normal"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "not found"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 66
    :cond_1
    invoke-virtual {p0, p1, v4, v0}, Lcom/lge/camera/command/setting/SetVideoRecordMode;->executeNormalRecordMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;Z)V

    .line 80
    :cond_2
    :goto_1
    const-string v5, "CameraApp"

    const-string v6, "SetVideoRecordMode-end"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void

    .end local v0           #allSetting:Z
    .end local v3           #recordMode:Ljava/lang/String;
    .end local v4           #strPreviousRecordMode:Ljava/lang/String;
    :cond_3
    move-object v2, p2

    .line 48
    check-cast v2, Landroid/os/Bundle;

    .line 49
    .restart local v2       #bundle:Landroid/os/Bundle;
    const-string v5, "allSetting"

    invoke-virtual {v2, v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 50
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_video_record_mode"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #recordMode:Ljava/lang/String;
    goto :goto_0

    .line 67
    .end local v2           #bundle:Landroid/os/Bundle;
    .restart local v0       #allSetting:Z
    .restart local v4       #strPreviousRecordMode:Ljava/lang/String;
    :cond_4
    const-string v5, "recordmode_wdr"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 68
    invoke-virtual {p0, p1, v4, v0}, Lcom/lge/camera/command/setting/SetVideoRecordMode;->executeWDRRecordMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;Z)V

    goto :goto_1

    .line 69
    :cond_5
    const-string v5, "recordmode_live_effect"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 70
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v8}, Lcom/lge/camera/ControllerFunction;->enableInput(Z)V

    .line 71
    invoke-virtual {p0, p1, v4, v0}, Lcom/lge/camera/command/setting/SetVideoRecordMode;->executeLiveEffectRecordMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;Z)V

    goto :goto_1

    .line 72
    :cond_6
    const-string v5, "recordmode_dual"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 73
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v8}, Lcom/lge/camera/ControllerFunction;->enableInput(Z)V

    .line 74
    invoke-virtual {p0, p1, v4, v0}, Lcom/lge/camera/command/setting/SetVideoRecordMode;->executeDualRecordMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;Z)V

    goto :goto_1

    .line 75
    :cond_7
    const-string v5, "recordmode_smart_zoom"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 76
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v8}, Lcom/lge/camera/ControllerFunction;->enableInput(Z)V

    .line 77
    invoke-virtual {p0, p1, v4, v0}, Lcom/lge/camera/command/setting/SetVideoRecordMode;->executeSmartZoomMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public executeDualRecordMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;Z)V
    .locals 7
    .parameter "parameters"
    .parameter "strPreviousRecordMode"
    .parameter "allSetting"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 208
    const-string v2, "recordmode_wdr"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 209
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isHDRRecordingNameUsed()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 210
    const-string v2, "video-hdr"

    const-string v3, "off"

    invoke-virtual {p1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.HideLiveEffectSubMenuDrawer"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 223
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.HidePIPFrameSubMenu"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 225
    const/4 v0, 0x1

    .line 226
    .local v0, pipMaskIndex:I
    if-eqz p3, :cond_1

    .line 227
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v2

    if-nez v2, :cond_6

    .line 228
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/camera/util/SharedPreferenceUtil;->getDualCamcorderPIPIndex(Landroid/content/Context;)I

    move-result v0

    .line 232
    :goto_1
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 233
    const/4 v0, 0x1

    .line 236
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v0}, Lcom/lge/camera/ControllerFunction;->setCurrentPIPMask(I)V

    .line 238
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_preview_size_on_device"

    invoke-interface {v2, v3, v5, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 239
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_dual_recording"

    const-string v4, "on"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 242
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportedAutoReview()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 243
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_video_auto_review"

    invoke-interface {v2, v3, v5, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 245
    const-string v1, "key_video_auto_review"

    .line 246
    .local v1, settingValue:Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v1}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/setting/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 249
    .end local v1           #settingValue:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.setting.SetDualRecording"

    invoke-interface {v2, v3, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 250
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.ShowPIPFrameSubMenu"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 251
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "recordmode_dual"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->setPreviousRecordModeString(Ljava/lang/String;)V

    .line 253
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5, v6}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionAllMenuEnabled(ZZ)V

    .line 254
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v6}, Lcom/lge/camera/ControllerFunction;->setQuickButtonForcedDisable(Z)V

    .line 255
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5, v5}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    .line 256
    return-void

    .line 212
    .end local v0           #pipMaskIndex:I
    :cond_3
    const-string v2, "video-wdr"

    const-string v3, "off"

    invoke-virtual {p1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 214
    :cond_4
    const-string v2, "recordmode_live_effect"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 215
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "off"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->setLiveEffect(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 217
    :cond_5
    const-string v2, "recordmode_smart_zoom"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->hideSmartZoomFocusView()V

    goto/16 :goto_0

    .line 230
    .restart local v0       #pipMaskIndex:I
    :cond_6
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/camera/util/SharedPreferenceUtil;->getFrontDualCamcorderPIPIndex(Landroid/content/Context;)I

    move-result v0

    goto/16 :goto_1
.end method

.method public executeLiveEffectRecordMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;Z)V
    .locals 11
    .parameter "parameters"
    .parameter "strPreviousRecordMode"
    .parameter "allSetting"

    .prologue
    const/4 v10, 0x0

    .line 151
    const-string v7, "recordmode_wdr"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 164
    :cond_0
    :goto_0
    const-string v7, "recordmode_live_effect"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "off"

    iget-object v8, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getLiveEffect()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-nez p3, :cond_4

    .line 167
    :cond_1
    const/4 v1, 0x1

    .line 169
    .local v1, faceIndex:I
    if-eqz p3, :cond_2

    .line 170
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v7

    if-nez v7, :cond_7

    .line 171
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/lge/camera/util/SharedPreferenceUtil;->getLiveEffectFaceIndex(Landroid/content/Context;)I

    move-result v1

    .line 175
    :goto_1
    const/4 v7, -0x1

    if-ne v1, v7, :cond_2

    .line 176
    const/4 v1, 0x1

    .line 180
    :cond_2
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getLiveEffectList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 181
    .local v6, value:Ljava/lang/String;
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "key_video_record_mode"

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->getQfIndex(Ljava/lang/String;)I

    move-result v3

    .line 183
    .local v3, menuIndex:I
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7, v6}, Lcom/lge/camera/ControllerFunction;->setLiveEffect(Ljava/lang/String;)V

    .line 184
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "key_video_record_mode"

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v4

    .line 185
    .local v4, pref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v4, :cond_3

    .line 186
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7, v3}, Lcom/lge/camera/ControllerFunction;->isQuickFunctionList(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 187
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v8, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v9, "recordmode_live_effect"

    invoke-interface {v8, v9}, Lcom/lge/camera/ControllerFunction;->getChildIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->setSelectedChild(I)Z

    .line 188
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionControllerAllMenuIcons()V

    .line 196
    :cond_3
    :goto_2
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "recordmode_live_effect"

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->setPreviousRecordModeString(Ljava/lang/String;)V

    .line 198
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 199
    .local v2, isOpen:Landroid/os/Bundle;
    const-string v7, "menu_open"

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 200
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "com.lge.camera.command.ShowLiveEffectSubMenuDrawer"

    invoke-interface {v7, v8, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;Ljava/lang/Object;)V

    .line 201
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "com.lge.camera.command.setting.SetLiveEffect"

    invoke-interface {v7, v8, p1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;Ljava/lang/Object;)V

    .line 204
    .end local v1           #faceIndex:I
    .end local v2           #isOpen:Landroid/os/Bundle;
    .end local v3           #menuIndex:I
    .end local v4           #pref:Lcom/lge/camera/setting/ListPreference;
    .end local v6           #value:Ljava/lang/String;
    :cond_4
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "key_preview_size_on_device"

    invoke-interface {v7, v8, v10, v10}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 205
    return-void

    .line 153
    :cond_5
    const-string v7, "recordmode_dual"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 156
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "com.lge.camera.command.HidePIPFrameSubMenu"

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 157
    :cond_6
    const-string v7, "recordmode_smart_zoom"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 161
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "com.lge.camera.command.HidePIPFrameSubMenu"

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 173
    .restart local v1       #faceIndex:I
    :cond_7
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/lge/camera/util/SharedPreferenceUtil;->getFrontLiveEffectFaceIndex(Landroid/content/Context;)I

    move-result v1

    goto/16 :goto_1

    .line 190
    .restart local v3       #menuIndex:I
    .restart local v4       #pref:Lcom/lge/camera/setting/ListPreference;
    .restart local v6       #value:Ljava/lang/String;
    :cond_8
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-virtual {v4}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->getCurrentSettingMenuIndex(Ljava/lang/String;)I

    move-result v5

    .line 191
    .local v5, settingMenuIndex:I
    const-string v7, "recordmode_live_effect"

    invoke-virtual {v4, v7}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 192
    .local v0, childIndex:I
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7, v5, v0}, Lcom/lge/camera/ControllerFunction;->setSelectedChild(II)Z

    goto :goto_2
.end method

.method public executeNormalRecordMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;Z)V
    .locals 9
    .parameter "parameters"
    .parameter "strPreviousRecordMode"
    .parameter "allSetting"

    .prologue
    const/4 v8, 0x0

    .line 84
    const-string v5, "recordmode_wdr"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 85
    const-string v4, "off"

    .line 87
    .local v4, sVideoFps:Ljava/lang/String;
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_preview_size_on_device"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v3

    .line 88
    .local v3, pref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v3, :cond_0

    .line 89
    invoke-virtual {v3}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo3()Ljava/lang/String;

    move-result-object v4

    .line 92
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isHighFramRateVideoSupported()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "off"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 95
    const-string v5, "hw.camcorder.fpsrange"

    const-string v6, "15000,30000"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, fps:Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, fpsRange:[Ljava/lang/String;
    const-string v5, "video-hfr"

    invoke-virtual {p1, v5, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v5, "preview-format"

    const-string v6, "nv12-venus"

    invoke-virtual {p1, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    mul-int/lit16 v2, v5, 0x3e8

    .line 100
    .local v2, iVideoFps:I
    aget-object v5, v1, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v5, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 101
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HFR mode Min FPS is set to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Max FPS is set to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .end local v0           #fps:Ljava/lang/String;
    .end local v1           #fpsRange:[Ljava/lang/String;
    .end local v2           #iVideoFps:I
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isHDRRecordingNameUsed()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 104
    const-string v5, "video-hdr"

    const-string v6, "off"

    invoke-virtual {p1, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .end local v3           #pref:Lcom/lge/camera/setting/ListPreference;
    .end local v4           #sVideoFps:Ljava/lang/String;
    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "com.lge.camera.command.HideLiveEffectSubMenuDrawer"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 125
    const-string v5, "dual-recorder"

    invoke-virtual {p1, v5, v8}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 126
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_preview_size_on_device"

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7, v8}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 127
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "recordmode_normal"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->setPreviousRecordModeString(Ljava/lang/String;)V

    .line 128
    return-void

    .line 106
    .restart local v3       #pref:Lcom/lge/camera/setting/ListPreference;
    .restart local v4       #sVideoFps:Ljava/lang/String;
    :cond_3
    const-string v5, "video-wdr"

    const-string v6, "off"

    invoke-virtual {p1, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    .end local v3           #pref:Lcom/lge/camera/setting/ListPreference;
    .end local v4           #sVideoFps:Ljava/lang/String;
    :cond_4
    const-string v5, "recordmode_live_effect"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 109
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v8}, Lcom/lge/camera/ControllerFunction;->enableInput(Z)V

    .line 110
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "off"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->setLiveEffect(Ljava/lang/String;)V

    .line 111
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "com.lge.camera.command.setting.SetLiveEffect"

    invoke-interface {v5, v6, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 112
    :cond_5
    const-string v5, "recordmode_dual"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 113
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v8}, Lcom/lge/camera/ControllerFunction;->enableInput(Z)V

    .line 114
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_dual_recording"

    const-string v7, "off"

    invoke-interface {v5, v6, v7}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 115
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "com.lge.camera.command.setting.SetDualRecording"

    invoke-interface {v5, v6, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "com.lge.camera.command.HidePIPFrameSubMenu"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_6
    const-string v5, "recordmode_smart_zoom"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 118
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v8}, Lcom/lge/camera/ControllerFunction;->enableInput(Z)V

    .line 119
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_smart_zoom"

    const-string v7, "off"

    invoke-interface {v5, v6, v7}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 120
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "com.lge.camera.command.setting.SetSmartZoomRecording"

    invoke-interface {v5, v6, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "com.lge.camera.command.HidePIPFrameSubMenu"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 122
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->hideSmartZoomFocusView()V

    goto/16 :goto_0
.end method

.method public executeSmartZoomMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;Z)V
    .locals 7
    .parameter "parameters"
    .parameter "strPreviousRecordMode"
    .parameter "allSetting"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 259
    const-string v2, "recordmode_wdr"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 260
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isHDRRecordingNameUsed()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 261
    const-string v2, "video-hdr"

    const-string v3, "off"

    invoke-virtual {p1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.HideLiveEffectSubMenuDrawer"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 270
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.HidePIPFrameSubMenu"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 271
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_preview_size_on_device"

    invoke-interface {v2, v3, v5, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 273
    const/4 v0, 0x1

    .line 274
    .local v0, pipMaskIndex:I
    if-eqz p3, :cond_1

    .line 275
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v2

    if-nez v2, :cond_6

    .line 276
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/camera/util/SharedPreferenceUtil;->getSmartZoomPIPIndex(Landroid/content/Context;)I

    move-result v0

    .line 280
    :goto_1
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 281
    const/4 v0, 0x1

    .line 284
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v0}, Lcom/lge/camera/ControllerFunction;->setCurrentPIPMask(I)V

    .line 286
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportedAutoReview()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 287
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_video_auto_review"

    invoke-interface {v2, v3, v5, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 289
    const-string v1, "key_video_auto_review"

    .line 290
    .local v1, settingValue:Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v1}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/setting/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 292
    .end local v1           #settingValue:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_smart_zoom"

    const-string v4, "on"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 293
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.setting.SetSmartZoomRecording"

    invoke-interface {v2, v3, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 294
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.ShowPIPFrameSubMenu"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 295
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "recordmode_smart_zoom"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->setPreviousRecordModeString(Ljava/lang/String;)V

    .line 297
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5, v6}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionAllMenuEnabled(ZZ)V

    .line 298
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v6}, Lcom/lge/camera/ControllerFunction;->setQuickButtonForcedDisable(Z)V

    .line 299
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5, v5}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    .line 300
    return-void

    .line 263
    .end local v0           #pipMaskIndex:I
    :cond_3
    const-string v2, "video-wdr"

    const-string v3, "off"

    invoke-virtual {p1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 265
    :cond_4
    const-string v2, "recordmode_live_effect"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 266
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "off"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->setLiveEffect(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 267
    :cond_5
    const-string v2, "recordmode_dual"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_0

    .line 278
    .restart local v0       #pipMaskIndex:I
    :cond_6
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/camera/util/SharedPreferenceUtil;->getFrontSmartZoomPIPIndex(Landroid/content/Context;)I

    move-result v0

    goto/16 :goto_1
.end method

.method public executeWDRRecordMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;Z)V
    .locals 3
    .parameter "parameters"
    .parameter "strPreviousRecordMode"
    .parameter "allSetting"

    .prologue
    .line 131
    const-string v0, "recordmode_dual"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_dual_recording"

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 133
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.setting.SetDualRecording"

    invoke-interface {v0, v1, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.HidePIPFrameSubMenu"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 144
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.HideLiveEffectSubMenuDrawer"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.setting.SetWDRRecording"

    invoke-interface {v0, v1, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "recordmode_wdr"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setPreviousRecordModeString(Ljava/lang/String;)V

    .line 147
    return-void

    .line 135
    :cond_1
    const-string v0, "recordmode_live_effect"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "off"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setLiveEffect(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.setting.SetLiveEffect"

    invoke-interface {v0, v1, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 138
    :cond_2
    const-string v0, "recordmode_smart_zoom"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_smart_zoom"

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 140
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.setting.SetSmartZoomRecording"

    invoke-interface {v0, v1, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 141
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.HidePIPFrameSubMenu"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->hideSmartZoomFocusView()V

    goto :goto_0
.end method

.method protected onExecuteAlone()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 304
    const-string v6, "CameraApp"

    const-string v7, "SetVideoRecordMode onExecuteAlone()"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const/4 v1, 0x0

    .line 307
    .local v1, recordingModeEntryVal:Ljava/lang/String;
    const/4 v0, 0x0

    .line 308
    .local v0, recordingMode:Ljava/lang/String;
    iget-object v6, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mRequestedRecordMode:Ljava/lang/String;

    if-nez v6, :cond_2

    .line 309
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v7, "key_video_record_mode"

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 313
    :goto_0
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v7, "key_video_record_mode"

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->getSettingIndex(Ljava/lang/String;)I

    move-result v4

    .line 314
    .local v4, shotModeIndex:I
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v7, "key_video_record_mode"

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v2

    .line 316
    .local v2, recordingModePref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v2, :cond_0

    .line 317
    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 320
    :cond_0
    invoke-direct {p0, v0}, Lcom/lge/camera/command/setting/SetVideoRecordMode;->showHelpPopup(Ljava/lang/String;)Z

    move-result v3

    .line 321
    .local v3, ret:Z
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v6

    if-nez v6, :cond_1

    if-nez v3, :cond_1

    .line 322
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const v7, 0x7f0b0277

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 323
    .local v5, sizeChangeMsg:Ljava/lang/String;
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v9

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->toast(Ljava/lang/String;)V

    .line 325
    .end local v5           #sizeChangeMsg:Ljava/lang/String;
    :cond_1
    return-void

    .line 311
    .end local v2           #recordingModePref:Lcom/lge/camera/setting/ListPreference;
    .end local v3           #ret:Z
    .end local v4           #shotModeIndex:I
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetVideoRecordMode;->mRequestedRecordMode:Ljava/lang/String;

    goto :goto_0
.end method
