.class public Lcom/lge/camera/receiver/QuickClipReceiver;
.super Lcom/lge/camera/receiver/CameraBroadCastReceiver;
.source "QuickClipReceiver.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;)V
    .locals 0
    .parameter "bridge"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver;-><init>(Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;)V

    .line 15
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 19
    const-string v1, "CameraApp"

    const-string v2, "QUICK_CLIP_RECEIVER"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportPhotoStory()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->isPausing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->checkCameraShutterSoundLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23
    const-string v1, "CameraApp"

    const-string v2, "QUICK_CLIP_RECEIVER - QUICK_CLIP_START"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 25
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "fromReceiver"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 26
    iget-object v1, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    const-string v2, "com.lge.camera.command.QuickClipStart"

    invoke-interface {v1, v2, v0}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    return-void
.end method
