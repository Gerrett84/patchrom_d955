.class public Lcom/lge/camera/receiver/BatteryReceiver;
.super Lcom/lge/camera/receiver/CameraBroadCastReceiver;
.source "BatteryReceiver.java"


# static fields
.field public static final BATTERY_CHARGING_CURRENT_INCOMPATIBLE_CHARGING:I = 0x2

.field public static final BATTERY_CHARGING_CURRENT_NORMAL_CHARGING:I = 0x1

.field public static final BATTERY_CHARGING_CURRENT_USB_DRIVER_UNINSTALLED:I = 0x4

.field public static final BATTERY_EXTRA_CHARGING_CURRENT:Ljava/lang/String; = "charging_current"

.field public static final UNCHARGE_LEVEL:I = 0x2


# instance fields
.field private mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;)V
    .locals 1
    .parameter "bridge"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver;-><init>(Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/receiver/BatteryReceiver;->mToast:Landroid/widget/Toast;

    .line 27
    return-void
.end method

.method private actionBatteryChanged(Landroid/content/Intent;)V
    .locals 16
    .parameter "intent"

    .prologue
    .line 46
    const-string v1, "level"

    const/4 v12, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 47
    .local v8, charged:I
    const-string v1, "scale"

    const/4 v12, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 48
    .local v9, levelMax:I
    const-string v1, "temperature"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 50
    .local v7, battThermal:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1, v7}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->setBatteryTemper(I)V

    .line 55
    const/4 v1, -0x1

    if-eq v8, v1, :cond_3

    const/4 v1, 0x5

    if-gt v8, v1, :cond_3

    .line 56
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/CameraActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/lge/camera/util/CheckStatusManager;->getCheckEnterOutSecure()I

    move-result v1

    if-nez v1, :cond_0

    .line 57
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    const v13, 0x7f0b002f

    invoke-interface {v12, v13}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v12}, Lcom/lge/camera/util/Common;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 58
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/CameraActivity;->finish()V

    .line 89
    :cond_0
    :goto_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1, v8}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->setBatteryVisibility(I)V

    .line 93
    :cond_1
    const/4 v1, -0x1

    if-eq v8, v1, :cond_7

    const/4 v1, -0x1

    if-eq v9, v1, :cond_7

    .line 95
    const/16 v2, 0x15

    .line 96
    .local v2, tempTotalBatteryLevel:I
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/lge/camera/receiver/BatteryReceiver;->calculateBatteryLevel(I)I

    move-result v3

    .line 97
    .local v3, level:I
    const/4 v4, 0x0

    .line 98
    .local v4, pluged:I
    const/4 v5, 0x0

    .line 99
    .local v5, status:I
    const-string v1, "status"

    const/4 v12, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 100
    const-string v1, "plugged"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 103
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v1

    const/4 v12, 0x6

    if-ne v1, v12, :cond_6

    .line 104
    const-string v1, "charging_current"

    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .local v6, currentChargeStatus:I
    move-object/from16 v1, p0

    .line 105
    invoke-direct/range {v1 .. v6}, Lcom/lge/camera/receiver/BatteryReceiver;->setIsCharging(IIIII)I

    move-result v3

    .line 110
    .end local v6           #currentChargeStatus:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getBatteryLevel()I

    move-result v1

    if-eq v1, v3, :cond_2

    .line 111
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1, v3}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->setBatteryLevel(I)V

    .line 112
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v12}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getBatteryLevel()I

    move-result v12

    invoke-interface {v1, v12}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->setBatteryIndicator(I)V

    .line 117
    .end local v2           #tempTotalBatteryLevel:I
    .end local v3           #level:I
    .end local v4           #pluged:I
    .end local v5           #status:I
    :cond_2
    :goto_2
    return-void

    .line 60
    :cond_3
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->temperatureCheckMethod()I

    move-result v1

    const/4 v12, 0x2

    if-ne v1, v12, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getVideoState()I

    move-result v1

    const/4 v12, 0x3

    if-ne v1, v12, :cond_0

    .line 62
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->isDualRecordingActive()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-wide v10, Lcom/lge/camera/util/CheckStatusManager;->TEMPERATURE_ENTERING_DUAL_RECORDING:D

    .line 63
    .local v10, threshold:D
    :goto_3
    const-wide/high16 v12, 0x4024

    mul-double/2addr v10, v12

    .line 65
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->isDualRecordingActive()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 66
    int-to-double v12, v7

    cmpl-double v1, v12, v10

    if-lez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/CameraActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getCurrentRecordingTime()J

    move-result-wide v12

    sget-wide v14, Lcom/lge/camera/util/CheckStatusManager;->TEMPERATURE_GUARANTEE_RECORDING_TIME:J

    cmp-long v1, v12, v14

    if-ltz v1, :cond_0

    .line 68
    const-string v1, "CameraApp"

    const-string v12, "Camera is finishing due to high temperature during recording. It\'s not the error."

    invoke-static {v1, v12}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    const v13, 0x7f0b025c

    invoke-interface {v12, v13}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v1, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 74
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/CameraActivity;->finish()V

    goto/16 :goto_0

    .line 62
    .end local v10           #threshold:D
    :cond_4
    sget-wide v10, Lcom/lge/camera/util/CheckStatusManager;->TEMPERATURE_STANDARD:D

    goto :goto_3

    .line 77
    .restart local v10       #threshold:D
    :cond_5
    int-to-double v12, v7

    cmpl-double v1, v12, v10

    if-lez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/CameraActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    const-string v1, "CameraApp"

    const-string v12, "Camera is finishing due to high temperature during recording. It\'s not the error."

    invoke-static {v1, v12}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    const v13, 0x7f0b025c

    invoke-interface {v12, v13}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v1, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 84
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/CameraActivity;->finish()V

    goto/16 :goto_0

    .line 107
    .end local v10           #threshold:D
    .restart local v2       #tempTotalBatteryLevel:I
    .restart local v3       #level:I
    .restart local v4       #pluged:I
    .restart local v5       #status:I
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/lge/camera/receiver/BatteryReceiver;->setIsCharging(IIII)I

    move-result v3

    goto/16 :goto_1

    .line 115
    .end local v2           #tempTotalBatteryLevel:I
    .end local v3           #level:I
    .end local v4           #pluged:I
    .end local v5           #status:I
    :cond_7
    const-string v1, "CameraApp"

    const-string v12, "Fail to receive battery level!"

    invoke-static {v1, v12}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private actionPowerConnected()V
    .locals 4

    .prologue
    .line 215
    iget-object v1, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getApplicationMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getVideoState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getVideoState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 217
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getPreviewSizeOnDevice()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, RecordingSize:Ljava/lang/String;
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "===>RecordingSize_1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-static {v0}, Lcom/lge/camera/util/Common;->IsHeatingVideoSize(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 220
    iget-object v1, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->startHeatingwarning()V

    .line 223
    .end local v0           #RecordingSize:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private actionPowerDisconnected()V
    .locals 4

    .prologue
    .line 205
    iget-object v1, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getApplicationMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 206
    iget-object v1, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getPreviewSizeOnDevice()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, RecordingSize:Ljava/lang/String;
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "===>RecordingSize_2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-static {v0}, Lcom/lge/camera/util/Common;->IsHeatingVideoSize(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->stopHeatingwarning()V

    .line 212
    .end local v0           #RecordingSize:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private calculateBatteryLevel(I)I
    .locals 7
    .parameter "charged"

    .prologue
    const/16 v6, 0x16

    const/16 v5, 0x15

    const/4 v4, 0x5

    const/16 v3, 0x11

    const/16 v2, 0x10

    .line 226
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    .line 228
    .local v0, currentCarrierCode:I
    if-gez p1, :cond_3

    .line 229
    const/4 p1, 0x0

    .line 233
    :cond_0
    :goto_0
    const/4 v1, 0x6

    if-ne v0, v1, :cond_8

    .line 234
    if-lt p1, v5, :cond_1

    if-le p1, v6, :cond_2

    :cond_1
    if-lt p1, v2, :cond_4

    if-gt p1, v3, :cond_4

    .line 235
    :cond_2
    add-int/lit8 v1, p1, 0x4

    div-int/lit8 v1, v1, 0x5

    .line 249
    :goto_1
    return v1

    .line 230
    :cond_3
    const/16 v1, 0x64

    if-le p1, v1, :cond_0

    .line 231
    const/16 p1, 0x64

    goto :goto_0

    .line 236
    :cond_4
    const/16 v1, 0x8

    if-lt p1, v1, :cond_5

    const/16 v1, 0xa

    if-le p1, v1, :cond_6

    :cond_5
    const/4 v1, 0x3

    if-lt p1, v1, :cond_7

    if-gt p1, v4, :cond_7

    .line 237
    :cond_6
    add-int/lit8 v1, p1, -0x1

    div-int/lit8 v1, v1, 0x5

    goto :goto_1

    .line 239
    :cond_7
    add-int/lit8 v1, p1, 0x2

    div-int/lit8 v1, v1, 0x5

    goto :goto_1

    .line 240
    :cond_8
    if-ne v0, v4, :cond_d

    .line 241
    if-lt p1, v5, :cond_9

    if-le p1, v6, :cond_b

    :cond_9
    if-lt p1, v2, :cond_a

    if-le p1, v3, :cond_b

    :cond_a
    const/16 v1, 0xb

    if-lt p1, v1, :cond_c

    const/16 v1, 0xc

    if-gt p1, v1, :cond_c

    .line 242
    :cond_b
    add-int/lit8 v1, p1, 0x4

    div-int/lit8 v1, v1, 0x5

    goto :goto_1

    .line 244
    :cond_c
    add-int/lit8 v1, p1, 0x2

    div-int/lit8 v1, v1, 0x5

    goto :goto_1

    .line 246
    :cond_d
    if-lt p1, v2, :cond_e

    if-gt p1, v3, :cond_e

    .line 247
    add-int/lit8 v1, p1, 0x4

    div-int/lit8 v1, v1, 0x5

    goto :goto_1

    .line 249
    :cond_e
    add-int/lit8 v1, p1, 0x2

    div-int/lit8 v1, v1, 0x5

    goto :goto_1
