.class public Lcom/lge/camera/command/setting/SetCameraShowCapturedImage;
.super Lcom/lge/camera/command/setting/SettingCommand;
.source "SetCameraShowCapturedImage.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .parameter "function"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SettingCommand;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 15
    return-void
.end method


# virtual methods
.method public execute(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetCameraShowCapturedImage;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V

    .line 20
    return-void
.end method

.method public execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
    .locals 4
    .parameter "parameters"
    .parameter "arg"

    .prologue
    const/4 v3, 0x0

    .line 23
    const-string v1, "CameraApp"

    const-string v2, "SetCameraShowCapturedImage executed"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, shotMode:Ljava/lang/String;
    invoke-static {}, Lcom/lge/camera/util/AppControlUtil;->isGuestMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/camera/util/AppControlUtil;->checkGalleryEnabledOnGuestMode(Landroid/content/ContentResolver;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isAttachIntent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 31
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_auto_review"

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 43
    :goto_0
    return-void

    .line 34
    :cond_2
    const-string v1, "shotmode_clear_shot"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "shotmode_dual_camera"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 36
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_auto_review"

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    goto :goto_0

    .line 39
    :cond_4
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_auto_review"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected onExecuteAlone()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 46
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_auto_review"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->allSettingMenuSelectedChild(Ljava/lang/String;Z)V

    .line 47
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_auto_review"

    invoke-interface {v0, v1, v2, v2}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 48
    return-void
.end method
