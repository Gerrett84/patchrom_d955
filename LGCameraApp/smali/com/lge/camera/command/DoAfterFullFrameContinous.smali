.class public Lcom/lge/camera/command/DoAfterFullFrameContinous;
.super Lcom/lge/camera/command/Command;
.source "DoAfterFullFrameContinous.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .parameter "function"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 10
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 14
    const-string v1, "CameraApp"

    const-string v2, "DoAfterBurstShot!"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v3}, Lcom/lge/camera/ControllerFunction;->setInCaptureProgress(Z)V

    .line 16
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->waitSaveImageThreadDone()V

    .line 18
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v2, Lcom/lge/camera/command/DoAfterFullFrameContinous$1;

    invoke-direct {v2, p0}, Lcom/lge/camera/command/DoAfterFullFrameContinous$1;-><init>(Lcom/lge/camera/command/DoAfterFullFrameContinous;)V

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 27
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v3}, Lcom/lge/camera/ControllerFunction;->checkAutoReviewOff(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 28
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v2, Lcom/lge/camera/command/DoAfterFullFrameContinous$2;

    invoke-direct {v2, p0}, Lcom/lge/camera/command/DoAfterFullFrameContinous$2;-><init>(Lcom/lge/camera/command/DoAfterFullFrameContinous;)V

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 37
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->startPreview(Landroid/hardware/Camera$Parameters;Z)V

    .line 39
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 40
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "from JpegCallback Full Frame Continuous shot"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 41
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.DisplayPreview"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v0, v3, v4}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 62
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v3}, Lcom/lge/camera/ControllerFunction;->setInCaptureProgress(Z)V

    .line 57
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->checkAutoReviewForQuickView()Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.DisplayCameraPostview"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto :goto_0
.end method
