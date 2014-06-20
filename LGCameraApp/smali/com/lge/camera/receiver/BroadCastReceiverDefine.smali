.class public Lcom/lge/camera/receiver/BroadCastReceiverDefine;
.super Ljava/lang/Object;
.source "BroadCastReceiverDefine.java"


# instance fields
.field public mBLEReceiver:Lcom/lge/camera/receiver/BLEReceiver;

.field public mBatteryReceiver:Lcom/lge/camera/receiver/BatteryReceiver;

.field public mCallPopUpReceiver:Lcom/lge/camera/receiver/CallPopUpReceiver;

.field public mCameraDayDreamReceiver:Lcom/lge/camera/receiver/CameraDayDreamReceiver;

.field public mCameraSettingReceiverBySDM:Lcom/lge/camera/receiver/CameraSettingReceiverBySDM;

.field public mCleanViewNaviBarReceiver:Lcom/lge/camera/receiver/CleanViewNaviBarReceiver;

.field public mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

.field public mHdmiReceiver:Lcom/lge/camera/receiver/HdmiReceiver;

.field public mHeadsetReceiver:Lcom/lge/camera/receiver/HeadsetReceiver;

.field public mMediaReceiver:Lcom/lge/camera/receiver/CameraBroadCastReceiver;

.field public mMessageReceiver:Lcom/lge/camera/receiver/MessageReceiver;

.field public mQuickCamCaseReceiver:Lcom/lge/camera/receiver/QuickCamCaseReceiver;

.field public mQuickClipReceiver:Lcom/lge/camera/receiver/QuickClipReceiver;

.field public mScreenOffReceiver:Lcom/lge/camera/receiver/CameraScreenOffReceiver;

.field public mSmartCoverReceiver:Lcom/lge/camera/receiver/SmartCoverReceiver;

.field public mTemperatureReceiver:Lcom/lge/camera/receiver/TemperatureReceiver;

.field public mUmsReceiver:Lcom/lge/camera/receiver/UmsReceiver;

.field public mUsbReceiver:Lcom/lge/camera/receiver/UsbReceiver;

.field public mVoiceMailReceiver:Lcom/lge/camera/receiver/VoiceMailReceiver;


# direct methods
.method public constructor <init>(Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;)V
    .locals 1
    .parameter "function"

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    .line 36
    iput-object p1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    .line 37
    invoke-direct {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->init()V

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;Z)V
    .locals 2
    .parameter "function"
    .parameter "secureCamera"

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    .line 41
    iput-object p1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    .line 42
    invoke-direct {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->init()V

    .line 43
    if-eqz p2, :cond_0

    .line 44
    new-instance v0, Lcom/lge/camera/receiver/CameraScreenOffReceiver;

    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-direct {v0, v1}, Lcom/lge/camera/receiver/CameraScreenOffReceiver;-><init>(Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;)V

    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mScreenOffReceiver:Lcom/lge/camera/receiver/CameraScreenOffReceiver;

    .line 45
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getScreenOffReceiver()Lcom/lge/camera/receiver/CameraScreenOffReceiver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getCameraScreenOffIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 47
    :cond_0
    return-void
.end method

.method private checkAndRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 1
    .parameter "receiver"
    .parameter "intentFilter"

    .prologue
    .line 396
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 397
    iget-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v0}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 399
    :cond_0
    return-void
.end method

