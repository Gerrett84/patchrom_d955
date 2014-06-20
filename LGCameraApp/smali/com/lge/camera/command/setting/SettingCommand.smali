.class public abstract Lcom/lge/camera/command/setting/SettingCommand;
.super Lcom/lge/camera/command/Command;
.source "SettingCommand.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .parameter "function"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 12
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 6

    .prologue
    .line 16
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    .line 18
    .local v0, cameraDevice:Landroid/hardware/Camera;
    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 20
    .local v2, parameters:Landroid/hardware/Camera$Parameters;
    invoke-virtual {p0, v2}, Lcom/lge/camera/command/setting/SettingCommand;->execute(Landroid/hardware/Camera$Parameters;)V

    .line 22
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SettingCommand;->onExecuteAlone()V

    .line 30
    .end local v2           #parameters:Landroid/hardware/Camera$Parameters;
    :goto_1
    return-void

    .line 23
    .restart local v2       #parameters:Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v1

    .line 24
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setParameters failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 28
    .end local v1           #e:Ljava/lang/RuntimeException;
    .end local v2           #parameters:Landroid/hardware/Camera$Parameters;
    :cond_0
    const-string v3, "CameraApp"

    const-string v4, "Camera ref is null. Setting command return."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected execute(Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .parameter "parameters"

    .prologue
    .line 77
    return-void
.end method

.method protected execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
    .locals 0
    .parameter "parameters"
    .parameter "arg2"

    .prologue
    .line 78
    return-void
.end method

.method public execute(Ljava/lang/Object;)V
    .locals 2
    .parameter "arg"

    .prologue
    .line 34
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    .line 35
    check-cast p1, Landroid/hardware/Camera$Parameters;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/lge/camera/command/setting/SettingCommand;->execute(Landroid/hardware/Camera$Parameters;)V

    .line 39
    :goto_0
    return-void

    .line 37
    .restart local p1
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "arg is not Parameter !!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public execute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 43
    if-eqz p1, :cond_0

    instance-of v3, p1, Landroid/hardware/Camera$Parameters;

    if-eqz v3, :cond_0

    .line 44
    check-cast p1, Landroid/hardware/Camera$Parameters;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/lge/camera/command/setting/SettingCommand;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V

    .line 63
    :goto_0
    return-void

    .line 46
    .restart local p1
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    .line 48
    .local v0, cameraDevice:Landroid/hardware/Camera;
    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 50
    .local v2, parameters:Landroid/hardware/Camera$Parameters;
    invoke-virtual {p0, v2, p2}, Lcom/lge/camera/command/setting/SettingCommand;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V

    .line 53
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_1
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SettingCommand;->onExecuteAlone()V

    goto :goto_0

    .line 54
    :catch_0
    move-exception v1

    .line 55
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setParameters failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 60
    .end local v1           #e:Ljava/lang/RuntimeException;
    .end local v2           #parameters:Landroid/hardware/Camera$Parameters;
    :cond_1
    const-string v3, "CameraApp"

    const-string v4, "Camera ref is null. Setting command return."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public executeNoneParameter()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/camera/command/setting/SettingCommand;->execute(Landroid/hardware/Camera$Parameters;)V

    .line 68
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SettingCommand;->onExecuteAlone()V

    .line 69
    return-void
.end method

.method public executeNoneParameter(Ljava/lang/Object;)V
    .locals 1
    .parameter "arg"

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/lge/camera/command/setting/SettingCommand;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V

    .line 74
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SettingCommand;->onExecuteAlone()V

    .line 75
    return-void
.end method

.method protected onExecuteAlone()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method
