.class public Lcom/lge/camera/command/setting/SetCameraMode;
.super Lcom/lge/camera/command/setting/SettingCommand;
.source "SetCameraMode.java"


# instance fields
.field mLiveEffect:Z


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 1
    .parameter "function"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SettingCommand;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/command/setting/SetCameraMode;->mLiveEffect:Z

    .line 19
    return-void
.end method


# virtual methods
.method public execute(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 23
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetCameraMode;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V

    .line 24
    return-void
.end method

.method public execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
    .locals 4
    .parameter "parameters"
    .parameter "arg"

    .prologue
    const/4 v3, 0x0

    .line 27
    move-object v1, p2

    check-cast v1, Landroid/os/Bundle;

    .line 28
    .local v1, bundle:Landroid/os/Bundle;
    const-string v2, "allSetting"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 29
    .local v0, allSetting:Z
    const-string v2, "liveeffect_mode"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lge/camera/command/setting/SetCameraMode;->mLiveEffect:Z

    .line 31
    const-string v2, "CameraApp"

    const-string v3, "SetCameraMode-start"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v3, Lcom/lge/camera/command/setting/SetCameraMode$1;

    invoke-direct {v3, p0, v0}, Lcom/lge/camera/command/setting/SetCameraMode$1;-><init>(Lcom/lge/camera/command/setting/SetCameraMode;Z)V

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 89
    return-void
.end method

.method protected onExecuteAlone()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 94
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_swap"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingIndex(Ljava/lang/String;)I

    move-result v0

    .line 95
    .local v0, intValue:I
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->setSubCameraModeRunning(Z)V

    .line 100
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v3}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 101
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.RemoveSettingMenu"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v2, Lcom/lge/camera/command/setting/SetCameraMode$2;

    invoke-direct {v2, p0}, Lcom/lge/camera/command/setting/SetCameraMode$2;-><init>(Lcom/lge/camera/command/setting/SetCameraMode;)V

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 113
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v3}, Lcom/lge/camera/ControllerFunction;->setSubCameraModeRunning(Z)V

    .line 114
    iget-boolean v1, p0, Lcom/lge/camera/command/setting/SetCameraMode;->mLiveEffect:Z

    if-nez v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.SwapCamera"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    goto :goto_0
.end method
