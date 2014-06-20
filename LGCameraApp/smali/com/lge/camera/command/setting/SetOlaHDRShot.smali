.class public Lcom/lge/camera/command/setting/SetOlaHDRShot;
.super Lcom/lge/camera/command/setting/SettingCommand;
.source "SetOlaHDRShot.java"


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

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetOlaHDRShot;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V

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
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCurrentModule()Lcom/lge/camera/module/Module;

    move-result-object v0

    instance-of v0, v0, Lcom/lge/camera/module/HDRShot;

    if-eqz v0, :cond_0

    .line 29
    :goto_0
    return-void

    .line 25
    :cond_0
    const-string v0, "dual-recorder"

    invoke-virtual {p1, v0, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 26
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "HDRShot"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setModule(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_hdr"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 28
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v3, v1, v3}, Lcom/lge/camera/ControllerFunction;->setTimerAndSceneSmartShutterEnable(Landroid/hardware/Camera$Parameters;ZZZ)V

    goto :goto_0
.end method
