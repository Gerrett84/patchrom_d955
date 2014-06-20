.class public Lcom/lge/camera/command/setting/SetFreePanoramaShot;
.super Lcom/lge/camera/command/setting/CameraSettingCommand;
.source "SetFreePanoramaShot.java"


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

    iput-object v0, p0, Lcom/lge/camera/command/setting/SetFreePanoramaShot;->mParameters:Landroid/hardware/Camera$Parameters;

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

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetFreePanoramaShot;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V

    .line 20
    return-void
.end method

.method public execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
    .locals 5
    .parameter "parameters"
    .parameter "arg"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    const-string v0, "CameraApp"

    const-string v1, "SetFreePanoramaShot"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v0, "dual-recorder"

    invoke-virtual {p1, v0, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 28
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetFreePanoramaShot;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 30
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "FreePanoramaShot"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setModule(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_free_panorama"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 32
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v1, p0, Lcom/lge/camera/command/setting/SetFreePanoramaShot;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-interface {v0, v1, v4, v4, v3}, Lcom/lge/camera/ControllerFunction;->setTimerAndSceneSmartShutterEnable(Landroid/hardware/Camera$Parameters;ZZZ)V

    .line 44
    return-void
.end method
