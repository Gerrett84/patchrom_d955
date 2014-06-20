.class public Lcom/lge/camera/command/setting/SetOptionalParameters;
.super Lcom/lge/camera/command/setting/SettingCommand;
.source "SetOptionalParameters.java"


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

.method private setAutoReviewSetting()V
    .locals 4

    .prologue
    .line 300
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_auto_review"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, autoReviewSettingValue:Ljava/lang/String;
    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 303
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_auto_review"

    const-string v3, "off"

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 304
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.setting.SetCameraShowCapturedImage"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 306
    :cond_0
    return-void
.end method

.method private setBrightnessSetting(Landroid/hardware/Camera$Parameters;Z)V
    .locals 6
    .parameter "parameters"
    .parameter "menuEnable"

    .prologue
    .line 149
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_brightness"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 150
    .local v0, preference:Lcom/lge/camera/setting/ListPreference;
    if-eqz v0, :cond_0

    .line 151
    const-string v3, "6"

    iget-object v4, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_brightness"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 152
    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 153
    .local v1, value:I
    invoke-static {v1, p1}, Lcom/lge/camera/util/Common;->scaleParameter(ILandroid/hardware/Camera$Parameters;)I

    move-result v2

    .line 155
    .local v2, valueForParameter:I
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "brightness value to parameter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p1, v2}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 159
    .end local v1           #value:I
    .end local v2           #valueForParameter:I
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_brightness"

    const/4 v5, 0x0

    invoke-interface {v3, v4, p2, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 160
    return-void
.end method

.method private setCameraModeSetting()V
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_swap"

    const-string v2, "back"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_swap"

    const-string v2, "front"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private setColorEffectSetting(Landroid/hardware/Camera$Parameters;Z)V
    .locals 4
    .parameter "parameters"
    .parameter "menuEnable"

    .prologue
    .line 218
    const-string v1, "not found"

    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_coloreffect"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    const-string v1, "CameraApp"

    const-string v2, "Need to check string whether it is convertable or not."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :goto_0
    return-void

    .line 223
    :cond_0
    const-string v1, "none"

    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_coloreffect"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 224
    const-string v0, "none"

    .line 225
    .local v0, settingValue:Ljava/lang/String;
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KEY_CAMERA_COLOREFFECT ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 228
    .end local v0           #settingValue:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_coloreffect"

    const/4 v3, 0x0

    invoke-interface {v1, v2, p2, v3}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    goto :goto_0
.end method

.method private setFlashSetting(Landroid/hardware/Camera$Parameters;Ljava/lang/String;ZZ)V
    .locals 3
    .parameter "parameters"
    .parameter "value"
    .parameter "menuEnable"
    .parameter "changSettingValue"

    .prologue
    .line 171
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_flash"

    const/4 v2, 0x0

    invoke-interface {v0, v1, p3, v2}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 174
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/command/setting/SetOptionalParameters$1;

    invoke-direct {v1, p0, p2}, Lcom/lge/camera/command/setting/SetOptionalParameters$1;-><init>(Lcom/lge/camera/command/setting/SetOptionalParameters;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 180
    return-void
.end method

.method private setFocusSetting(Landroid/hardware/Camera$Parameters;Z)V
    .locals 6
    .parameter "parameters"
    .parameter "menuEnable"

    .prologue
    const/4 v5, 0x0

    .line 234
    const/4 v0, 0x0

    .line 235
    .local v0, focusValue:Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_focus"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 236
    .local v1, pref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_0

    .line 237
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    .line 241
    :cond_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_focus"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getIAFlashStatus()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 243
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_focus"

    invoke-interface {v2, v3, v0}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 244
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KEY_FOCUS - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.setting.SetCameraFocusMode"

    invoke-interface {v2, v3, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 247
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, p1, v5}, Lcom/lge/camera/ControllerFunction;->setEnable3ALocks(Landroid/hardware/Camera$Parameters;Z)Z

    .line 248
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_focus"

    invoke-interface {v2, v3, p2, v5}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 249
    return-void
.end method

.method private setHDRSetting(Landroid/hardware/Camera$Parameters;Z)V
    .locals 2
    .parameter "parameters"
    .parameter "menuEnable"

    .prologue
    .line 145
    const-string v0, "hdr-mode"

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method private setISOsetting(Landroid/hardware/Camera$Parameters;Z)V
    .locals 4
    .parameter "parameters"
    .parameter "menuEnable"

    .prologue
    .line 200
    const-string v1, "auto"

    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_iso"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 201
    const-string v0, "auto"

    .line 202
    .local v0, settingValue:Ljava/lang/String;
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configValue ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v1, "iso"

    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .end local v0           #settingValue:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_iso"

    const/4 v3, 0x0

    invoke-interface {v1, v2, p2, v3}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 206
    return-void
.end method

.method private setSceneModeSetting(Landroid/hardware/Camera$Parameters;Z)V
    .locals 4
    .parameter "parameters"
    .parameter "menuEnable"

    .prologue
    .line 183
    const-string v1, "auto"

    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_scene_mode"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 184
    const-string v0, "auto"

    .line 185
    .local v0, settingValue:Ljava/lang/String;
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KEY_SCENE_MODE ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, p1, v0}, Lcom/lge/camera/ControllerFunction;->setSceneModeForAdvanced(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 189
    .end local v0           #settingValue:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_scene_mode"

    const/4 v3, 0x0

    invoke-interface {v1, v2, p2, v3}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 191
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v2, Lcom/lge/camera/command/setting/SetOptionalParameters$2;

    invoke-direct {v2, p0}, Lcom/lge/camera/command/setting/SetOptionalParameters$2;-><init>(Lcom/lge/camera/command/setting/SetOptionalParameters;)V

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 197
    return-void
.end method

.method private setShotModeSetting(Landroid/hardware/Camera$Parameters;Z)V
    .locals 5
    .parameter "parameters"
    .parameter "menuEnable"

    .prologue
    const/4 v4, 0x0

    .line 126
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_normal"

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 127
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isTimeMachineModeOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->deleteTimeMachineImages()Z

    .line 130
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->setTimemachineHasPictures(Z)V

    .line 131
    invoke-static {}, Lcom/lge/camera/controller/BubblePopupController;->get()Lcom/lge/camera/controller/BubblePopupController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/BubblePopupController;->initializeNotiComplete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_time_machine"

    const-string v3, "off"

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_normal"

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 138
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.setting.SetCameraShotMode"

    invoke-interface {v1, v2, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 140
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_time_machine"

    invoke-interface {v1, v2, p2, v4}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 141
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    invoke-interface {v1, v2, p2, v4}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 142
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "CameraApp"

    const-string v2, "Exception:"

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private setStorageSetting()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 252
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isExternalStorageRemoved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->setCurrentStorage(I)V

    .line 254
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_storage"

    invoke-interface {v0, v1, v3, v3}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 265
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/command/setting/SetOptionalParameters$3;

    invoke-direct {v1, p0}, Lcom/lge/camera/command/setting/SetOptionalParameters$3;-><init>(Lcom/lge/camera/command/setting/SetOptionalParameters;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 271
    return-void

    .line 256
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->getEmmcName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_storage"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->isInternalMemoryOnly()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->setCurrentStorage(I)V

    .line 262
    :goto_1
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_storage"

    invoke-interface {v0, v1, v4, v3}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 260
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->setCurrentStorage(I)V

    goto :goto_1
.end method

.method private setTimerSetting()V
    .locals 3

    .prologue
    .line 284
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_timer"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, timerSettingValue:Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 289
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->setTimerSetting(I)V

    .line 290
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v2, Lcom/lge/camera/command/setting/SetOptionalParameters$4;

    invoke-direct {v2, p0}, Lcom/lge/camera/command/setting/SetOptionalParameters$4;-><init>(Lcom/lge/camera/command/setting/SetOptionalParameters;)V

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 297
    :cond_0
    return-void
.end method

.method private setVoiceShutterSetting()V
    .locals 3

    .prologue
    .line 274
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isVoiceShutter()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_voiceshutter"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, mVoiceShutterValue:Ljava/lang/String;
    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.SetVoiceShutterMode"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 281
    .end local v0           #mVoiceShutterValue:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setWhiteBalanceSetting(Landroid/hardware/Camera$Parameters;Z)V
    .locals 4
    .parameter "parameters"
    .parameter "menuEnable"

    .prologue
    .line 209
    const-string v1, "auto"

    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_whitebalance"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 210
    const-string v0, "auto"

    .line 211
    .local v0, settingValue:Ljava/lang/String;
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KEY_CAMERA_WHITEBALANCE ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 214
    .end local v0           #settingValue:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_whitebalance"

    const/4 v3, 0x0

    invoke-interface {v1, v2, p2, v3}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 215
    return-void
.end method

.method private setZoomSetting(Landroid/hardware/Camera$Parameters;Z)V
    .locals 2
    .parameter "parameters"
    .parameter "menuEnable"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.setting.SetZoom"

    invoke-interface {v0, v1, p1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 165
    return-void
.end method


# virtual methods
.method public execute(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 26
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetOptionalParameters;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V

    .line 27
    return-void
.end method

.method public execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
    .locals 7
    .parameter "parameters"
    .parameter "arg"

    .prologue
    const/4 v6, 0x0

    .line 30
    const-string v4, "CameraApp"

    const-string v5, "SetOptionalParameters - start"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p2

    .line 31
    check-cast v0, Landroid/os/Bundle;

    .line 32
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "useSmartMode"

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 33
    .local v2, useSmartMode:Z
    const-string v4, "useHDR"

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 35
    .local v1, useHDR:Z
    if-eqz v2, :cond_0

    .line 37
    invoke-direct {p0, p1, v6}, Lcom/lge/camera/command/setting/SetOptionalParameters;->setShotModeSetting(Landroid/hardware/Camera$Parameters;Z)V

    .line 39
    :cond_0
    if-eqz v1, :cond_1

    .line 41
    invoke-direct {p0, p1, v6}, Lcom/lge/camera/command/setting/SetOptionalParameters;->setHDRSetting(Landroid/hardware/Camera$Parameters;Z)V

    .line 44
    :cond_1
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 46
    :cond_2
    invoke-direct {p0, p1, v6}, Lcom/lge/camera/command/setting/SetOptionalParameters;->setBrightnessSetting(Landroid/hardware/Camera$Parameters;Z)V

    .line 49
    :cond_3
    if-eqz v2, :cond_4

    .line 51
    const/4 v4, 0x1

    invoke-direct {p0, p1, v4}, Lcom/lge/camera/command/setting/SetOptionalParameters;->setZoomSetting(Landroid/hardware/Camera$Parameters;Z)V

    .line 54
    :cond_4
    if-nez v1, :cond_5

    if-eqz v2, :cond_6

    .line 56
    :cond_5
    const-string v3, "off"

    .line 57
    .local v3, value:Ljava/lang/String;
    if-eqz v2, :cond_19

    .line 58
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v4

    if-nez v4, :cond_6

    .line 59
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getIAFlashStatus()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 60
    const-string v3, "on"

    .line 64
    :goto_0
    invoke-direct {p0, p1, v3, v6, v6}, Lcom/lge/camera/command/setting/SetOptionalParameters;->setFlashSetting(Landroid/hardware/Camera$Parameters;Ljava/lang/String;ZZ)V

    .line 71
    .end local v3           #value:Ljava/lang/String;
    :cond_6
    :goto_1
    if-nez v1, :cond_7

    if-eqz v2, :cond_8

    .line 73
    :cond_7
    invoke-direct {p0, p1, v6}, Lcom/lge/camera/command/setting/SetOptionalParameters;->setSceneModeSetting(Landroid/hardware/Camera$Parameters;Z)V

    .line 76
    :cond_8
    if-nez v1, :cond_9

    if-eqz v2, :cond_a

    .line 78
    :cond_9
    invoke-direct {p0, p1, v6}, Lcom/lge/camera/command/setting/SetOptionalParameters;->setISOsetting(Landroid/hardware/Camera$Parameters;Z)V

    .line 81
    :cond_a
    if-nez v1, :cond_b

    if-eqz v2, :cond_c

    .line 83
    :cond_b
    invoke-direct {p0, p1, v6}, Lcom/lge/camera/command/setting/SetOptionalParameters;->setWhiteBalanceSetting(Landroid/hardware/Camera$Parameters;Z)V

    .line 86
    :cond_c
    if-nez v1, :cond_d

    if-eqz v2, :cond_e

    .line 88
    :cond_d
    invoke-direct {p0, p1, v6}, Lcom/lge/camera/command/setting/SetOptionalParameters;->setColorEffectSetting(Landroid/hardware/Camera$Parameters;Z)V

    .line 91
    :cond_e
    if-nez v1, :cond_f

    if-eqz v2, :cond_10

    .line 93
    :cond_f
    invoke-direct {p0, p1, v6}, Lcom/lge/camera/command/setting/SetOptionalParameters;->setFocusSetting(Landroid/hardware/Camera$Parameters;Z)V

    .line 96
    :cond_10
    if-nez v1, :cond_11

    if-eqz v2, :cond_12

    .line 97
    :cond_11
    invoke-direct {p0}, Lcom/lge/camera/command/setting/SetOptionalParameters;->setVoiceShutterSetting()V

    .line 100
    :cond_12
    if-nez v1, :cond_13

    if-eqz v2, :cond_14

    .line 101
    :cond_13
    invoke-direct {p0}, Lcom/lge/camera/command/setting/SetOptionalParameters;->setStorageSetting()V

    .line 104
    :cond_14
    if-eqz v2, :cond_15

    .line 105
    invoke-direct {p0}, Lcom/lge/camera/command/setting/SetOptionalParameters;->setTimerSetting()V

    .line 108
    :cond_15
    if-eqz v2, :cond_16

    .line 109
    invoke-direct {p0}, Lcom/lge/camera/command/setting/SetOptionalParameters;->setAutoReviewSetting()V

    .line 112
    :cond_16
    if-eqz v2, :cond_17

    .line 113
    invoke-direct {p0}, Lcom/lge/camera/command/setting/SetOptionalParameters;->setCameraModeSetting()V

    .line 115
    :cond_17
    return-void

    .line 62
    .restart local v3       #value:Ljava/lang/String;
    :cond_18
    const-string v3, "off"

    goto :goto_0

    .line 66
    :cond_19
    if-eqz v1, :cond_6

    .line 67
    invoke-direct {p0, p1, v3, v6, v6}, Lcom/lge/camera/command/setting/SetOptionalParameters;->setFlashSetting(Landroid/hardware/Camera$Parameters;Ljava/lang/String;ZZ)V

    goto :goto_1
.end method
