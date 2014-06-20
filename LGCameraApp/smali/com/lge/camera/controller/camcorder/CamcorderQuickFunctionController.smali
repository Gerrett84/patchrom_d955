.class public Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;
.super Lcom/lge/camera/controller/QuickFunctionController;
.source "CamcorderQuickFunctionController.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .parameter "function"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/QuickFunctionController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 17
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method


# virtual methods
.method public restoreLiveEffectSubMenu()V
    .locals 4

    .prologue
    .line 82
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_0

    .line 83
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_video_record_mode"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_video_record_mode"

    const-string v3, "recordmode_normal"

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 85
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.setting.SetVideoRecordMode"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_video_record_mode"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getQfIndex(Ljava/lang/String;)I

    move-result v0

    .line 88
    .local v0, menuIndex:I
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v0}, Lcom/lge/camera/ControllerFunction;->isQuickFunctionList(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_video_record_mode"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionControllerMenuIcon(II)V

    .line 93
    .end local v0           #menuIndex:I
    :cond_0
    return-void
.end method

.method public setLimitationToLiveeffect(Z)V
    .locals 6
    .parameter "beSet"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 97
    if-eqz p1, :cond_3

    .line 98
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_coloreffect"

    invoke-interface {v1, v2, v5, v4}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 99
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_tag_location"

    invoke-interface {v1, v2, v5, v4}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 100
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_whitebalance"

    invoke-interface {v1, v2, v5, v4}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 102
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v1

    if-nez v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_zoom"

    invoke-interface {v1, v2, v5, v4}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_brightness"

    invoke-interface {v1, v2, v5, v4}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 106
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_live_effect"

    invoke-interface {v1, v2, v5, v4}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 107
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_dual_recording"

    invoke-interface {v1, v2, v5, v4}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 108
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_flash"

    invoke-interface {v1, v2, v5, v4}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 109
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_swap"

    invoke-interface {v1, v2, v5, v4}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 111
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getPreviewSizeOnDevice()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v0

    .line 112
    .local v0, previewSizeOnDevice:[I
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isMMSRecording()Z

    move-result v1

    if-nez v1, :cond_1

    aget v1, v0, v4

    const/16 v2, 0x500

    if-lt v1, v2, :cond_1

    const-string v1, "1920x1080@60"

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_preview_size_on_device"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "3840x2160"

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_preview_size_on_device"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 117
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_video_stabilization"

    invoke-interface {v1, v2, v5, v4}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 120
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v5}, Lcom/lge/camera/ControllerFunction;->setForced_audiozoom(Z)V

    .line 121
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->recordingControllerShow()V

    .line 141
    .end local v0           #previewSizeOnDevice:[I
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isLiveEffectDrawerOpened()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 142
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4, v5}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionAllMenuEnabled(ZZ)V

    .line 144
    :cond_2
    return-void

    .line 123
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_coloreffect"

    invoke-interface {v1, v2, v4, v4}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 124
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_tag_location"

    invoke-interface {v1, v2, v4, v4}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 125
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_whitebalance"

    invoke-interface {v1, v2, v4, v4}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 126
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_zoom"

    invoke-interface {v1, v2, v4, v4}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 127
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_brightness"

    invoke-interface {v1, v2, v4, v4}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 128
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_video_stabilization"

    invoke-interface {v1, v2, v4, v4}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 129
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->setForced_audiozoom(Z)V

    .line 130
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isDualRecordingActive()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isSmartZoomRecordingActive()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 131
    :cond_4
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_dual_recording"

    invoke-interface {v1, v2, v5, v4}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 132
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->setForced_audiozoom(Z)V

    .line 133
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_live_effect"

    invoke-interface {v1, v2, v4, v4}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 139
    :goto_1
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->recordingControllerShow()V

    goto :goto_0

    .line 135
    :cond_5
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_live_effect"

    invoke-interface {v1, v2, v5, v4}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 136
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_flash"

    invoke-interface {v1, v2, v5, v4}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 137
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_dual_recording"

    invoke-interface {v1, v2, v4, v4}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    goto :goto_1
.end method

.method public setMmsLimit(Z)V
    .locals 2
    .parameter "mmsVideo"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController$1;

    invoke-direct {v1, p0, p1}, Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController$1;-><init>(Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;Z)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 27
    return-void
.end method

.method public setMmsLimitUiQfl(Z)V
    .locals 14
    .parameter "mmsVideo"

    .prologue
    .line 31
    iget-boolean v10, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v10, :cond_1

    .line 32
    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v11, Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController$2;

    invoke-direct {v11, p0, p1}, Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController$2;-><init>(Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;Z)V

    const-wide/16 v12, 0xc8

    invoke-interface {v10, v11, v12, v13}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;J)V

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v11, "key_preview_size_on_device"

    invoke-interface {v10, v11}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v8

    .line 41
    .local v8, videoSizePref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v8, :cond_0

    .line 44
    invoke-virtual {v8}, Lcom/lge/camera/setting/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 46
    .local v7, values:[Ljava/lang/CharSequence;
    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v11, "key_preview_size_on_device"

    invoke-interface {v10, v11}, Lcom/lge/camera/ControllerFunction;->getQfIndex(Ljava/lang/String;)I

    move-result v9

    .line 47
    .local v9, videoSizePrefIndex:I
    invoke-virtual {v8}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 48
    .local v5, selectedResolution:Ljava/lang/String;
    invoke-virtual {v8, v5}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v4

    .line 49
    .local v4, selectedIndex:I
    if-gez v4, :cond_2

    const/4 v4, 0x0

    .line 52
    :cond_2
    if-eqz p1, :cond_5

    .line 53
    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->isMMSIntent()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 54
    const/4 v6, 0x0

    .line 55
    .local v6, size:Ljava/lang/String;
    const/4 v3, 0x1

    .line 56
    .local v3, needChange:Z
    const/4 v0, 0x0

    .line 57
    .local v0, available:Z
    const/4 v1, 0x0

    .local v1, i:I
    array-length v2, v7

    .local v2, len:I
    :goto_1
    if-ge v1, v2, :cond_4

    .line 58
    aget-object v10, v7, v1

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 59
    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {v10, v6}, Lcom/lge/camera/properties/MmsProperties;->isAvailableMmsResolution(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 60
    if-eqz v0, :cond_3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 61
    const/4 v3, 0x0

    .line 57
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 65
    :cond_4
    if-eqz v3, :cond_5

    .line 66
    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {v10}, Lcom/lge/camera/properties/MmsProperties;->getMmsResolutions(Landroid/content/ContentResolver;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v5, v10, v11

    .line 70
    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v11, "key_preview_size_on_device"

    invoke-interface {v10, v11, v5}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 75
    .end local v0           #available:Z
    .end local v1           #i:I
    .end local v2           #len:I
    .end local v3           #needChange:Z
    .end local v6           #size:Ljava/lang/String;
    :cond_5
    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10, v9}, Lcom/lge/camera/ControllerFunction;->isQuickFunctionList(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 76
    invoke-virtual {p0, v9, v4}, Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;->setMenuIcon(II)V

    goto :goto_0
.end method
