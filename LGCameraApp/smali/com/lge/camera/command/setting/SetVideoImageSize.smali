.class public Lcom/lge/camera/command/setting/SetVideoImageSize;
.super Lcom/lge/camera/command/setting/SettingCommand;
.source "SetVideoImageSize.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .parameter "function"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SettingCommand;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 26
    return-void
.end method

.method private changeVideoPreviewSize(Landroid/hardware/Camera$Parameters;[I[I)V
    .locals 7
    .parameter "parameters"
    .parameter "previewSizeOnDevice"
    .parameter "previewSizeOnScreen"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 138
    const/4 v1, 0x0

    .line 139
    .local v1, width:I
    const/4 v0, 0x1

    .line 140
    .local v0, height:I
    aget v2, p2, v5

    sget v3, Lcom/lge/camera/properties/CameraConstants;->LCD_SIZE_WIDTH:I

    if-le v2, v3, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isLDPImodel()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "3840x2160"

    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_preview_size_on_device"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 147
    aget v2, p3, v5

    aget v3, p3, v6

    invoke-virtual {p1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 149
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "re-set Preview size :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p3, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p3, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_0
    return-void
.end method

.method private setParameterForOMAP4(Landroid/hardware/Camera$Parameters;[I)Z
    .locals 3
    .parameter "parameters"
    .parameter "previewSizeOnDevice"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 186
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isOMAP4Chipset()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 187
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isAvailableLiveShot()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 188
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isVideoSnapshotSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    aget v1, p2, v1

    aget v2, p2, v0

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 191
    :cond_0
    const-string v1, "hdr-mode"

    const-string v2, "0"

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isOMAP4Chipset()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 194
    const-string v1, "mode"

    const-string v2, "video-mode"

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v1, "CameraApp"

    const-string v2, "set mode: video-mode"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_2
    :goto_0
    return v0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private setPreviewFormat(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .parameter "parameters"

    .prologue
    .line 216
    const-string v0, "3840x2160"

    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_preview_size_on_device"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    const-string v0, "preview-format"

    const-string v1, "nv12-venus"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :goto_0
    return-void

    .line 220
    :cond_0
    const-string v0, "preview-format"

    const-string v1, "yuv420sp"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setPreviewFpsRange(Landroid/hardware/Camera$Parameters;[I)V
    .locals 11
    .parameter "parameters"
    .parameter "previewSizeOnDevice"

    .prologue
    const/16 v10, 0x3a98

    const/4 v9, 0x1

    const/16 v7, 0x7530

    const/4 v8, 0x0

    .line 225
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isEffectsCamcorderActive()Z

    move-result v5

    if-nez v5, :cond_2

    .line 226
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isMMSIntent()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isAttachIntent()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isAttachMode()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 227
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isHighFramRateVideoSupported()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 228
    const-string v5, "video-hfr"

    const-string v6, "off"

    invoke-virtual {p1, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v5, "preview-format"

    const-string v6, "yuv420sp"

    invoke-virtual {p1, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isOMAP4Chipset()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 233
    invoke-virtual {p1, v7, v7}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 272
    :cond_2
    :goto_0
    return-void

    .line 236
    :cond_3
    invoke-virtual {p1, v10, v10}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_0

    .line 239
    :cond_4
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v5

    const/4 v6, 0x6

    if-eq v5, v6, :cond_5

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v5

    const/16 v6, 0xb

    if-ne v5, v6, :cond_6

    .line 241
    :cond_5
    const/16 v5, 0x2710

    invoke-virtual {p1, v5, v7}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_0

    .line 244
    :cond_6
    const-string v5, "hw.camcorder.fpsrange"

    const-string v6, "15000,30000"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, fps:Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, fpsRange:[Ljava/lang/String;
    const-string v4, "off"

    .line 247
    .local v4, sVideoFps:Ljava/lang/String;
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_preview_size_on_device"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v3

    .line 248
    .local v3, pref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v3, :cond_7

    .line 249
    invoke-virtual {v3}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo3()Ljava/lang/String;

    move-result-object v4

    .line 252
    :cond_7
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isHighFramRateVideoSupported()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "recordmode_normal"

    iget-object v6, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v7, "key_video_record_mode"

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "off"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 256
    const-string v5, "video-hfr"

    invoke-virtual {p1, v5, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v5, "preview-format"

    const-string v6, "nv12-venus"

    invoke-virtual {p1, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    mul-int/lit16 v2, v5, 0x3e8

    .line 259
    .local v2, iVideoFps:I
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

    .line 260
    aget-object v5, v1, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v5, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    goto/16 :goto_0

    .line 262
    .end local v2           #iVideoFps:I
    :cond_8
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isHighFramRateVideoSupported()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 263
    const-string v5, "video-hfr"

    const-string v6, "off"

    invoke-virtual {p1, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :cond_9
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetVideoImageSize;->setPreviewFormat(Landroid/hardware/Camera$Parameters;)V

    .line 266
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Min FPS is set to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Max FPS is set to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    aget-object v5, v1, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aget-object v6, v1, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    goto/16 :goto_0
.end method

.method private setVideoPreviewSize(Landroid/hardware/Camera$Parameters;[I[I[I)[I
    .locals 6
    .parameter "parameters"
    .parameter "previewSizeOnDevice"
    .parameter "previewSizeOnScreen"
    .parameter "oldVideoSize"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 158
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreviewSize :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p2, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p2, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    aget v1, p2, v4

    aget v2, p2, v5

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 161
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isQCTChipset()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNVIDIAChipset()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/camera/command/setting/SetVideoImageSize;->changeVideoPreviewSize(Landroid/hardware/Camera$Parameters;[I[I)V

    .line 163
    const-string v1, "video-size"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, sOldVideoSize:Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 165
    invoke-static {v0}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object p4

    .line 168
    .end local v0           #sOldVideoSize:Ljava/lang/String;
    :cond_1
    return-object p4
.end method

.method private setVideoStabilizationMenu([ILandroid/hardware/Camera$Parameters;)V
    .locals 4
    .parameter "previewSizeOnDevice"
    .parameter "parameters"

    .prologue
    const/4 v3, 0x0

    .line 275
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isVideoStabilizationSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    :goto_0
    return-void

    .line 278
    :cond_0
    aget v0, p1, v3

    const/16 v1, 0x500

    if-lt v0, v1, :cond_1

    const-string v0, "1920x1080@60"

    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_preview_size_on_device"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "3840x2160"

    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_preview_size_on_device"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 283
    :cond_1
    const-string v0, "on"

    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_video_stabilization"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 284
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_video_stabilization"

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 285
    const-string v0, "video-stabilization"

    const-string v1, "false"

    invoke-virtual {p2, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_video_stabilization"

    invoke-interface {v0, v1, v3, v3}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 294
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/command/setting/SetVideoImageSize$4;

    invoke-direct {v1, p0}, Lcom/lge/camera/command/setting/SetVideoImageSize$4;-><init>(Lcom/lge/camera/command/setting/SetVideoImageSize;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 289
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isDualRecordingActive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 290
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_video_stabilization"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    goto :goto_1
.end method

.method private showFocusAndUpdateSizeIndicator()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/command/setting/SetVideoImageSize$3;

    invoke-direct {v1, p0}, Lcom/lge/camera/command/setting/SetVideoImageSize$3;-><init>(Lcom/lge/camera/command/setting/SetVideoImageSize;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 213
    return-void
.end method

.method private showMMSRequestSizeLimitPopup(Ljava/lang/String;)V
    .locals 5
    .parameter "sizeOnDeviceString"

    .prologue
    .line 173
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/lge/camera/properties/MmsProperties;->isAvailableMmsResolution(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 175
    .local v0, isMMS:Z
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.SelectDuration"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 176
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v1

    .line 177
    .local v1, mCarrierCode:I
    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    const/16 v2, 0x15

    if-ne v1, v2, :cond_2

    .line 179
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isMMSIntent()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_2

    .line 180
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->showRequestedSizeLimit()V

    .line 183
    :cond_2
    return-void
.end method


# virtual methods
.method public execute(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetVideoImageSize;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V

    .line 31
    return-void
.end method

.method public execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
    .locals 14
    .parameter "parameters"
    .parameter "arg"

    .prologue
    .line 34
    const-string v11, "CameraApp"

    const-string v12, "SetVideoImageSize-start"

    invoke-static {v11, v12}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Lcom/lge/camera/command/setting/SetVideoImageSize;->showFocusAndUpdateSizeIndicator()V

    .line 42
    iget-object v11, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getPreviewSizeOnDevice()Ljava/lang/String;

    move-result-object v9

    .line 43
    .local v9, sizeOnDeviceString:Ljava/lang/String;
    iget-object v11, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getPreviewSizeOnScreen()Ljava/lang/String;

    move-result-object v10

    .line 46
    .local v10, sizeOnScreenString:Ljava/lang/String;
    const-string v11, ""

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 47
    iget-object v11, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v12, "key_preview_size_on_device"

    invoke-interface {v11, v12}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v5

    .line 48
    .local v5, pref:Lcom/lge/camera/setting/ListPreference;
    iget-object v11, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v12, "key_preview_size_on_device"

    invoke-virtual {v5}, Lcom/lge/camera/setting/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 49
    iget-object v11, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getPreviewSizeOnDevice()Ljava/lang/String;

    move-result-object v9

    .line 50
    iget-object v11, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getPreviewSizeOnScreen()Ljava/lang/String;

    move-result-object v10

    .line 54
    .end local v5           #pref:Lcom/lge/camera/setting/ListPreference;
    :cond_0
    if-eqz v9, :cond_1

    if-nez v10, :cond_3

    .line 55
    :cond_1
    const-string v12, "CameraApp"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "error! sizeOnDeviceString or sizeOnScreenString is null:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-nez v9, :cond_2

    const/4 v11, 0x1

    :goto_0
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :goto_1
    return-void

    .line 55
    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    .line 58
    :cond_3
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 59
    .local v3, oldSizeOnDevice:Landroid/hardware/Camera$Size;
    if-nez v3, :cond_4

    .line 60
    const-string v11, "CameraApp"

    const-string v12, "oldSizeOnDevice is Null"

    invoke-static {v11, v12}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 64
    :cond_4
    invoke-static {v9}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v7

    .line 65
    .local v7, previewSizeOnDevice:[I
    invoke-static {v10}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v8

    .line 67
    .local v8, previewSizeOnScreen:[I
    const/4 v11, 0x2

    new-array v1, v11, [I

    .line 68
    .local v1, oldPreviewSizeOnScreen:[I
    iget-object v11, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const v12, 0x7f09013e

    invoke-interface {v11, v12}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 70
    .local v6, preview:Landroid/view/View;
    iget-object v11, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 71
    const/4 v11, 0x0

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v12

    aput v12, v1, v11

    .line 72
    const/4 v11, 0x1

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v12

    aput v12, v1, v11

    .line 78
    :goto_2
    const/4 v11, 0x2

    new-array v4, v11, [I

    .line 79
    .local v4, oldVideoSize:[I
    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v4, v11

    .line 80
    const/4 v11, 0x1

    const/4 v12, 0x0

    aput v12, v4, v11

    .line 82
    const/4 v11, 0x0

    aget v11, v1, v11

    int-to-float v11, v11

    const/4 v12, 0x1

    aget v12, v1, v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 83
    .local v2, oldRatio:Ljava/lang/Float;
    const/4 v11, 0x0

    aget v11, v8, v11

    int-to-float v11, v11

    const/4 v12, 0x1

    aget v12, v8, v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 85
    .local v0, newRatio:Ljava/lang/Float;
    invoke-direct {p0, v7, p1}, Lcom/lge/camera/command/setting/SetVideoImageSize;->setVideoStabilizationMenu([ILandroid/hardware/Camera$Parameters;)V

    .line 86
    invoke-direct {p0, p1, v7}, Lcom/lge/camera/command/setting/SetVideoImageSize;->setPreviewFpsRange(Landroid/hardware/Camera$Parameters;[I)V

    .line 88
    invoke-direct {p0, p1, v7, v8, v4}, Lcom/lge/camera/command/setting/SetVideoImageSize;->setVideoPreviewSize(Landroid/hardware/Camera$Parameters;[I[I[I)[I

    move-result-object v4

    .line 91
    const-string v11, "CameraApp"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "### set video-size "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v11, "video-size"

    invoke-virtual {p1, v11, v9}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-direct {p0, p1, v7}, Lcom/lge/camera/command/setting/SetVideoImageSize;->setParameterForOMAP4(Landroid/hardware/Camera$Parameters;[I)Z

    move-result v11

    if-nez v11, :cond_5

    .line 95
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isVideoSnapshotSupported()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isAvailableLiveShot()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 96
    const/4 v11, 0x0

    aget v11, v7, v11

    const/4 v12, 0x1

    aget v12, v7, v12

    invoke-virtual {p1, v11, v12}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 100
    :cond_5
    const/4 v11, 0x1

    invoke-virtual {p1, v11}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 102
    iget-object v11, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v12, 0x0

    aget v12, v8, v12

    const/4 v13, 0x1

    aget v13, v8, v13

    invoke-interface {v11, v12, v13}, Lcom/lge/camera/ControllerFunction;->changePreviewModeOnUiThread(II)V

    .line 104
    iget-object v11, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->isPreviewing()Z

    move-result v11

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->isLiveEffectActive()Z

    move-result v11

    if-nez v11, :cond_7

    .line 106
    const/4 v11, 0x0

    aget v11, v1, v11

    const/4 v12, 0x0

    aget v12, v8, v12

    if-ne v11, v12, :cond_9

    const/4 v11, 0x1

    aget v11, v1, v11

    const/4 v12, 0x1

    aget v12, v8, v12

    if-ne v11, v12, :cond_9

    iget v11, v3, Landroid/hardware/Camera$Size;->width:I

    const/4 v12, 0x0

    aget v12, v7, v12

    if-ne v11, v12, :cond_6

    iget v11, v3, Landroid/hardware/Camera$Size;->height:I

    const/4 v12, 0x1

    aget v12, v7, v12

    if-eq v11, v12, :cond_9

    .line 109
    :cond_6
    const-string v11, "CameraApp"

    const-string v12, "Force restart preview. Preview size on device changed but view layout is same. "

    invoke-static {v11, v12}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v11, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v11

    new-instance v12, Lcom/lge/camera/command/setting/SetVideoImageSize$1;

    invoke-direct {v12, p0, p1}, Lcom/lge/camera/command/setting/SetVideoImageSize$1;-><init>(Lcom/lge/camera/command/setting/SetVideoImageSize;Landroid/hardware/Camera$Parameters;)V

    invoke-virtual {v11, v12}, Lcom/lge/camera/util/MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 131
    :cond_7
    :goto_3
    invoke-direct {p0, v9}, Lcom/lge/camera/command/setting/SetVideoImageSize;->showMMSRequestSizeLimitPopup(Ljava/lang/String;)V

    .line 133
    const-string v11, "CameraApp"

    const-string v12, "SetVideoImageSize-end"

    invoke-static {v11, v12}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 74
    .end local v0           #newRatio:Ljava/lang/Float;
    .end local v2           #oldRatio:Ljava/lang/Float;
    .end local v4           #oldVideoSize:[I
    :cond_8
    const/4 v11, 0x0

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v12

    aput v12, v1, v11

    .line 75
    const/4 v11, 0x1

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v12

    aput v12, v1, v11

    goto/16 :goto_2

    .line 119
    .restart local v0       #newRatio:Ljava/lang/Float;
    .restart local v2       #oldRatio:Ljava/lang/Float;
    .restart local v4       #oldVideoSize:[I
    :cond_9
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isQCTChipset()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isHDmodel()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {v2, v0}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result v11

    if-nez v11, :cond_7

    const/4 v11, 0x0

    aget v11, v4, v11

    const/4 v12, 0x0

    aget v12, v7, v12

    if-eq v11, v12, :cond_7

    .line 123
    const-string v11, "CameraApp"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Force restart preview. QCT 8k & full hd model have some limitation because of frame drop"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x0

    aget v13, v4, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "!="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x0

    aget v13, v7, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v11, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v11

    new-instance v12, Lcom/lge/camera/command/setting/SetVideoImageSize$2;

    invoke-direct {v12, p0, p1}, Lcom/lge/camera/command/setting/SetVideoImageSize$2;-><init>(Lcom/lge/camera/command/setting/SetVideoImageSize;Landroid/hardware/Camera$Parameters;)V

    invoke-virtual {v11, v12}, Lcom/lge/camera/util/MainHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3
.end method

.method protected onExecuteAlone()V
    .locals 4

    .prologue
    .line 304
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    .line 305
    .local v0, mCarrierCode:I
    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    const/16 v2, 0x15

    if-ne v0, v2, :cond_2

    .line 307
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_preview_size_on_device"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 308
    .local v1, videoSizeString:Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isMMSIntent()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/lge/camera/properties/MmsProperties;->isAvailableMmsResolution(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 310
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->showRequestedSizeLimit()V

    .line 313
    .end local v1           #videoSizeString:Ljava/lang/String;
    :cond_2
    return-void
.end method
