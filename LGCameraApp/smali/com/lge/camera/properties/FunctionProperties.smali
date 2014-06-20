.class public final Lcom/lge/camera/properties/FunctionProperties;
.super Ljava/lang/Object;
.source "FunctionProperties.java"


# static fields
.field public static final CONTINUOUS_AUTO_FOCUS_NOT_SUPPORTED:I = 0x2

.field public static final CONTINUOUS_AUTO_FOCUS_WITHOUT_ANIMATION:I = 0x1

.field public static final CONTINUOUS_AUTO_FOCUS_WITH_ANIMATION:I

.field public static isSupportVRPanoramaForSameProjectcode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 549
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/camera/properties/FunctionProperties;->isSupportVRPanoramaForSameProjectcode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beSupportCafCallbackFromSensor()Z
    .locals 1

    .prologue
    .line 91
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 116
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 114
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 91
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
        :pswitch_1
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
    .end packed-switch
.end method

.method public static beSupportMoveCallbackFromSensor()Z
    .locals 1

    .prologue
    .line 121
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 139
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 137
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x5
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
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getCaf(I)I
    .locals 2
    .parameter "appMode"

    .prologue
    const/4 v0, 0x2

    .line 57
    if-nez p0, :cond_0

    .line 58
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 62
    const/4 v0, 0x0

    .line 69
    :goto_0
    :pswitch_0
    return v0

    .line 65
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 69
    const/4 v0, 0x1

    goto :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch

    .line 65
    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method public static getFlashDefaultValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 632
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 636
    const-string v0, "off"

    :goto_0
    return-object v0

    .line 634
    :pswitch_0
    const-string v0, "auto"

    goto :goto_0

    .line 632
    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
    .end packed-switch
.end method

.method public static getFunctionFrontCameraBeautyShot()I
    .locals 1

    .prologue
    .line 144
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    .line 146
    const/4 v0, 0x1

    return v0
.end method

.method public static getVoiceShutterSensitivity()I
    .locals 1

    .prologue
    .line 242
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 255
    const/16 v0, 0x14

    :goto_0
    return v0

    .line 247
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 252
    :sswitch_1
    const/4 v0, 0x5

    goto :goto_0

    .line 242
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x7 -> :sswitch_1
        0x1f -> :sswitch_0
        0x20 -> :sswitch_1
    .end sparse-switch
.end method

.method public static isAutoFocusNullSettingNeededInStartPreview()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 665
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAFonCAF()Z

    move-result v1

    if-nez v1, :cond_0

    .line 676
    :goto_0
    return v0

    .line 669
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 673
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 669
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0xa -> :sswitch_0
        0xe -> :sswitch_0
    .end sparse-switch
.end method

.method public static isAvailableLiveShot()Z
    .locals 1

    .prologue
    .line 299
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 303
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 301
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 299
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
    .end packed-switch
.end method

.method public static isCafAnimationSupported(II)Z
    .locals 3
    .parameter "appMode"
    .parameter "cameraID"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 83
    if-ne p1, v0, :cond_0

    .line 86
    :goto_0
    return v1

    :cond_0
    invoke-static {p0}, Lcom/lge/camera/properties/FunctionProperties;->getCaf(I)I

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static isCafSupported(II)Z
    .locals 4
    .parameter "appMode"
    .parameter "cameraID"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 75
    if-ne p1, v0, :cond_0

    .line 79
    :goto_0
    return v1

    :cond_0
    invoke-static {p0}, Lcom/lge/camera/properties/FunctionProperties;->getCaf(I)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static isClearShotSupported()Z
    .locals 1

    .prologue
    .line 695
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 707
    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 705
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 695
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static isDateStampSupported()Z
    .locals 1

    .prologue
    .line 581
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    .line 583
    const/4 v0, 0x0

    return v0
.end method

