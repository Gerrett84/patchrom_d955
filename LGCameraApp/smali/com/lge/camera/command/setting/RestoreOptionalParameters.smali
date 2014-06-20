.class public Lcom/lge/camera/command/setting/RestoreOptionalParameters;
.super Lcom/lge/camera/command/setting/SettingCommand;
.source "RestoreOptionalParameters.java"


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

.method private checkPreferencePresents(Ljava/lang/String;)Z
    .locals 5
    .parameter "key"

    .prologue
    const/4 v2, 0x0

    .line 201
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v1

    .line 202
    .local v1, prefGroup:Lcom/lge/camera/setting/PreferenceGroup;
    if-nez v1, :cond_0

    .line 203
    const-string v3, "CameraApp"

    const-string v4, "prefGroup null error"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :goto_0
    return v2

    .line 206
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p1}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 207
    .local v0, listPref:Lcom/lge/camera/setting/ListPreference;
    if-nez v0, :cond_1

    .line 208
    const-string v3, "CameraApp"

    const-string v4, "listPref null error"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "key"

    .prologue
    .line 222
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->checkPreferencePresents(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 223
    const-string v0, "not found"

    .line 227
    :goto_0
    return-object v0

    .line 225
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, p1}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, stringValue:Ljava/lang/String;
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "string listPref value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private restoreBrightness(Landroid/hardware/Camera$Parameters;Z)V
    .locals 6
    .parameter "parameters"
    .parameter "enable"

    .prologue
    .line 95
    const-string v3, "key_brightness"

    invoke-direct {p0, v3}, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, stringValue:Ljava/lang/String;
    const-string v3, "not found"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    const-string v3, "CameraApp"

    const-string v4, "Need to check string whether it is convertable or not."

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 102
    .local v1, value:I
    invoke-static {v1, p1}, Lcom/lge/camera/util/Common;->scaleParameter(ILandroid/hardware/Camera$Parameters;)I

    move-result v2

    .line 104
    .local v2, valueForParameter:I
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KEY_BRIGHTNESS value to parameter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1, v2}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 107
    const-string v3, "key_brightness"

    invoke-direct {p0, v3, p2}, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->setMenuControlEnable(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private restoreColorEffect(Landroid/hardware/Camera$Parameters;Z)V
    .locals 4
    .parameter "parameters"
    .parameter "enable"

    .prologue
    .line 167
    const-string v1, "key_camera_coloreffect"

    invoke-direct {p0, v1}, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, stringValue:Ljava/lang/String;
    const-string v1, "not found"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    const-string v1, "CameraApp"

    const-string v2, "Need to check string whether it is convertable or not."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :goto_0
    return-void

    .line 173
    :cond_0
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KEY_CAMERA_COLOREFFECT value to parameter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 176
    const-string v1, "key_camera_coloreffect"

    invoke-direct {p0, v1, p2}, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->setMenuControlEnable(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private restoreFlash(Landroid/hardware/Camera$Parameters;Z)V
    .locals 6
    .parameter "parameters"
    .parameter "enable"

    .prologue
    const/4 v5, 0x0

    .line 111
    const-string v2, "key_flash"

    invoke-direct {p0, v2}, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, stringValue:Ljava/lang/String;
    const-string v2, "not found"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    const-string v2, "CameraApp"

    const-string v3, "Need to check string whether it is convertable or not."

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :goto_0
    return-void

    .line 117
    :cond_0
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KEY_FLASH value to parameter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 120
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f090041

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    .line 121
    .local v0, icon:Lcom/lge/camera/components/RotateImageView;
    invoke-virtual {v0, v5}, Lcom/lge/camera/components/RotateImageView;->setVisibility(I)V

    .line 122
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v3, 0x0

    invoke-interface {v2, v5, v3}, Lcom/lge/camera/ControllerFunction;->updateFlashIndicator(ZLjava/lang/String;)V

    .line 123
    const-string v2, "key_flash"

    invoke-direct {p0, v2, p2}, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->setMenuControlEnable(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private restoreFocus(Landroid/hardware/Camera$Parameters;Z)V
    .locals 3
    .parameter "parameters"
    .parameter "enable"

    .prologue
    .line 180
    const-string v1, "key_focus"

    invoke-direct {p0, v1}, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, stringValue:Ljava/lang/String;
    const-string v1, "not found"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    const-string v1, "CameraApp"

    const-string v2, "Need to check string whether it is convertable or not."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->updateFocusIndicator()V

    .line 187
    const-string v1, "key_focus"

    invoke-direct {p0, v1, p2}, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->setMenuControlEnable(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private restoreHDR(Landroid/hardware/Camera$Parameters;Z)V
    .locals 2
    .parameter "parameters"
    .parameter "enable"

    .prologue
    .line 91
    const-string v0, "hdr-mode"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method private restoreISO(Landroid/hardware/Camera$Parameters;Z)V
    .locals 4
    .parameter "parameters"
    .parameter "enable"

    .prologue
    .line 141
    const-string v1, "key_iso"

    invoke-direct {p0, v1}, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, stringValue:Ljava/lang/String;
    const-string v1, "not found"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    const-string v1, "CameraApp"

    const-string v2, "Need to check string whether it is convertable or not."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :goto_0
    return-void

    .line 147
    :cond_0
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KEY_ISO value to parameter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v1, "iso"

    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v1, "key_iso"

    invoke-direct {p0, v1, p2}, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->setMenuControlEnable(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private restoreSceneMode(Landroid/hardware/Camera$Parameters;Z)V
    .locals 4
    .parameter "parameters"
    .parameter "enable"

    .prologue
    .line 127
    const-string v1, "key_scene_mode"

    invoke-direct {p0, v1}, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, stringValue:Ljava/lang/String;
    const-string v1, "not found"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    const-string v1, "CameraApp"

    const-string v2, "Need to check string whether it is convertable or not."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :goto_0
    return-void

    .line 133
    :cond_0
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KEY_SCENE_MODE value to parameter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, p1, v0}, Lcom/lge/camera/ControllerFunction;->setSceneModeForAdvanced(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->updateSceneIndicator(ZLjava/lang/String;)V

    .line 137
    const-string v1, "key_scene_mode"

    invoke-direct {p0, v1, p2}, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->setMenuControlEnable(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private restoreShotMode(Landroid/hardware/Camera$Parameters;Z)V
    .locals 1
    .parameter "parameters"
    .parameter "enable"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isAttachMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    const-string v0, "key_camera_shot_mode"

    invoke-direct {p0, v0, p2}, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->setMenuControlEnable(Ljava/lang/String;Z)V

    .line 86
    const-string v0, "key_time_machine"

    invoke-direct {p0, v0, p2}, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->setMenuControlEnable(Ljava/lang/String;Z)V

    .line 88
    :cond_0
    return-void
.end method

.method private restoreTimerSetting(Landroid/hardware/Camera$Parameters;Z)V
    .locals 3
    .parameter "parameters"
    .parameter "enable"

    .prologue
    .line 191
    const-string v1, "key_camera_timer"

    invoke-direct {p0, v1}, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, stringValue:Ljava/lang/String;
    const-string v1, "not found"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    const-string v1, "CameraApp"

    const-string v2, "Need to check string whether it is convertable or not."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.setting.SetCameraTimer"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private restoreWhiteBalance(Landroid/hardware/Camera$Parameters;Z)V
    .locals 4
    .parameter "parameters"
    .parameter "enable"

    .prologue
    .line 154
    const-string v1, "key_camera_whitebalance"

    invoke-direct {p0, v1}, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, stringValue:Ljava/lang/String;
    const-string v1, "not found"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    const-string v1, "CameraApp"

    const-string v2, "Need to check string whether it is convertable or not."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :goto_0
    return-void

    .line 160
    :cond_0
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KEY_CAMERA_WHITEBALANCE value to parameter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 163
    const-string v1, "key_camera_whitebalance"

    invoke-direct {p0, v1, p2}, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->setMenuControlEnable(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private setMenuControlEnable(Ljava/lang/String;Z)V
    .locals 2
    .parameter "key"
    .parameter "menuEnable"

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->checkPreferencePresents(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    goto :goto_0
.end method


# virtual methods
.method public execute(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 26
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V

    .line 27
    return-void
.end method

.method public execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
    .locals 6
    .parameter "parameters"
    .parameter "arg"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 30
    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 31
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "useSmartMode"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 32
    .local v2, useSmartMode:Z
    const-string v3, "useHDR"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 34
    .local v1, useHDR:Z
    if-eqz v2, :cond_0

    .line 35
    invoke-direct {p0, p1, v4}, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->restoreShotMode(Landroid/hardware/Camera$Parameters;Z)V

    .line 38
    :cond_0
    if-eqz v1, :cond_1

    .line 40
    invoke-direct {p0, p1, v4}, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->restoreHDR(Landroid/hardware/Camera$Parameters;Z)V

    .line 43
    :cond_1
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 45
    :cond_2
    invoke-direct {p0, p1, v4}, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->restoreBrightness(Landroid/hardware/Camera$Parameters;Z)V

    .line 48
    :cond_3
    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    .line 50
    :cond_4
    invoke-direct {p0, p1, v4}, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->restoreFlash(Landroid/hardware/Camera$Parameters;Z)V

    .line 53
    :cond_5
    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    .line 55
    :cond_6
    invoke-direct {p0, p1, v4}, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->restoreSceneMode(Landroid/hardware/Camera$Parameters;Z)V

    .line 58
    :cond_7
    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    .line 60
    :cond_8
    invoke-direct {p0, p1, v4}, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->restoreISO(Landroid/hardware/Camera$Parameters;Z)V

    .line 63
    :cond_9
    if-nez v1, :cond_a

    if-eqz v2, :cond_b

    .line 65
    :cond_a
    invoke-direct {p0, p1, v4}, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->restoreWhiteBalance(Landroid/hardware/Camera$Parameters;Z)V

    .line 68
    :cond_b
    if-nez v1, :cond_c

    if-eqz v2, :cond_d

    .line 70
    :cond_c
    invoke-direct {p0, p1, v4}, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->restoreColorEffect(Landroid/hardware/Camera$Parameters;Z)V

    .line 73
    :cond_d
    if-nez v1, :cond_e

    if-eqz v2, :cond_f

    .line 75
    :cond_e
    invoke-direct {p0, p1, v4}, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->restoreFocus(Landroid/hardware/Camera$Parameters;Z)V

    .line 78
    :cond_f
    if-eqz v2, :cond_10

    .line 79
    invoke-direct {p0, p1, v4}, Lcom/lge/camera/command/setting/RestoreOptionalParameters;->restoreTimerSetting(Landroid/hardware/Camera$Parameters;Z)V

    .line 81
    :cond_10
    return-void
.end method