.method private checkAndUnRegisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .parameter "receiver"

    .prologue
    .line 402
    if-eqz p1, :cond_0

    .line 403
    iget-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v0}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 405
    :cond_0
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lcom/lge/camera/receiver/MessageReceiver;

    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-direct {v0, v1}, Lcom/lge/camera/receiver/MessageReceiver;-><init>(Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;)V

    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mMessageReceiver:Lcom/lge/camera/receiver/MessageReceiver;

    .line 51
    new-instance v0, Lcom/lge/camera/receiver/BatteryReceiver;

    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-direct {v0, v1}, Lcom/lge/camera/receiver/BatteryReceiver;-><init>(Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;)V

    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mBatteryReceiver:Lcom/lge/camera/receiver/BatteryReceiver;

    .line 52
    new-instance v0, Lcom/lge/camera/receiver/VoiceMailReceiver;

    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-direct {v0, v1}, Lcom/lge/camera/receiver/VoiceMailReceiver;-><init>(Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;)V

    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mVoiceMailReceiver:Lcom/lge/camera/receiver/VoiceMailReceiver;

    .line 53
    new-instance v0, Lcom/lge/camera/receiver/CameraSettingReceiverBySDM;

    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-direct {v0, v1}, Lcom/lge/camera/receiver/CameraSettingReceiverBySDM;-><init>(Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;)V

    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mCameraSettingReceiverBySDM:Lcom/lge/camera/receiver/CameraSettingReceiverBySDM;

    .line 54
    new-instance v0, Lcom/lge/camera/receiver/HdmiReceiver;

    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-direct {v0, v1}, Lcom/lge/camera/receiver/HdmiReceiver;-><init>(Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;)V

    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mHdmiReceiver:Lcom/lge/camera/receiver/HdmiReceiver;

    .line 55
    iget-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-interface {v0}, Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_5

    .line 56
    new-instance v0, Lcom/lge/camera/receiver/CameraMediaBroadcastReceiver;

    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-direct {v0, v1}, Lcom/lge/camera/receiver/CameraMediaBroadcastReceiver;-><init>(Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;)V

    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mMediaReceiver:Lcom/lge/camera/receiver/CameraBroadCastReceiver;

    .line 61
    :goto_0
    new-instance v0, Lcom/lge/camera/receiver/UmsReceiver;

    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-direct {v0, v1}, Lcom/lge/camera/receiver/UmsReceiver;-><init>(Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;)V

    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mUmsReceiver:Lcom/lge/camera/receiver/UmsReceiver;

    .line 62
    new-instance v0, Lcom/lge/camera/receiver/BLEReceiver;

    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-direct {v0, v1}, Lcom/lge/camera/receiver/BLEReceiver;-><init>(Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;)V

    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mBLEReceiver:Lcom/lge/camera/receiver/BLEReceiver;

    .line 63
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->temperatureCheckMethod()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->temperatureCheckMethod()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 65
    :cond_0
    new-instance v0, Lcom/lge/camera/receiver/TemperatureReceiver;

    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-direct {v0, v1}, Lcom/lge/camera/receiver/TemperatureReceiver;-><init>(Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;)V

    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mTemperatureReceiver:Lcom/lge/camera/receiver/TemperatureReceiver;

    .line 67
    :cond_1
    new-instance v0, Lcom/lge/camera/receiver/UsbReceiver;

    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-direct {v0, v1}, Lcom/lge/camera/receiver/UsbReceiver;-><init>(Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;)V

    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mUsbReceiver:Lcom/lge/camera/receiver/UsbReceiver;

    .line 68
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAudiozoom()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    new-instance v0, Lcom/lge/camera/receiver/HeadsetReceiver;

    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-direct {v0, v1}, Lcom/lge/camera/receiver/HeadsetReceiver;-><init>(Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;)V

    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mHeadsetReceiver:Lcom/lge/camera/receiver/HeadsetReceiver;

    .line 72
    :cond_2
    new-instance v0, Lcom/lge/camera/receiver/CallPopUpReceiver;

    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-direct {v0, v1}, Lcom/lge/camera/receiver/CallPopUpReceiver;-><init>(Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;)V

    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mCallPopUpReceiver:Lcom/lge/camera/receiver/CallPopUpReceiver;

    .line 74
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportPhotoStory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    new-instance v0, Lcom/lge/camera/receiver/QuickClipReceiver;

    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-direct {v0, v1}, Lcom/lge/camera/receiver/QuickClipReceiver;-><init>(Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;)V

    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mQuickClipReceiver:Lcom/lge/camera/receiver/QuickClipReceiver;

    .line 78
    :cond_3
    new-instance v0, Lcom/lge/camera/receiver/QuickCamCaseReceiver;

    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-direct {v0, v1}, Lcom/lge/camera/receiver/QuickCamCaseReceiver;-><init>(Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;)V

    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mQuickCamCaseReceiver:Lcom/lge/camera/receiver/QuickCamCaseReceiver;

    .line 79
    new-instance v0, Lcom/lge/camera/receiver/SmartCoverReceiver;

    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-direct {v0, v1}, Lcom/lge/camera/receiver/SmartCoverReceiver;-><init>(Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;)V

    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mSmartCoverReceiver:Lcom/lge/camera/receiver/SmartCoverReceiver;

    .line 81
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportKDDICleanView()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 82
    new-instance v0, Lcom/lge/camera/receiver/CleanViewNaviBarReceiver;

    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-direct {v0, v1}, Lcom/lge/camera/receiver/CleanViewNaviBarReceiver;-><init>(Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;)V

    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mCleanViewNaviBarReceiver:Lcom/lge/camera/receiver/CleanViewNaviBarReceiver;

    .line 85
    :cond_4
    new-instance v0, Lcom/lge/camera/receiver/CameraDayDreamReceiver;

    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-direct {v0, v1}, Lcom/lge/camera/receiver/CameraDayDreamReceiver;-><init>(Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;)V

    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mCameraDayDreamReceiver:Lcom/lge/camera/receiver/CameraDayDreamReceiver;

    .line 86
    return-void

    .line 59
    :cond_5
    new-instance v0, Lcom/lge/camera/receiver/CamcorderMediaBroadcastReceiver;

    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mGet:Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;

    invoke-direct {v0, v1}, Lcom/lge/camera/receiver/CamcorderMediaBroadcastReceiver;-><init>(Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;)V

    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mMediaReceiver:Lcom/lge/camera/receiver/CameraBroadCastReceiver;

    goto/16 :goto_0
