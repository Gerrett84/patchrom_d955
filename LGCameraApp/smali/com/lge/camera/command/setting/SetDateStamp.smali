.class public Lcom/lge/camera/command/setting/SetDateStamp;
.super Lcom/lge/camera/command/setting/SettingCommand;
.source "SetDateStamp.java"


# instance fields
.field private mDateStampValueOn:Z


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 1
    .parameter "function"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SettingCommand;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/command/setting/SetDateStamp;->mDateStampValueOn:Z

    .line 17
    return-void
.end method


# virtual methods
.method public execute(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetDateStamp;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V

    .line 22
    return-void
.end method

.method public execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
    .locals 6
    .parameter "parameters"
    .parameter "arg"

    .prologue
    const/4 v5, 0x1

    .line 26
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetDateStamp;->checkMediator()Z

    move-result v2

    if-nez v2, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isDateStampSupported()Z

    move-result v2

    if-nez v2, :cond_2

    .line 31
    const-string v2, "CameraApp"

    const-string v3, "SetDateStampMode : model is not supported."

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 35
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_date_stamp"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, value:Ljava/lang/String;
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "## SetDateStampMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_0

    .line 39
    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 40
    iput-boolean v5, p0, Lcom/lge/camera/command/setting/SetDateStamp;->mDateStampValueOn:Z

    .line 44
    :goto_1
    if-eqz p1, :cond_3

    .line 46
    :try_start_0
    const-string v2, "time_stamp"

    invoke-virtual {p1, v2, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_date_stamp"

    invoke-interface {v2, v3, v1}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 42
    :cond_4
    iput-boolean v5, p0, Lcom/lge/camera/command/setting/SetDateStamp;->mDateStampValueOn:Z

    goto :goto_1

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "CameraApp"

    const-string v3, "Time stamp SetParam-RuntimeException : "

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method protected onExecuteAlone()V
    .locals 2

    .prologue
    .line 56
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isDateStampSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    const-string v0, "CameraApp"

    const-string v1, "SetDateStampMode : model is not supported."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :goto_0
    return-void

    .line 61
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "SetDateStampMode - Show Toast Message : SetDateStampMode is = "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-boolean v0, p0, Lcom/lge/camera/command/setting/SetDateStamp;->mDateStampValueOn:Z

    if-eqz v0, :cond_1

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerInitMenu()V

    .line 66
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    goto :goto_0
.end method
