.class public final Lcom/lge/camera/properties/ProjectVariables;
.super Ljava/lang/Object;
.source "ProjectVariables.java"


# static fields
.field public static final ACTION_CAMERA_HIGH_TEMP_WARN:Ljava/lang/String; = "com.lge.intent.action.ACTION_THERMALDAEMON_TEMP"

.field public static DCF_DIRECTORY:Ljava/lang/String; = null

.field public static final FUNCTION_FRONT_CAMERA_FACE_BEAUTY_SHOT:I = 0x1

.field public static final FUNCTION_FRONT_CAMERA_NORMAL:I = 0x0

.field public static final INITIAL_UI_DELAY:I = 0x64

#the value of this static final field might be set in the static constructor
.field public static final KEYCODE_QCLIP_HOT_KEY:I = 0x0

.field public static NORMAL_DIRECTORY:Ljava/lang/String; = null

.field public static final QUICK_FUNCTION_COUNT:I = 0x5

.field public static TIMEMACHINE_DIRECTORY:Ljava/lang/String; = null

.field public static bEnterSetting:Z = false

.field public static final keepDuration:J = 0xbb8L

.field public static mCaptureStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/lge/camera/properties/ProjectVariables;->mCaptureStartTime:J

    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/camera/properties/ProjectVariables;->bEnterSetting:Z

    .line 151
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getQClipHotkey()I

    move-result v0

    sput v0, Lcom/lge/camera/properties/ProjectVariables;->KEYCODE_QCLIP_HOT_KEY:I

    .line 156
    const-string v0, "/DCIM/Camera/"

    sput-object v0, Lcom/lge/camera/properties/ProjectVariables;->DCF_DIRECTORY:Ljava/lang/String;

    .line 157
    const-string v0, "/DCIM/Camera/"

    sput-object v0, Lcom/lge/camera/properties/ProjectVariables;->NORMAL_DIRECTORY:Ljava/lang/String;

    .line 158
    const-string v0, "/DCIM/.thumbnails/"

    sput-object v0, Lcom/lge/camera/properties/ProjectVariables;->TIMEMACHINE_DIRECTORY:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beSupportEulaPopup()Z
    .locals 1

    .prologue
    .line 313
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 317
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 315
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 313
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public static displayMessageIndicator()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 57
    :cond_0
    :goto_0
    return v0

    .line 55
    :pswitch_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 53
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public static displayVisualVoiceMailIndicator()Z
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 47
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 45
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public static getContinuousShotTime()I
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 66
    const/16 v0, 0x64

    :goto_0
    return v0

    .line 64
    :pswitch_0
    const/16 v0, 0x12c

    goto :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static getGestureZoomFactor()I
    .locals 1

    .prologue
    .line 308
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isLDPImodel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isHVGAmodel()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getQClipHotkey()I
    .locals 1

    .prologue
    .line 153
    const/16 v0, 0xe1

    return v0
.end method

.method public static getSaveDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getUseDCFRule()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/lge/camera/properties/ProjectVariables;->DCF_DIRECTORY:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/lge/camera/properties/ProjectVariables;->NORMAL_DIRECTORY:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getSettingListHeight()I
    .locals 1

    .prologue
    .line 164
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isXGAmodel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isUVGAmodel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isUWXGAmodel()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x8

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public static getSettingMenuBoarderHeight()I
    .locals 1

    .prologue
    .line 245
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isLDPImodel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isHVGAmodel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    :cond_0
    const/4 v0, 0x0

    .line 250
    :goto_0
    return v0

    .line 247
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isWVGAmodel()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 248
    const/4 v0, 0x2

    goto :goto_0

    .line 250
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public static final getThermFile()Ljava/lang/String;
    .locals 2

    .prologue
    .line 390
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 402
    :cond_0
    const-string v0, "/sys/devices/platform/msm_ssbi.0/pm8921-core/pm8xxx-adc/xo_therm"

    :goto_0
    return-object v0

    .line 397
    :pswitch_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 399
    :cond_1
    const-string v0, "/sys/class/hwmon/hwmon1/device/xo_therm_pu2"

    goto :goto_0

    .line 390
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public static getUseDCFRule()Z
    .locals 1

    .prologue
    .line 234
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 239
    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 237
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 234
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getUseDeviceKeepForChangeMode()Z
    .locals 1

    .prologue
    .line 78
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isQCTChipset()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getUseFmRadioOff()Z
    .locals 1

    .prologue
    .line 84
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 104
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 101
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static hasWrongPreviewWhileChangingFullHD()Z
    .locals 1

    .prologue
    .line 127
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 147
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 144
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static hasWrongPreviewWhilePauseBug()Z
    .locals 1

    .prologue
    .line 118
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isQCTChipset()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isOMAP4Chipset()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isMTKChipset()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCheckUSBConfig()Z
    .locals 1

    .prologue
    .line 467
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    .line 469
    const/4 v0, 0x1

    return v0
