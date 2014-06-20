.class public Lcom/lge/camera/command/setting/SetAudiozoom;
.super Lcom/lge/camera/command/setting/SettingCommand;
.source "SetAudiozoom.java"


# instance fields
.field private mIsSubMenuCliecked:Z

.field private newValue:Ljava/lang/String;

.field private showHelp:Z


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 2
    .parameter "function"

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SettingCommand;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 16
    iput-boolean v1, p0, Lcom/lge/camera/command/setting/SetAudiozoom;->mIsSubMenuCliecked:Z

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/command/setting/SetAudiozoom;->newValue:Ljava/lang/String;

    .line 18
    iput-boolean v1, p0, Lcom/lge/camera/command/setting/SetAudiozoom;->showHelp:Z

    .line 21
    return-void
.end method

.method private showHelpPopup()V
    .locals 4

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isRotateDialogVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->onDismissRotateDialog()V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "audiozoom"

    const/16 v2, 0x72

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->showHelpGuidePopup(Ljava/lang/String;IZ)Z

    .line 83
    return-void
.end method


# virtual methods
.method public execute(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 25
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetAudiozoom;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V

    .line 26
    return-void
.end method

.method public execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
    .locals 6
    .parameter "parameters"
    .parameter "arg"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 29
    const-string v1, "CameraApp"

    const-string v2, "SetAudiozoom"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p2

    .line 30
    check-cast v0, Landroid/os/Bundle;

    .line 31
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "subMenuClicked"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lge/camera/command/setting/SetAudiozoom;->mIsSubMenuCliecked:Z

    .line 33
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAudiozoom()Z

    move-result v1

    if-nez v1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    const-string v1, "CameraApp"

    const-string v2, "SetAudiozoom "

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getAudiozoomStart()Z

    move-result v1

    if-nez v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_audiozoom"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/camera/command/setting/SetAudiozoom;->newValue:Ljava/lang/String;

    .line 40
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetAudiozoom;->newValue:Ljava/lang/String;

    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getAudiozoomvalue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 41
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 42
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v1

    if-eq v1, v5, :cond_2

    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 45
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v2, p0, Lcom/lge/camera/command/setting/SetAudiozoom;->newValue:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->setAudiozoomvalue(Ljava/lang/String;)V

    .line 50
    :cond_3
    :goto_1
    const-string v1, "on"

    iget-object v2, p0, Lcom/lge/camera/command/setting/SetAudiozoom;->newValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 51
    iput-boolean v4, p0, Lcom/lge/camera/command/setting/SetAudiozoom;->showHelp:Z

    .line 55
    :cond_4
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getOrientation()I

    move-result v1

    if-eq v1, v4, :cond_5

    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getOrientation()I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 58
    :cond_5
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v3}, Lcom/lge/camera/ControllerFunction;->setForced_audiozoom(Z)V

    goto :goto_0

    .line 48
    :cond_6
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v2, p0, Lcom/lge/camera/command/setting/SetAudiozoom;->newValue:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->setAudiozoomvalue(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onExecuteAlone()V
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAudiozoom()Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    iget-boolean v0, p0, Lcom/lge/camera/command/setting/SetAudiozoom;->mIsSubMenuCliecked:Z

    if-eqz v0, :cond_2

    .line 69
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerInitMenu()V

    .line 70
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    .line 72
    :cond_2
    iget-boolean v0, p0, Lcom/lge/camera/command/setting/SetAudiozoom;->showHelp:Z

    if-eqz v0, :cond_0

    const-string v0, "on"

    iget-object v1, p0, Lcom/lge/camera/command/setting/SetAudiozoom;->newValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/lge/camera/command/setting/SetAudiozoom;->showHelpPopup()V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/command/setting/SetAudiozoom;->showHelp:Z

    goto :goto_0
.end method