.end method


# virtual methods
.method public getBLEReceiver()Lcom/lge/camera/receiver/BLEReceiver;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mBLEReceiver:Lcom/lge/camera/receiver/BLEReceiver;

    return-object v0
.end method

.method public getBLEReceiverIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 227
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.lge.action.BLE_ONEKEY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getBatteryReceiver()Lcom/lge/camera/receiver/BatteryReceiver;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mBatteryReceiver:Lcom/lge/camera/receiver/BatteryReceiver;

    return-object v0
.end method

.method public getBatteryReceiverIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 152
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 153
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportHeat_detection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    :cond_0
    return-object v0
.end method

.method public getCallPopUpReceiver()Lcom/lge/camera/receiver/CallPopUpReceiver;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mCallPopUpReceiver:Lcom/lge/camera/receiver/CallPopUpReceiver;

    return-object v0
.end method

.method public getCallPopUpReceiverIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 269
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.lge.action.CALLALERTING_SHOW"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 270
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.lge.action.CALLALERTING_HIDE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 271
    const-string v1, "com.lge.action.CALLALERTING_ANSWER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 272
    return-object v0
.end method

.method public getCameraBroadCastReceiver()Lcom/lge/camera/receiver/CameraBroadCastReceiver;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mMediaReceiver:Lcom/lge/camera/receiver/CameraBroadCastReceiver;

    return-object v0
.end method

.method public getCameraBroadCastReceiverIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 94
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    const-string v1, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    const-string v1, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 111
    return-object v0
.end method

.method public getCameraDayDreamReceiver()Lcom/lge/camera/receiver/CameraDayDreamReceiver;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mCameraDayDreamReceiver:Lcom/lge/camera/receiver/CameraDayDreamReceiver;

    return-object v0
.end method

.method public getCameraDayDreamReceiverFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 325
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DREAMING_STARTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 326
    .local v0, intentFilter:Landroid/content/IntentFilter;
    return-object v0
.end method

.method public getCameraScreenOffIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 288
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 289
    .local v0, intentFilter:Landroid/content/IntentFilter;
    return-object v0
.end method

.method public getCameraSettingReceiverBySDM()Lcom/lge/camera/receiver/CameraSettingReceiverBySDM;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mCameraSettingReceiverBySDM:Lcom/lge/camera/receiver/CameraSettingReceiverBySDM;

    return-object v0
.end method

.method public getCameraSettingReceiverBySDMIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 191
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.innopath.activecare.CAMERA_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getCleanViewNaviBarReceiver()Lcom/lge/camera/receiver/CleanViewNaviBarReceiver;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mCleanViewNaviBarReceiver:Lcom/lge/camera/receiver/CleanViewNaviBarReceiver;

    return-object v0
.end method

.method public getCleanViewNaviBarReceiverFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 316
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.lge.camera.action.CLEAN_VIEW_RECEIVER"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 317
    .local v0, intentFilter:Landroid/content/IntentFilter;
    return-object v0
.end method

.method public getHdmiReceiver()Lcom/lge/camera/receiver/HdmiReceiver;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mHdmiReceiver:Lcom/lge/camera/receiver/HdmiReceiver;

    return-object v0
