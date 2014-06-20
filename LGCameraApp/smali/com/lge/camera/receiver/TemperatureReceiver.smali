.class public Lcom/lge/camera/receiver/TemperatureReceiver;
.super Lcom/lge/camera/receiver/CameraBroadCastReceiver;
.source "TemperatureReceiver.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;)V
    .locals 0
    .parameter "bridge"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver;-><init>(Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;)V

    .line 20
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v11, 0xa

    const/4 v7, 0x4

    const/4 v10, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x1

    .line 24
    const/16 v4, 0x12c

    .line 25
    .local v4, toastWaitingTime:I
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->temperatureCheckMethod()I

    move-result v5

    if-ne v5, v8, :cond_5

    iget-object v5, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v5}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getVideoState()I

    move-result v5

    if-eq v5, v9, :cond_0

    iget-object v5, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v5}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getVideoState()I

    move-result v5

    if-ne v5, v7, :cond_5

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.lge.intent.action.ACTION_THERMALDAEMON_TEMP"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 28
    invoke-static {}, Lcom/lge/camera/util/CheckStatusManager;->GetXo_thermal()D

    move-result-wide v2

    .line 29
    .local v2, mTemp:D
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TemperatureReceiver received intent : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const/4 v1, 0x0

    .line 31
    .local v1, flashState:Ljava/lang/String;
    iget-object v5, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v5}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v5}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 32
    iget-object v5, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v5}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    .line 35
    :cond_1
    sget-wide v5, Lcom/lge/camera/util/CheckStatusManager;->TEMPERATURE_STANDARD:D

    cmpg-double v5, v2, v5

    if-gez v5, :cond_4

    .line 36
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isUseFlashTemperature()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v5}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getVideoState()I

    move-result v5

    if-ne v5, v9, :cond_2

    const-string v5, "torch"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-wide v5, Lcom/lge/camera/util/CheckStatusManager;->TEMPERATURE_FLASH_RECORDING_STANDARD:D

    cmpl-double v5, v2, v5

    if-ltz v5, :cond_2

    .line 41
    iget-object v5, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v5}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/CameraActivity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_2

    .line 42
    iget-object v5, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    const-string v6, "key_flash"

    const-string v7, "off"

    invoke-interface {v5, v6, v7}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 43
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 44
    .local v0, bundle:Landroid/os/Bundle;
    const-string v5, "fromQuickButton"

    invoke-virtual {v0, v5, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 45
    iget-object v5, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    const-string v6, "com.lge.camera.command.setting.SetFlashMode"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7, v0}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    iget-object v5, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v5, v11, v10, v8}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->setButtonRemainEnabled(IZZ)V

    .line 50
    iget-object v5, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    const v6, 0x7f0b025e

    invoke-interface {v5, v6}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->toast(I)V

    .line 52
    iget-object v5, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v5, v8}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->setFlashOffByHighTemperature(Z)V

    .line 53
    const-string v5, "CameraApp"

    const-string v6, "flash off by TemperatureReceiver"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_2
    iget-object v5, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v5}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->isFlashOffByHighTemperature()Z

    move-result v5

    if-eqz v5, :cond_3

    sget-wide v5, Lcom/lge/camera/util/CheckStatusManager;->TEMPERATURE_FLASH_RECORDING_STANDARD:D

    cmpg-double v5, v2, v5

    if-gez v5, :cond_3

    .line 59
    iget-object v5, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v5, v11, v8, v8}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->setButtonRemainEnabled(IZZ)V

    .line 61
    iget-object v5, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v5, v10}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->setFlashOffByHighTemperature(Z)V

    .line 103
    .end local v1           #flashState:Ljava/lang/String;
    .end local v2           #mTemp:D
    :cond_3
    :goto_0
    return-void

    .line 65
    .restart local v1       #flashState:Ljava/lang/String;
    .restart local v2       #mTemp:D
    :cond_4
    invoke-static {}, Lcom/lge/camera/util/CheckStatusManager;->getCheckEnterOutSecure()I

    move-result v5

    if-nez v5, :cond_3

    .line 66
    const-string v5, "CameraApp"

    const-string v6, "finsish CameraApp by high Temperature"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v5, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v5}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/CameraActivity;->finish()V

    .line 68
    iget-object v5, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    new-instance v6, Lcom/lge/camera/receiver/TemperatureReceiver$1;

    invoke-direct {v6, p0}, Lcom/lge/camera/receiver/TemperatureReceiver$1;-><init>(Lcom/lge/camera/receiver/TemperatureReceiver;)V

    const-wide/16 v7, 0x12c

    invoke-interface {v5, v6, v7, v8}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->postOnUiThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 82
    .end local v1           #flashState:Ljava/lang/String;
    .end local v2           #mTemp:D
    :cond_5
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->temperatureCheckMethod()I

    move-result v5

    if-ne v5, v9, :cond_3

    iget-object v5, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v5}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getVideoState()I

    move-result v5

    if-eq v5, v9, :cond_6

    iget-object v5, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v5}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getVideoState()I

    move-result v5

    if-ne v5, v7, :cond_3

    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.lge.intent.action.ACTION_THERMALDAEMON_TEMP"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 85
    const-string v5, "CameraApp"

    const-string v6, "finsish CameraApp by high Temperature"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/lge/camera/util/CheckStatusManager;->getCheckEnterOutSecure()I

    move-result v5

    if-nez v5, :cond_3

    .line 87
    iget-object v5, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v5}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/CameraActivity;->finish()V

    .line 88
    iget-object v5, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    new-instance v6, Lcom/lge/camera/receiver/TemperatureReceiver$2;

    invoke-direct {v6, p0}, Lcom/lge/camera/receiver/TemperatureReceiver$2;-><init>(Lcom/lge/camera/receiver/TemperatureReceiver;)V

    const-wide/16 v7, 0x12c

    invoke-interface {v5, v6, v7, v8}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->postOnUiThread(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method