.end method

.method private checkLowBattery(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const v3, 0x7f0b002f

    const/4 v5, 0x0

    const/4 v2, -0x1

    .line 163
    const-string v1, "level"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 165
    .local v0, level:I
    if-eq v0, v2, :cond_1

    const/4 v1, 0x5

    if-gt v0, v1, :cond_1

    .line 166
    iget-object v1, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/CameraActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/lge/camera/util/CheckStatusManager;->getCheckEnterOutSecure()I

    move-result v1

    if-nez v1, :cond_1

    .line 167
    const-string v1, "CameraApp"

    const-string v2, "battery level is too low!! go to finish!"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-static {}, Lcom/lge/camera/util/Common;->isSmartCoverClosed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 169
    iget-object v1, p0, Lcom/lge/camera/receiver/BatteryReceiver;->mToast:Landroid/widget/Toast;

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/lge/camera/receiver/BatteryReceiver;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v2, v3}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/camera/receiver/BatteryReceiver;->mToast:Landroid/widget/Toast;

    .line 175
    iget-object v1, p0, Lcom/lge/camera/receiver/BatteryReceiver;->mToast:Landroid/widget/Toast;

    const/16 v2, 0x31

    iget-object v3, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v3}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0019

    invoke-static {v3, v4}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v2, v5, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 179
    iget-object v1, p0, Lcom/lge/camera/receiver/BatteryReceiver;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 185
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/CameraActivity;->finish()V

    .line 188
    :cond_1
    return-void

    .line 181
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v2, v3}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/Common;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private heatWarningByPowerConnection(Ljava/lang/String;)V
    .locals 2
    .parameter "action"

    .prologue
    .line 191
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportHeat_detection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    const-string v0, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->setIsCharging(Z)V

    .line 194
    const-string v0, "CameraApp"

    const-string v1, "===>ACTION_POWER_CONNECTED"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-direct {p0}, Lcom/lge/camera/receiver/BatteryReceiver;->actionPowerConnected()V

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    const-string v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->setIsCharging(Z)V

    .line 198
    const-string v0, "CameraApp"

    const-string v1, "===>ACTION_POWER_DISCONNECTED"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-direct {p0}, Lcom/lge/camera/receiver/BatteryReceiver;->actionPowerDisconnected()V

    goto :goto_0
