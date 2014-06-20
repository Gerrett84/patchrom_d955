.class public Lcom/lge/camera/receiver/SmartCoverReceiver;
.super Lcom/lge/camera/receiver/CameraBroadCastReceiver;
.source "SmartCoverReceiver.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;)V
    .locals 0
    .parameter "bridge"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver;-><init>(Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;)V

    .line 17
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 21
    const-string v3, "CameraApp"

    const-string v4, "QuickWindowCaseReceiver : onReceive()"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0, p2}, Lcom/lge/camera/receiver/SmartCoverReceiver;->checkOnReceive(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 27
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "quick_view_enable"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 29
    .local v2, quickWindowEnabled:I
    if-nez v2, :cond_2

    .line 30
    const-string v3, "CameraApp"

    const-string v4, "Quick Window view setting disable."

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 33
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, action:Ljava/lang/String;
    const-string v3, "com.lge.camera.action.CAMERA_FINISH"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 36
    iget-object v3, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v3}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/CameraActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/lge/camera/util/CheckStatusManager;->getCheckEnterOutSecure()I

    move-result v3

    if-nez v3, :cond_0

    .line 37
    iget-object v3, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v3}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/CameraActivity;->finish()V

    goto :goto_0

    .line 39
    :cond_3
    const-string v3, "com.lge.android.intent.action.ACCESSORY_EVENT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 40
    const-string v3, "com.lge.android.intent.extra.ACCESSORY_STATE"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 41
    .local v1, coverState:I
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "quick window case state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const/4 v3, 0x6

    if-ne v1, v3, :cond_5

    .line 44
    const-string v3, "CameraApp"

    const-string v4, "cover EXTRA_ACCESSORY_STATE_FRONT_OPENED!!"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {v6}, Lcom/lge/camera/util/Common;->setSmartCoverClosed(Z)V

    .line 46
    const-string v3, "com.lge.action.STILL_IMAGE_CAMERA_SMART_COVER"

    iget-object v4, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v4}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Lcom/lge/camera/util/Common;->isQuickWindowCameraExecuted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 49
    :cond_4
    iget-object v3, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    const-string v4, "com.lge.camera.command.StopPreview"

    invoke-interface {v3, v4}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->doCommand(Ljava/lang/String;)V

    .line 50
    iget-object v3, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    const-string v4, "com.lge.camera.command.StartPreview"

    invoke-interface {v3, v4}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->doCommand(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 52
    :cond_5
    const/4 v3, 0x5

    if-ne v1, v3, :cond_0

    .line 53
    const-string v3, "CameraApp"

    const-string v4, "cover EXTRA_ACCESSORY_STATE_FRONT_CLOSED!!"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {v7}, Lcom/lge/camera/util/Common;->setSmartCoverClosed(Z)V

    .line 55
    const-string v3, "com.lge.action.STILL_IMAGE_CAMERA_SMART_COVER"

    iget-object v4, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v4}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v3}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->isPreviewing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 58
    iget-object v3, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v3}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/CameraActivity;->finish()V

    goto/16 :goto_0
.end method
