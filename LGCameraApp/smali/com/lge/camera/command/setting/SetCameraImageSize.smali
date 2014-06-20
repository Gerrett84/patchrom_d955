.class public Lcom/lge/camera/command/setting/SetCameraImageSize;
.super Lcom/lge/camera/command/setting/SettingCommand;
.source "SetCameraImageSize.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .parameter "function"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SettingCommand;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 23
    return-void
.end method

.method private setParameterPictureSize(Landroid/hardware/Camera$Parameters;[I[I)V
    .locals 5
    .parameter "parameters"
    .parameter "previewSizeOnDevice"
    .parameter "pictureSize"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 185
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isEffectsCamcorderActive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isEffectsCameraActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_panorama"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    const/16 v0, 0x500

    const/16 v1, 0x3c0

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 189
    const-string v0, "CameraApp"

    const-string v1, "panorama setPictureSize 1280x960"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    aget v0, p3, v3

    aget v1, p3, v4

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 192
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPictureSize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p3, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p3, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setPreviewFpsRange(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .parameter "parameters"

    .prologue
    const/16 v3, 0x7530

    const/4 v2, 0x1

    .line 202
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isHighFramRateVideoSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    const-string v0, "video-hfr"

    const-string v1, "off"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v0, "preview-format"

    const-string v1, "yuv420sp"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isEffectsCamcorderActive()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isEffectsCameraActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 207
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isOMAP4Chipset()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 208
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 209
    invoke-virtual {p1, v3, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 244
    :cond_1
    :goto_0
    return-void

    .line 212
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getCameraFrameRateNormalRangeMin()I

    move-result v0

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getCameraFrameRateNormalRangeMax()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_0

    .line 216
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 217
    const-string v0, "night"

    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_scene_mode"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 218
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getFrontCameraFrameRateNightModeRangeMin()I

    move-result v0

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getCameraFrameRateNormalRangeMax()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_0

    .line 221
    :cond_4
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getFrontCameraFrameRateNormalRangeMin()I

    move-result v0

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getCameraFrameRateNormalRangeMax()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_0

    .line 225
    :cond_5
    const-string v0, "on"

    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_smart_mode"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 226
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getCameraFrameRateIAModeRangeMin()I

    move-result v0

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getCameraFrameRateNormalRangeMax()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_0

    .line 229
    :cond_6
    const-string v0, "night"

    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_scene_mode"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 230
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getCameraFrameRateNightModeRangeMin()I

    move-result v0

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getCameraFrameRateNormalRangeMax()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_0

    .line 232
    :cond_7
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_full_continuous"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 233
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getCameraFrameRateBurstShotModeRangeMin()I

    move-result v0

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getCameraFrameRateNormalRangeMax()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    goto/16 :goto_0

    .line 236
    :cond_8
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getCameraFrameRateNormalRangeMin()I

    move-result v0

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getCameraFrameRateNormalRangeMax()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    goto/16 :goto_0
.end method


# virtual methods
.method public execute(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 27
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetCameraImageSize;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V

    .line 28
    return-void
.end method

.method public execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
    .locals 21
    .parameter "parameters"
    .parameter "arg"

    .prologue
    .line 31
    const-string v18, "CameraApp"

    const-string v19, "SetCameraImageSize-start"

    invoke-static/range {v18 .. v19}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, p2

    .line 33
    check-cast v3, Landroid/os/Bundle;

    .line 35
    .local v3, bundle:Landroid/os/Bundle;
    const-string v18, "doNotRestartPreview"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 36
    .local v5, doNotRestartPreview:Z
    const-string v18, "doChangePrevieMode"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 50
    .local v4, doChangePrevieMode:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/lge/camera/ControllerFunction;->getPreviewSizeOnDevice()Ljava/lang/String;

    move-result-object v16

    .line 51
    .local v16, sizeOnDeviceString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/lge/camera/ControllerFunction;->getPreviewSizeOnScreen()Ljava/lang/String;

    move-result-object v17

    .line 54
    .local v17, sizeOnScreenString:Ljava/lang/String;
    const-string v18, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v18, v0

    const-string v19, "key_camera_picturesize"

    invoke-interface/range {v18 .. v19}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v12

    .line 56
    .local v12, pref:Lcom/lge/camera/setting/ListPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v18, v0

    const-string v19, "key_camera_picturesize"

    invoke-virtual {v12}, Lcom/lge/camera/setting/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/lge/camera/ControllerFunction;->getPreviewSizeOnDevice()Ljava/lang/String;

    move-result-object v16

    .line 58
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/lge/camera/ControllerFunction;->getPreviewSizeOnScreen()Ljava/lang/String;

    move-result-object v17

    .line 61
    .end local v12           #pref:Lcom/lge/camera/setting/ListPreference;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v9

    .line 62
    .local v9, oldPreviewSizeOnDevice:Landroid/hardware/Camera$Size;
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v8

    .line 65
    .local v8, oldPictureSize:Landroid/hardware/Camera$Size;
    if-eqz v16, :cond_1

    if-eqz v17, :cond_1

    if-eqz v9, :cond_1

    if-nez v8, :cond_6

    .line 69
    :cond_1
    const-string v19, "CameraApp"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "error! sizeOnDeviceString is NULL: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    if-nez v16, :cond_2

    const/16 v18, 0x1

    :goto_0
    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v19, "CameraApp"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "error! sizeOnScreenString is Null: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    if-nez v17, :cond_3

    const/16 v18, 0x1

    :goto_1
    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v19, "CameraApp"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "error! oldPreviewSizeOnDevice is Null: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    if-nez v9, :cond_4

    const/16 v18, 0x1

    :goto_2
    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v19, "CameraApp"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "error! oldPictureSize is Null: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    if-nez v8, :cond_5

    const/16 v18, 0x1

    :goto_3
    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :goto_4
    return-void

    .line 69
    :cond_2
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 70
    :cond_3
    const/16 v18, 0x0

    goto :goto_1

    .line 71
    :cond_4
    const/16 v18, 0x0

    goto :goto_2

    .line 72
    :cond_5
    const/16 v18, 0x0

    goto :goto_3

    .line 76
    :cond_6
    invoke-static/range {v16 .. v16}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v14

    .line 77
    .local v14, previewSizeOnDevice:[I
    invoke-static/range {v17 .. v17}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v15

    .line 79
    .local v15, previewSizeOnScreen:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v18, v0

    const-string v19, "key_camera_picturesize"

    invoke-interface/range {v18 .. v19}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v12

    .line 80
    .restart local v12       #pref:Lcom/lge/camera/setting/ListPreference;
    invoke-virtual {v12}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v11

    .line 81
    .local v11, pictureSize:[I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v11}, Lcom/lge/camera/command/setting/SetCameraImageSize;->setParameterPictureSize(Landroid/hardware/Camera$Parameters;[I[I)V

    .line 83
    const/16 v18, 0x0

    aget v18, v14, v18

    const/16 v19, 0x1

    aget v19, v14, v19

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 84
    const-string v18, "CameraApp"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "setPreviewSize "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x0

    aget v20, v14, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "x"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    aget v20, v14, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-direct/range {p0 .. p1}, Lcom/lge/camera/command/setting/SetCameraImageSize;->setPreviewFpsRange(Landroid/hardware/Camera$Parameters;)V

    .line 87
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 89
    const-string v18, "face_tracking"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v19, v0

    const-string v20, "key_focus"

    invoke-interface/range {v19 .. v20}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/lge/camera/ControllerFunction;->initFaceDetectInfo()V

    .line 93
    :cond_7
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v10, v0, [I

    .line 94
    .local v10, oldPreviewSizeOnScreen:[I
    const/4 v7, 0x0

    .line 95
    .local v7, needToRestartPreview:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/lge/camera/ControllerFunction;->isPreviewRendered()Z

    move-result v18

    if-eqz v18, :cond_14

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v18, v0

    const v19, 0x7f09013f

    invoke-interface/range {v18 .. v19}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/lge/camera/components/OpenGLSurfaceView;

    .line 98
    .local v13, preview:Lcom/lge/camera/components/OpenGLSurfaceView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v18

    if-eqz v18, :cond_10

    .line 99
    const/16 v18, 0x0

    invoke-virtual {v13}, Lcom/lge/camera/components/OpenGLSurfaceView;->getWidth()I

    move-result v19

    aput v19, v10, v18

    .line 100
    const/16 v18, 0x1

    invoke-virtual {v13}, Lcom/lge/camera/components/OpenGLSurfaceView;->getHeight()I

    move-result v19

    aput v19, v10, v18

    .line 106
    :goto_5
    const/4 v6, 0x1

    .line 107
    .local v6, needToChangePreview:Z
    const/16 v18, 0x0

    aget v18, v10, v18

    if-lez v18, :cond_8

    const/16 v18, 0x1

    aget v18, v10, v18

    if-lez v18, :cond_8

    const/16 v18, 0x0

    aget v18, v10, v18

    const/16 v19, 0x0

    aget v19, v15, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    const/16 v18, 0x0

    aget v18, v10, v18

    const/16 v19, 0x0

    aget v19, v15, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_11

    .line 111
    :cond_8
    const/4 v6, 0x1

    .line 124
    :cond_9
    :goto_6
    if-eqz v4, :cond_a

    .line 125
    const/4 v6, 0x1

    .line 127
    :cond_a
    if-eqz v6, :cond_b

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/lge/camera/ControllerFunction;->isPreviewOnGoing()Z

    move-result v18

    if-eqz v18, :cond_13

    .line 129
    const/4 v7, 0x0

    .line 133
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v19, v15, v19

    const/16 v20, 0x1

    aget v20, v15, v20

    invoke-interface/range {v18 .. v20}, Lcom/lge/camera/ControllerFunction;->changePreviewModeOnUiThread(II)V

    .line 135
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/lge/camera/ControllerFunction;->isPreviewing()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 136
    const/4 v7, 0x1

    .line 156
    .end local v6           #needToChangePreview:Z
    .end local v13           #preview:Lcom/lge/camera/components/OpenGLSurfaceView;
    :cond_c
    :goto_8
    if-eqz v5, :cond_d

    .line 157
    const/4 v7, 0x0

    .line 160
    :cond_d
    const-string v18, "CameraApp"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "PreviewOnScreen Old : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x0

    aget v20, v10, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "x"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    aget v20, v10, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " -> New : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x0

    aget v20, v15, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "x"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    aget v20, v15, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v18, "CameraApp"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "PreviewOnDevice Old : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v9, Landroid/hardware/Camera$Size;->width:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "x"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v9, Landroid/hardware/Camera$Size;->height:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " -> New : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x0

    aget v20, v14, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "x"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    aget v20, v14, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    if-eqz v7, :cond_f

    const/16 v18, 0x0

    aget v18, v10, v18

    const/16 v19, 0x0

    aget v19, v15, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    const/16 v18, 0x1

    aget v18, v10, v18

    const/16 v19, 0x1

    aget v19, v15, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    iget v0, v9, Landroid/hardware/Camera$Size;->width:I

    move/from16 v18, v0

    const/16 v19, 0x0

    aget v19, v14, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    iget v0, v8, Landroid/hardware/Camera$Size;->width:I

    move/from16 v18, v0

    const/16 v19, 0x0

    aget v19, v11, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    iget v0, v8, Landroid/hardware/Camera$Size;->height:I

    move/from16 v18, v0

    const/16 v19, 0x1

    aget v19, v11, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_f

    .line 171
    :cond_e
    const-string v18, "CameraApp"

    const-string v19, "SetCameraImageSize:Preview size on device changed but view layout is same."

    invoke-static/range {v18 .. v19}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v18, "CameraApp"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SetCameraImageSize:Force restart preview-[doNotRestartPreview value] : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v18, v0

    new-instance v19, Lcom/lge/camera/command/setting/SetCameraImageSize$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/lge/camera/command/setting/SetCameraImageSize$1;-><init>(Lcom/lge/camera/command/setting/SetCameraImageSize;Landroid/hardware/Camera$Parameters;)V

    invoke-interface/range {v18 .. v19}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 181
    :cond_f
    const-string v18, "CameraApp"

    const-string v19, "SetCameraImageSize-end"

    invoke-static/range {v18 .. v19}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 102
    .restart local v13       #preview:Lcom/lge/camera/components/OpenGLSurfaceView;
    :cond_10
    const/16 v18, 0x0

    invoke-virtual {v13}, Lcom/lge/camera/components/OpenGLSurfaceView;->getHeight()I

    move-result v19

    aput v19, v10, v18

    .line 103
    const/16 v18, 0x1

    invoke-virtual {v13}, Lcom/lge/camera/components/OpenGLSurfaceView;->getWidth()I

    move-result v19

    aput v19, v10, v18

    goto/16 :goto_5

    .line 113
    .restart local v6       #needToChangePreview:Z
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/lge/camera/ControllerFunction;->getInCaptureProgress()Z

    move-result v18

    if-nez v18, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/lge/camera/ControllerFunction;->isPreviewing()Z

    move-result v18

    if-nez v18, :cond_12

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isHVGAmodel()Z

    move-result v18

    if-eqz v18, :cond_9

    const/16 v18, 0x0

    aget v18, v10, v18

    const/16 v19, 0x0

    aget v19, v14, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_9

    const/16 v18, 0x1

    aget v18, v10, v18

    const/16 v19, 0x1

    aget v19, v14, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_9

    .line 120
    :cond_12
    const/4 v6, 0x0

    goto/16 :goto_6

    .line 131
    :cond_13
    const/4 v7, 0x1

    goto/16 :goto_7

    .line 139
    .end local v6           #needToChangePreview:Z
    .end local v13           #preview:Lcom/lge/camera/components/OpenGLSurfaceView;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v18, v0

    const v19, 0x7f09013e

    invoke-interface/range {v18 .. v19}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/lge/camera/components/CameraPreview;

    .line 141
    .local v13, preview:Lcom/lge/camera/components/CameraPreview;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v18

    if-eqz v18, :cond_15

    .line 142
    const/16 v18, 0x0

    invoke-virtual {v13}, Lcom/lge/camera/components/CameraPreview;->getWidth()I

    move-result v19

    aput v19, v10, v18

    .line 143
    const/16 v18, 0x1

    invoke-virtual {v13}, Lcom/lge/camera/components/CameraPreview;->getHeight()I

    move-result v19

    aput v19, v10, v18

    .line 148
    :goto_9
    const/16 v18, 0x0

    aget v18, v14, v18

    const/16 v19, 0x1

    aget v19, v14, v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Lcom/lge/camera/components/CameraPreview;->setSrcImageSize(II)V

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v19, v15, v19

    const/16 v20, 0x1

    aget v20, v15, v20

    invoke-interface/range {v18 .. v20}, Lcom/lge/camera/ControllerFunction;->changePreviewModeOnUiThread(II)V

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/lge/camera/ControllerFunction;->isPreviewing()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 152
    const/4 v7, 0x1

    goto/16 :goto_8

    .line 145
    :cond_15
    const/16 v18, 0x0

    invoke-virtual {v13}, Lcom/lge/camera/components/CameraPreview;->getHeight()I

    move-result v19

    aput v19, v10, v18

    .line 146
    const/16 v18, 0x1

    invoke-virtual {v13}, Lcom/lge/camera/components/CameraPreview;->getWidth()I

    move-result v19

    aput v19, v10, v18

    goto :goto_9
.end method

.method protected onExecuteAlone()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/command/setting/SetCameraImageSize$2;

    invoke-direct {v1, p0}, Lcom/lge/camera/command/setting/SetCameraImageSize$2;-><init>(Lcom/lge/camera/command/setting/SetCameraImageSize;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 263
    return-void
.end method