.method public static isFreePanoramaSupported()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 551
    const-string v2, "yes"

    const-string v3, "ro.build.new_function_disabled"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 568
    :goto_0
    return v0

    .line 554
    :cond_0
    sget-boolean v2, Lcom/lge/camera/properties/FunctionProperties;->isSupportVRPanoramaForSameProjectcode:Z

    if-eqz v2, :cond_1

    move v0, v1

    .line 555
    goto :goto_0

    .line 557
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 566
    goto :goto_0

    .line 557
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isFrontTouchAESupported()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isJBModel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 49
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 44
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 27
    nop

    :pswitch_data_0
    .packed-switch 0x5
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
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static isFullFrameContinuousShotSupported()Z
    .locals 1

    .prologue
    .line 371
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 381
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 379
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 371
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isHDRRecordingNameUsed()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 534
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 545
    :goto_0
    :sswitch_0
    return v0

    .line 538
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 534
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x9 -> :sswitch_1
        0xd -> :sswitch_1
        0xf -> :sswitch_1
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isHideAudiozoomMenu()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 743
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 744
    .local v0, currentModel:Ljava/lang/String;
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 751
    :cond_0
    :goto_0
    return v1

    .line 746
    :pswitch_0
    const-string v2, "LGL22"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 747
    const/4 v1, 0x1

    goto :goto_0

    .line 744
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public static isNonZSLMode()Z
    .locals 1

    .prologue
    .line 178
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 187
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 185
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 178
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
        0xa -> :sswitch_0
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isNoneFlashModel()Z
    .locals 1

    .prologue
    .line 621
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 626
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 624
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 621
    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isSmartShutterSupported()Z
    .locals 1

    .prologue
    .line 573
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    .line 575
    const/4 v0, 0x0

    return v0
.end method

.method public static isSuperZoomSupported()Z
    .locals 1

    .prologue
    .line 731
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 737
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 735
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 731
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xd -> :sswitch_0
        0xf -> :sswitch_0
    .end sparse-switch
.end method

.method public static isSupportAFonCAF()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 642
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->beSupportMoveCallbackFromSensor()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 643
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 659
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 654
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 643
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isSupportAudiozoom()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 588
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 589
    .local v0, currentModel:Ljava/lang/String;
    const-string v3, "yes"

    const-string v4, "ro.build.new_function_disabled"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 605
    :cond_0
    :goto_0
    return v1

    .line 592
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    move v1, v2

    .line 602
    goto :goto_0

    .line 594
    :sswitch_1
    const-string v3, "LGL22"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 597
    goto :goto_0

    .line 592
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x9 -> :sswitch_1
        0xd -> :sswitch_0
        0xf -> :sswitch_0
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isSupportBurstShot()Z
    .locals 1

    .prologue
    .line 451
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 462
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 460
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 451
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
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

.method public static isSupportCameraCleanGuide()Z
    .locals 1

    .prologue
    .line 492
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 496
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 494
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 492
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public static isSupportCameraHandGuide()Z
    .locals 1

    .prologue
    .line 721
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 725
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 723
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 721
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public static isSupportEmotionalLED()Z
    .locals 1

    .prologue
    .line 786
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 791
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 788
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 786
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method public static isSupportExpandSettings()Z
    .locals 1

    .prologue
    .line 757
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v0

    return v0
.end method

