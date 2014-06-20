.class public Lcom/lge/camera/command/setting/SetVideoShowRecordedVideo;
.super Lcom/lge/camera/command/setting/SettingCommand;
.source "SetVideoShowRecordedVideo.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .parameter "function"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SettingCommand;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 14
    return-void
.end method


# virtual methods
.method public execute(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetVideoShowRecordedVideo;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V

    .line 19
    return-void
.end method

.method public execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
    .locals 4
    .parameter "parameters"
    .parameter "arg"

    .prologue
    const/4 v3, 0x0

    .line 22
    const-string v1, "CameraApp"

    const-string v2, "SetVideoShowRecordedVideo executed"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_video_record_mode"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, recordMode:Ljava/lang/String;
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

    .line 29
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_video_auto_review"

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 41
    :goto_0
    return-void

    .line 32
    :cond_2
    const-string v1, "recordmode_dual"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "recordmode_smart_zoom"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 34
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_video_auto_review"

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    goto :goto_0

    .line 37
    :cond_4
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_video_auto_review"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected onExecuteAlone()V
    .locals 3

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetVideoShowRecordedVideo;->checkMediator()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_video_auto_review"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->allSettingMenuSelectedChild(Ljava/lang/String;Z)V

    goto :goto_0
.end method