.end method

.method public getHdmiReceiverIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 200
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 202
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mHdmiReceiver:Lcom/lge/camera/receiver/HdmiReceiver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "HDMI_CABLE_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mHdmiReceiver:Lcom/lge/camera/receiver/HdmiReceiver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "HDMI_CABLE_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mHdmiReceiver:Lcom/lge/camera/receiver/HdmiReceiver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "android.intent.action.HDMI_AUDIO_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mHdmiReceiver:Lcom/lge/camera/receiver/HdmiReceiver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "android.intent.action.HDMI_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 207
    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mHdmiReceiver:Lcom/lge/camera/receiver/HdmiReceiver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "android.intent.action.DUALDISPLAY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 209
    return-object v0
.end method

.method public getHeadReceiverIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 247
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getHeadsetReceiver()Lcom/lge/camera/receiver/HeadsetReceiver;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mHeadsetReceiver:Lcom/lge/camera/receiver/HeadsetReceiver;

    return-object v0
.end method

.method public getLGMMSMessageReceiverIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 139
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.lge.message.MMS_RECEIVED_ACTION_FOR_LGE_APPL"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getLGSMSMessageReceiverIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 135
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.lge.message.SMS_RECEIVED_ACTION_FOR_LGE_APPL"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getMessageReceiver()Lcom/lge/camera/receiver/MessageReceiver;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mMessageReceiver:Lcom/lge/camera/receiver/MessageReceiver;

    return-object v0
.end method

.method public getMessageReceiverIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 120
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.lge.message.MSG_RECEIVED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getQuickCamCaseReceiver()Lcom/lge/camera/receiver/QuickCamCaseReceiver;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mQuickCamCaseReceiver:Lcom/lge/camera/receiver/QuickCamCaseReceiver;

    return-object v0
.end method

.method public getQuickCamCaseReceiverFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 297
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.lge.camera.action.CAMERA_FINISH"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 298
    .local v0, intentFilter:Landroid/content/IntentFilter;
    return-object v0
.end method

.method public getQuickClipIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 280
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.lge.systemui.qmemo"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getQuickClipReceiver()Lcom/lge/camera/receiver/QuickClipReceiver;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mQuickClipReceiver:Lcom/lge/camera/receiver/QuickClipReceiver;

    return-object v0
.end method

.method public getRecentMessageType()I
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mMessageReceiver:Lcom/lge/camera/receiver/MessageReceiver;

    invoke-virtual {v0}, Lcom/lge/camera/receiver/MessageReceiver;->getRecentMessageType()I

    move-result v0

    return v0
.end method

.method public getSKTMessageReceiverIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 125
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "lge.intent.action.UNREAD_SKT_MESSAGES"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "lge.intent.action.ACTION_UNREAD_SMS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    return-object v0
.end method

.method public getScreenOffReceiver()Lcom/lge/camera/receiver/CameraScreenOffReceiver;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mScreenOffReceiver:Lcom/lge/camera/receiver/CameraScreenOffReceiver;

    return-object v0
.end method

.method public getSmartCoverReceiver()Lcom/lge/camera/receiver/SmartCoverReceiver;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mSmartCoverReceiver:Lcom/lge/camera/receiver/SmartCoverReceiver;

    return-object v0
.end method

.method public getSmartCoverReceiverFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 306
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.lge.android.intent.action.ACCESSORY_EVENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 307
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.lge.camera.action.CAMERA_FINISH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 308
    return-object v0
.end method

.method public getTemperatureReceiver()Lcom/lge/camera/receiver/TemperatureReceiver;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mTemperatureReceiver:Lcom/lge/camera/receiver/TemperatureReceiver;

    return-object v0
.end method

.method public getTemperatureReceiverIntentFilter()Landroid/content/IntentFilter;
    .locals 3

    .prologue
    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, intentFilter:Landroid/content/IntentFilter;
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->temperatureCheckMethod()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->temperatureCheckMethod()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 171
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.lge.intent.action.ACTION_THERMALDAEMON_TEMP"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 173
    .restart local v0       #intentFilter:Landroid/content/IntentFilter;
    :cond_1
    return-object v0
.end method

.method public getUmsReceiver()Lcom/lge/camera/receiver/UmsReceiver;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mUmsReceiver:Lcom/lge/camera/receiver/UmsReceiver;

    return-object v0
