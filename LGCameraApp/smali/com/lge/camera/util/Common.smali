.class public Lcom/lge/camera/util/Common;
.super Ljava/lang/Object;
.source "Common.java"


# static fields
.field public static APP_CAMCORDER_INSTANCE_COUNT:I = 0x0

.field public static APP_CAMERA_INSTANCE_COUNT:I = 0x0

.field public static APP_CAMLOADING_INSTANCE_COUNT:I = 0x0

.field public static APP_POSTVIEW_INSTANCE_COUNT:I = 0x0

.field public static APP_SHOTMODE_POSTVIEW_INSTANCE_COUNT:I = 0x0

.field public static IS_ENTER_CONDITION:Z = false

.field public static final KEYCODE_TESTMODE_CAMCORDER_CAMCORDER_MODE_OFF:I = 0x86

.field public static final KEYCODE_TESTMODE_CAMCORDER_ERASE_MOVING_FILE:I = 0x85

.field public static final KEYCODE_TESTMODE_CAMCORDER_MODE_ON:I = 0x81

.field public static final KEYCODE_TESTMODE_CAMCORDER_PLAY_MOVING_FILE:I = 0x84

.field public static final KEYCODE_TESTMODE_CAMCORDER_RECORD_STOP_AND_SAVE:I = 0x83

.field public static final KEYCODE_TESTMODE_CAMCORDER_SHOT_RECORD_START:I = 0x82

.field public static final NO_BUTTON_POPUP_DISMISS_DELAY:I = 0x7d0

.field private static backupTransitionScale:F

.field private static backupWidowScale:F

.field public static duration:J

.field public static endTime:J

.field public static interim_duration:J

.field public static interim_endTime:J

.field public static interim_startTime:J

.field public static isChangeAnimationScale:Z

.field private static mIsQuickCoverClosed:Z

.field private static mSecureCamera:Z

.field public static mStartTime:J

.field private static mWindowManager:Landroid/view/IWindowManager;

.field private static sIsQuickWindowCameraExcuted:Z

.field private static sIsSmartCoverClosed:Z