.end method

.method public static isDebugNotSupported()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 257
    const/4 v0, 0x0

    .line 258
    .local v0, logServiceEnable:I
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    move v1, v2

    .line 288
    :goto_0
    return v1

    .line 276
    :pswitch_1
    const-string v3, "persist.service.main.enable"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 283
    if-nez v0, :cond_0

    .line 284
    const-string v2, "CameraApp"

    const-string v3, "####### logServiceEnable = 0 : Log service is disable. Please set log service to enable for debug. "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 287
    :cond_0
    const-string v1, "CameraApp"

    const-string v3, "####### logServiceEnable = 1 : Log service is enable. You can debug log messages. "

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 288
    goto :goto_0

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static isDisableCheckModifyParameters()Z
    .locals 1

    .prologue
    .line 221
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isOMAP4Chipset()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isEnterCameraDuringCall()Z
    .locals 1

    .prologue
    .line 425
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    .line 427
    const/4 v0, 0x1

    return v0
.end method

.method public static isHwTuning()Z
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public static isPostviewDeviceOpenModel()Z
    .locals 1

    .prologue
    .line 433
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    .line 435
    const/4 v0, 0x1

    return v0
.end method

.method public static isRemoveOrgFile()Z
    .locals 2

    .prologue
    .line 452
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 453
    const/4 v0, 0x1

    .line 455
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStopPreviewAfterRecordStop()Z
    .locals 1

    .prologue
    .line 110
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportCameraKey()Z
    .locals 1

    .prologue
    .line 293
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportClearView()Z
    .locals 1

    .prologue
    .line 498
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    .line 500
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportHDMI_MHL()Z
    .locals 1

    .prologue
    .line 169
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 188
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 185
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isSupportHardKeyborad()Z
    .locals 1

    .prologue
    .line 300
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    .line 302
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportHeat_detection()Z
    .locals 1

    .prologue
    .line 356
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportKDDICleanView()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 506
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 507
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 514
    :cond_0
    :goto_0
    return v0

    .line 509
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 507
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public static isSupportManualAntibanding()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 193
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 197
    :cond_0
    :goto_0
    return v0

    .line 195
    :pswitch_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 193
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public static isSupportPushContorl()Z
    .locals 1

    .prologue
    .line 323
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 343
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 341
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 323
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static isSupportRecordingModePopUp()Z
    .locals 2

    .prologue
    .line 441
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 442
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    .line 444
    const/4 v0, 0x1

    .line 447
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportedAutoReview()Z
    .locals 1

    .prologue
    .line 488
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 493
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 491
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 488
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method public static isUPlusRMSCall()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 474
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 475
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 483
    :goto_0
    :pswitch_1
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 475
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isUseFlashTemperature()Z
    .locals 2

    .prologue
    .line 407
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 408
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    .line 410
    const/4 v0, 0x1

    .line 413
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static reduceBrightnessCamcorderMode()Z
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x0

    return v0
.end method

.method public static showCapturedImageCountInRemainIndicator()Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public static stopGalleryCacheduringCameraApp()Z
    .locals 1

    .prologue
    .line 226
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    .line 228
    const/4 v0, 0x0

    return v0
.end method

.method public static temperatureCheckMethod()I
    .locals 4

    .prologue
    const/4 v3, 0x7

    const/4 v2, 0x4

    const/4 v0, 0x2

    .line 363
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 385
    :cond_0
    :pswitch_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    .line 365
    :pswitch_1
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 367
    const/4 v0, 0x1

    goto :goto_0

    .line 368
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 379
    :pswitch_2
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v1

    if-eq v1, v2, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v1

    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 363
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static useBackLightControl()Z
    .locals 1

    .prologue
    .line 418
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    .line 420
    const/4 v0, 0x0

    return v0
.end method

.method public static useContinuousSound()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public static useHideQFLWhenSettingMenuDisplay()Z
    .locals 1

    .prologue
    .line 203
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isLDPImodel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isHVGAmodel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isXGAmodel()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static useJpegPictureCallbackError()Z
    .locals 1

    .prologue
    .line 210
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 215
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 213
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 210
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method public static useToggleSwitcher()Z
    .locals 1

    .prologue
    .line 461
    const/4 v0, 0x0

    return v0
.end method

.method public static useTurnOffAnimation()Z
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x1

    return v0
.end method
