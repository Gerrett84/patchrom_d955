.class public Lcom/lge/camera/command/setting/SetCameraShotMode;
.super Lcom/lge/camera/command/setting/SettingCommand;
.source "SetCameraShotMode.java"


# instance fields
.field private isFromGridView:Z

.field private isNormalShot:Z

.field private isSettingSelected:Z

.field private pictureSizeString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 2
    .parameter "function"

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SettingCommand;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->pictureSizeString:Ljava/lang/String;

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->isNormalShot:Z

    .line 36
    iput-boolean v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->isFromGridView:Z

    .line 37
    iput-boolean v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->isSettingSelected:Z

    .line 32
    return-void
.end method

.method private checkFocusMode(Landroid/hardware/Camera$Parameters;)V
    .locals 6
    .parameter "parameters"

    .prologue
    .line 1031
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 1066
    :cond_0
    :goto_0
    return-void

    .line 1034
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_focus"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1035
    .local v0, focusSetting:Ljava/lang/String;
    const-string v3, "auto"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "multiwindowaf"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1039
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_focus"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 1040
    .local v1, pref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_3

    .line 1041
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_focus"

    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1044
    :cond_3
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionControllerMmsLimit()V

    .line 1045
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->stopFaceDetection()V

    .line 1046
    const-string v3, "manual-focus"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 1048
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isIndicatorControllerInitialized()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1049
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v4, Lcom/lge/camera/command/setting/SetCameraShotMode$3;

    invoke-direct {v4, p0}, Lcom/lge/camera/command/setting/SetCameraShotMode$3;-><init>(Lcom/lge/camera/command/setting/SetCameraShotMode;)V

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1059
    .end local v1           #pref:Lcom/lge/camera/setting/ListPreference;
    :cond_4
    const-string v3, "not found"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1060
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_shot_mode"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1062
    .local v2, shotMode:Ljava/lang/String;
    const-string v3, "shotmode_panorama"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "shotmode_free_panorama"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1063
    :cond_5
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->hideFocus()Z

    goto :goto_0
.end method

.method private executeClearShotMode(Landroid/hardware/Camera$Parameters;ZLjava/lang/String;)V
    .locals 8
    .parameter "parameters"
    .parameter "allSetting"
    .parameter "strPreviousShotMode"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 701
    const-string v3, "shotmode_hdr"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 703
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 704
    .local v2, useHDR:Landroid/os/Bundle;
    const-string v3, "useHDR"

    invoke-virtual {v2, v3, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 705
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.setting.RestoreOptionalParameters"

    invoke-interface {v3, v4, p1, v2}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 706
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p1, v6}, Lcom/lge/camera/ControllerFunction;->restartPreview(Landroid/hardware/Camera$Parameters;Z)V

    .line 736
    .end local v2           #useHDR:Landroid/os/Bundle;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p3}, Lcom/lge/camera/ControllerFunction;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 737
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/camera/util/TelephonyUtil;->phoneInCall(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 738
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_voiceshutter"

    invoke-interface {v3, v4, v6}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 742
    :goto_1
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_timer"

    invoke-interface {v3, v4, v7}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 743
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_shutter_sound"

    invoke-interface {v3, v4, v6}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 744
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_auto_review"

    invoke-interface {v3, v4, v6}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 745
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_flash"

    invoke-interface {v3, v4, v6}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 746
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_time_machine"

    invoke-interface {v3, v4, v6}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 747
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_scene_mode"

    const-string v5, "night"

    invoke-interface {v3, v4, v5, v6}, Lcom/lge/camera/ControllerFunction;->setCurrentSettingMenuEnable(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 749
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.setting.SetClearShot"

    invoke-interface {v3, v4, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 750
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->checkFocusMode(Landroid/hardware/Camera$Parameters;)V

    .line 752
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_picturesize"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingIndex(Ljava/lang/String;)I

    move-result v0

    .line 753
    .local v0, pictureSizeIndex:I
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_picturesize"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 754
    .local v1, pictureSizePref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_1

    .line 755
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->pictureSizeString:Ljava/lang/String;

    .line 757
    :cond_1
    iput-boolean v7, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->isNormalShot:Z

    .line 759
    if-eqz p2, :cond_2

    .line 760
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "shotmode_clear_shot"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 762
    :cond_2
    return-void

    .line 707
    .end local v0           #pictureSizeIndex:I
    .end local v1           #pictureSizePref:Lcom/lge/camera/setting/ListPreference;
    :cond_3
    const-string v3, "shotmode_timemachine"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 708
    invoke-direct {p0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->removeTimeMachineShotImage()V

    .line 709
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p1, v6}, Lcom/lge/camera/ControllerFunction;->restartPreview(Landroid/hardware/Camera$Parameters;Z)V

    .line 710
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v6}, Lcom/lge/camera/ControllerFunction;->setTimeMachineLimit(Z)V

    goto/16 :goto_0

    .line 711
    :cond_4
    const-string v3, "shotmode_free_panorama"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 712
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->removeFreePanoramaView()V

    .line 713
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p1}, Lcom/lge/camera/ControllerFunction;->stopFreePanoramaEngine(Landroid/hardware/Camera$Parameters;)V

    .line 714
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setImageSizeAndRestartPreview(Landroid/hardware/Camera$Parameters;)V

    .line 715
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->removePreviewCallback()V

    goto/16 :goto_0

    .line 716
    :cond_5
    const-string v3, "shotmode_full_continuous"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 717
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 718
    const-string v3, "burst-shot"

    const-string v4, "off"

    invoke-virtual {p1, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    :cond_6
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p1, v6}, Lcom/lge/camera/ControllerFunction;->restartPreview(Landroid/hardware/Camera$Parameters;Z)V

    goto/16 :goto_0

    .line 721
    :cond_7
    const-string v3, "shotmode_dual_camera"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 722
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v7}, Lcom/lge/camera/ControllerFunction;->setSettingForDualCamera(Z)V

    .line 723
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setVideoSizeFullHD(Landroid/hardware/Camera$Parameters;)V

    .line 724
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->updateDualRecordingSelection()Z

    .line 725
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.HidePIPFrameSubMenu"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 726
    :cond_8
    const-string v3, "shotmode_main_beauty"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 727
    if-nez p2, :cond_0

    .line 728
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v6}, Lcom/lge/camera/ControllerFunction;->setPreviewRendered(Z)V

    .line 729
    invoke-direct {p0, p1, v6}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setImageSizeAndRestartPreviewForBeautyShot(Landroid/hardware/Camera$Parameters;Z)V

    goto/16 :goto_0

    .line 732
    :cond_9
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setImageSizeAndRestartPreview(Landroid/hardware/Camera$Parameters;)V

    .line 733
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->removePreviewCallback()V

    goto/16 :goto_0

    .line 740
    :cond_a
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_voiceshutter"

    invoke-interface {v3, v4, v7}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    goto/16 :goto_1
.end method

