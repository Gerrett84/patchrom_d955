.class public final Lcom/lge/camera/properties/MultimediaProperties;
.super Ljava/lang/Object;
.source "MultimediaProperties.java"


# static fields
.field public static final CAMCORDERPROFILE_QUALITY960P:I = 0xe

.field public static DUALREC_DEFAULT_VIDEO_SIZE:Ljava/lang/String; = null

.field public static DUALREC_VIDEO_SIZE_LISTED_ON_MENU:Ljava/lang/String; = null

.field public static final DUAL_MODE_VIDEO_FRAMERATE_RANGE_MAX:I = 0x7530

.field public static final DUAL_MODE_VIDEO_FRAMERATE_RANGE_MIN:I = 0x7530

.field public static final EFFECTS_ENFORCED_SIZE_FOR_UVGA:Ljava/lang/String; = "1280x960"

.field public static final FUNCTION_ELAPSED_TICK_TIMER:I = 0x1

.field public static final FUNCTION_ELAPSED_UI_TIMER:I = 0x0

.field public static final IMAGE_MIME_TYPE:Ljava/lang/String; = "image/jpeg"

.field private static final LIVEEFFECT_RESOLUTION_LIMITS_STARNDARD:[Ljava/lang/String; = null

.field private static final LIVEEFFECT_RESOLUTION_LIMITS_VARIATION_2:[Ljava/lang/String; = null

.field private static final LIVEEFFECT_RESOLUTION_LIMITS_VARIATION_3:[Ljava/lang/String; = null

.field public static final MEDIA_EJECT:Ljava/lang/String; = "eject"

.field public static final MEDIA_RECORDER_ERROR_RESOURCE:I = 0x2

.field public static final MEDIA_RECORDER_INFO_PROGRESS_TIME_DURATION:I = 0x3eb

.field public static final MEDIA_RECORDER_INFO_PROGRESS_TIME_STATUS:I = 0x324

.field public static final MEDIA_RECORDER_INFO_TOTAL_DURATION:I = 0x325

.field public static PIP_MOVE_ALLOWED_ONLY_IN_EDIT_MODE:Z = false

.field public static PIP_SUBWINDOW_INIT_POSITION:I = 0x0

.field public static PIP_SUPPORT_REALTIME_WINDOW_UPDATE:Z = false

.field public static PIP_TOGGLE_ALLOWED_IN_EDIT_MODE:Z = false

.field public static final SAFE_ATTACH_FILE_MIN_SIZE:J = 0x7800L

.field public static SMARTZOOM_DEFAULT_VIDEO_SIZE:Ljava/lang/String; = null

.field public static SMARTZOOM_FOCUS_MODE:I = 0x0

.field public static final SMARTZOOM_PREVIEWSIZE_SET_ON_DEVICE:Ljava/lang/String; = "2104x1184"

.field public static final SMARTZOOM_PREVIEWSIZE_SET_ON_DEVICE_FOR_UVGA:Ljava/lang/String; = "2104x1560"

.field public static SMARTZOOM_VIDEO_SIZE_LISTED_ON_MENU:Ljava/lang/String; = null

.field public static final VALUE_VIDEO_FRAMERATE_FHD_FORNVIDIA:I = 0x5dc0

.field public static final VALUE_VIDEO_FRAMERATE_FORMTK_MIN:I = 0x4e20

.field public static final VALUE_VIDEO_FRAMERATE_MMS_RANGE:I = 0x3a98

.field public static final VALUE_VIDEO_FRAMERATE_NORMAL_RANGE_MAX:I = 0x7530

.field public static final VALUE_VIDEO_FRAMERATE_VARIABLE_RANGE_MIN:I = 0x2710

.field public static final VIDEO_MIME_TYPE:Ljava/lang/String; = "video/mp4"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 227
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "720x480"

    aput-object v1, v0, v2

    const-string v1, "720x480"

    aput-object v1, v0, v3

    sput-object v0, Lcom/lge/camera/properties/MultimediaProperties;->LIVEEFFECT_RESOLUTION_LIMITS_STARNDARD:[Ljava/lang/String;

    .line 235
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "720x480"

    aput-object v1, v0, v2

    const-string v1, "640x480"

    aput-object v1, v0, v3

    sput-object v0, Lcom/lge/camera/properties/MultimediaProperties;->LIVEEFFECT_RESOLUTION_LIMITS_VARIATION_2:[Ljava/lang/String;

    .line 240
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "1280x960"

    aput-object v1, v0, v2

    const-string v1, "1280x960"

    aput-object v1, v0, v3

    sput-object v0, Lcom/lge/camera/properties/MultimediaProperties;->LIVEEFFECT_RESOLUTION_LIMITS_VARIATION_3:[Ljava/lang/String;

    .line 342
    sput-boolean v2, Lcom/lge/camera/properties/MultimediaProperties;->PIP_SUPPORT_REALTIME_WINDOW_UPDATE:Z

    .line 343
    sput v5, Lcom/lge/camera/properties/MultimediaProperties;->PIP_SUBWINDOW_INIT_POSITION:I

    .line 344
    sput-boolean v2, Lcom/lge/camera/properties/MultimediaProperties;->PIP_MOVE_ALLOWED_ONLY_IN_EDIT_MODE:Z

    .line 345
    sput-boolean v3, Lcom/lge/camera/properties/MultimediaProperties;->PIP_TOGGLE_ALLOWED_IN_EDIT_MODE:Z

    .line 401
    const-string v0, "1280x720,720x480"

    sput-object v0, Lcom/lge/camera/properties/MultimediaProperties;->DUALREC_VIDEO_SIZE_LISTED_ON_MENU:Ljava/lang/String;

    .line 402
    const-string v0, "1280x720"

    sput-object v0, Lcom/lge/camera/properties/MultimediaProperties;->DUALREC_DEFAULT_VIDEO_SIZE:Ljava/lang/String;

    .line 541
    const-string v0, "1280x720,720x480"

    sput-object v0, Lcom/lge/camera/properties/MultimediaProperties;->SMARTZOOM_VIDEO_SIZE_LISTED_ON_MENU:Ljava/lang/String;

    .line 542
    const-string v0, "1280x720"

    sput-object v0, Lcom/lge/camera/properties/MultimediaProperties;->SMARTZOOM_DEFAULT_VIDEO_SIZE:Ljava/lang/String;

    .line 543
    sput v5, Lcom/lge/camera/properties/MultimediaProperties;->SMARTZOOM_FOCUS_MODE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBitrate(II)I
    .locals 2
    .parameter "cameraId"
    .parameter "quality"

    .prologue
    .line 488
    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 490
    .local v0, profile:Landroid/media/CamcorderProfile;
    if-eqz v0, :cond_0

    .line 491
    iget v1, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    .line 493
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static final getCameraFrameRateBurstShotModeRangeMin()I
    .locals 1

    .prologue
    .line 208
    const/16 v0, 0x3a98

    return v0
.end method

.method public static final getCameraFrameRateIAModeRangeMin()I
    .locals 1

    .prologue
    .line 204
    const/16 v0, 0x1770

    return v0
.end method

.method public static final getCameraFrameRateNightModeRangeMin()I
    .locals 1

    .prologue
    .line 188
    const/16 v0, 0x1770

    return v0
.end method

.method public static final getCameraFrameRateNormalRangeMax()I
    .locals 1

    .prologue
    .line 184
    const/16 v0, 0x7530

    return v0
.end method

.method public static final getCameraFrameRateNormalRangeMin()I
    .locals 1

    .prologue
    .line 157
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 166
    const/16 v0, 0x2710

    :goto_0
    return v0

    .line 159
    :sswitch_0
    const/16 v0, 0x1770

    goto :goto_0

    .line 161
    :sswitch_1
    const/16 v0, 0x1388

    goto :goto_0

    .line 164
    :sswitch_2
    const/16 v0, 0x1f40

    goto :goto_0

    .line 157
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xd -> :sswitch_2
        0xf -> :sswitch_2
        0x13 -> :sswitch_1
    .end sparse-switch
.end method

.method public static getDualRecordingResolution(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "profileVideoSize"

    .prologue
    .line 353
    move-object v0, p0

    .line 354
    .local v0, retSize:Ljava/lang/String;
    const-string v1, "1920x1080"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 355
    const-string v0, "1920x1088"

    .line 357
    :cond_0
    return-object v0
.end method

.method public static final getFrontCameraFrameRateNightModeRangeMin()I
    .locals 1

    .prologue
    .line 192
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 198
    const/16 v0, 0x1388

    :goto_0
    return v0

    .line 196
    :sswitch_0
    const/16 v0, 0xfa0

    goto :goto_0

    .line 192
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xd -> :sswitch_0
        0xf -> :sswitch_0
    .end sparse-switch
.end method

.method public static final getFrontCameraFrameRateNormalRangeMin()I
    .locals 1

    .prologue
    .line 171
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 179
    const/16 v0, 0x2710

    :goto_0
    return v0

    .line 175
    :sswitch_0
    const/16 v0, 0xfa0

    goto :goto_0

    .line 177
    :sswitch_1
    const/16 v0, 0x1388

    goto :goto_0

    .line 171
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xd -> :sswitch_0
        0xf -> :sswitch_0
        0x13 -> :sswitch_1
    .end sparse-switch
.end method

.method public static getFunctionUITimer()I
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public static getHFRBitrate(II)I
    .locals 6
    .parameter "cameraId"
    .parameter "quality"

    .prologue
    .line 497
    const v4, 0x1c9c380

    .line 498
    .local v4, result:I
    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v3

    .line 499
    .local v3, profile:Landroid/media/CamcorderProfile;
    if-eqz v3, :cond_0

    .line 500
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 502
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    const-string v5, "HFRbitrate"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 503
    .local v1, chap:Ljava/lang/reflect/Field;
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v4

    .line 512
    .end local v0           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #chap:Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    return v4

    .line 504
    .restart local v0       #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 505
    .local v2, e:Ljava/lang/NoSuchFieldException;
    invoke-virtual {v2}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 506
    .end local v2           #e:Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v2

    .line 507
    .local v2, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 508
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v2

    .line 509
    .local v2, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getLiveEffectDiscoPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    .line 338
    const-string v0, "file:///system/media/video/Disco.480p.mp4"

    return-object v0
.end method

.method public static getLiveEffectInSpacePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    .line 324
    const-string v0, "file:///system/media/video/AndroidInSpace.480p.mp4"

    return-object v0
.end method

.method public static getLiveEffectPreviewOnDevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isLDPImodel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    const-string v0, "320x214"

    .line 276
    :goto_0
    return-object v0

    .line 248
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isHVGAmodel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    const-string v0, "480x320"

    goto :goto_0

    .line 250
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isWVGAmodel()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    const-string v0, "720x480"

    goto :goto_0

    .line 252
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isQHDmodel()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 253
    const-string v0, "810x540"

    goto :goto_0

    .line 254
    :cond_3
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isXGAmodel()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 255
    const-string v0, "1024x682"

    goto :goto_0

    .line 256
    :cond_4
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isHDmodel()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 257
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSoftKeyNavigationBarModel()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 258
    const-string v0, "1072x714"

    goto :goto_0

    .line 260
    :cond_5
    const-string v0, "1080x720"

    goto :goto_0

    .line 261
    :cond_6
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isWXGAmodel()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 262
    const-string v0, "1080x720"

    goto :goto_0

    .line 263
    :cond_7
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isUVGAmodel()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 264
    const-string v0, "1280x960"

    goto :goto_0

    .line 265
    :cond_8
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isFHDmodel()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 266
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSoftKeyNavigationBarModel()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 267
    const-string v0, "1608x1072"

    goto :goto_0

    .line 269
    :cond_9
    const-string v0, "1620x1080"

    goto :goto_0

    .line 270
    :cond_a
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isUWXGAmodel()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 271
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSoftKeyNavigationBarModel()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 272
    const-string v0, "1686x1124"

    goto :goto_0

    .line 274
    :cond_b
    const-string v0, "1800x1200"

    goto :goto_0

    .line 276
    :cond_c
    const-string v0, "1620x1080"

    goto :goto_0
.end method

.method public static getLiveEffectSunSetPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    .line 331
    const-string v0, "file:///system/media/video/Sunset.480p.mp4"

    return-object v0
.end method

.method public static getLiveeffectResolutions(I)Ljava/lang/String;
    .locals 2
    .parameter "cam_mode"

    .prologue
    .line 282
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 286
    :cond_0
    sget-object v0, Lcom/lge/camera/properties/MultimediaProperties;->LIVEEFFECT_RESOLUTION_LIMITS_VARIATION_2:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 290
    :goto_0
    return-object v0

    .line 287
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isUVGAmodel()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 288
    sget-object v0, Lcom/lge/camera/properties/MultimediaProperties;->LIVEEFFECT_RESOLUTION_LIMITS_VARIATION_3:[Ljava/lang/String;

    aget-object v0, v0, p0

    goto :goto_0

    .line 290
    :cond_2
    sget-object v0, Lcom/lge/camera/properties/MultimediaProperties;->LIVEEFFECT_RESOLUTION_LIMITS_STARNDARD:[Ljava/lang/String;

    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static getMMSMaxDuration()I
    .locals 1

    .prologue
    .line 139
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 145
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 141
    :sswitch_0
    const v0, 0xea60

    goto :goto_0

    .line 143
    :sswitch_1
    const/16 v0, 0x7530

    goto :goto_0

    .line 139
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public static getMediaRecoderLimitSize()J
    .locals 2

    .prologue
    .line 123
    const-wide v0, 0xffffffffL

    .line 135
    .local v0, limitsize:J
    return-wide v0
.end method

.method public static getMinRecordingTime()I
    .locals 1

    .prologue
    .line 50
    const/16 v0, 0x7d0

    return v0
.end method

.method public static getMmsAudioEncodingType()I
    .locals 2

    .prologue
    .line 107
    const/4 v0, 0x1

    .line 109
    .local v0, encodingType:I
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 116
    const/4 v0, 0x1

    .line 119
    :goto_0
    return v0

    .line 112
    :pswitch_0
    const/4 v0, 0x3

    .line 113
    goto :goto_0

    .line 109
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public static getMmsVideoEncodingType()I
    .locals 2

    .prologue
    .line 90
    const/4 v0, 0x3

    .line 92
    .local v0, encodingType:I
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 100
    const/4 v0, 0x3

    .line 103
    :goto_0
    return v0

    .line 96
    :sswitch_0
    const/4 v0, 0x2

    .line 97
    goto :goto_0

    .line 92
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method public static getProfileQulity(I[I)I
    .locals 5
    .parameter "cameraId"
    .parameter "size"

    .prologue
    const/4 v4, 0x1

    .line 453
    const/4 v1, 0x7

    .line 454
    .local v1, quality:I
    const/4 v0, 0x1

    .line 455
    .local v0, height:I
    if-eqz p1, :cond_0

    .line 456
    aget v2, p1, v4

    const/16 v3, 0x870

    if-ne v2, v3, :cond_1

    .line 457
    invoke-static {p0}, Lcom/lge/camera/properties/MultimediaProperties;->getUHDProfileQuality(I)I

    move-result v1

    .line 484
    :cond_0
    :goto_0
    return v1

    .line 458
    :cond_1
    aget v2, p1, v4

    const/16 v3, 0x438

    if-eq v2, v3, :cond_2

    aget v2, p1, v4

    const/16 v3, 0x440

    if-ne v2, v3, :cond_3

    :cond_2
    const/4 v2, 0x6

    invoke-static {p0, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 461
    const/4 v1, 0x6

    goto :goto_0

    .line 462
    :cond_3
    aget v2, p1, v4

    const/16 v3, 0x3c0

    if-ne v2, v3, :cond_4

    const/16 v2, 0xe

    invoke-static {p0, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 465
    const/16 v1, 0xe

    goto :goto_0

    .line 466
    :cond_4
    aget v2, p1, v4

    const/16 v3, 0x2d0

    if-ne v2, v3, :cond_5

    const/4 v2, 0x5

    invoke-static {p0, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 469
    const/4 v1, 0x5

    goto :goto_0

    .line 470
    :cond_5
    aget v2, p1, v4

    const/16 v3, 0x1e0

    if-ne v2, v3, :cond_6

    const/4 v2, 0x4

    invoke-static {p0, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 473
    const/4 v1, 0x4

    goto :goto_0

    .line 474
    :cond_6
    aget v2, p1, v4

    const/16 v3, 0xf0

    if-ne v2, v3, :cond_7

    const/4 v2, 0x7

    invoke-static {p0, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 477
    const/4 v1, 0x7

    goto :goto_0

    .line 478
    :cond_7
    aget v2, p1, v4

    const/16 v3, 0x90

    if-ne v2, v3, :cond_0

    const/4 v2, 0x2

    invoke-static {p0, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 481
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public static getSmartZoomResolution(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "profileVideoSize"

    .prologue
    .line 518
    move-object v0, p0

    .line 519
    .local v0, retSize:Ljava/lang/String;
    const-string v1, "1920x1080"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 520
    const-string v0, "1920x1088"

    .line 522
    :cond_0
    return-object v0
.end method

.method public static getStartRecordingSoundDelay()I
    .locals 1

    .prologue
    .line 212
    const/16 v0, 0x1f4

    return v0
.end method

.method private static getUHDProfileQuality(I)I
    .locals 6
    .parameter "cameraId"

    .prologue
    .line 431
    const/4 v2, 0x7

    .line 432
    .local v2, defaultValue:I
    const/4 v4, 0x7

    .line 433
    .local v4, result:I
    const-class v0, Landroid/media/CamcorderProfile;

    .line 436
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<Landroid/media/CamcorderProfile;>;"
    :try_start_0
    const-string v5, "QUALITY_4kUHD"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 437
    .local v1, chap:Ljava/lang/reflect/Field;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    .line 438
    invoke-static {p0, v4}, Landroid/media/CamcorderProfile;->hasProfile(II)Z
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v5

    if-nez v5, :cond_0

    .line 439
    const/4 v4, 0x7

    .line 449
    .end local v1           #chap:Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    return v4

    .line 441
    :catch_0
    move-exception v3

    .line 442
    .local v3, e:Ljava/lang/NoSuchFieldException;
    invoke-virtual {v3}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 443
    .end local v3           #e:Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v3

    .line 444
    .local v3, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 445
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v3

    .line 446
    .local v3, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getVideoMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "postfix"

    .prologue
    .line 57
    const/4 v0, 0x0

    .line 59
    .local v0, mimeType:Ljava/lang/String;
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 75
    const-string v1, "ro.build.target_country"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AU"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    const-string v0, "video/3gpp"

    .line 86
    :goto_0
    return-object v0

    .line 71
    :sswitch_0
    const-string v0, "video/3gpp"

    .line 72
    goto :goto_0

    .line 81
    :cond_0
    const-string v0, "video/mp4"

    goto :goto_0

    .line 59
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x1f -> :sswitch_0
    .end sparse-switch
.end method

.method public static isAvailableLiveeffectResolution(Ljava/lang/String;I)Z
    .locals 3
    .parameter "sizeValue"
    .parameter "cam_mode"

    .prologue
    .line 296
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 300
    :cond_0
    sget-object v1, Lcom/lge/camera/properties/MultimediaProperties;->LIVEEFFECT_RESOLUTION_LIMITS_VARIATION_2:[Ljava/lang/String;

    aget-object v0, v1, p1

    .line 308
    .local v0, liveeffectResolutions:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 309
    const/4 v1, 0x1

    .line 311
    :goto_1
    return v1

    .line 301
    .end local v0           #liveeffectResolutions:Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isUVGAmodel()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 302
    sget-object v1, Lcom/lge/camera/properties/MultimediaProperties;->LIVEEFFECT_RESOLUTION_LIMITS_VARIATION_3:[Ljava/lang/String;

    aget-object v0, v1, p1

    .restart local v0       #liveeffectResolutions:Ljava/lang/String;
    goto :goto_0

    .line 305
    .end local v0           #liveeffectResolutions:Ljava/lang/String;
    :cond_2
    sget-object v1, Lcom/lge/camera/properties/MultimediaProperties;->LIVEEFFECT_RESOLUTION_LIMITS_STARNDARD:[Ljava/lang/String;

    aget-object v0, v1, p1

    .restart local v0       #liveeffectResolutions:Ljava/lang/String;
    goto :goto_0

    .line 311
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static isBackupLiveeffectValue()Z
    .locals 1

    .prologue
    .line 315
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    .line 317
    const/4 v0, 0x0

    return v0
.end method

.method public static isDualCameraAndRecordingVersion1_0()Z
    .locals 1

    .prologue
    .line 393
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 397
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 395
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 393
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public static isDualCameraSupported()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 377
    const-string v1, "yes"

    const-string v2, "ro.build.new_function_disabled"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 388
    :goto_0
    return v0

    .line 380
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 386
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 380
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x9 -> :sswitch_0
        0xd -> :sswitch_0
        0xf -> :sswitch_0
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isDualRecordingSupported()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 361
    const-string v1, "yes"

    const-string v2, "ro.build.new_function_disabled"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 372
    :goto_0
    return v0

    .line 364
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 370
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 364
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x9 -> :sswitch_0
        0xd -> :sswitch_0
        0xf -> :sswitch_0
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isHighFramRateVideoSupported()Z
    .locals 1

    .prologue
    .line 551
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 557
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 555
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 551
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xd -> :sswitch_0
        0xf -> :sswitch_0
    .end sparse-switch
.end method

.method public static isLiveEffectSupported()Z
    .locals 1

    .prologue
    .line 216
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 222
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 220
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 216
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x11 -> :sswitch_0
        0x13 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isPauseAndResumeSupported()Z
    .locals 1

    .prologue
    .line 409
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 426
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 424
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 409
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
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
        :pswitch_1
    .end packed-switch
.end method

.method public static isSmartZoomSupported()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 526
    const-string v1, "yes"

    const-string v2, "ro.build.new_function_disabled"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 537
    :goto_0
    return v0

    .line 529
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 535
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 529
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x9 -> :sswitch_0
        0xd -> :sswitch_0
        0xf -> :sswitch_0
        0x12 -> :sswitch_0
    .end sparse-switch
.end method