.method public static isSupportGuideFlash()Z
    .locals 1

    .prologue
    .line 610
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 615
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 613
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 610
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isSupportHelpSetting()Z
    .locals 1

    .prologue
    .line 712
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 716
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 714
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 712
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public static isSupportObjectTracking()Z
    .locals 1

    .prologue
    .line 423
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 433
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 431
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 423
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static isSupportPhotoStory()Z
    .locals 1

    .prologue
    .line 467
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportQClipCustomization()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 471
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 487
    :cond_0
    :goto_0
    :pswitch_1
    return v0

    .line 481
    :pswitch_2
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 482
    goto :goto_0

    .line 471
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static isSupportRotateSaveImage()Z
    .locals 1

    .prologue
    .line 501
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 517
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 515
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 501
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static isSupportShutterButtonBurst()Z
    .locals 1

    .prologue
    .line 406
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportSmartMode()Z
    .locals 1

    .prologue
    .line 438
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 446
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 444
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 438
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x9 -> :sswitch_0
        0xd -> :sswitch_0
        0xf -> :sswitch_0
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isSupportVoiceShutterAME()Z
    .locals 2

    .prologue
    .line 288
    const-string v0, "AME"

    const-string v1, "ro.build.target_region"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AME"

    const-string v1, "ro.build.target_country"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    const/4 v0, 0x1

    .line 292
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportVoiceShutterJapanese()Z
    .locals 1

    .prologue
    .line 278
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 284
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 282
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 278
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x7 -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isSupportVolumeHotKey()Z
    .locals 1

    .prologue
    .line 210
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 214
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 212
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public static isSupportZoomOnRecord()Z
    .locals 1

    .prologue
    .line 410
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportedVideoFlashAuto()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 762
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 763
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 768
    const/4 v0, 0x1

    .line 771
    :cond_0
    :pswitch_0
    return v0

    .line 763
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method public static isTimeMachinShotSupported()Z
    .locals 1

    .prologue
    .line 346
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 366
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 364
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 346
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
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isTimeMachineShotSizeAvailable(Ljava/lang/String;)Z
    .locals 1
    .parameter "size"

    .prologue
    .line 395
    const-string v0, "3264x1836"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "3264x2448"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "3200x1920"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 396
    :cond_0
    const/4 v0, 0x0

    .line 398
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isTimeMachineShotSizeLimit()Z
    .locals 1

    .prologue
    .line 387
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    .line 389
    const/4 v0, 0x0

    return v0
.end method

.method public static isTouchAfSupported(I)Z
    .locals 1
    .parameter "appMode"

    .prologue
    .line 16
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 20
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 18
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 16
    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method public static isUPlusBox()Z
    .locals 1

    .prologue
    .line 414
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 418
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 416
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 414
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static isVideoStabilizationSupported()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 321
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 341
    :cond_0
    :goto_0
    :pswitch_1
    return v0

    .line 323
    :pswitch_2
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 321
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isVoiceShutter()Z
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x1

    return v0
.end method

.method public static isWDRSupported()Z
    .locals 1

    .prologue
    .line 522
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 530
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 528
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 522
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isZslSupported()Z
    .locals 1

    .prologue
    .line 151
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 173
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 171
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 151
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
        :pswitch_1
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
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static useCheeseShutterTitle()Z
    .locals 1

    .prologue
    .line 260
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 272
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 269
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 260
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x7 -> :sswitch_0
        0x13 -> :sswitch_0
        0x1f -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public static useFaceDetectionFromHal()Z
    .locals 1

    .prologue
    .line 682
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 690
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 688
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 682
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xd -> :sswitch_0
        0xf -> :sswitch_0
        0x10 -> :sswitch_0
        0x14 -> :sswitch_0
    .end sparse-switch
.end method

.method public static useMediaScanning()Z
    .locals 1

    .prologue
    .line 777
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isJBPlusModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 778
    const/4 v0, 0x0

    .line 780
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static useShutterSoundInLiveShot()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 308
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isAvailableLiveShot()Z

    move-result v1

    if-nez v1, :cond_0

    .line 315
    :goto_0
    return v0

    .line 311
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 313
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 311
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public static useTimeCatchShotTitle()Z
    .locals 1

    .prologue
    .line 402
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isDomesticModel()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static voiceShutterKind()I
    .locals 1

    .prologue
    .line 224
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 237
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 229
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 234
    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 224
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x7 -> :sswitch_1
        0x1f -> :sswitch_0
        0x20 -> :sswitch_1
    .end sparse-switch
.end method