.end method

.method private setIsCharging(IIII)I
    .locals 3
    .parameter "tempTotalBatteryLevel"
    .parameter "level"
    .parameter "pluged"
    .parameter "status"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 121
    if-ne p4, v2, :cond_1

    .line 122
    add-int/2addr p2, p1

    .line 123
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportHeat_detection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v0, v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->setIsCharging(Z)V

    .line 135
    :cond_0
    :goto_0
    return p2

    .line 126
    :cond_1
    const/4 v0, 0x5

    if-ne p4, v0, :cond_0

    .line 127
    if-eq p3, v1, :cond_2

    if-ne p3, v2, :cond_0

    .line 129
    :cond_2
    add-int/2addr p2, p1

    .line 130
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportHeat_detection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v0, v1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->setIsCharging(Z)V

    goto :goto_0
.end method

.method private setIsCharging(IIIII)I
    .locals 3
    .parameter "tempTotalBatteryLevel"
    .parameter "level"
    .parameter "pluged"
    .parameter "status"
    .parameter "currentChargeStatus"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x2

    .line 142
    if-eq p5, v1, :cond_0

    const/4 v0, 0x4

    if-ne p5, v0, :cond_2

    if-ne p3, v1, :cond_2

    .line 144
    :cond_0
    mul-int/lit8 v0, p1, 0x2

    add-int/2addr p2, v0

    .line 159
    :cond_1
    :goto_0
    return p2

    .line 145
    :cond_2
    if-ne p4, v1, :cond_3

    .line 146
    add-int/2addr p2, p1

    .line 147
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportHeat_detection()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v0, v2}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->setIsCharging(Z)V

    goto :goto_0

    .line 150
    :cond_3
    const/4 v0, 0x5

    if-ne p4, v0, :cond_1

    .line 151
    if-eq p3, v2, :cond_4

    if-ne p3, v1, :cond_1

    .line 153
    :cond_4
    add-int/2addr p2, p1

    .line 154
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportHeat_detection()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v0, v2}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->setIsCharging(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 31
    invoke-virtual {p0, p2}, Lcom/lge/camera/receiver/BatteryReceiver;->checkOnReceive(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    :goto_0
    return-void

    .line 35
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 37
    invoke-direct {p0, p2}, Lcom/lge/camera/receiver/BatteryReceiver;->checkLowBattery(Landroid/content/Intent;)V

    .line 38
    invoke-direct {p0, p2}, Lcom/lge/camera/receiver/BatteryReceiver;->actionBatteryChanged(Landroid/content/Intent;)V

    .line 42
    :cond_1
    :goto_1
    invoke-direct {p0, v0}, Lcom/lge/camera/receiver/BatteryReceiver;->heatWarningByPowerConnection(Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :cond_2
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    invoke-direct {p0, p2}, Lcom/lge/camera/receiver/BatteryReceiver;->checkLowBattery(Landroid/content/Intent;)V

    goto :goto_1
.end method
