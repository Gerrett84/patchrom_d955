.class public Lcom/lge/camera/listeners/QuickCamCaseIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "QuickCamCaseIntentReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 31
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 35
    const-string v4, "CameraApp"

    const-string v5, "QuickCamCaseIntentReceiver : onReceive()"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    if-nez p2, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "quick_view_enable"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 50
    .local v3, quickWindowEnabled:I
    if-nez v3, :cond_2

    .line 51
    const-string v4, "CameraApp"

    const-string v5, "Quick Window Case setting disable."

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, action:Ljava/lang/String;
    const-string v4, "com.lge.android.intent.action.ACCESSORY_EVENT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 56
    const-string v4, "com.lge.android.intent.extra.ACCESSORY_STATE"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 58
    .local v1, coverState:I
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QuickCamCaseIntentReceiver : coverState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    .line 64
    if-eq v1, v7, :cond_0

    .line 70
    const/4 v4, 0x5

    if-ne v1, v4, :cond_3

    .line 71
    invoke-static {v7}, Lcom/lge/camera/util/Common;->setQuickCoverClosed(Z)V

    .line 72
    invoke-static {v7}, Lcom/lge/camera/util/Common;->setSmartCoverClosed(Z)V

    .line 73
    invoke-static {}, Lcom/lge/camera/util/Common;->isSecureCamera()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 74
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.lge.camera.action.CAMERA_FINISH"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    .local v2, finishBroadCastIntent:Landroid/content/Intent;
    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 77
    .end local v2           #finishBroadCastIntent:Landroid/content/Intent;
    :cond_3
    const/4 v4, 0x6

    if-ne v1, v4, :cond_0

    .line 78
    invoke-static {v8}, Lcom/lge/camera/util/Common;->setQuickCoverClosed(Z)V

    .line 79
    invoke-static {v8}, Lcom/lge/camera/util/Common;->setSmartCoverClosed(Z)V

    goto :goto_0
.end method
