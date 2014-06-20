.class public Lcom/lge/camera/command/setting/SetDualCameraShot;
.super Lcom/lge/camera/command/setting/CameraSettingCommand;
.source "SetDualCameraShot.java"


# instance fields
.field private mParameters:Landroid/hardware/Camera$Parameters;


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 1
    .parameter "function"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/CameraSettingCommand;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/command/setting/SetDualCameraShot;->mParameters:Landroid/hardware/Camera$Parameters;

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

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetDualCameraShot;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V

    .line 20
    return-void
.end method

.method public execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
    .locals 4
    .parameter "parameters"
    .parameter "arg"

    .prologue
    const/4 v3, 0x1

    .line 23
    const-string v0, "CameraApp"

    const-string v1, "SetDualCameraShot"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const-string v0, "dual-recorder"

    invoke-virtual {p1, v0, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 25
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetDualCameraShot;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 27
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "DualCameraShot"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setModule(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_dual_camera"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 29
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v1, p0, Lcom/lge/camera/command/setting/SetDualCameraShot;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v3, v3, v2}, Lcom/lge/camera/ControllerFunction;->setTimerAndSceneSmartShutterEnable(Landroid/hardware/Camera$Parameters;ZZZ)V

    .line 31
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v0

    new-instance v1, Lcom/lge/camera/command/setting/SetDualCameraShot$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/command/setting/SetDualCameraShot$1;-><init>(Lcom/lge/camera/command/setting/SetDualCameraShot;)V

    invoke-virtual {v0, v1}, Lcom/lge/camera/util/MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 56
    return-void
.end method