.field public static startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 68
    sput v1, Lcom/lge/camera/util/Common;->APP_CAMLOADING_INSTANCE_COUNT:I

    .line 69
    sput v1, Lcom/lge/camera/util/Common;->APP_CAMERA_INSTANCE_COUNT:I

    .line 70
    sput v1, Lcom/lge/camera/util/Common;->APP_CAMCORDER_INSTANCE_COUNT:I

    .line 71
    sput v1, Lcom/lge/camera/util/Common;->APP_POSTVIEW_INSTANCE_COUNT:I

    .line 72
    sput v1, Lcom/lge/camera/util/Common;->APP_SHOTMODE_POSTVIEW_INSTANCE_COUNT:I

    .line 77
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lge/camera/util/Common;->IS_ENTER_CONDITION:Z

    .line 502
    sput-wide v2, Lcom/lge/camera/util/Common;->startTime:J

    .line 503
    sput-wide v2, Lcom/lge/camera/util/Common;->endTime:J

    .line 504
    sput-wide v2, Lcom/lge/camera/util/Common;->duration:J

    .line 521
    sput-wide v2, Lcom/lge/camera/util/Common;->interim_startTime:J

    .line 522
    sput-wide v2, Lcom/lge/camera/util/Common;->interim_endTime:J

    .line 523
    sput-wide v2, Lcom/lge/camera/util/Common;->interim_duration:J

    .line 554
    sput-boolean v1, Lcom/lge/camera/util/Common;->mSecureCamera:Z

    .line 581
    sput-boolean v1, Lcom/lge/camera/util/Common;->sIsQuickWindowCameraExcuted:Z

    .line 582
    sput-boolean v1, Lcom/lge/camera/util/Common;->mIsQuickCoverClosed:Z

    .line 598
    sput-boolean v1, Lcom/lge/camera/util/Common;->sIsSmartCoverClosed:Z

    .line 606
    sput-boolean v1, Lcom/lge/camera/util/Common;->isChangeAnimationScale:Z

    .line 889
    sput-wide v2, Lcom/lge/camera/util/Common;->mStartTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IsHeatingVideoSize(Ljava/lang/String;)Z
    .locals 5
    .parameter "recordingSize"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 643
    if-nez p0, :cond_1

    .line 644
    const-string v2, "CameraApp"

    const-string v3, "===>RecordingSize is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :cond_0
    :goto_0
    return v1

    .line 647
    :cond_1
    invoke-static {p0}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v0

    .line 649
    .local v0, size:[I
    aget v3, v0, v1

    const/16 v4, 0x500

    if-lt v3, v4, :cond_0

    aget v3, v0, v2

    const/16 v4, 0x2d0

    if-lt v3, v4, :cond_0

    move v1, v2

    .line 650
    goto :goto_0
.end method

.method public static backlightControl(Landroid/app/Activity;)V
    .locals 9
    .parameter "activity"

    .prologue
    .line 691
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useBackLightControl()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 693
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "screen_brightness_mode"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 695
    .local v0, curBrightnessMode:I
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "screen_brightness"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 697
    .local v1, curBrightnessValue:I
    int-to-float v6, v1

    const/high16 v7, 0x437f

    div-float v2, v6, v7

    .line 698
    .local v2, curValue:F
    const v5, 0x3f4ccccd

    .line 699
    .local v5, ratio:F
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 701
    .local v4, params:Landroid/view/WindowManager$LayoutParams;
    if-nez v0, :cond_1

    .line 702
    mul-float v6, v2, v5

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 706
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 707
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Success to backlight control:curMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "curBright (30~255) = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "val = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ratio = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "set = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    mul-float v8, v2, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    .end local v0           #curBrightnessMode:I
    .end local v1           #curBrightnessValue:I
    .end local v2           #curValue:F
    .end local v4           #params:Landroid/view/WindowManager$LayoutParams;
    .end local v5           #ratio:F
    :cond_0
    :goto_1
    return-void

    .line 704
    .restart local v0       #curBrightnessMode:I
    .restart local v1       #curBrightnessValue:I
    .restart local v2       #curValue:F
    .restart local v4       #params:Landroid/view/WindowManager$LayoutParams;
    .restart local v5       #ratio:F
    :cond_1
    const/high16 v6, -0x4080

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 711
    .end local v0           #curBrightnessMode:I
    .end local v1           #curBrightnessValue:I
    .end local v2           #curValue:F
    .end local v4           #params:Landroid/view/WindowManager$LayoutParams;
    .end local v5           #ratio:F
    :catch_0
    move-exception v3

    .line 712
    .local v3, e:Ljava/lang/Exception;
    const-string v6, "CameraApp"

    const-string v7, "Fail to backlight control:"

    invoke-static {v6, v7, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 714
    .end local v3           #e:Ljava/lang/Exception;
    :cond_2
    invoke-static {}, Lcom/lge/camera/util/CheckStatusManager;->useBackLightControlInRecording()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 716
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 717
    .restart local v4       #params:Landroid/view/WindowManager$LayoutParams;
    const/high16 v6, -0x4080

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 718
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 719
    const-string v6, "CameraApp"

    const-string v7, "Success to backlight control: system setting  "

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 720
    .end local v4           #params:Landroid/view/WindowManager$LayoutParams;
    :catch_1
    move-exception v3

    .line 721
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v6, "CameraApp"

    const-string v7, "Fail to backlight control:"

    invoke-static {v6, v7, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static backlightControlByVal(Landroid/app/Activity;F)V
    .locals 9
    .parameter "activity"
    .parameter "scale"

    .prologue
    .line 728
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "screen_brightness_mode"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 730
    .local v0, curBrightnessMode:I
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "screen_brightness"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 732
    .local v1, curBrightnessValue:I
    int-to-float v6, v1

    const/high16 v7, 0x437f

    div-float v2, v6, v7

    .line 733
    .local v2, curValue:F
    move v5, p1

    .line 734
    .local v5, ratio:F
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 736
    .local v4, params:Landroid/view/WindowManager$LayoutParams;
    if-nez v0, :cond_0

    .line 737
    mul-float v6, v2, v5

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 741
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 742
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Success to backlight control ByVal:curMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "curBright (30~255) = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "val = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ratio = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "set = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    mul-float v8, v2, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    .end local v0           #curBrightnessMode:I
    .end local v1           #curBrightnessValue:I
    .end local v2           #curValue:F
    .end local v4           #params:Landroid/view/WindowManager$LayoutParams;
    .end local v5           #ratio:F
    :goto_1
    return-void

    .line 739
    .restart local v0       #curBrightnessMode:I
    .restart local v1       #curBrightnessValue:I
    .restart local v2       #curValue:F
    .restart local v4       #params:Landroid/view/WindowManager$LayoutParams;
    .restart local v5       #ratio:F
    :cond_0
    const/high16 v6, -0x4080

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 746
    .end local v0           #curBrightnessMode:I
    .end local v1           #curBrightnessValue:I
    .end local v2           #curValue:F
    .end local v4           #params:Landroid/view/WindowManager$LayoutParams;
    .end local v5           #ratio:F
    :catch_0
    move-exception v3

    .line 747
    .local v3, e:Ljava/lang/Exception;
    const-string v6, "CameraApp"

    const-string v7, "Fail to backlight control:"

    invoke-static {v6, v7, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static breakTextToMultiLine(Landroid/graphics/Paint;Ljava/lang/String;I)Ljava/lang/String;
    .locals 10
    .parameter "textPaint"
    .parameter "message"
    .parameter "maxWidth"

    .prologue
    const/16 v9, 0x20

    const/4 v8, 0x0

    .line 846
    if-eqz p1, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 847
    :cond_0
    const-string p1, ""

    .line 886
    .end local p1
    :cond_1
    :goto_0
    return-object p1

    .line 849
    .restart local p1
    :cond_2
    if-eqz p2, :cond_1

    .line 852
    if-eqz p0, :cond_1

    .line 856
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 857
    .local v3, messageBuffer:Ljava/lang/StringBuffer;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 859
    .local v2, breakStringBuffer:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 860
    .local v1, breakString:Ljava/lang/String;
    const/4 v4, 0x0

    .line 862
    .local v4, remainString:Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-lez v5, :cond_6

    .line 864
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-lez v5, :cond_4

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_4

    .line 865
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 867
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 869
    const/4 v5, 0x1

    int-to-float v6, p2

    const/4 v7, 0x0

    invoke-virtual {p0, v4, v5, v6, v7}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v0

    .line 870
    .local v0, breakCount:I
    invoke-virtual {v4, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 872
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_5

    .line 873
    invoke-virtual {v1, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 874
    if-gez v0, :cond_5

    .line 875
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 878
    :cond_5
    invoke-virtual {v4, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 879
    invoke-virtual {v3, v8, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 881
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 882
    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 886
    .end local v0           #breakCount:I
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static checkEnteringTime(Z)V
    .locals 6
    .parameter "end"

    .prologue
    const-wide/16 v4, 0x0

    .line 507
    if-eqz p0, :cond_1

    .line 508
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/lge/camera/util/Common;->endTime:J

    .line 509
    sget-wide v0, Lcom/lge/camera/util/Common;->endTime:J

    sget-wide v2, Lcom/lge/camera/util/Common;->startTime:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/lge/camera/util/Common;->duration:J

    .line 510
    sget-wide v0, Lcom/lge/camera/util/Common;->startTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 511
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entering time is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/lge/camera/util/Common;->duration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_0
    sput-wide v4, Lcom/lge/camera/util/Common;->startTime:J

    .line 514
    sput-wide v4, Lcom/lge/camera/util/Common;->endTime:J

    .line 519
    :goto_0
    return-void

    .line 517
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/lge/camera/util/Common;->startTime:J

    goto :goto_0
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 4
    .parameter "c"

    .prologue
    .line 384
    if-nez p0, :cond_0

    .line 393
    :goto_0
    return-void

    .line 388
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    const/4 p0, 0x0

    goto :goto_0

    .line 390
    :catch_0
    move-exception v0

    .line 391
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeSilently : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static configureWindowFlag(Landroid/view/Window;ZZ)V
    .locals 4
    .parameter "window"
    .parameter "fullScreen"
    .parameter "secureCamera"

    .prologue
    const/high16 v3, 0x48

    .line 565
    if-nez p0, :cond_0

    .line 579
    :goto_0
    return-void

    .line 568
    :cond_0
    if-eqz p1, :cond_1

    .line 569
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    .line 571
    :cond_1
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "quickCamCase = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    if-eqz p2, :cond_2

    .line 573
    invoke-virtual {p0, v3}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 576
    :cond_2
    invoke-virtual {p0, v3}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter "strSrc"
    .parameter "strDest"

    .prologue
    .line 193
    const/4 v8, 0x1

    .line 194
    .local v8, ret:Z
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    .local v7, oldFile:Ljava/io/File;
    const/16 v9, 0x400

    new-array v0, v9, [B

    .line 196
    .local v0, data:[B
    const/4 v4, 0x0

    .line 197
    .local v4, fos:Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 199
    .local v2, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    .local v6, fp:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 202
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 203
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .local v5, fos:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 205
    .end local v2           #fis:Ljava/io/FileInputStream;
    .local v3, fis:Ljava/io/FileInputStream;
    :goto_0
    :try_start_2
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    .line 207
    invoke-virtual {v5, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 213
    :catch_0
    move-exception v1

    .line 214
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 215
    const/4 v8, 0x0

    move-object v2, v3

    .line 219
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :goto_1
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 220
    const/4 v4, 0x0

    .line 233
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :goto_2
    invoke-static {v2}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V

    .line 234
    .end local v6           #fp:Ljava/io/File;
    :goto_3
    invoke-static {v4}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V

    .line 237
    return v8

    .line 209
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fp:Ljava/io/File;
    :cond_0
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 210
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 211
    const/4 v2, 0x0

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_1

    .line 222
    :catch_1
    move-exception v1

    .line 223
    .restart local v1       #e:Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 224
    const/4 v8, 0x0

    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 227
    .end local v1           #e:Ljava/io/IOException;
    .end local v6           #fp:Ljava/io/File;
    :catch_2
    move-exception v1

    .line 228
    .restart local v1       #e:Ljava/io/IOException;
    :goto_4
    :try_start_7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 229
    const-string v9, "LGCamera"

    const-string v10, "Failed to copyFile"

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 230
    const/4 v8, 0x0

    .line 233
    invoke-static {v2}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_3

    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_5
    invoke-static {v2}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V

    .line 234
    invoke-static {v4}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V

    .line 233
    throw v9

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fp:Ljava/io/File;
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_5

    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v9

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_5

    .line 227
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v1

    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #e:Ljava/io/IOException;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_4
.end method

.method public static deleteDirectory(Ljava/io/File;)V
    .locals 4
    .parameter "file"

    .prologue
    .line 465
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 466
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 467
    .local v0, files:[Ljava/io/File;
    if-nez v0, :cond_1

    .line 468
    const-string v2, "CameraApp"

    const-string v3, "file is not a directory, null return"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    .end local v0           #files:[Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 471
    .restart local v0       #files:[Ljava/io/File;
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 472
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 473
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/lge/camera/util/Common;->deleteDirectory(Ljava/io/File;)V

    .line 471
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 475
    :cond_2
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 478
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public static galleryCacheDuringCameraApp(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "onresume"

    .prologue
    .line 667
    if-eqz p0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->stopGalleryCacheduringCameraApp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 668
    if-eqz p1, :cond_1

    .line 669
    new-instance v0, Landroid/content/Intent;

    const-string v1, "lge.gallery.cache.stop"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 674
    :cond_0
    :goto_0
    return-void

    .line 671
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "lge.gallery.cache.start"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static getCurrentDateTime(J)Ljava/lang/String;
    .locals 5
    .parameter "dateTime"

    .prologue
    .line 400
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 401
    .local v0, dateFormat:Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 402
    .local v1, stringDateTime:Ljava/lang/String;
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dateTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    return-object v1
.end method

.method public static getDimension(Landroid/content/Context;I)F
    .locals 1
    .parameter "context"
    .parameter "id"

    .prologue
    .line 488
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method public static getFileFullPathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 11
    .parameter "resolver"
    .parameter "uri"

    .prologue
    const/4 v10, 0x0

    .line 247
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFileFullPathFromUri uri = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 250
    .local v2, proj:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 252
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 255
    .local v9, result:Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 261
    if-nez v7, :cond_1

    .line 262
    const-string v0, "CameraApp"

    const-string v1, "error! cursor is null"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    if-eqz v7, :cond_0

    .line 276
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 277
    const/4 v7, 0x0

    :cond_0
    move-object v0, v10

    .line 280
    :goto_0
    return-object v0

    .line 265
    :cond_1
    :try_start_1
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 267
    .local v6, column_index:I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 268
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "path from Uri: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    .line 275
    :cond_2
    if-eqz v7, :cond_3

    .line 276
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 277
    .end local v6           #column_index:I
    :goto_1
    const/4 v7, 0x0

    :cond_3
    move-object v0, v9

    .line 280
    goto :goto_0

    .line 271
    :catch_0
    move-exception v8

    .line 272
    .local v8, ex:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "managedQuery() Exception! "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 273
    const/4 v9, 0x0

    .line 275
    if-eqz v7, :cond_3

    .line 276
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 275
    .end local v8           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 276
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 277
    const/4 v7, 0x0

    .line 275
    :cond_4
    throw v0
.end method

.method public static getFileNamePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 13
    .parameter "resolver"
    .parameter "uri"

    .prologue
    const/4 v12, 0x0

    .line 291
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFileNamePathFromUri uri = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 294
    .local v2, proj:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 296
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 297
    .local v9, file:Ljava/io/File;
    const/4 v11, 0x0

    .line 300
    .local v11, result:Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 306
    if-nez v7, :cond_1

    .line 307
    const-string v0, "CameraApp"

    const-string v1, "error! cursor is null"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    if-eqz v7, :cond_0

    .line 322
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 323
    const/4 v7, 0x0

    :cond_0
    move-object v0, v12

    .line 326
    :goto_0
    return-object v0

    .line 310
    :cond_1
    :try_start_1
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 312
    .local v6, column_index:I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 313
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "path from Uri: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    new-instance v10, Ljava/io/File;

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 315
    .end local v9           #file:Ljava/io/File;
    .local v10, file:Ljava/io/File;
    :try_start_2
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v11

    move-object v9, v10

    .line 321
    .end local v10           #file:Ljava/io/File;
    .restart local v9       #file:Ljava/io/File;
    :cond_2
    if-eqz v7, :cond_3

    .line 322
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 323
    .end local v6           #column_index:I
    :goto_1
    const/4 v7, 0x0

    :cond_3
    move-object v0, v11

    .line 326
    goto :goto_0

    .line 317
    :catch_0
    move-exception v8

    .line 318
    .local v8, ex:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "managedQuery() Exception! "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 319
    const/4 v11, 0x0

    .line 321
    if-eqz v7, :cond_3

    .line 322
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 321
    .end local v8           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v7, :cond_4

    .line 322
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 323
    const/4 v7, 0x0

    .line 321
    :cond_4
    throw v0

    .end local v9           #file:Ljava/io/File;
    .restart local v6       #column_index:I
    .restart local v10       #file:Ljava/io/File;
    :catchall_1
    move-exception v0

    move-object v9, v10

    .end local v10           #file:Ljava/io/File;
    .restart local v9       #file:Ljava/io/File;
    goto :goto_3

    .line 317
    .end local v9           #file:Ljava/io/File;
    .restart local v10       #file:Ljava/io/File;
    :catch_1
    move-exception v8

    move-object v9, v10

    .end local v10           #file:Ljava/io/File;
    .restart local v9       #file:Ljava/io/File;
    goto :goto_2
.end method

.method public static getNameWithoutExtension(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .parameter "resolver"
    .parameter "uri"

    .prologue
    .line 374
    invoke-static {p0, p1}, Lcom/lge/camera/util/Common;->getFileNamePathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, filename:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 376
    const/4 v1, 0x0

    .line 380
    :goto_0
    return-object v1

    .line 378
    :cond_0
    const/4 v2, 0x0

    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 380
    .local v1, nameOnly:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getPixelFromDimens(Landroid/content/Context;I)I
    .locals 2
    .parameter "context"
    .parameter "id"

    .prologue
    .line 483
    invoke-static {p0, p1}, Lcom/lge/camera/util/Common;->getDimension(Landroid/content/Context;I)F

    move-result v0

    .line 484
    .local v0, dimension:F
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method public static getScreenLock()Z
    .locals 2

    .prologue
    .line 545
    const-string v0, "service.keyguard.status"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getTranslateAnimation(FFFFIZLandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/TranslateAnimation;
    .locals 4
    .parameter "fromXDelta"
    .parameter "toXDelta"
    .parameter "fromYDelta"
    .parameter "toYDelta"
    .parameter "duration"
    .parameter "fillAfter"
    .parameter "listener"

    .prologue
    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, ta:Landroid/view/animation/TranslateAnimation;
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TranslateAnimation fromX = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " toX = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #ta:Landroid/view/animation/TranslateAnimation;
    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 177
    .restart local v0       #ta:Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, p5}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 178
    int-to-long v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 179
    if-eqz p6, :cond_0

    .line 180
    invoke-virtual {v0, p6}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 182
    :cond_0
    return-object v0
.end method

.method public static getUSBconfig()Ljava/lang/String;
    .locals 4

    .prologue
    .line 767
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "===>getUSBconfig : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sys.usb.config"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    const-string v0, "sys.usb.config"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUSBstate()Ljava/lang/String;
    .locals 8

    .prologue
    .line 773
    const/4 v3, 0x0

    .line 774
    .local v3, reader:Ljava/io/FileReader;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 777
    .local v0, buffer:Ljava/lang/StringBuffer;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/sys/class/android_usb/android0/state"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 779
    .end local v3           #reader:Ljava/io/FileReader;
    .local v4, reader:Ljava/io/FileReader;
    if-eqz v4, :cond_4

    .line 782
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileReader;->read()I

    move-result v1

    .local v1, data:I
    if-lez v1, :cond_3

    .line 783
    int-to-char v5, v1

    const/16 v6, 0xa

    if-eq v5, v6, :cond_0

    .line 784
    int-to-char v5, v1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 793
    .end local v1           #data:I
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 794
    .end local v4           #reader:Ljava/io/FileReader;
    .local v2, e:Ljava/io/IOException;
    .restart local v3       #reader:Ljava/io/FileReader;
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 798
    if-eqz v3, :cond_1

    .line 799
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 806
    .end local v2           #e:Ljava/io/IOException;
    :cond_1
    :goto_2
    const-string v5, "0"

    .end local v3           #reader:Ljava/io/FileReader;
    :cond_2
    :goto_3
    return-object v5

    .line 788
    .restart local v1       #data:I
    .restart local v4       #reader:Ljava/io/FileReader;
    :cond_3
    :try_start_4
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "===> getUSBState: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", len: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v5

    .line 798
    if-eqz v4, :cond_2

    .line 799
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 801
    :catch_1
    move-exception v2

    .line 802
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 798
    .end local v1           #data:I
    .end local v2           #e:Ljava/io/IOException;
    :cond_4
    if-eqz v4, :cond_5

    .line 799
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_5
    :goto_4
    move-object v3, v4

    .line 804
    .end local v4           #reader:Ljava/io/FileReader;
    .restart local v3       #reader:Ljava/io/FileReader;
    goto :goto_2

    .line 797
    :catchall_0
    move-exception v5

    .line 798
    :goto_5
    if-eqz v3, :cond_6

    .line 799
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 797
    :cond_6
    :goto_6
    throw v5

    .line 801
    :catch_2
    move-exception v2

    .line 802
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 801
    :catch_3
    move-exception v2

    .line 802
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 801
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #reader:Ljava/io/FileReader;
    .restart local v4       #reader:Ljava/io/FileReader;
    :catch_4
    move-exception v2

    .line 802
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 797
    .end local v2           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #reader:Ljava/io/FileReader;
    .restart local v3       #reader:Ljava/io/FileReader;
    goto :goto_5

    .line 793
    :catch_5
    move-exception v2

    goto :goto_1
.end method

.method public static getUriFromFilePath(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/net/Uri;
    .locals 10
    .parameter "resolver"
    .parameter "fullFilePath"

    .prologue
    .line 336
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUriFromFilePath fullFilePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_data=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 338
    .local v3, selection:Ljava/lang/String;
    const/4 v9, 0x0

    .line 339
    .local v9, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 340
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 343
    .local v8, id:I
    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 349
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 351
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v1, v8

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 357
    :cond_0
    if-eqz v6, :cond_1

    .line 358
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 359
    :goto_0
    const/4 v6, 0x0

    .line 363
    :cond_1
    return-object v9

    .line 354
    :catch_0
    move-exception v7

    .line 355
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "CameraApp"

    const-string v1, "deleteTimeMachineImages fail!:"

    invoke-static {v0, v1, v7}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 357
    if-eqz v6, :cond_1

    .line 358
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 357
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 358
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 359
    const/4 v6, 0x0

    .line 357
    :cond_2
    throw v0
.end method

.method public static interimCheckTime(Z)J
    .locals 6
    .parameter "end"

    .prologue
    const-wide/16 v0, 0x0

    .line 526
    if-eqz p0, :cond_0

    .line 527
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/lge/camera/util/Common;->interim_endTime:J

    .line 528
    sget-wide v2, Lcom/lge/camera/util/Common;->interim_endTime:J

    sget-wide v4, Lcom/lge/camera/util/Common;->interim_startTime:J

    sub-long/2addr v2, v4

    sput-wide v2, Lcom/lge/camera/util/Common;->interim_duration:J

    .line 529
    sput-wide v0, Lcom/lge/camera/util/Common;->interim_startTime:J

    .line 530
    sput-wide v0, Lcom/lge/camera/util/Common;->interim_endTime:J

    .line 532
    sget-wide v0, Lcom/lge/camera/util/Common;->interim_duration:J

    .line 536
    :goto_0
    return-wide v0

    .line 535
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/lge/camera/util/Common;->interim_startTime:J

    goto :goto_0
.end method

.method public static isFaceUnlock()Z
    .locals 1

    .prologue
    .line 562
    invoke-static {}, Lcom/lge/camera/util/Common;->isSecureCamera()Z

    move-result v0

    return v0
.end method

.method public static isFileExist(Ljava/lang/String;)Z
    .locals 2
    .parameter "fileName"

    .prologue
    .line 151
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static isLowLuminance(Landroid/hardware/Camera$Parameters;)Z
    .locals 4
    .parameter "parameters"

    .prologue
    .line 837
    if-nez p0, :cond_0

    .line 838
    const/4 v1, 0x0

    .line 842
    :goto_0
    return v1

    .line 840
    :cond_0
    const-string v1, "luminance-condition"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 841
    .local v0, luminanceCondition:Ljava/lang/String;
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current luminanceCondition = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    const-string v1, "low"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isQuickCoverClosed()Z
    .locals 1

    .prologue
    .line 592
    sget-boolean v0, Lcom/lge/camera/util/Common;->mIsQuickCoverClosed:Z

    return v0
.end method

.method public static isQuickWindowCameraExecuted()Z
    .locals 1

    .prologue
    .line 589
    sget-boolean v0, Lcom/lge/camera/util/Common;->sIsQuickWindowCameraExcuted:Z

    return v0
.end method

.method public static isScreenLocked()Z
    .locals 1

    .prologue
    .line 541
    sget-boolean v0, Lcom/lge/camera/util/Common;->mSecureCamera:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/lge/camera/util/Common;->getScreenLock()Z

    move-result v0

    goto :goto_0
.end method

.method public static isSecureCamera()Z
    .locals 1

    .prologue
    .line 556
    sget-boolean v0, Lcom/lge/camera/util/Common;->mSecureCamera:Z

    return v0
.end method

.method public static isSmartCoverClosed()Z
    .locals 1

    .prologue
    .line 600
    sget-boolean v0, Lcom/lge/camera/util/Common;->sIsSmartCoverClosed:Z

    return v0
.end method

.method public static isSupported(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z
    .locals 8
    .parameter "parameters"
    .parameter "flashMode"

    .prologue
    .line 821
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v3

    .line 822
    .local v3, supportedModes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 823
    .local v2, supported:Z
    if-eqz v3, :cond_1

    .line 824
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 825
    .local v1, mode:Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 826
    const/4 v2, 0x1

    goto :goto_0

    .line 830
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #mode:Ljava/lang/String;
    :cond_1
    if-nez v2, :cond_2

    .line 831
    const-string v4, "CameraApp"

    const-string v5, "Flash mode [%s] not supported."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    :cond_2
    return v2
.end method

.method public static printRunningTask(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 677
    if-eqz p0, :cond_0

    .line 678
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 679
    .local v1, manager:Landroid/app/ActivityManager;
    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 680
    .local v2, runningTask:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v2, :cond_0

    .line 681
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 682
    .local v3, taskSize:I
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "runningTask size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 684
    const-string v5, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "runningTask "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 688
    .end local v0           #i:I
    .end local v1           #manager:Landroid/app/ActivityManager;
    .end local v2           #runningTask:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v3           #taskSize:I
    :cond_0
    return-void
.end method

.method public static reduceBrightnessMode(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "start"

    .prologue
    .line 657
    if-eqz p0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->reduceBrightnessCamcorderMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    if-eqz p1, :cond_1

    .line 659
    new-instance v0, Landroid/content/Intent;

    const-string v1, "video_recording_preview_start"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 664
    :cond_0
    :goto_0
    return-void

    .line 661
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "video_recording_preview_stop"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 5
    .parameter "lp"

    .prologue
    .line 493
    if-nez p0, :cond_1

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 494
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 495
    invoke-virtual {p0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v2

    const/4 v3, 0x0

    aput v3, v2, v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 497
    :catch_0
    move-exception v0

    .line 498
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NullPointerException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static scaleParameter(ILandroid/hardware/Camera$Parameters;)I
    .locals 6
    .parameter "value"
    .parameter "params"

    .prologue
    .line 810
    const/4 v3, 0x0

    .line 811
    .local v3, scaledValue:I
    if-eqz p1, :cond_0

    .line 812
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v4

    int-to-float v1, v4

    .line 813
    .local v1, max:F
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v4

    int-to-float v2, v4

    .line 814
    .local v2, min:F
    sub-float v4, v1, v2

    sget v5, Lcom/lge/camera/properties/CameraConstants;->MAX_BRIGHTNESS_STEP:I

    int-to-float v5, v5

    div-float v0, v4, v5

    .line 815
    .local v0, compensationFactor:F
    int-to-float v4, p0

    mul-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    float-to-int v5, v2

    add-int v3, v4, v5

    .line 817
    .end local v0           #compensationFactor:F
    .end local v1           #max:F
    .end local v2           #min:F
    :cond_0
    return v3
.end method

.method public static setQuickCoverClosed(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 595
    sput-boolean p0, Lcom/lge/camera/util/Common;->mIsQuickCoverClosed:Z

    .line 596
    return-void
.end method

.method public static setQuickWindowCameraExecuted(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 585
    sput-boolean p0, Lcom/lge/camera/util/Common;->sIsQuickWindowCameraExcuted:Z

    .line 586
    return-void
.end method

.method public static setSecureCamera(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 559
    sput-boolean p0, Lcom/lge/camera/util/Common;->mSecureCamera:Z

    .line 560
    return-void
.end method

.method public static setSmartCoverClosed(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 603
    sput-boolean p0, Lcom/lge/camera/util/Common;->sIsSmartCoverClosed:Z

    .line 604
    return-void
.end method

.method public static setWakeLock(Landroid/os/PowerManager$WakeLock;Z)V
    .locals 3
    .parameter "wakeLock"
    .parameter "isAcquire"

    .prologue
    .line 752
    if-eqz p0, :cond_0

    .line 753
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WakeLock.isHeld() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isAcquire = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    if-eqz p1, :cond_1

    .line 755
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 756
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 764
    :cond_0
    :goto_0
    return-void

    .line 759
    :cond_1
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 760
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method public static showCheckTimeLog(Ljava/lang/String;Z)V
    .locals 6
    .parameter "comment"
    .parameter "start"

    .prologue
    .line 892
    if-nez p1, :cond_0

    .line 893
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHECK TIME : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " time is = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sget-wide v4, Lcom/lge/camera/util/Common;->mStartTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lcom/lge/camera/util/Common;->mStartTime:J

    .line 898
    :goto_0
    return-void

    .line 896
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lcom/lge/camera/util/Common;->mStartTime:J

    goto :goto_0
.end method

.method public static toast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "msg"

    .prologue
    .line 89
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "CameraApp"

    const-string v2, "Failed to show toast!"

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static toastLong(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "msg"

    .prologue
    .line 102
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 103
    return-void
.end method

.method public static turnOffAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 608
    const-string v1, "CameraApp"

    const-string v2, "turnOffAnimation"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    sput-boolean v3, Lcom/lge/camera/util/Common;->isChangeAnimationScale:Z

    .line 610
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    sput-object v1, Lcom/lge/camera/util/Common;->mWindowManager:Landroid/view/IWindowManager;

    .line 612
    :try_start_0
    sget-object v1, Lcom/lge/camera/util/Common;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v1

    sput v1, Lcom/lge/camera/util/Common;->backupWidowScale:F

    .line 613
    sget-object v1, Lcom/lge/camera/util/Common;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v1

    sput v1, Lcom/lge/camera/util/Common;->backupTransitionScale:F

    .line 615
    sget-object v1, Lcom/lge/camera/util/Common;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 616
    sget-object v1, Lcom/lge/camera/util/Common;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->setAnimationScale(IF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    .line 622
    :goto_0
    return-void

    .line 617
    :catch_0
    move-exception v0

    .line 618
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 619
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 620
    .local v0, e:Ljava/lang/NoSuchMethodError;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_0
.end method

.method public static turnOnAnimation()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 624
    sget-boolean v1, Lcom/lge/camera/util/Common;->isChangeAnimationScale:Z

    if-eqz v1, :cond_0

    .line 625
    sput-boolean v2, Lcom/lge/camera/util/Common;->isChangeAnimationScale:Z

    .line 630
    const-string v1, "CameraApp"

    const-string v2, "turnOnAnimation"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    sput-object v1, Lcom/lge/camera/util/Common;->mWindowManager:Landroid/view/IWindowManager;

    .line 633
    :try_start_0
    sget-object v1, Lcom/lge/camera/util/Common;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x0

    sget v3, Lcom/lge/camera/util/Common;->backupWidowScale:F

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 634
    sget-object v1, Lcom/lge/camera/util/Common;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x1

    sget v3, Lcom/lge/camera/util/Common;->backupTransitionScale:F

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->setAnimationScale(IF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 635
    :catch_0
    move-exception v0

    .line 636
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 637
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 638
    .local v0, e:Ljava/lang/NoSuchMethodError;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_0
.end method

.method public static useSecureLockImage()Z
    .locals 3

    .prologue
    .line 549
    const-string v1, "service.keyguard.status"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 550
    .local v0, lock:Ljava/lang/String;
    invoke-static {}, Lcom/lge/camera/util/Common;->isSecureCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