.method private executeContinuousShotMode(Landroid/hardware/Camera$Parameters;ZLjava/lang/String;)V
    .locals 7
    .parameter "parameters"
    .parameter "allSetting"
    .parameter "strPreviousShotMode"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 227
    const-string v2, "shotmode_hdr"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 229
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 230
    .local v1, useHDR:Landroid/os/Bundle;
    const-string v2, "useHDR"

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 231
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.setting.RestoreOptionalParameters"

    invoke-interface {v2, v3, p1, v1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 232
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, p1, v5}, Lcom/lge/camera/ControllerFunction;->restartPreview(Landroid/hardware/Camera$Parameters;Z)V

    .line 257
    .end local v1           #useHDR:Landroid/os/Bundle;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, p3}, Lcom/lge/camera/ControllerFunction;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 258
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_voiceshutter"

    const-string v4, "off"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 259
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_voiceshutter"

    invoke-interface {v2, v3, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 260
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_timer"

    invoke-interface {v2, v3, v6}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 261
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shutter_sound"

    invoke-interface {v2, v3, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 262
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_auto_review"

    invoke-interface {v2, v3, v6}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 263
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_time_machine"

    invoke-interface {v2, v3, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 264
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_scene_mode"

    const-string v4, "night"

    invoke-interface {v2, v3, v4, v6}, Lcom/lge/camera/ControllerFunction;->setCurrentSettingMenuEnable(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 266
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.setting.SetOlaContinuousShot"

    invoke-interface {v2, v3, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 267
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->checkFocusMode(Landroid/hardware/Camera$Parameters;)V

    .line 268
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 269
    .local v0, shotModePref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v0, :cond_1

    .line 270
    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo3()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->pictureSizeString:Ljava/lang/String;

    .line 272
    :cond_1
    iput-boolean v5, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->isNormalShot:Z

    .line 274
    if-eqz p2, :cond_2

    .line 275
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "shotmode_continuous"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 277
    :cond_2
    return-void

    .line 233
    .end local v0           #shotModePref:Lcom/lge/camera/setting/ListPreference;
    :cond_3
    const-string v2, "shotmode_timemachine"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 234
    invoke-direct {p0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->removeTimeMachineShotImage()V

    .line 235
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, p1, v5}, Lcom/lge/camera/ControllerFunction;->restartPreview(Landroid/hardware/Camera$Parameters;Z)V

    .line 236
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5}, Lcom/lge/camera/ControllerFunction;->setTimeMachineLimit(Z)V

    goto :goto_0

    .line 237
    :cond_4
    const-string v2, "shotmode_free_panorama"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 238
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->removeFreePanoramaView()V

    .line 239
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, p1}, Lcom/lge/camera/ControllerFunction;->stopFreePanoramaEngine(Landroid/hardware/Camera$Parameters;)V

    .line 240
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setImageSizeAndRestartPreview(Landroid/hardware/Camera$Parameters;)V

    .line 241
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->removePreviewCallback()V

    goto/16 :goto_0

    .line 242
    :cond_5
    const-string v2, "shotmode_dual_camera"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 243
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v6}, Lcom/lge/camera/ControllerFunction;->setSettingForDualCamera(Z)V

    .line 244
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setVideoSizeFullHD(Landroid/hardware/Camera$Parameters;)V

    .line 245
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->updateDualRecordingSelection()Z

    .line 246
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.HidePIPFrameSubMenu"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 247
    :cond_6
    const-string v2, "shotmode_main_beauty"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 248
    if-nez p2, :cond_0

    .line 249
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5}, Lcom/lge/camera/ControllerFunction;->setPreviewRendered(Z)V

    .line 250
    invoke-direct {p0, p1, v5}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setImageSizeAndRestartPreviewForBeautyShot(Landroid/hardware/Camera$Parameters;Z)V

    goto/16 :goto_0

    .line 253
    :cond_7
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setImageSizeAndRestartPreview(Landroid/hardware/Camera$Parameters;)V

    .line 254
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->removePreviewCallback()V

    goto/16 :goto_0
.end method

.method private executeDualCameraShotMode(Landroid/hardware/Camera$Parameters;ZLjava/lang/String;)V
    .locals 8
    .parameter "parameters"
    .parameter "allSetting"
    .parameter "strPreviousShotMode"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 766
    const/4 v0, 0x1

    .line 767
    .local v0, pipMaskIndex:I
    if-eqz p2, :cond_7

    iget-boolean v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->isSettingSelected:Z

    if-nez v3, :cond_7

    .line 768
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v3

    if-nez v3, :cond_6

    .line 769
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/camera/util/SharedPreferenceUtil;->getDualCameraPIPIndex(Landroid/content/Context;)I

    move-result v0

    .line 770
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restore - DualCamera Primary getIndex =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    :cond_0
    :goto_0
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 779
    const/4 v0, 0x1

    .line 784
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v0}, Lcom/lge/camera/ControllerFunction;->setCurrentPIPMask(I)V

    .line 786
    const-string v3, "shotmode_hdr"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 788
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 789
    .local v2, useHDR:Landroid/os/Bundle;
    const-string v3, "useHDR"

    invoke-virtual {v2, v3, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 790
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.setting.RestoreOptionalParameters"

    invoke-interface {v3, v4, p1, v2}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 791
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p1, v6}, Lcom/lge/camera/ControllerFunction;->restartPreview(Landroid/hardware/Camera$Parameters;Z)V

    .line 818
    .end local v2           #useHDR:Landroid/os/Bundle;
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p3}, Lcom/lge/camera/ControllerFunction;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 819
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_auto_review"

    invoke-interface {v3, v4, v7}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 820
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_shutter_sound"

    invoke-interface {v3, v4, v7}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 821
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_timer"

    invoke-interface {v3, v4, v7}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 822
    invoke-static {}, Lcom/lge/camera/util/Common;->useSecureLockImage()Z

    move-result v3

    if-nez v3, :cond_3

    .line 823
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_tag_location"

    invoke-interface {v3, v4, v7}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 825
    :cond_3
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_time_machine"

    invoke-interface {v3, v4, v6}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 827
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v6}, Lcom/lge/camera/ControllerFunction;->setSettingForDualCamera(Z)V

    .line 829
    invoke-virtual {p1, v6}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 830
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->resetZoomController()V

    .line 832
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.setting.SetDualCameraShot"

    invoke-interface {v3, v4, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 833
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.ShowPIPFrameSubMenu"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 834
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->checkFocusMode(Landroid/hardware/Camera$Parameters;)V

    .line 836
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v3

    const-string v4, "key_camera_shot_mode"

    invoke-virtual {v3, v4}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 837
    .local v1, shotModePref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_4

    .line 838
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo3()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->pictureSizeString:Ljava/lang/String;

    .line 841
    :cond_4
    iput-boolean v6, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->isNormalShot:Z

    .line 843
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v6, v7}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionAllMenuEnabled(ZZ)V

    .line 844
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v7}, Lcom/lge/camera/ControllerFunction;->setQuickButtonForcedDisable(Z)V

    .line 845
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v6, v6}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    .line 847
    iget-boolean v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->isSettingSelected:Z

    if-eqz v3, :cond_5

    if-nez p2, :cond_5

    .line 848
    iput-boolean v6, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->isSettingSelected:Z

    .line 850
    :cond_5
    return-void

    .line 771
    .end local v1           #shotModePref:Lcom/lge/camera/setting/ListPreference;
    :cond_6
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v3

    if-ne v3, v7, :cond_0

    .line 772
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/camera/util/SharedPreferenceUtil;->getFrontDualCameraPIPIndex(Landroid/content/Context;)I

    move-result v0

    .line 775
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restore - FrontDualCamera Primary getIndex =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 781
    :cond_7
    if-nez p2, :cond_1

    .line 782
    iput-boolean v7, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->isSettingSelected:Z

    goto/16 :goto_1

    .line 792
    :cond_8
    const-string v3, "shotmode_timemachine"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 793
    invoke-direct {p0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->removeTimeMachineShotImage()V

    .line 794
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p1, v6}, Lcom/lge/camera/ControllerFunction;->restartPreview(Landroid/hardware/Camera$Parameters;Z)V

    .line 795
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v6}, Lcom/lge/camera/ControllerFunction;->setTimeMachineLimit(Z)V

    goto/16 :goto_2

    .line 796
    :cond_9
    const-string v3, "shotmode_full_continuous"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 797
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 798
    const-string v3, "burst-shot"

    const-string v4, "off"

    invoke-virtual {p1, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    :cond_a
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p1, v6}, Lcom/lge/camera/ControllerFunction;->restartPreview(Landroid/hardware/Camera$Parameters;Z)V

    goto/16 :goto_2

    .line 801
    :cond_b
    const-string v3, "shotmode_main_beauty"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 802
    if-nez p2, :cond_2

    .line 803
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v6}, Lcom/lge/camera/ControllerFunction;->setPreviewRendered(Z)V

    .line 804
    invoke-direct {p0, p1, v6}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setImageSizeAndRestartPreviewForBeautyShot(Landroid/hardware/Camera$Parameters;Z)V

    goto/16 :goto_2

    .line 806
    :cond_c
    const-string v3, "shotmode_front_beauty"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 807
    if-nez p2, :cond_2

    .line 808
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v6}, Lcom/lge/camera/ControllerFunction;->setPreviewRendered(Z)V

    .line 809
    invoke-direct {p0, p1, v6}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setImageSizeAndRestartPreviewForBeautyShot(Landroid/hardware/Camera$Parameters;Z)V

    goto/16 :goto_2

    .line 811
    :cond_d
    const-string v3, "shotmode_free_panorama"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 812
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->removeFreePanoramaView()V

    .line 813
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setImageSizeAndRestartPreview(Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_2

    .line 815
    :cond_e
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setImageSizeAndRestartPreview(Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_2
.end method

.method private executeFreePanoramaShotMode(Landroid/hardware/Camera$Parameters;ZLjava/lang/String;)V
    .locals 7
    .parameter "parameters"
    .parameter "allSetting"
    .parameter "strPreviousShotMode"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 342
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->showFreePanoramaBlackBg()V

    .line 344
    const-string v2, "shotmode_hdr"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 346
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 347
    .local v1, useHDR:Landroid/os/Bundle;
    const-string v2, "useHDR"

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 348
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.setting.RestoreOptionalParameters"

    invoke-interface {v2, v3, p1, v1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 349
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, p1, v5}, Lcom/lge/camera/ControllerFunction;->restartPreview(Landroid/hardware/Camera$Parameters;Z)V

    .line 374
    .end local v1           #useHDR:Landroid/os/Bundle;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, p3}, Lcom/lge/camera/ControllerFunction;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 375
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_voiceshutter"

    const-string v4, "off"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 376
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_voiceshutter"

    invoke-interface {v2, v3, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 377
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_timer"

    invoke-interface {v2, v3, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 378
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shutter_sound"

    invoke-interface {v2, v3, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 379
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_auto_review"

    invoke-interface {v2, v3, v6}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 380
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_flash"

    invoke-interface {v2, v3, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 381
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_zoom"

    invoke-interface {v2, v3, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 382
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_focus"

    invoke-interface {v2, v3, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 383
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_picturesize"

    invoke-interface {v2, v3, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 384
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_time_machine"

    invoke-interface {v2, v3, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 385
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_scene_mode"

    const-string v4, "night"

    invoke-interface {v2, v3, v4, v6}, Lcom/lge/camera/ControllerFunction;->setCurrentSettingMenuEnable(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 387
    invoke-virtual {p1, v5}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 388
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->resetZoomController()V

    .line 390
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.setting.SetFreePanoramaShot"

    invoke-interface {v2, v3, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 391
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->checkFocusMode(Landroid/hardware/Camera$Parameters;)V

    .line 393
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v2

    const-string v3, "key_camera_shot_mode"

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 394
    .local v0, shotModePref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v0, :cond_1

    .line 395
    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo3()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->pictureSizeString:Ljava/lang/String;

    .line 398
    :cond_1
    iput-boolean v5, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->isNormalShot:Z

    .line 400
    if-eqz p2, :cond_8

    .line 401
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "shotmode_free_panorama"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 406
    :goto_1
    return-void

    .line 350
    .end local v0           #shotModePref:Lcom/lge/camera/setting/ListPreference;
    :cond_2
    const-string v2, "shotmode_timemachine"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 351
    invoke-direct {p0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->removeTimeMachineShotImage()V

    .line 352
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, p1, v5}, Lcom/lge/camera/ControllerFunction;->restartPreview(Landroid/hardware/Camera$Parameters;Z)V

    .line 353
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5}, Lcom/lge/camera/ControllerFunction;->setTimeMachineLimit(Z)V

    goto/16 :goto_0

    .line 354
    :cond_3
    const-string v2, "shotmode_full_continuous"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 355
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 356
    const-string v2, "burst-shot"

    const-string v3, "off"

    invoke-virtual {p1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, p1, v5}, Lcom/lge/camera/ControllerFunction;->restartPreview(Landroid/hardware/Camera$Parameters;Z)V

    goto/16 :goto_0

    .line 359
    :cond_5
    const-string v2, "shotmode_dual_camera"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 360
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v6}, Lcom/lge/camera/ControllerFunction;->setSettingForDualCamera(Z)V

    .line 361
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setVideoSizeFullHD(Landroid/hardware/Camera$Parameters;)V

    .line 362
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->updateDualRecordingSelection()Z

    .line 363
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.HidePIPFrameSubMenu"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 364
    :cond_6
    const-string v2, "shotmode_main_beauty"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 365
    if-nez p2, :cond_0

    .line 366
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5}, Lcom/lge/camera/ControllerFunction;->setPreviewRendered(Z)V

    .line 367
    invoke-direct {p0, p1, v5}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setImageSizeAndRestartPreviewForBeautyShot(Landroid/hardware/Camera$Parameters;Z)V

    goto/16 :goto_0

    .line 370
    :cond_7
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setImageSizeAndRestartPreview(Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_0

    .line 403
    .restart local v0       #shotModePref:Lcom/lge/camera/setting/ListPreference;
    :cond_8
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.setting.SetFlashMode"

    invoke-interface {v2, v3, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 404
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.setting.SetCameraFocusMode"

    invoke-interface {v2, v3, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private executeFrontBeautyShotMode(Landroid/hardware/Camera$Parameters;ZLjava/lang/String;)V
    .locals 5
    .parameter "parameters"
    .parameter "allSetting"
    .parameter "strPreviousShotMode"

    .prologue
    const/4 v4, 0x1

    .line 664
    const-string v2, "shotmode_dual_camera"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 665
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isPreviewRendered()Z

    move-result v2

    if-nez v2, :cond_0

    .line 666
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4}, Lcom/lge/camera/ControllerFunction;->setPreviewRendered(Z)V

    .line 667
    invoke-direct {p0, p1, v4}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setImageSizeAndRestartPreviewForBeautyShot(Landroid/hardware/Camera$Parameters;Z)V

    .line 668
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->removePreviewCallback()V

    .line 681
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.setting.SetBeautyshot"

    invoke-interface {v2, v3, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 683
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_picturesize"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingIndex(Ljava/lang/String;)I

    move-result v0

    .line 684
    .local v0, pictureSizeIndex:I
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_picturesize"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 685
    .local v1, pictureSizePref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_1

    .line 686
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->pictureSizeString:Ljava/lang/String;

    .line 689
    :cond_1
    if-eqz p2, :cond_2

    .line 690
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "shotmode_front_beauty"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 693
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v2

    const/16 v3, 0x10

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v2

    const/16 v3, 0x1b

    if-eq v2, v3, :cond_3

    .line 696
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4}, Lcom/lge/camera/ControllerFunction;->showBeautyshotController(Z)V

    .line 698
    :cond_3
    return-void

    .line 671
    .end local v0           #pictureSizeIndex:I
    .end local v1           #pictureSizePref:Lcom/lge/camera/setting/ListPreference;
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isPreviewRendered()Z

    move-result v2

    if-nez v2, :cond_5

    .line 672
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4}, Lcom/lge/camera/ControllerFunction;->setPreviewRendered(Z)V

    .line 674
    :cond_5
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4}, Lcom/lge/camera/ControllerFunction;->setSettingForDualCamera(Z)V

    .line 675
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setVideoSizeFullHD(Landroid/hardware/Camera$Parameters;)V

    .line 676
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->updateDualRecordingSelection()Z

    .line 677
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.HidePIPFrameSubMenu"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 678
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.setting.SetOlaNormalShot"

    invoke-interface {v2, v3, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private executeFullFrameContinuousShotMode(Landroid/hardware/Camera$Parameters;ZLjava/lang/String;)V
    .locals 8
    .parameter "parameters"
    .parameter "allSetting"
    .parameter "strPreviousShotMode"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 476
    const-string v3, "shotmode_hdr"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 478
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 479
    .local v2, useHDR:Landroid/os/Bundle;
    const-string v3, "useHDR"

    invoke-virtual {v2, v3, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 480
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.setting.RestoreOptionalParameters"

    invoke-interface {v3, v4, p1, v2}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 499
    .end local v2           #useHDR:Landroid/os/Bundle;
    :cond_0
    :goto_0
    const-string v3, "shotmode_dual_camera"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "shotmode_main_beauty"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 501
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p1, v6}, Lcom/lge/camera/ControllerFunction;->restartPreview(Landroid/hardware/Camera$Parameters;Z)V

    .line 504
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p3}, Lcom/lge/camera/ControllerFunction;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 505
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_voiceshutter"

    const-string v5, "off"

    invoke-interface {v3, v4, v5}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 506
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_voiceshutter"

    invoke-interface {v3, v4, v6}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 507
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_timer"

    invoke-interface {v3, v4, v6}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 508
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_shutter_sound"

    invoke-interface {v3, v4, v6}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 509
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_auto_review"

    invoke-interface {v3, v4, v7}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 510
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_time_machine"

    invoke-interface {v3, v4, v6}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 511
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_scene_mode"

    const-string v5, "night"

    invoke-interface {v3, v4, v5, v6}, Lcom/lge/camera/ControllerFunction;->setCurrentSettingMenuEnable(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 513
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 514
    const-string v3, "burst-shot"

    const-string v4, "on"

    invoke-virtual {p1, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    :goto_1
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.setting.SetFullFrameContinuousShot"

    invoke-interface {v3, v4, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 520
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->checkFocusMode(Landroid/hardware/Camera$Parameters;)V

    .line 521
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_picturesize"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingIndex(Ljava/lang/String;)I

    move-result v0

    .line 522
    .local v0, pictureSizeIndex:I
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_picturesize"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 523
    .local v1, pictureSizePref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_2

    .line 524
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->pictureSizeString:Ljava/lang/String;

    .line 526
    :cond_2
    iput-boolean v7, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->isNormalShot:Z

    .line 528
    if-eqz p2, :cond_3

    .line 529
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "shotmode_full_continuous"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 531
    :cond_3
    return-void

    .line 481
    .end local v0           #pictureSizeIndex:I
    .end local v1           #pictureSizePref:Lcom/lge/camera/setting/ListPreference;
    :cond_4
    const-string v3, "shotmode_free_panorama"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 482
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->removeFreePanoramaView()V

    .line 483
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p1}, Lcom/lge/camera/ControllerFunction;->stopFreePanoramaEngine(Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_0

    .line 484
    :cond_5
    const-string v3, "shotmode_timemachine"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 485
    invoke-direct {p0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->removeTimeMachineShotImage()V

    .line 486
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v6}, Lcom/lge/camera/ControllerFunction;->setTimeMachineLimit(Z)V

    goto/16 :goto_0

    .line 487
    :cond_6
    const-string v3, "shotmode_dual_camera"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 488
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v7}, Lcom/lge/camera/ControllerFunction;->setSettingForDualCamera(Z)V

    .line 489
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setVideoSizeFullHD(Landroid/hardware/Camera$Parameters;)V

    .line 490
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->updateDualRecordingSelection()Z

    .line 491
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.HidePIPFrameSubMenu"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 492
    :cond_7
    const-string v3, "shotmode_main_beauty"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 493
    if-nez p2, :cond_0

    .line 494
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v6}, Lcom/lge/camera/ControllerFunction;->setPreviewRendered(Z)V

    .line 495
    invoke-direct {p0, p1, v6}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setImageSizeAndRestartPreviewForBeautyShot(Landroid/hardware/Camera$Parameters;Z)V

    goto/16 :goto_0

    .line 516
    :cond_8
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v4, 0x6

    invoke-interface {v3, p1, v4}, Lcom/lge/camera/ControllerFunction;->setFullFrameContinuousShot(Landroid/hardware/Camera$Parameters;I)V

    goto/16 :goto_1
.end method

.method private executeHdrShotMode(Landroid/hardware/Camera$Parameters;ZLjava/lang/String;)V
    .locals 6
    .parameter "parameters"
    .parameter "allSetting"
    .parameter "strPreviousShotMode"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 409
    const-string v2, "shotmode_panorama"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "shotmode_continuous"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 411
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_timer"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 412
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shutter_sound"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 413
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_auto_review"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 415
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_picturesize"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingIndex(Ljava/lang/String;)I

    move-result v0

    .line 416
    .local v0, pictureSizeIndex:I
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_picturesize"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 417
    .local v1, pictureSizePref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_1

    .line 418
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->pictureSizeString:Ljava/lang/String;

    .line 420
    :cond_1
    iput-boolean v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->isNormalShot:Z

    .line 453
    .end local v0           #pictureSizeIndex:I
    .end local v1           #pictureSizePref:Lcom/lge/camera/setting/ListPreference;
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_time_machine"

    invoke-interface {v2, v3, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 454
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/camera/util/TelephonyUtil;->phoneInCall(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 455
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_voiceshutter"

    invoke-interface {v2, v3, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 460
    :goto_1
    const-string v2, "shotmode_dual_camera"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "shotmode_main_beauty"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 462
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, p1, v5}, Lcom/lge/camera/ControllerFunction;->restartPreview(Landroid/hardware/Camera$Parameters;Z)V

    .line 469
    :cond_3
    const-string v2, "hdr-mode"

    const-string v3, "1"

    invoke-virtual {p1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.setting.SetOlaHDRShot"

    invoke-interface {v2, v3, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 473
    return-void

    .line 421
    :cond_4
    const-string v2, "shotmode_free_panorama"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 422
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_timer"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 423
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shutter_sound"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 424
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_auto_review"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 425
    iput-boolean v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->isNormalShot:Z

    .line 427
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->removeFreePanoramaView()V

    .line 428
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, p1}, Lcom/lge/camera/ControllerFunction;->stopFreePanoramaEngine(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    .line 429
    :cond_5
    const-string v2, "shotmode_timemachine"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 430
    invoke-direct {p0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->removeTimeMachineShotImage()V

    .line 431
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_auto_review"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 432
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5}, Lcom/lge/camera/ControllerFunction;->setTimeMachineLimit(Z)V

    goto :goto_0

    .line 433
    :cond_6
    const-string v2, "shotmode_full_continuous"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 434
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_timer"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 435
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shutter_sound"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 436
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_auto_review"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 437
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 438
    const-string v2, "burst-shot"

    const-string v3, "off"

    invoke-virtual {p1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 440
    :cond_7
    const-string v2, "shotmode_dual_camera"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 441
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4}, Lcom/lge/camera/ControllerFunction;->setSettingForDualCamera(Z)V

    .line 442
    iput-boolean v4, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->isNormalShot:Z

    .line 443
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setVideoSizeFullHD(Landroid/hardware/Camera$Parameters;)V

    .line 444
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->updateDualRecordingSelection()Z

    .line 445
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.HidePIPFrameSubMenu"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 446
    :cond_8
    const-string v2, "shotmode_main_beauty"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 447
    if-nez p2, :cond_2

    .line 448
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5}, Lcom/lge/camera/ControllerFunction;->setPreviewRendered(Z)V

    .line 449
    invoke-direct {p0, p1, v5}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setImageSizeAndRestartPreviewForBeautyShot(Landroid/hardware/Camera$Parameters;Z)V

    goto/16 :goto_0

    .line 457
    :cond_9
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_voiceshutter"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    goto/16 :goto_1
.end method

.method private executeMainBeautyShotMode(Landroid/hardware/Camera$Parameters;ZLjava/lang/String;)V
    .locals 7
    .parameter "parameters"
    .parameter "allSetting"
    .parameter "strPreviousShotMode"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 594
    const-string v3, "shotmode_hdr"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 596
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 597
    .local v2, useHDR:Landroid/os/Bundle;
    const-string v3, "useHDR"

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 598
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.setting.RestoreOptionalParameters"

    invoke-interface {v3, v4, p1, v2}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 620
    .end local v2           #useHDR:Landroid/os/Bundle;
    :cond_0
    :goto_0
    const-string v3, "shotmode_dual_camera"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 621
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isPreviewRendered()Z

    move-result v3

    if-nez v3, :cond_1

    .line 622
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v6}, Lcom/lge/camera/ControllerFunction;->setPreviewRendered(Z)V

    .line 623
    invoke-direct {p0, p1, v6}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setImageSizeAndRestartPreviewForBeautyShot(Landroid/hardware/Camera$Parameters;Z)V

    .line 624
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->removePreviewCallback()V

    .line 628
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p3}, Lcom/lge/camera/ControllerFunction;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 629
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/camera/util/TelephonyUtil;->phoneInCall(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 630
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_voiceshutter"

    invoke-interface {v3, v4, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 634
    :goto_1
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_timer"

    invoke-interface {v3, v4, v6}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 635
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_shutter_sound"

    invoke-interface {v3, v4, v6}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 636
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_auto_review"

    invoke-interface {v3, v4, v6}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 637
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_time_machine"

    invoke-interface {v3, v4, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 638
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_scene_mode"

    const-string v5, "night"

    invoke-interface {v3, v4, v5, v6}, Lcom/lge/camera/ControllerFunction;->setCurrentSettingMenuEnable(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 640
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.setting.SetOlaMainBeautyShot"

    invoke-interface {v3, v4, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 641
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->checkFocusMode(Landroid/hardware/Camera$Parameters;)V

    .line 643
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_picturesize"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingIndex(Ljava/lang/String;)I

    move-result v0

    .line 644
    .local v0, pictureSizeIndex:I
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_picturesize"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 645
    .local v1, pictureSizePref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_2

    .line 646
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->pictureSizeString:Ljava/lang/String;

    .line 648
    :cond_2
    iput-boolean v6, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->isNormalShot:Z

    .line 650
    if-eqz p2, :cond_3

    .line 651
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "shotmode_main_beauty"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 654
    :cond_3
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " mGet.getSubMenuMode() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v3

    const/16 v4, 0x10

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v3

    const/16 v4, 0x1b

    if-eq v3, v4, :cond_4

    .line 658
    const-string v3, "CameraApp"

    const-string v4, "shot beautyshot controll true!"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v6}, Lcom/lge/camera/ControllerFunction;->showBeautyshotController(Z)V

    .line 661
    :cond_4
    return-void

    .line 599
    .end local v0           #pictureSizeIndex:I
    .end local v1           #pictureSizePref:Lcom/lge/camera/setting/ListPreference;
    :cond_5
    const-string v3, "shotmode_timemachine"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 600
    invoke-direct {p0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->removeTimeMachineShotImage()V

    .line 601
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v5}, Lcom/lge/camera/ControllerFunction;->setTimeMachineLimit(Z)V

    goto/16 :goto_0

    .line 602
    :cond_6
    const-string v3, "shotmode_free_panorama"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 603
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->removeFreePanoramaView()V

    .line 604
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p1}, Lcom/lge/camera/ControllerFunction;->stopFreePanoramaEngine(Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_0

    .line 605
    :cond_7
    const-string v3, "shotmode_full_continuous"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 606
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 607
    const-string v3, "burst-shot"

    const-string v4, "off"

    invoke-virtual {p1, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 609
    :cond_8
    const-string v3, "shotmode_dual_camera"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 610
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isPreviewRendered()Z

    move-result v3

    if-nez v3, :cond_9

    .line 611
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v6}, Lcom/lge/camera/ControllerFunction;->setPreviewRendered(Z)V

    .line 613
    :cond_9
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v6}, Lcom/lge/camera/ControllerFunction;->setSettingForDualCamera(Z)V

    .line 614
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setVideoSizeFullHD(Landroid/hardware/Camera$Parameters;)V

    .line 615
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->updateDualRecordingSelection()Z

    .line 616
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.HidePIPFrameSubMenu"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 632
    :cond_a
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_voiceshutter"

    invoke-interface {v3, v4, v6}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    goto/16 :goto_1
.end method

.method private executeNormalOrNotFoundShotMode(Landroid/hardware/Camera$Parameters;ZLjava/lang/String;)V
    .locals 7
    .parameter "parameters"
    .parameter "allSetting"
    .parameter "strPreviousShotMode"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 135
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v3

    if-nez v3, :cond_e

    .line 136
    const-string v3, "shotmode_hdr"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 137
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 138
    .local v2, useHDR:Landroid/os/Bundle;
    const-string v3, "useHDR"

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 139
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.setting.RestoreOptionalParameters"

    invoke-interface {v3, v4, p1, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 141
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p1, v5}, Lcom/lge/camera/ControllerFunction;->restartPreview(Landroid/hardware/Camera$Parameters;Z)V

    .line 175
    .end local v2           #useHDR:Landroid/os/Bundle;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.setting.SetOlaNormalShot"

    invoke-interface {v3, v4, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 176
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/camera/util/TelephonyUtil;->phoneInCall(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 177
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_voiceshutter"

    invoke-interface {v3, v4, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 182
    :goto_1
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_timer"

    invoke-interface {v3, v4, v6}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 183
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_shutter_sound"

    invoke-interface {v3, v4, v6}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 184
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_time_machine"

    invoke-interface {v3, v4, v6}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 185
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isAttachMode()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 186
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_auto_review"

    invoke-interface {v3, v4, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 190
    :goto_2
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_scene_mode"

    const-string v5, "night"

    invoke-interface {v3, v4, v5, v6}, Lcom/lge/camera/ControllerFunction;->setCurrentSettingMenuEnable(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 191
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v6}, Lcom/lge/camera/ControllerFunction;->smartShutterEnable(Z)V

    .line 193
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_picturesize"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingIndex(Ljava/lang/String;)I

    move-result v0

    .line 194
    .local v0, pictureSizeIndex:I
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_picturesize"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 196
    .local v1, pictureSizePref:Lcom/lge/camera/setting/ListPreference;
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 197
    const/4 v0, 0x0

    .line 198
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v4, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_camera_picturesize"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4, v0}, Lcom/lge/camera/ControllerFunction;->setSetting(II)Z

    .line 201
    :cond_1
    if-eqz v1, :cond_2

    .line 202
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->pictureSizeString:Ljava/lang/String;

    .line 204
    :cond_2
    iput-boolean v6, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->isNormalShot:Z

    .line 205
    if-nez p2, :cond_3

    .line 206
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.setting.SetFlashMode"

    invoke-interface {v3, v4, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 207
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.setting.SetCameraFocusMode"

    invoke-interface {v3, v4, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 224
    .end local v0           #pictureSizeIndex:I
    .end local v1           #pictureSizePref:Lcom/lge/camera/setting/ListPreference;
    :cond_3
    :goto_3
    return-void

    .line 142
    :cond_4
    const-string v3, "shotmode_timemachine"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 143
    invoke-direct {p0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->removeTimeMachineShotImage()V

    .line 144
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p1, v5}, Lcom/lge/camera/ControllerFunction;->restartPreview(Landroid/hardware/Camera$Parameters;Z)V

    .line 145
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v5}, Lcom/lge/camera/ControllerFunction;->setTimeMachineLimit(Z)V

    goto/16 :goto_0

    .line 146
    :cond_5
    const-string v3, "shotmode_free_panorama"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 147
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->removeFreePanoramaView()V

    .line 148
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p1}, Lcom/lge/camera/ControllerFunction;->stopFreePanoramaEngine(Landroid/hardware/Camera$Parameters;)V

    .line 149
    if-nez p2, :cond_6

    .line 150
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setImageSizeAndRestartPreview(Landroid/hardware/Camera$Parameters;)V

    .line 152
    :cond_6
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p1, v5}, Lcom/lge/camera/ControllerFunction;->restartPreview(Landroid/hardware/Camera$Parameters;Z)V

    goto/16 :goto_0

    .line 153
    :cond_7
    const-string v3, "shotmode_full_continuous"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 154
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 155
    const-string v3, "CameraApp"

    const-string v4, "burst shot off"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v3, "burst-shot"

    const-string v4, "off"

    invoke-virtual {p1, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_8
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p1, v5}, Lcom/lge/camera/ControllerFunction;->restartPreview(Landroid/hardware/Camera$Parameters;Z)V

    goto/16 :goto_0

    .line 159
    :cond_9
    const-string v3, "shotmode_dual_camera"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 160
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v6}, Lcom/lge/camera/ControllerFunction;->setSettingForDualCamera(Z)V

    .line 161
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setVideoSizeFullHD(Landroid/hardware/Camera$Parameters;)V

    .line 162
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->updateDualRecordingSelection()Z

    .line 163
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.HidePIPFrameSubMenu"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 164
    :cond_a
    const-string v3, "shotmode_main_beauty"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 165
    if-nez p2, :cond_0

    .line 166
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v5}, Lcom/lge/camera/ControllerFunction;->setPreviewRendered(Z)V

    .line 167
    invoke-direct {p0, p1, v5}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setImageSizeAndRestartPreviewForBeautyShot(Landroid/hardware/Camera$Parameters;Z)V

    goto/16 :goto_0

    .line 171
    :cond_b
    if-nez p2, :cond_0

    .line 172
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setImageSizeAndRestartPreview(Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_0

    .line 179
    :cond_c
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_voiceshutter"

    invoke-interface {v3, v4, v6}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 188
    :cond_d
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_auto_review"

    invoke-interface {v3, v4, v6}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 210
    :cond_e
    const-string v3, "shotmode_front_beauty"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 211
    if-nez p2, :cond_3

    .line 212
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v5}, Lcom/lge/camera/ControllerFunction;->setPreviewRendered(Z)V

    .line 213
    invoke-direct {p0, p1, v5}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setImageSizeAndRestartPreviewForBeautyShot(Landroid/hardware/Camera$Parameters;Z)V

    goto/16 :goto_3

    .line 216
    :cond_f
    const-string v3, "shotmode_dual_camera"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 217
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v6}, Lcom/lge/camera/ControllerFunction;->setSettingForDualCamera(Z)V

    .line 218
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setVideoSizeFullHD(Landroid/hardware/Camera$Parameters;)V

    .line 219
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->updateDualRecordingSelection()Z

    .line 220
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.HidePIPFrameSubMenu"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 221
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.setting.SetOlaNormalShot"

    invoke-interface {v3, v4, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3
.end method

.method private executePanoramaShotMode(Landroid/hardware/Camera$Parameters;ZLjava/lang/String;)V
    .locals 7
    .parameter "parameters"
    .parameter "allSetting"
    .parameter "strPreviousShotMode"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 280
    const-string v2, "shotmode_hdr"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 282
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 283
    .local v1, useHDR:Landroid/os/Bundle;
    const-string v2, "useHDR"

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 284
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.setting.RestoreOptionalParameters"

    invoke-interface {v2, v3, p1, v1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 285
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, p1, v5}, Lcom/lge/camera/ControllerFunction;->restartPreview(Landroid/hardware/Camera$Parameters;Z)V

    .line 315
    .end local v1           #useHDR:Landroid/os/Bundle;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, p3}, Lcom/lge/camera/ControllerFunction;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 316
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_voiceshutter"

    const-string v4, "off"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 317
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_voiceshutter"

    invoke-interface {v2, v3, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 318
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_timer"

    invoke-interface {v2, v3, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 319
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shutter_sound"

    invoke-interface {v2, v3, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 320
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_auto_review"

    invoke-interface {v2, v3, v6}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 321
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_time_machine"

    invoke-interface {v2, v3, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 322
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_scene_mode"

    const-string v4, "night"

    invoke-interface {v2, v3, v4, v6}, Lcom/lge/camera/ControllerFunction;->setCurrentSettingMenuEnable(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 324
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.setting.SetOlaPanoramaShot"

    invoke-interface {v2, v3, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 325
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->checkFocusMode(Landroid/hardware/Camera$Parameters;)V

    .line 326
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 327
    .local v0, shotModePref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v0, :cond_1

    .line 328
    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo3()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->pictureSizeString:Ljava/lang/String;

    .line 330
    :cond_1
    iput-boolean v5, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->isNormalShot:Z

    .line 332
    if-eqz p2, :cond_9

    .line 333
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "shotmode_panorama"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 339
    :goto_1
    return-void

    .line 286
    .end local v0           #shotModePref:Lcom/lge/camera/setting/ListPreference;
    :cond_2
    const-string v2, "shotmode_timemachine"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 287
    invoke-direct {p0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->removeTimeMachineShotImage()V

    .line 288
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, p1, v5}, Lcom/lge/camera/ControllerFunction;->restartPreview(Landroid/hardware/Camera$Parameters;Z)V

    .line 289
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5}, Lcom/lge/camera/ControllerFunction;->setTimeMachineLimit(Z)V

    goto :goto_0

    .line 290
    :cond_3
    const-string v2, "shotmode_full_continuous"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 291
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 292
    const-string v2, "CameraApp"

    const-string v3, "burst shot off"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v2, "burst-shot"

    const-string v3, "off"

    invoke-virtual {p1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, p1, v5}, Lcom/lge/camera/ControllerFunction;->restartPreview(Landroid/hardware/Camera$Parameters;Z)V

    goto/16 :goto_0

    .line 296
    :cond_5
    const-string v2, "shotmode_free_panorama"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 297
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->removeFreePanoramaView()V

    .line 298
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, p1}, Lcom/lge/camera/ControllerFunction;->stopFreePanoramaEngine(Landroid/hardware/Camera$Parameters;)V

    .line 299
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setImageSizeAndRestartPreview(Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_0

    .line 300
    :cond_6
    const-string v2, "shotmode_dual_camera"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 301
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v6}, Lcom/lge/camera/ControllerFunction;->setSettingForDualCamera(Z)V

    .line 302
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setVideoSizeFullHD(Landroid/hardware/Camera$Parameters;)V

    .line 303
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->updateDualRecordingSelection()Z

    .line 304
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.HidePIPFrameSubMenu"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 305
    :cond_7
    const-string v2, "shotmode_main_beauty"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 306
    if-nez p2, :cond_0

    .line 307
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5}, Lcom/lge/camera/ControllerFunction;->setPreviewRendered(Z)V

    .line 308
    invoke-direct {p0, p1, v5}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setImageSizeAndRestartPreviewForBeautyShot(Landroid/hardware/Camera$Parameters;Z)V

    goto/16 :goto_0

    .line 311
    :cond_8
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setImageSizeAndRestartPreview(Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_0

    .line 335
    .restart local v0       #shotModePref:Lcom/lge/camera/setting/ListPreference;
    :cond_9
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.setting.SetFlashMode"

    invoke-interface {v2, v3, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 336
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.setting.SetCameraFocusMode"

    invoke-interface {v2, v3, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method private executeTimemachineShotMode(Landroid/hardware/Camera$Parameters;ZLjava/lang/String;)V
    .locals 8
    .parameter "parameters"
    .parameter "allSetting"
    .parameter "strPreviousShotMode"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 534
    const-string v3, "shotmode_hdr"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 536
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 537
    .local v2, useHDR:Landroid/os/Bundle;
    const-string v3, "useHDR"

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 538
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.setting.RestoreOptionalParameters"

    invoke-interface {v3, v4, p1, v2}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 558
    .end local v2           #useHDR:Landroid/os/Bundle;
    :cond_0
    :goto_0
    const-string v3, "shotmode_dual_camera"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "shotmode_main_beauty"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 560
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p1, v7}, Lcom/lge/camera/ControllerFunction;->restartPreview(Landroid/hardware/Camera$Parameters;Z)V

    .line 563
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p3}, Lcom/lge/camera/ControllerFunction;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 564
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v6}, Lcom/lge/camera/ControllerFunction;->setTimeMachineLimit(Z)V

    .line 565
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.setting.SetOlaTimeMachineShot"

    invoke-interface {v3, v4, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 566
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_timer"

    invoke-interface {v3, v4, v6}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 567
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_shutter_sound"

    invoke-interface {v3, v4, v6}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 568
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_auto_review"

    invoke-interface {v3, v4, v6}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 569
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p3}, Lcom/lge/camera/ControllerFunction;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 570
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/camera/util/TelephonyUtil;->phoneInCall(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 571
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_voiceshutter"

    invoke-interface {v3, v4, v7}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 575
    :goto_1
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_scene_mode"

    const-string v5, "night"

    invoke-interface {v3, v4, v5, v7}, Lcom/lge/camera/ControllerFunction;->setCurrentSettingMenuEnable(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 576
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_picturesize"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingIndex(Ljava/lang/String;)I

    move-result v0

    .line 577
    .local v0, pictureSizeIndex:I
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_picturesize"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 578
    .local v1, pictureSizePref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_2

    .line 579
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->pictureSizeString:Ljava/lang/String;

    .line 582
    :cond_2
    iput-boolean v6, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->isNormalShot:Z

    .line 583
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v4, 0x5

    invoke-interface {v3, p1, v4}, Lcom/lge/camera/ControllerFunction;->setTimeMachineShot(Landroid/hardware/Camera$Parameters;I)V

    .line 585
    if-eqz p2, :cond_8

    .line 586
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "shotmode_timemachine"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 591
    :goto_2
    return-void

    .line 539
    .end local v0           #pictureSizeIndex:I
    .end local v1           #pictureSizePref:Lcom/lge/camera/setting/ListPreference;
    :cond_3
    const-string v3, "shotmode_free_panorama"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 540
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->removeFreePanoramaView()V

    .line 541
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p1}, Lcom/lge/camera/ControllerFunction;->stopFreePanoramaEngine(Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_0

    .line 542
    :cond_4
    const-string v3, "shotmode_full_continuous"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 543
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 544
    const-string v3, "burst-shot"

    const-string v4, "off"

    invoke-virtual {p1, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 546
    :cond_5
    const-string v3, "shotmode_dual_camera"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 547
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v6}, Lcom/lge/camera/ControllerFunction;->setSettingForDualCamera(Z)V

    .line 548
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setVideoSizeFullHD(Landroid/hardware/Camera$Parameters;)V

    .line 549
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->updateDualRecordingSelection()Z

    .line 550
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.HidePIPFrameSubMenu"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 551
    :cond_6
    const-string v3, "shotmode_main_beauty"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 552
    if-nez p2, :cond_0

    .line 553
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v7}, Lcom/lge/camera/ControllerFunction;->setPreviewRendered(Z)V

    .line 554
    invoke-direct {p0, p1, v7}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setImageSizeAndRestartPreviewForBeautyShot(Landroid/hardware/Camera$Parameters;Z)V

    goto/16 :goto_0

    .line 573
    :cond_7
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_voiceshutter"

    invoke-interface {v3, v4, v6}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 588
    .restart local v0       #pictureSizeIndex:I
    .restart local v1       #pictureSizePref:Lcom/lge/camera/setting/ListPreference;
    :cond_8
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.setting.SetFlashMode"

    invoke-interface {v3, v4, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 589
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.setting.SetCameraFocusMode"

    invoke-interface {v3, v4, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private isTimeMachineShotModeOn(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "shotMode"

    .prologue
    .line 949
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isTimeMachinShotSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 950
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isAttachMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 951
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_time_machine"

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 952
    const-string p1, "shotmode_normal"

    .line 954
    :cond_0
    const-string v0, "shotmode_timemachine"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 955
    const-string p1, "shotmode_timemachine"

    .line 965
    :cond_1
    :goto_0
    return-object p1

    .line 956
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isTimeMachineModeOn()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "shotmode_normal"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "not found"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 957
    :cond_3
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetCameraShotMode-start: Time machine On:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    const-string p1, "shotmode_timemachine"

    goto :goto_0

    .line 960
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_time_machine"

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private removeTimeMachineShotImage()V
    .locals 6

    .prologue
    .line 969
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isTimeMachinShotSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 970
    const/4 v1, 0x0

    .line 972
    .local v1, timeMachineTempFileDelete:Z
    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->deleteTimeMachineImages()Z

    move-result v1

    .line 973
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->setTimemachineHasPictures(Z)V

    .line 974
    invoke-static {}, Lcom/lge/camera/controller/BubblePopupController;->get()Lcom/lge/camera/controller/BubblePopupController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/BubblePopupController;->initializeNotiComplete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 978
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "timeMachineTempFileDeleted ? = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    .end local v1           #timeMachineTempFileDelete:Z
    :cond_0
    :goto_0
    return-void

    .line 975
    .restart local v1       #timeMachineTempFileDelete:Z
    :catch_0
    move-exception v0

    .line 976
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v2, "CameraApp"

    const-string v3, "Exception:"

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 978
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "timeMachineTempFileDeleted ? = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "timeMachineTempFileDeleted ? = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

.method private setImageSizeAndRestartPreview(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .parameter "parameters"

    .prologue
    .line 1070
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1071
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "doNotRestartPreview"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1072
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.setting.SetCameraImageSize"

    invoke-interface {v1, v2, p1, v0}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1073
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcom/lge/camera/ControllerFunction;->restartPreview(Landroid/hardware/Camera$Parameters;Z)V

    .line 1074
    return-void
.end method

.method private setImageSizeAndRestartPreviewForBeautyShot(Landroid/hardware/Camera$Parameters;Z)V
    .locals 3
    .parameter "parameters"
    .parameter "changeMode"

    .prologue
    .line 1079
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1080
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "doNotRestartPreview"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1081
    const-string v1, "doChangePrevieMode"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1082
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.setting.SetCameraImageSize"

    invoke-interface {v1, v2, p1, v0}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1083
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, p1, p2}, Lcom/lge/camera/ControllerFunction;->setPreviewEffectForBeautyShotMode(Landroid/hardware/Camera$Parameters;Z)V

    .line 1084
    return-void
.end method

.method private setPictureSize(Landroid/hardware/Camera$Parameters;)V
    .locals 8
    .parameter "parameters"

    .prologue
    .line 985
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 986
    .local v3, newPictureSize:Landroid/hardware/Camera$Size;
    if-eqz v3, :cond_0

    .line 988
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isEffectsCamcorderActive()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isEffectsCameraActive()Z

    move-result v5

    if-nez v5, :cond_0

    .line 989
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_camera_picturesize"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v2

    .line 990
    .local v2, listPref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v2, :cond_0

    .line 991
    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 992
    .local v1, imageSizeArray:[Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 993
    .local v4, size:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v5, v1

    if-ge v0, v5, :cond_0

    .line 994
    aget-object v5, v1, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v4

    .line 995
    if-eqz v4, :cond_1

    iget v5, v3, Landroid/hardware/Camera$Size;->width:I

    const/4 v6, 0x0

    aget v6, v4, v6

    if-ne v5, v6, :cond_1

    iget v5, v3, Landroid/hardware/Camera$Size;->height:I

    const/4 v6, 0x1

    aget v6, v4, v6

    if-ne v5, v6, :cond_1

    .line 998
    iget v5, v3, Landroid/hardware/Camera$Size;->width:I

    iget v6, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p1, v5, v6}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 999
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setPictureSize "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    .end local v0           #i:I
    .end local v1           #imageSizeArray:[Ljava/lang/CharSequence;
    .end local v2           #listPref:Lcom/lge/camera/setting/ListPreference;
    .end local v4           #size:[I
    :cond_0
    return-void

    .line 993
    .restart local v0       #i:I
    .restart local v1       #imageSizeArray:[Ljava/lang/CharSequence;
    .restart local v2       #listPref:Lcom/lge/camera/setting/ListPreference;
    .restart local v4       #size:[I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setPictureSizeMenuEnable()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1009
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1010
    .local v0, shotMode:Ljava/lang/String;
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v1

    if-ne v1, v3, :cond_0

    const-string v1, "shotmode_dual_camera"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1012
    iput-boolean v3, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->isNormalShot:Z

    .line 1014
    :cond_0
    iget-boolean v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->isNormalShot:Z

    if-nez v1, :cond_2

    .line 1015
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1016
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_picturesize"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 1028
    :cond_1
    :goto_0
    return-void

    .line 1019
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1020
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_picturesize"

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 1023
    :cond_3
    const-string v1, "CameraApp"

    const-string v2, "releaseEngine call in SetCameraShotMode"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v1

    const-string v2, "AutoPanorama"

    invoke-virtual {v1, v2}, Lcom/lge/olaworks/library/EngineProcessor;->checkEngineTag(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1025
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "AutoPanorama"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->releaseEngine(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setVideoSizeFullHD(Landroid/hardware/Camera$Parameters;)V
    .locals 8
    .parameter "parameters"

    .prologue
    const/16 v7, 0x780

    const/4 v6, 0x0

    .line 1087
    const/4 v3, 0x0

    .line 1088
    .local v3, videoSize:Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 1089
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v2

    .line 1090
    .local v2, sizeList:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    iget v4, v4, Landroid/hardware/Camera$Size;->width:I

    if-lt v4, v7, :cond_1

    .line 1091
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 1092
    .local v1, size:Landroid/hardware/Camera$Size;
    iget v4, v1, Landroid/hardware/Camera$Size;->width:I

    if-ne v4, v7, :cond_0

    .line 1093
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1097
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #size:Landroid/hardware/Camera$Size;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    iget v4, v4, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    iget v4, v4, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1099
    :cond_2
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "videoSize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    const-string v4, "video-size"

    invoke-virtual {p1, v4, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    .end local v2           #sizeList:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_3
    return-void
.end method

.method private showHelpGuideDialog(Ljava/lang/String;)Z
    .locals 5
    .parameter "shotMode"

    .prologue
    const/16 v3, 0x68

    const/4 v4, 0x1

    .line 912
    const/4 v0, 0x1

    .line 913
    .local v0, retVal:Z
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isRotateDialogVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 914
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->onDismissRotateDialog()V

    .line 917
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->isFromGridView:Z

    if-eqz v1, :cond_2

    .line 919
    :cond_1
    const-string v1, "shotmode_continuous"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 920
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "continuous"

    invoke-interface {v1, v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->showHelpGuidePopup(Ljava/lang/String;IZ)Z

    move-result v0

    .line 934
    :cond_2
    :goto_0
    const-string v1, "shotmode_panorama"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 935
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "panorama"

    const/16 v3, 0x66

    invoke-interface {v1, v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->showHelpGuidePopup(Ljava/lang/String;IZ)Z

    move-result v0

    .line 945
    :cond_3
    :goto_1
    return v0

    .line 921
    :cond_4
    const-string v1, "shotmode_full_continuous"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 922
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 923
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "burst"

    const/16 v3, 0x6d

    invoke-interface {v1, v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->showHelpGuidePopup(Ljava/lang/String;IZ)Z

    move-result v0

    goto :goto_0

    .line 925
    :cond_5
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "continuous"

    invoke-interface {v1, v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->showHelpGuidePopup(Ljava/lang/String;IZ)Z

    move-result v0

    goto :goto_0

    .line 927
    :cond_6
    const-string v1, "shotmode_hdr"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 928
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "hdr"

    const/16 v3, 0x65

    invoke-interface {v1, v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->showHelpGuidePopup(Ljava/lang/String;IZ)Z

    move-result v0

    goto :goto_0

    .line 929
    :cond_7
    const-string v1, "shotmode_main_beauty"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "shotmode_front_beauty"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 930
    :cond_8
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "beauty_shot"

    const/16 v3, 0x69

    invoke-interface {v1, v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->showHelpGuidePopup(Ljava/lang/String;IZ)Z

    move-result v0

    goto :goto_0

    .line 936
    :cond_9
    const-string v1, "shotmode_free_panorama"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 937
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "free_panorama"

    const/16 v3, 0x6c

    invoke-interface {v1, v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->showHelpGuidePopup(Ljava/lang/String;IZ)Z

    move-result v0

    goto :goto_1

    .line 938
    :cond_a
    const-string v1, "shotmode_timemachine"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 939
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "timemachine"

    const/16 v3, 0x67

    invoke-interface {v1, v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->showHelpGuidePopup(Ljava/lang/String;IZ)Z

    move-result v0

    goto :goto_1

    .line 940
    :cond_b
    const-string v1, "shotmode_clear_shot"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 941
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "clear_shot"

    const/16 v3, 0x73

    invoke-interface {v1, v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->showHelpGuidePopup(Ljava/lang/String;IZ)Z

    move-result v0

    goto/16 :goto_1

    .line 942
    :cond_c
    const-string v1, "shotmode_dual_camera"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 943
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "dual_camera"

    const/16 v3, 0x74

    invoke-interface {v1, v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->showHelpGuidePopup(Ljava/lang/String;IZ)Z

    move-result v0

    goto/16 :goto_1
.end method


# virtual methods
.method public execute(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 41
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method public execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
    .locals 13
    .parameter "parameters"
    .parameter "arg"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 45
    move-object v1, p2

    check-cast v1, Landroid/os/Bundle;

    .line 46
    .local v1, bundle:Landroid/os/Bundle;
    const-string v7, "allSetting"

    invoke-virtual {v1, v7, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 47
    .local v0, allSetting:Z
    const-string v7, "mode_menu_command"

    invoke-virtual {v1, v7, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 49
    .local v2, isModeMenuCommand:Z
    if-nez v0, :cond_0

    .line 50
    const-string v7, "fromGridView"

    invoke-virtual {v1, v7, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->isFromGridView:Z

    .line 53
    :cond_0
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "key_camera_shot_mode"

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 54
    .local v4, shotMode:Ljava/lang/String;
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getPreviousShotModeString()Ljava/lang/String;

    move-result-object v6

    .line 55
    .local v6, strPreviousShotMode:Ljava/lang/String;
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SetCameraShotMode-start: currentshotmode:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " previousshotmode:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iput-object v12, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->pictureSizeString:Ljava/lang/String;

    .line 58
    invoke-direct {p0, v4}, Lcom/lge/camera/command/setting/SetCameraShotMode;->isTimeMachineShotModeOn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 60
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v2, :cond_4

    if-nez v0, :cond_4

    .line 63
    const-string v7, "on"

    iget-object v8, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v9, "key_smart_mode"

    invoke-interface {v8, v9}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 64
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "key_smart_mode"

    const-string v9, "off"

    invoke-interface {v7, v8, v9}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 65
    const-string v7, "shotmode_dual_camera"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "shotmode_main_beauty"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 67
    :cond_1
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 68
    .local v5, smart:Landroid/os/Bundle;
    const-string v7, "shot_mode_smart"

    invoke-virtual {v5, v7, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 69
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "com.lge.camera.command.setting.SetSmartCameraMode"

    invoke-interface {v7, v8, p1, v5}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    move-object v3, p1

    .line 71
    .local v3, params:Landroid/hardware/Camera$Parameters;
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v8, Lcom/lge/camera/command/setting/SetCameraShotMode$1;

    invoke-direct {v8, p0, v3}, Lcom/lge/camera/command/setting/SetCameraShotMode$1;-><init>(Lcom/lge/camera/command/setting/SetCameraShotMode;Landroid/hardware/Camera$Parameters;)V

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 132
    .end local v3           #params:Landroid/hardware/Camera$Parameters;
    .end local v5           #smart:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 79
    :cond_2
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "com.lge.camera.command.setting.SetSmartCameraMode"

    invoke-interface {v7, v8, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 83
    :cond_3
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7, p1, v10, v12}, Lcom/lge/camera/ControllerFunction;->checkSceneMode(Landroid/hardware/Camera$Parameters;ZLjava/lang/String;)V

    .line 84
    const-string v7, "shotmode_front_beauty"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "shotmode_main_beauty"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 86
    const-string v7, "CameraApp"

    const-string v8, "beautyshot controll false!"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7, v10}, Lcom/lge/camera/ControllerFunction;->showBeautyshotController(Z)V

    .line 91
    :cond_4
    const-string v7, "shotmode_normal"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "not found"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 92
    :cond_5
    invoke-direct {p0, p1, v0, v6}, Lcom/lge/camera/command/setting/SetCameraShotMode;->executeNormalOrNotFoundShotMode(Landroid/hardware/Camera$Parameters;ZLjava/lang/String;)V

    .line 115
    :cond_6
    :goto_1
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->isAttachMode()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v7

    if-eq v7, v11, :cond_7

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSupportShotModeModel()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 118
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "key_camera_shot_mode"

    invoke-interface {v7, v8, v10}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 119
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "key_time_machine"

    invoke-interface {v7, v8, v10}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 121
    :cond_7
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pictureSizeString ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/camera/command/setting/SetCameraShotMode;->pictureSizeString:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-direct {p0}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setPictureSizeMenuEnable()V

    .line 124
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetCameraShotMode;->setPictureSize(Landroid/hardware/Camera$Parameters;)V

    .line 126
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->isTimeMachineModeOn()Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "shotmode_full_continuous"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 128
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7, p1, v11}, Lcom/lge/camera/ControllerFunction;->setTimeMachineShot(Landroid/hardware/Camera$Parameters;I)V

    .line 130
    :cond_8
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "com.lge.camera.command.setting.SetSuperZoom"

    invoke-interface {v7, v8, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    const-string v7, "CameraApp"

    const-string v8, "SetCameraShotMode-end"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 93
    :cond_9
    const-string v7, "shotmode_continuous"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 94
    invoke-direct {p0, p1, v0, v6}, Lcom/lge/camera/command/setting/SetCameraShotMode;->executeContinuousShotMode(Landroid/hardware/Camera$Parameters;ZLjava/lang/String;)V

    goto :goto_1

    .line 95
    :cond_a
    const-string v7, "shotmode_panorama"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 96
    invoke-direct {p0, p1, v0, v6}, Lcom/lge/camera/command/setting/SetCameraShotMode;->executePanoramaShotMode(Landroid/hardware/Camera$Parameters;ZLjava/lang/String;)V

    goto/16 :goto_1

    .line 97
    :cond_b
    const-string v7, "shotmode_free_panorama"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 98
    invoke-direct {p0, p1, v0, v6}, Lcom/lge/camera/command/setting/SetCameraShotMode;->executeFreePanoramaShotMode(Landroid/hardware/Camera$Parameters;ZLjava/lang/String;)V

    goto/16 :goto_1

    .line 99
    :cond_c
    const-string v7, "shotmode_hdr"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 100
    invoke-direct {p0, p1, v0, v6}, Lcom/lge/camera/command/setting/SetCameraShotMode;->executeHdrShotMode(Landroid/hardware/Camera$Parameters;ZLjava/lang/String;)V

    goto/16 :goto_1

    .line 101
    :cond_d
    const-string v7, "shotmode_timemachine"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 102
    invoke-direct {p0, p1, v0, v6}, Lcom/lge/camera/command/setting/SetCameraShotMode;->executeTimemachineShotMode(Landroid/hardware/Camera$Parameters;ZLjava/lang/String;)V

    goto/16 :goto_1

    .line 103
    :cond_e
    const-string v7, "shotmode_full_continuous"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 104
    invoke-direct {p0, p1, v0, v6}, Lcom/lge/camera/command/setting/SetCameraShotMode;->executeFullFrameContinuousShotMode(Landroid/hardware/Camera$Parameters;ZLjava/lang/String;)V

    goto/16 :goto_1

    .line 105
    :cond_f
    const-string v7, "shotmode_main_beauty"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 106
    invoke-direct {p0, p1, v0, v6}, Lcom/lge/camera/command/setting/SetCameraShotMode;->executeMainBeautyShotMode(Landroid/hardware/Camera$Parameters;ZLjava/lang/String;)V

    goto/16 :goto_1

    .line 107
    :cond_10
    const-string v7, "shotmode_front_beauty"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 108
    invoke-direct {p0, p1, v0, v6}, Lcom/lge/camera/command/setting/SetCameraShotMode;->executeFrontBeautyShotMode(Landroid/hardware/Camera$Parameters;ZLjava/lang/String;)V

    goto/16 :goto_1

    .line 109
    :cond_11
    const-string v7, "shotmode_clear_shot"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 110
    invoke-direct {p0, p1, v0, v6}, Lcom/lge/camera/command/setting/SetCameraShotMode;->executeClearShotMode(Landroid/hardware/Camera$Parameters;ZLjava/lang/String;)V

    goto/16 :goto_1

    .line 111
    :cond_12
    const-string v7, "shotmode_dual_camera"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 112
    invoke-direct {p0, p1, v0, v6}, Lcom/lge/camera/command/setting/SetCameraShotMode;->executeDualCameraShotMode(Landroid/hardware/Camera$Parameters;ZLjava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected onExecuteAlone()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 854
    const-string v9, "CameraApp"

    const-string v10, "SetCameraShotMode onExecuteAlone()"

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    :try_start_0
    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getInCaptureProgress()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 909
    :goto_0
    return-void

    .line 861
    :cond_0
    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const v10, 0x7f0b0277

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 862
    .local v3, shotChangeMsg:Ljava/lang/String;
    const/4 v5, 0x0

    .line 863
    .local v5, shotModeEntryVal:Ljava/lang/String;
    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v10, "key_camera_shot_mode"

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 864
    .local v4, shotMode:Ljava/lang/String;
    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v10, "key_camera_shot_mode"

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->getSettingIndex(Ljava/lang/String;)I

    move-result v6

    .line 865
    .local v6, shotModeIndex:I
    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v10, "key_camera_shot_mode"

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 866
    .local v0, ShotModePref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v0, :cond_1

    .line 867
    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v9

    aget-object v9, v9, v6

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 870
    :cond_1
    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->isTimeMachineModeOn()Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "shotmode_timemachine"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 871
    :cond_2
    const-string v9, "shotmode_timemachine"

    invoke-direct {p0, v9}, Lcom/lge/camera/command/setting/SetCameraShotMode;->showHelpGuideDialog(Ljava/lang/String;)Z

    move-result v2

    .line 873
    .local v2, retval:Z
    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getPreviousShotModeString()Ljava/lang/String;

    move-result-object v7

    .line 874
    .local v7, strPreviousShotMode:Ljava/lang/String;
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->useTimeCatchShotTitle()Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f0b02de

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 878
    .local v8, timeMachineString:Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v9

    if-nez v9, :cond_3

    if-nez v2, :cond_3

    const-string v9, "shotmode_timemachine"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 880
    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v8, v10, v11

    invoke-static {v3, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->toast(Ljava/lang/String;)V

    .line 882
    :cond_3
    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v10, "shotmode_timemachine"

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 894
    .end local v8           #timeMachineString:Ljava/lang/String;
    :goto_2
    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->isTimeMachineModeOn()Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "shotmode_panorama"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 895
    :cond_4
    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->removePanoramaView()V

    .line 898
    :cond_5
    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v10, Lcom/lge/camera/command/setting/SetCameraShotMode$2;

    invoke-direct {v10, p0}, Lcom/lge/camera/command/setting/SetCameraShotMode$2;-><init>(Lcom/lge/camera/command/setting/SetCameraShotMode;)V

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 906
    .end local v0           #ShotModePref:Lcom/lge/camera/setting/ListPreference;
    .end local v2           #retval:Z
    .end local v3           #shotChangeMsg:Ljava/lang/String;
    .end local v4           #shotMode:Ljava/lang/String;
    .end local v5           #shotModeEntryVal:Ljava/lang/String;
    .end local v6           #shotModeIndex:I
    .end local v7           #strPreviousShotMode:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 907
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v9, "CameraApp"

    const-string v10, "NullPointerException:"

    invoke-static {v9, v10, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 874
    .end local v1           #e:Ljava/lang/NullPointerException;
    .restart local v0       #ShotModePref:Lcom/lge/camera/setting/ListPreference;
    .restart local v2       #retval:Z
    .restart local v3       #shotChangeMsg:Ljava/lang/String;
    .restart local v4       #shotMode:Ljava/lang/String;
    .restart local v5       #shotModeEntryVal:Ljava/lang/String;
    .restart local v6       #shotModeIndex:I
    .restart local v7       #strPreviousShotMode:Ljava/lang/String;
    :cond_6
    :try_start_1
    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f0b0251

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 884
    .end local v2           #retval:Z
    .end local v7           #strPreviousShotMode:Ljava/lang/String;
    :cond_7
    invoke-direct {p0, v4}, Lcom/lge/camera/command/setting/SetCameraShotMode;->showHelpGuideDialog(Ljava/lang/String;)Z

    move-result v2

    .line 886
    .restart local v2       #retval:Z
    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getPreviousShotModeString()Ljava/lang/String;

    move-result-object v7

    .line 887
    .restart local v7       #strPreviousShotMode:Ljava/lang/String;
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v9

    if-nez v9, :cond_8

    if-nez v2, :cond_8

    const-string v9, "shotmode_normal"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 889
    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    invoke-static {v3, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->toast(Ljava/lang/String;)V

    .line 891
    :cond_8
    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9, v4}, Lcom/lge/camera/ControllerFunction;->setPreviousShotModeString(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