.end method

.method public getUmsReceiverFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 218
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.lge.autorun.start_ums"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getUnreadMessageReceiverIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 143
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "lge.intent.action.UNREAD_MESSAGES"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getUplusMessageReceiverIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 132
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.lguplus.umcgp5.im.action.msg.notification"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getUsbReceiver()Lcom/lge/camera/receiver/UsbReceiver;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mUsbReceiver:Lcom/lge/camera/receiver/UsbReceiver;

    return-object v0
.end method

.method public getUsbReceiverIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 237
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 238
    .local v0, intentFilter:Landroid/content/IntentFilter;
    return-object v0
.end method

.method public getVoiceMailReceiver()Lcom/lge/camera/receiver/VoiceMailReceiver;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mVoiceMailReceiver:Lcom/lge/camera/receiver/VoiceMailReceiver;

    return-object v0
.end method

.method public getVoiceMailReceiverIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 182
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.lge.vvm.NEW_VVM_NOTIFICATION_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public registerReceiver()V
    .locals 2

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getCameraBroadCastReceiver()Lcom/lge/camera/receiver/CameraBroadCastReceiver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getCameraBroadCastReceiverIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 333
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getBatteryReceiver()Lcom/lge/camera/receiver/BatteryReceiver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getBatteryReceiverIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 334
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getCameraSettingReceiverBySDM()Lcom/lge/camera/receiver/CameraSettingReceiverBySDM;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getCameraSettingReceiverBySDMIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 335
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getMessageReceiver()Lcom/lge/camera/receiver/MessageReceiver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getMessageReceiverIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 336
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getMessageReceiver()Lcom/lge/camera/receiver/MessageReceiver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getSKTMessageReceiverIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 337
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getMessageReceiver()Lcom/lge/camera/receiver/MessageReceiver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getUplusMessageReceiverIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 338
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getMessageReceiver()Lcom/lge/camera/receiver/MessageReceiver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getLGSMSMessageReceiverIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 339
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getMessageReceiver()Lcom/lge/camera/receiver/MessageReceiver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getLGMMSMessageReceiverIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 340
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getMessageReceiver()Lcom/lge/camera/receiver/MessageReceiver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getUnreadMessageReceiverIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 341
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getVoiceMailReceiver()Lcom/lge/camera/receiver/VoiceMailReceiver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getVoiceMailReceiverIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 342
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getUmsReceiver()Lcom/lge/camera/receiver/UmsReceiver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getUmsReceiverFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 343
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getHdmiReceiver()Lcom/lge/camera/receiver/HdmiReceiver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getHdmiReceiverIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 344
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->temperatureCheckMethod()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->temperatureCheckMethod()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 346
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getTemperatureReceiver()Lcom/lge/camera/receiver/TemperatureReceiver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getTemperatureReceiverIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 348
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getBLEReceiver()Lcom/lge/camera/receiver/BLEReceiver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getBLEReceiverIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 349
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getUsbReceiver()Lcom/lge/camera/receiver/UsbReceiver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getUsbReceiverIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 350
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAudiozoom()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 351
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getHeadsetReceiver()Lcom/lge/camera/receiver/HeadsetReceiver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getHeadReceiverIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 353
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getCallPopUpReceiver()Lcom/lge/camera/receiver/CallPopUpReceiver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getCallPopUpReceiverIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 354
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportPhotoStory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 355
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getQuickClipReceiver()Lcom/lge/camera/receiver/QuickClipReceiver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getQuickClipIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 357
    :cond_3
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getQuickCamCaseReceiver()Lcom/lge/camera/receiver/QuickCamCaseReceiver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getQuickCamCaseReceiverFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 358
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getSmartCoverReceiver()Lcom/lge/camera/receiver/SmartCoverReceiver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getSmartCoverReceiverFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 360
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportKDDICleanView()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 361
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getCleanViewNaviBarReceiver()Lcom/lge/camera/receiver/CleanViewNaviBarReceiver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getCleanViewNaviBarReceiverFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 363
    :cond_4
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getCameraDayDreamReceiver()Lcom/lge/camera/receiver/CameraDayDreamReceiver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getCameraDayDreamReceiverFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 364
    return-void
.end method

