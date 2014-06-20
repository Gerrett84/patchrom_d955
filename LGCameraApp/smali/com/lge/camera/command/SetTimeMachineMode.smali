.class public Lcom/lge/camera/command/SetTimeMachineMode;
.super Lcom/lge/camera/command/Command;
.source "SetTimeMachineMode.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .parameter "function"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 15
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lge/camera/command/SetTimeMachineMode;->execute(Ljava/lang/Object;)V

    .line 20
    return-void
.end method

.method public execute(Ljava/lang/Object;)V
    .locals 6
    .parameter "arg"

    .prologue
    .line 23
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 24
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "subMenuClicked"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 26
    .local v1, subMenuClicked:Z
    invoke-virtual {p0}, Lcom/lge/camera/command/SetTimeMachineMode;->checkMediator()Z

    move-result v3

    if-nez v3, :cond_1

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isTimeMachinShotSupported()Z

    move-result v3

    if-nez v3, :cond_2

    .line 30
    const-string v3, "CameraApp"

    const-string v4, "SetTimeMachineMode : model is not supported."

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 33
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_time_machine"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 34
    .local v2, value:Ljava/lang/String;
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "## SetTimeMachineMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", subMenuClicked = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isAttachMode()Z

    move-result v3

    if-nez v3, :cond_3

    .line 37
    if-eqz v1, :cond_3

    .line 38
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.setting.SetCameraShotMode"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 41
    :cond_3
    if-eqz v1, :cond_0

    .line 42
    invoke-virtual {p0, v2}, Lcom/lge/camera/command/SetTimeMachineMode;->onExecuteAlone(Ljava/lang/String;)V

    .line 43
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method protected onExecuteAlone(Ljava/lang/String;)V
    .locals 6
    .parameter "value"

    .prologue
    .line 48
    const-string v2, "CameraApp"

    const-string v3, "SetTimeMachineMode-onExecuteAlone"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isTimeMachinShotSupported()Z

    move-result v2

    if-nez v2, :cond_0

    .line 64
    :goto_0
    return-void

    .line 52
    :cond_0
    const/4 v1, 0x0

    .line 54
    .local v1, timeMachineTempFileDelete:Z
    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->deleteTimeMachineImages()Z

    move-result v1

    .line 55
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->setTimemachineHasPictures(Z)V

    .line 56
    invoke-static {}, Lcom/lge/camera/controller/BubblePopupController;->get()Lcom/lge/camera/controller/BubblePopupController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/BubblePopupController;->initializeNotiComplete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "timeMachineTempFileDeleted ? = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :goto_1
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerInitMenu()V

    .line 63
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v2, "CameraApp"

    const-string v3, "Exception:"

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "timeMachineTempFileDeleted ? = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "timeMachineTempFileDeleted ? = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method