.method public unbindReceiver()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 410
    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mMediaReceiver:Lcom/lge/camera/receiver/CameraBroadCastReceiver;

    .line 412
    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mBatteryReceiver:Lcom/lge/camera/receiver/BatteryReceiver;

    .line 413
    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mMessageReceiver:Lcom/lge/camera/receiver/MessageReceiver;

    .line 414
    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mVoiceMailReceiver:Lcom/lge/camera/receiver/VoiceMailReceiver;

    .line 415
    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mCameraSettingReceiverBySDM:Lcom/lge/camera/receiver/CameraSettingReceiverBySDM;

    .line 416
    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mHdmiReceiver:Lcom/lge/camera/receiver/HdmiReceiver;

    .line 417
    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mUmsReceiver:Lcom/lge/camera/receiver/UmsReceiver;

    .line 418
    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mBLEReceiver:Lcom/lge/camera/receiver/BLEReceiver;

    .line 419
    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mUsbReceiver:Lcom/lge/camera/receiver/UsbReceiver;

    .line 420
    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mCallPopUpReceiver:Lcom/lge/camera/receiver/CallPopUpReceiver;

    .line 421
    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mQuickClipReceiver:Lcom/lge/camera/receiver/QuickClipReceiver;

    .line 422
    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mScreenOffReceiver:Lcom/lge/camera/receiver/CameraScreenOffReceiver;

    .line 423
    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mQuickCamCaseReceiver:Lcom/lge/camera/receiver/QuickCamCaseReceiver;

    .line 424
    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mSmartCoverReceiver:Lcom/lge/camera/receiver/SmartCoverReceiver;

    .line 425
    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mCleanViewNaviBarReceiver:Lcom/lge/camera/receiver/CleanViewNaviBarReceiver;

    .line 426
    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mCameraDayDreamReceiver:Lcom/lge/camera/receiver/CameraDayDreamReceiver;

    .line 427
    return-void
.end method

.method public unregisterReceivers()V
    .locals 2

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getCameraBroadCastReceiver()Lcom/lge/camera/receiver/CameraBroadCastReceiver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndUnRegisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 371
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getBatteryReceiver()Lcom/lge/camera/receiver/BatteryReceiver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndUnRegisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 372
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getMessageReceiver()Lcom/lge/camera/receiver/MessageReceiver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndUnRegisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 373
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getVoiceMailReceiver()Lcom/lge/camera/receiver/VoiceMailReceiver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndUnRegisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 374
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getUmsReceiver()Lcom/lge/camera/receiver/UmsReceiver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndUnRegisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 375
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getCameraSettingReceiverBySDM()Lcom/lge/camera/receiver/CameraSettingReceiverBySDM;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndUnRegisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 376
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getHdmiReceiver()Lcom/lge/camera/receiver/HdmiReceiver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndUnRegisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 377
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->temperatureCheckMethod()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->temperatureCheckMethod()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 379
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getTemperatureReceiver()Lcom/lge/camera/receiver/TemperatureReceiver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndUnRegisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 381
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getBLEReceiver()Lcom/lge/camera/receiver/BLEReceiver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndUnRegisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 382
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getUsbReceiver()Lcom/lge/camera/receiver/UsbReceiver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndUnRegisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 383
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getHeadsetReceiver()Lcom/lge/camera/receiver/HeadsetReceiver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndUnRegisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 384
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getCallPopUpReceiver()Lcom/lge/camera/receiver/CallPopUpReceiver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndUnRegisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 385
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportPhotoStory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 386
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getQuickClipReceiver()Lcom/lge/camera/receiver/QuickClipReceiver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndUnRegisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 388
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getScreenOffReceiver()Lcom/lge/camera/receiver/CameraScreenOffReceiver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndUnRegisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 389
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getQuickCamCaseReceiver()Lcom/lge/camera/receiver/QuickCamCaseReceiver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndUnRegisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 390
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getSmartCoverReceiver()Lcom/lge/camera/receiver/SmartCoverReceiver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndUnRegisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 391
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getCleanViewNaviBarReceiver()Lcom/lge/camera/receiver/CleanViewNaviBarReceiver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndUnRegisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 392
    invoke-virtual {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getCameraDayDreamReceiver()Lcom/lge/camera/receiver/CameraDayDreamReceiver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->checkAndUnRegisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 393
    return-void
.end method
