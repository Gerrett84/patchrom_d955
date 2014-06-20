.class public Lcom/lge/camera/util/CheckStatusManager;
.super Ljava/lang/Object;
.source "CheckStatusManager.java"


# static fields
.field public static final CHECK_ENTER_BATTERY:I = 0x5

.field public static final CHECK_ENTER_CALL:I = 0x1

.field public static final CHECK_ENTER_CALL_CAMCORDER:I = 0x2

.field public static final CHECK_ENTER_DATA_STORAGE:I = 0xd

.field public static final CHECK_ENTER_DEV_POLOCY:I = 0x8

.field public static final CHECK_ENTER_EXT_MEDIA_SCANNING:I = 0x6

.field public static final CHECK_ENTER_FMC:I = 0x4

.field public static final CHECK_ENTER_HDMI:I = 0x9

.field public static final CHECK_ENTER_INT_MEDIA_SCANNING:I = 0x7

.field public static final CHECK_ENTER_MMS_REC_SIZE:I = 0xb

.field public static final CHECK_ENTER_OK:I = 0x0

.field public static final CHECK_ENTER_SAFETY_CARE:I = 0xe

.field public static final CHECK_ENTER_SDM:I = 0xa

.field public static final CHECK_ENTER_TEMPERATURE:I = 0xc

.field public static final CHECK_ENTER_VT_CALL:I = 0x3

.field public static final CHECK_OUT_FINISH:I = 0x2

.field public static final CHECK_OUT_IDLE:I = 0x0

.field public static final CHECK_OUT_SECURE:I = 0x1

.field public static final PROPERTY_TEMPERATURE:Ljava/lang/String; = "/sys/devices/platform/msm_ssbi.0/pm8921-core/pm8xxx-adc/xo_therm"

#the value of this static final field might be set in the static constructor
.field public static final TEMPERATURE_ENTERING_DUAL_RECORDING:D = 0.0

#the value of this static final field might be set in the static constructor
.field public static final TEMPERATURE_ENTERING_STANDARD:D = 0.0

#the value of this static final field might be set in the static constructor
.field public static final TEMPERATURE_FLASH_RECORDING_STANDARD:D = 0.0

#the value of this static final field might be set in the static constructor
.field public static final TEMPERATURE_GUARANTEE_RECORDING_TIME:J = 0x0L

#the value of this static final field might be set in the static constructor
.field public static final TEMPERATURE_LCD_CONTROL_RATIO:F = 0.0f

#the value of this static final field might be set in the static constructor
.field public static final TEMPERATURE_LCD_CONTROL_SECOND:J = 0x0L

.field private static final TEMPERATURE_PROP_BLOCK:Ljava/lang/String; = "ro.lge.heat_block"

.field private static final TEMPERATURE_PROP_DUAL_RECORDING:Ljava/lang/String; = "ro.lge.heat_dual_recording"

.field private static final TEMPERATURE_PROP_FINISH:Ljava/lang/String; = "ro.lge.heat_finish"

.field private static final TEMPERATURE_PROP_FLASH_RECORDING_FINISH:Ljava/lang/String; = "ro.lge.heat_flash_recorder"

.field private static final TEMPERATURE_PROP_GUARANTEE_TIME:Ljava/lang/String; = "ro.lge.heat_guarantee_time"

.field private static final TEMPERATURE_PROP_LCD_CONTROL_PERCENT:Ljava/lang/String; = "ro.lge.heat_lcd_percent"

.field private static final TEMPERATURE_PROP_LCD_CONTROL_SECOND:Ljava/lang/String; = "ro.lge.heat_lcd_second"

.field public static final TEMPERATURE_STANDARD:D

.field private static cameraOutStringId:[I

.field private static isEnterDuringCall:Z

.field private static isTelephonyStateCheckSkip:Z

.field private static mCheckEnterKind:I

.field private static mCheckEnterOutSecure:I

.field private static mEnterCheckComplete:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 71
    sput v1, Lcom/lge/camera/util/CheckStatusManager;->mCheckEnterKind:I

    .line 73
    sput-boolean v1, Lcom/lge/camera/util/CheckStatusManager;->mEnterCheckComplete:Z

    .line 74
    sput-boolean v1, Lcom/lge/camera/util/CheckStatusManager;->isTelephonyStateCheckSkip:Z

    .line 79
    sput v1, Lcom/lge/camera/util/CheckStatusManager;->mCheckEnterOutSecure:I

    .line 81
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lge/camera/util/CheckStatusManager;->cameraOutStringId:[I

    .line 120
    sput-boolean v1, Lcom/lge/camera/util/CheckStatusManager;->isEnterDuringCall:Z

    .line 711
    const-string v0, "ro.lge.heat_finish"

    const-wide v1, 0x404a800000000000L

    invoke-static {v0, v1, v2}, Lcom/lge/camera/util/CheckStatusManager;->setTemperatureCondition(Ljava/lang/String;D)D

    move-result-wide v0

    sput-wide v0, Lcom/lge/camera/util/CheckStatusManager;->TEMPERATURE_STANDARD:D

    .line 713
    const-string v0, "ro.lge.heat_block"

    const-wide/high16 v1, 0x4048

    invoke-static {v0, v1, v2}, Lcom/lge/camera/util/CheckStatusManager;->setTemperatureCondition(Ljava/lang/String;D)D

    move-result-wide v0

    sput-wide v0, Lcom/lge/camera/util/CheckStatusManager;->TEMPERATURE_ENTERING_STANDARD:D

    .line 715
    const-string v0, "ro.lge.heat_dual_recording"

    const-wide/high16 v1, 0x4045

    invoke-static {v0, v1, v2}, Lcom/lge/camera/util/CheckStatusManager;->setTemperatureCondition(Ljava/lang/String;D)D

    move-result-wide v0

    sput-wide v0, Lcom/lge/camera/util/CheckStatusManager;->TEMPERATURE_ENTERING_DUAL_RECORDING:D

    .line 717
    const-string v0, "ro.lge.heat_guarantee_time"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/lge/camera/util/CheckStatusManager;->setTemperatureCondition(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/lge/camera/util/CheckStatusManager;->TEMPERATURE_GUARANTEE_RECORDING_TIME:J

    .line 719
    const-string v0, "ro.lge.heat_flash_recorder"

    const-wide v1, 0x4046800000000000L

    invoke-static {v0, v1, v2}, Lcom/lge/camera/util/CheckStatusManager;->setTemperatureCondition(Ljava/lang/String;D)D

    move-result-wide v0

    sput-wide v0, Lcom/lge/camera/util/CheckStatusManager;->TEMPERATURE_FLASH_RECORDING_STANDARD:D

    .line 766
    invoke-static {}, Lcom/lge/camera/util/CheckStatusManager;->setSecondForBacklightInRecording()J

    move-result-wide v0

    sput-wide v0, Lcom/lge/camera/util/CheckStatusManager;->TEMPERATURE_LCD_CONTROL_SECOND:J

    .line 767
    invoke-static {}, Lcom/lge/camera/util/CheckStatusManager;->setRatioForBacklightInRecording()F

    move-result v0

    sput v0, Lcom/lge/camera/util/CheckStatusManager;->TEMPERATURE_LCD_CONTROL_RATIO:F

    return-void

    .line 81
    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x97t 0x1t 0xbt 0x7ft
        0x96t 0x1t 0xbt 0x7ft
        0x98t 0x1t 0xbt 0x7ft
        0x97t 0x1t 0xbt 0x7ft
        0x30t 0x0t 0xbt 0x7ft
        0x74t 0x0t 0xbt 0x7ft
        0x74t 0x0t 0xbt 0x7ft
        0x35t 0x0t 0xbt 0x7ft
        0x36t 0x0t 0xbt 0x7ft
        0x35t 0x0t 0xbt 0x7ft
        0x3ft 0x2t 0xbt 0x7ft
        0x5at 0x2t 0xbt 0x7ft
        0x55t 0x0t 0xbt 0x7ft
        0x30t 0x3t 0xbt 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetXo_thermal()D
    .locals 11

    .prologue
    .line 191
    const/4 v3, 0x0

    .line 192
    .local v3, mReader:Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 193
    .local v2, mLine:Ljava/lang/String;
    const-wide/16 v5, 0x0

    .line 195
    .local v5, mTemp:D
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getThermFile()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    .end local v3           #mReader:Ljava/io/BufferedReader;
    .local v4, mReader:Ljava/io/BufferedReader;
    if-eqz v4, :cond_0

    .line 198
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    move-result-object v2

    .line 205
    :cond_0
    if-eqz v4, :cond_1

    .line 206
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 207
    if-eqz v2, :cond_1

    .line 208
    const-string v7, "[: ]"

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, arr:[Ljava/lang/String;
    const/4 v7, 0x1

    aget-object v7, v0, v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    move-result-wide v5

    .end local v0           #arr:[Ljava/lang/String;
    :cond_1
    :goto_0
    move-object v3, v4

    .line 224
    .end local v4           #mReader:Ljava/io/BufferedReader;
    .restart local v3       #mReader:Ljava/io/BufferedReader;
    :cond_2
    :goto_1
    return-wide v5

    .line 201
    :catch_0
    move-exception v1

    .line 202
    .local v1, e:Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 205
    if-eqz v3, :cond_2

    .line 206
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 207
    if-eqz v2, :cond_2

    .line 208
    const-string v7, "[: ]"

    throw v2

    move-result-object v0

    .line 213
    .restart local v0       #arr:[Ljava/lang/String;
    const/4 v7, 0x1

    aget-object v7, v0, v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result-wide v5

    goto :goto_1

    .line 204
    .end local v0           #arr:[Ljava/lang/String;
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 205
    :goto_3
    if-eqz v3, :cond_3

    .line 206
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 207
    if-eqz v2, :cond_3

    .line 208
    const-string v8, "[: ]"

    throw v2

    move-result-object v0

    .line 213
    .restart local v0       #arr:[Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v8, v0, v8

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result-wide v5

    .line 204
    .end local v0           #arr:[Ljava/lang/String;
    :cond_3
    :goto_4
    throw v7

    .line 217
    :catch_1
    move-exception v1

    .line 218
    .restart local v1       #e:Ljava/io/IOException;
    const-string v8, "CameraApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 219
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 220
    .local v1, e:Ljava/lang/Exception;
    const-string v8, "CameraApp"

    const-string v9, "Exception occured."

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 217
    .local v1, e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 218
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 219
    :catch_4
    move-exception v1

    .line 220
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "CameraApp"

    const-string v8, "Exception occured."

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 217
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #mReader:Ljava/io/BufferedReader;
    .restart local v4       #mReader:Ljava/io/BufferedReader;
    :catch_5
    move-exception v1

    .line 218
    .local v1, e:Ljava/io/IOException;
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 219
    .end local v1           #e:Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 220
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "CameraApp"

    const-string v8, "Exception occured."

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 204
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4           #mReader:Ljava/io/BufferedReader;
    .restart local v3       #mReader:Ljava/io/BufferedReader;
    goto/16 :goto_3

    .line 201
    .end local v3           #mReader:Ljava/io/BufferedReader;
    .restart local v4       #mReader:Ljava/io/BufferedReader;
    :catch_7
    move-exception v1

    move-object v3, v4

    .end local v4           #mReader:Ljava/io/BufferedReader;
    .restart local v3       #mReader:Ljava/io/BufferedReader;
    goto/16 :goto_2
.end method

.method private static checkCallStatus(Landroid/app/Activity;)Z
    .locals 5
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 252
    const-string v2, "CameraApp"

    const-string v3, "check enter by call status"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    sget-boolean v2, Lcom/lge/camera/util/CheckStatusManager;->isTelephonyStateCheckSkip:Z

    if-eqz v2, :cond_0

    .line 278
    :goto_0
    return v0

    .line 256
    :cond_0
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkEnterApplication activity : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/camera/util/TelephonyUtil;->phoneInCall(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 259
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.lge.camera.Camcorder"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.lge.camera.CamcorderLoading"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 262
    :cond_1
    const/4 v0, 0x2

    sput v0, Lcom/lge/camera/util/CheckStatusManager;->mCheckEnterKind:I

    move v0, v1

    .line 263
    goto :goto_0

    .line 265
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isEnterCameraDuringCall()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {p0}, Lcom/lge/camera/util/CheckStatusManager;->isRCSeWorkingOn(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 266
    :cond_3
    invoke-static {v0}, Lcom/lge/camera/util/CheckStatusManager;->setIsEnterDuringCall(Z)V

    goto :goto_0

    .line 269
    :cond_4
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isUPlusRMSCall()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p0}, Lcom/lge/camera/util/CheckStatusManager;->isRmsConnected(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 270
    invoke-static {v0}, Lcom/lge/camera/util/CheckStatusManager;->setIsEnterDuringCall(Z)V

    goto :goto_0

    .line 273
    :cond_5
    sput v0, Lcom/lge/camera/util/CheckStatusManager;->mCheckEnterKind:I

    move v0, v1

    .line 274
    goto :goto_0

    .line 277
    :cond_6
    invoke-static {v1}, Lcom/lge/camera/util/CheckStatusManager;->setIsEnterDuringCall(Z)V

    goto :goto_0
.end method

.method public static checkCameraOut(Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 4
    .parameter "activity"
    .parameter "handler"

    .prologue
    .line 668
    if-nez p0, :cond_1

    .line 692
    :cond_0
    :goto_0
    return-void

    .line 672
    :cond_1
    const/4 v0, 0x0

    .line 673
    .local v0, sMsg:Ljava/lang/String;
    sget v1, Lcom/lge/camera/util/CheckStatusManager;->mCheckEnterKind:I

    if-ltz v1, :cond_2

    sget v1, Lcom/lge/camera/util/CheckStatusManager;->mCheckEnterKind:I

    sget-object v2, Lcom/lge/camera/util/CheckStatusManager;->cameraOutStringId:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    sget-object v1, Lcom/lge/camera/util/CheckStatusManager;->cameraOutStringId:[I

    sget v2, Lcom/lge/camera/util/CheckStatusManager;->mCheckEnterKind:I

    aget v1, v1, v2

    if-ltz v1, :cond_2

    .line 675
    sget-object v1, Lcom/lge/camera/util/CheckStatusManager;->cameraOutStringId:[I

    sget v2, Lcom/lge/camera/util/CheckStatusManager;->mCheckEnterKind:I

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 678
    :cond_2
    if-eqz v0, :cond_0

    .line 679
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/lge/camera/util/Common;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 680
    if-eqz p1, :cond_3

    .line 681
    new-instance v1, Lcom/lge/camera/util/CheckStatusManager$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/util/CheckStatusManager$1;-><init>(Landroid/app/Activity;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 690
    :goto_1
    const/4 v1, 0x0

    sput v1, Lcom/lge/camera/util/CheckStatusManager;->mCheckEnterKind:I

    goto :goto_0

    .line 688
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method

.method private static checkCurrentBatteryStatus(Landroid/app/Activity;)Z
    .locals 8
    .parameter "activity"

    .prologue
    const/4 v7, 0x5

    const/4 v3, 0x0

    .line 132
    const-string v4, "CameraApp"

    const-string v5, "check enter by battery status"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 134
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 136
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 138
    const-string v4, "level"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 139
    .local v2, level:I
    const-string v4, "level"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-gt v4, v7, :cond_0

    .line 140
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Battery level is low : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    sput v7, Lcom/lge/camera/util/CheckStatusManager;->mCheckEnterKind:I

    .line 148
    .end local v2           #level:I
    :goto_0
    return v3

    .line 144
    .restart local v2       #level:I
    :cond_0
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current battery level is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .end local v2           #level:I
    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static checkCurrentTemperature(Landroid/app/Activity;)Z
    .locals 11
    .parameter "activity"

    .prologue
    const/4 v9, 0x0

    const/16 v10, 0xc

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 152
    const-string v7, "CameraApp"

    const-string v8, "check enter by Temperature"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-wide/16 v3, 0x0

    .line 155
    .local v3, mTemp:D
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->temperatureCheckMethod()I

    move-result v7

    if-ne v7, v6, :cond_1

    .line 156
    invoke-static {}, Lcom/lge/camera/util/CheckStatusManager;->GetXo_thermal()D

    move-result-wide v3

    .line 157
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "xo_termal Termperature : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_0
    :goto_0
    sget-wide v7, Lcom/lge/camera/util/CheckStatusManager;->TEMPERATURE_ENTERING_STANDARD:D

    cmpl-double v7, v3, v7

    if-ltz v7, :cond_5

    .line 182
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot exeute camera because it\'s too hot. *-_-* : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " degrees."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    sput v10, Lcom/lge/camera/util/CheckStatusManager;->mCheckEnterKind:I

    .line 186
    :goto_1
    return v5

    .line 158
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->temperatureCheckMethod()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 159
    new-instance v2, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 160
    .local v2, intentFilter:Landroid/content/IntentFilter;
    invoke-virtual {p0, v9, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 161
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 162
    const-string v7, "temperature"

    invoke-virtual {v1, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    int-to-double v3, v7

    .line 163
    const-wide/high16 v7, 0x4024

    div-double/2addr v3, v7

    goto :goto_0

    .line 165
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #intentFilter:Landroid/content/IntentFilter;
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->temperatureCheckMethod()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    .line 166
    new-instance v2, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 167
    .restart local v2       #intentFilter:Landroid/content/IntentFilter;
    invoke-virtual {p0, v9, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 168
    .restart local v1       #intent:Landroid/content/Intent;
    if-eqz v1, :cond_4

    .line 169
    const-string v7, "CameraAvailable"

    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 170
    .local v0, camera_available:Z
    if-nez v0, :cond_3

    .line 171
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot exeute camera because it\'s too hot. Cool state : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    sput v10, Lcom/lge/camera/util/CheckStatusManager;->mCheckEnterKind:I

    goto :goto_1

    :cond_3
    move v5, v6

    .line 175
    goto :goto_1

    .end local v0           #camera_available:Z
    :cond_4
    move v5, v6

    .line 178
    goto :goto_1

    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #intentFilter:Landroid/content/IntentFilter;
    :cond_5
    move v5, v6

    .line 186
    goto :goto_1
.end method

.method public static checkDataStorageEnough()Z
    .locals 11

    .prologue
    .line 229
    new-instance v6, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 230
    .local v6, statFs:Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v0, v7

    .line 231
    .local v0, availBlocks:J
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v2, v7

    .line 232
    .local v2, blockSize:J
    const-wide/16 v4, 0xa

    .line 234
    .local v4, minSize:J
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DATA STORAGE = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    mul-long v9, v0, v2

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    mul-long v7, v0, v2

    cmp-long v7, v7, v4

    if-lez v7, :cond_0

    .line 237
    const/4 v7, 0x1

    .line 241
    :goto_0
    return v7

    .line 239
    :cond_0
    const-string v7, "CameraApp"

    const-string v8, "Data storage(/data/) is full!!!!"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const/16 v7, 0xd

    sput v7, Lcom/lge/camera/util/CheckStatusManager;->mCheckEnterKind:I

    .line 241
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private static checkDevicePolicy(Landroid/app/Activity;)Z
    .locals 5
    .parameter "activity"

    .prologue
    .line 482
    const-string v2, "CameraApp"

    const-string v3, "check enter by Device Policy status"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const/4 v0, 0x1

    .line 484
    .local v0, allowCamera:Z
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 485
    .local v1, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v1, :cond_0

    .line 487
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v0

    .line 488
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allowCamera = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    if-eqz v0, :cond_0

    .line 490
    const/16 v2, 0x8

    sput v2, Lcom/lge/camera/util/CheckStatusManager;->mCheckEnterKind:I

    .line 493
    :cond_0
    if-nez v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static checkEnterApplication(Landroid/app/Activity;Z)Z
    .locals 5
    .parameter "activity"
    .parameter "bResume"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 634
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkEnterApplication : mEnterCheckComplete = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/lge/camera/util/CheckStatusManager;->mEnterCheckComplete:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    sput-boolean v0, Lcom/lge/camera/util/Common;->IS_ENTER_CONDITION:Z

    .line 637
    sget-boolean v2, Lcom/lge/camera/util/CheckStatusManager;->mEnterCheckComplete:Z

    if-eqz v2, :cond_0

    .line 664
    :goto_0
    return v0

    .line 641
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/lge/camera/util/Common;->getScreenLock()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 642
    invoke-static {v0}, Lcom/lge/camera/util/CheckStatusManager;->setTelephonyStateCheckSkip(Z)V

    .line 645
    :cond_1
    invoke-static {p0}, Lcom/lge/camera/util/CheckStatusManager;->checkVTCallStatus(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/lge/camera/util/CheckStatusManager;->checkCallStatus(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/lge/camera/util/CheckStatusManager;->checkFMCStatus(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/lge/camera/util/CheckStatusManager;->checkCurrentBatteryStatus(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/lge/camera/util/CheckStatusManager;->checkExtenalMediaScanning(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/lge/camera/util/CheckStatusManager;->checkInternalMediaScanning(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/lge/camera/util/CheckStatusManager;->checkDevicePolicy(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/lge/camera/util/CheckStatusManager;->checkHdmiStatus(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/lge/camera/util/CheckStatusManager;->getCameraStateInSDM(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/lge/camera/util/CheckStatusManager;->checkMinimumMMSRecordingSize(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/lge/camera/util/CheckStatusManager;->checkCurrentTemperature(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/lge/camera/util/CheckStatusManager;->checkDataStorageEnough()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/lge/camera/util/CheckStatusManager;->checkSafetyCareStatus(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 658
    invoke-static {v1}, Lcom/lge/camera/util/CheckStatusManager;->setTelephonyStateCheckSkip(Z)V

    .line 659
    sput-boolean v0, Lcom/lge/camera/util/CheckStatusManager;->mEnterCheckComplete:Z

    goto :goto_0

    .line 662
    :cond_2
    invoke-static {v1}, Lcom/lge/camera/util/CheckStatusManager;->setTelephonyStateCheckSkip(Z)V

    .line 663
    sput-boolean v1, Lcom/lge/camera/util/Common;->IS_ENTER_CONDITION:Z

    move v0, v1

    .line 664
    goto :goto_0
.end method

.method private static checkExtenalMediaScanning(Landroid/app/Activity;)Z
    .locals 11
    .parameter "activity"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 415
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->useMediaScanning()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v9

    .line 444
    :goto_0
    return v0

    .line 418
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "check enter by ExternalMediaScanning"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const/4 v8, 0x0

    .line 420
    .local v8, result:Z
    const/4 v6, 0x0

    .line 422
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "volume"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 424
    if-eqz v6, :cond_1

    .line 425
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v9, :cond_1

    .line 426
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 427
    const-string v0, "external"

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 433
    :cond_1
    if-eqz v6, :cond_2

    .line 434
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 435
    :goto_1
    const/4 v6, 0x0

    .line 439
    :cond_2
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Media Ext. scanning result : result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    if-eqz v8, :cond_4

    .line 441
    const/4 v0, 0x6

    sput v0, Lcom/lge/camera/util/CheckStatusManager;->mCheckEnterKind:I

    move v0, v10

    .line 442
    goto :goto_0

    .line 430
    :catch_0
    move-exception v7

    .line 431
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "CameraApp"

    const-string v1, "cursor error "

    invoke-static {v0, v1, v7}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 433
    if-eqz v6, :cond_2

    .line 434
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 433
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 434
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 435
    const/4 v6, 0x0

    .line 433
    :cond_3
    throw v0

    :cond_4
    move v0, v9

    .line 444
    goto :goto_0
.end method

.method private static checkFMCStatus(Landroid/app/Activity;)Z
    .locals 6
    .parameter "activity"

    .prologue
    const/4 v3, 0x1

    .line 342
    const-string v4, "CameraApp"

    const-string v5, "check enter by FMC status"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    sget-boolean v4, Lcom/lge/camera/util/CheckStatusManager;->isTelephonyStateCheckSkip:Z

    if-eqz v4, :cond_1

    .line 346
    const-string v4, "CameraApp"

    const-string v5, "Telephony state check skip - FMC"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    :cond_0
    :goto_0
    return v3

    .line 350
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isFMCmodel()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 351
    const/4 v2, 0x0

    .line 352
    .local v2, iFmcCallInterfac:Lcom/lge/FmcCall/IFmcCallInterface;
    const/4 v1, 0x0

    .line 354
    .local v1, fmcState:I
    :try_start_0
    const-string v4, "FmcCall"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/FmcCall/IFmcCallInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/FmcCall/IFmcCallInterface;

    move-result-object v2

    .line 355
    if-nez v2, :cond_2

    .line 356
    const-string v4, "CameraApp"

    const-string v5, "Not use FMC Call service"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 362
    :catch_0
    move-exception v0

    .line 363
    .local v0, ex:Ljava/lang/Exception;
    const-string v4, "CameraApp"

    const-string v5, "RemoteException from getFmcCallInterface()"

    invoke-static {v4, v5, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 367
    .end local v0           #ex:Ljava/lang/Exception;
    :goto_1
    if-eqz v1, :cond_0

    .line 368
    const/4 v3, 0x4

    sput v3, Lcom/lge/camera/util/CheckStatusManager;->mCheckEnterKind:I

    .line 369
    const/4 v3, 0x0

    goto :goto_0

    .line 359
    :cond_2
    :try_start_1
    invoke-interface {v2}, Lcom/lge/FmcCall/IFmcCallInterface;->getFmcCallState()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_1
.end method

.method private static checkHdmiStatus(Landroid/app/Activity;)Z
    .locals 11
    .parameter "activity"

    .prologue
    const/16 v9, 0x400

    const/4 v8, 0x1

    .line 536
    const/4 v3, 0x1

    .line 537
    .local v3, enterCamera:Z
    const/4 v7, 0x0

    .line 538
    .local v7, mHDMIState:I
    new-array v1, v9, [C

    .line 539
    .local v1, buffer:[C
    const-string v0, "/sys/class/switch/hdmi/state"

    .line 541
    .local v0, HDMI_STATE_PATH:Ljava/lang/String;
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportHDMI_MHL()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 542
    const-string v9, "CameraApp"

    const-string v10, "It can support HDMI/MHL!!"

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    :goto_0
    return v8

    .line 546
    :cond_0
    const/4 v4, 0x0

    .line 548
    .local v4, file:Ljava/io/FileReader;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 549
    .end local v4           #file:Ljava/io/FileReader;
    .local v5, file:Ljava/io/FileReader;
    const/4 v9, 0x0

    const/16 v10, 0x400

    :try_start_1
    invoke-virtual {v5, v1, v9, v10}, Ljava/io/FileReader;->read([CII)I

    move-result v6

    .line 550
    .local v6, len:I
    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v9, v1, v10, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    move-result v7

    .line 556
    if-eqz v5, :cond_1

    .line 558
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_1
    :goto_1
    move-object v4, v5

    .line 565
    .end local v5           #file:Ljava/io/FileReader;
    .end local v6           #len:I
    .restart local v4       #file:Ljava/io/FileReader;
    :cond_2
    :goto_2
    if-ne v7, v8, :cond_3

    .line 566
    const/4 v3, 0x0

    .line 567
    const/16 v8, 0x9

    sput v8, Lcom/lge/camera/util/CheckStatusManager;->mCheckEnterKind:I

    .line 569
    :cond_3
    const-string v8, "CameraApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkHdmiStatus: is disconnected?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v3

    .line 570
    goto :goto_0

    .line 551
    :catch_0
    move-exception v2

    .line 552
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_3
    const-string v9, "CameraApp"

    const-string v10, "This kernel does not have dock station support"

    invoke-static {v9, v10, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 556
    if-eqz v4, :cond_2

    .line 558
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 559
    :catch_1
    move-exception v2

    .line 560
    .local v2, e:Ljava/io/IOException;
    const-string v9, "CameraApp"

    const-string v10, ""

    :goto_4
    invoke-static {v9, v10, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 553
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 554
    .local v2, e:Ljava/lang/Exception;
    :goto_5
    :try_start_5
    const-string v9, "CameraApp"

    const-string v10, ""

    invoke-static {v9, v10, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 556
    if-eqz v4, :cond_2

    .line 558
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 559
    :catch_3
    move-exception v2

    .line 560
    .local v2, e:Ljava/io/IOException;
    const-string v9, "CameraApp"

    const-string v10, ""

    goto :goto_4

    .line 556
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_6
    if-eqz v4, :cond_4

    .line 558
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 556
    :cond_4
    :goto_7
    throw v8

    .line 559
    :catch_4
    move-exception v2

    .line 560
    .restart local v2       #e:Ljava/io/IOException;
    const-string v9, "CameraApp"

    const-string v10, ""

    invoke-static {v9, v10, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 559
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #file:Ljava/io/FileReader;
    .restart local v5       #file:Ljava/io/FileReader;
    .restart local v6       #len:I
    :catch_5
    move-exception v2

    .line 560
    .restart local v2       #e:Ljava/io/IOException;
    const-string v9, "CameraApp"

    const-string v10, ""

    invoke-static {v9, v10, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 556
    .end local v2           #e:Ljava/io/IOException;
    .end local v6           #len:I
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5           #file:Ljava/io/FileReader;
    .restart local v4       #file:Ljava/io/FileReader;
    goto :goto_6

    .line 553
    .end local v4           #file:Ljava/io/FileReader;
    .restart local v5       #file:Ljava/io/FileReader;
    :catch_6
    move-exception v2

    move-object v4, v5

    .end local v5           #file:Ljava/io/FileReader;
    .restart local v4       #file:Ljava/io/FileReader;
    goto :goto_5

    .line 551
    .end local v4           #file:Ljava/io/FileReader;
    .restart local v5       #file:Ljava/io/FileReader;
    :catch_7
    move-exception v2

    move-object v4, v5

    .end local v5           #file:Ljava/io/FileReader;
    .restart local v4       #file:Ljava/io/FileReader;
    goto :goto_3
.end method

.method private static checkInternalMediaScanning(Landroid/app/Activity;)Z
    .locals 11
    .parameter "activity"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 448
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->useMediaScanning()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v9

    .line 478
    :goto_0
    return v0

    .line 451
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->isEMMCmemory()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 452
    const/4 v8, 0x0

    .line 453
    .local v8, result:Z
    const/4 v6, 0x0

    .line 455
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "volume"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 457
    if-eqz v6, :cond_1

    .line 458
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v9, :cond_1

    .line 459
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 460
    const-string v0, "internal"

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 466
    :cond_1
    if-eqz v6, :cond_2

    .line 467
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 468
    :goto_1
    const/4 v6, 0x0

    .line 472
    :cond_2
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Media Int. scanning result : result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    if-eqz v8, :cond_4

    .line 474
    const/4 v0, 0x7

    sput v0, Lcom/lge/camera/util/CheckStatusManager;->mCheckEnterKind:I

    move v0, v10

    .line 475
    goto :goto_0

    .line 463
    :catch_0
    move-exception v7

    .line 464
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "CameraApp"

    const-string v1, "cursor error "

    invoke-static {v0, v1, v7}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 466
    if-eqz v6, :cond_2

    .line 467
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 466
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 467
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 468
    const/4 v6, 0x0

    .line 466
    :cond_3
    throw v0

    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v8           #result:Z
    :cond_4
    move v0, v9

    .line 478
    goto :goto_0
.end method

.method private static checkMinimumMMSRecordingSize(Landroid/app/Activity;)Z
    .locals 9
    .parameter "activity"

    .prologue
    const-wide/16 v7, 0x0

    .line 608
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 609
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 610
    const-string v4, "CameraApp"

    const-string v5, "check enter by minimum mms recording size"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 613
    .local v1, getExBundle:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 614
    const-string v4, "android.intent.extra.sizeLimit"

    invoke-virtual {v1, v4, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 615
    .local v2, mRequestedSizeLimit:J
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requested size :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    cmp-long v4, v2, v7

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/camera/properties/MmsProperties;->getMmsVideoMinimumSize(Landroid/content/ContentResolver;)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 617
    const/16 v4, 0xb

    sput v4, Lcom/lge/camera/util/CheckStatusManager;->mCheckEnterKind:I

    .line 618
    const/4 v4, 0x0

    .line 622
    .end local v1           #getExBundle:Landroid/os/Bundle;
    .end local v2           #mRequestedSizeLimit:J
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private static checkSafetyCareStatus(Landroid/app/Activity;)Z
    .locals 2
    .parameter "activity"

    .prologue
    .line 626
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/camera/util/AppControlUtil;->getEnableSafetyCare(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 627
    .local v0, enterCamera:Z
    :goto_0
    if-nez v0, :cond_0

    .line 628
    const/16 v1, 0xe

    sput v1, Lcom/lge/camera/util/CheckStatusManager;->mCheckEnterKind:I

    .line 630
    :cond_0
    return v0

    .line 626
    .end local v0           #enterCamera:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkVTCallStatus(Landroid/app/Activity;)Z
    .locals 1
    .parameter "activity"

    .prologue
    .line 333
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/TelephonyUtil;->phoneInVTCall(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    const/4 v0, 0x3

    sput v0, Lcom/lge/camera/util/CheckStatusManager;->mCheckEnterKind:I

    .line 335
    const/4 v0, 0x0

    .line 337
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static checkVoiceShutterEnable(Ljava/lang/String;)Z
    .locals 1
    .parameter "shotMode"

    .prologue
    .line 695
    const-string v0, "shotmode_continuous"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "shotmode_full_continuous"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "shotmode_panorama"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "shotmode_free_panorama"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "shotmode_dual_camera"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 700
    :cond_0
    const/4 v0, 0x0

    .line 702
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static getCameraStateInSDM(Landroid/app/Activity;)Z
    .locals 11
    .parameter "activity"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 499
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    move v0, v9

    .line 530
    :goto_0
    return v0

    .line 503
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "check enter In SDM"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const/4 v6, 0x1

    .line 505
    .local v6, cameraEnableStatus:I
    const/4 v7, 0x0

    .line 508
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/camera/properties/CameraConstants;->SDM_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lge/camera/properties/CameraConstants;->CAMERA_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 510
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 511
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 512
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** cameraEnableStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    if-eqz v7, :cond_1

    .line 521
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 522
    :goto_1
    const/4 v7, 0x0

    .line 526
    :cond_1
    if-ne v6, v9, :cond_5

    move v0, v9

    .line 527
    goto :goto_0

    .line 514
    :cond_2
    :try_start_1
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** cannot access to SDM server DB, cursor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 520
    if-eqz v7, :cond_3

    .line 521
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 522
    const/4 v7, 0x0

    :cond_3
    move v0, v9

    .line 515
    goto :goto_0

    .line 517
    :catch_0
    move-exception v8

    .line 518
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    :try_start_2
    const-string v0, "CameraApp"

    const-string v1, "Could not load photo from database"

    invoke-static {v0, v1, v8}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 520
    if-eqz v7, :cond_1

    .line 521
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 520
    .end local v8           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 521
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 522
    const/4 v7, 0x0

    .line 520
    :cond_4
    throw v0

    .line 529
    :cond_5
    const/16 v0, 0xa

    sput v0, Lcom/lge/camera/util/CheckStatusManager;->mCheckEnterKind:I

    move v0, v10

    .line 530
    goto/16 :goto_0
.end method

.method public static getCheckEnterKind()I
    .locals 1

    .prologue
    .line 109
    sget v0, Lcom/lge/camera/util/CheckStatusManager;->mCheckEnterKind:I

    return v0
.end method

.method public static getCheckEnterOutSecure()I
    .locals 1

    .prologue
    .line 113
    sget v0, Lcom/lge/camera/util/CheckStatusManager;->mCheckEnterOutSecure:I

    return v0
.end method

.method public static isEnterCheckComplete()Z
    .locals 1

    .prologue
    .line 101
    sget-boolean v0, Lcom/lge/camera/util/CheckStatusManager;->mEnterCheckComplete:Z

    return v0
.end method

.method public static isEnterDuringCall()Z
    .locals 1

    .prologue
    .line 123
    sget-boolean v0, Lcom/lge/camera/util/CheckStatusManager;->isEnterDuringCall:Z

    return v0
.end method

.method public static isHDMIConnected()Z
    .locals 12

    .prologue
    const/16 v9, 0x400

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 574
    const/4 v6, 0x0

    .line 575
    .local v6, mHDMIState:I
    new-array v1, v9, [C

    .line 576
    .local v1, buffer:[C
    const-string v0, "/sys/class/switch/hdmi/state"

    .line 578
    .local v0, HDMI_STATE_PATH:Ljava/lang/String;
    const/4 v3, 0x0

    .line 580
    .local v3, file:Ljava/io/FileReader;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 581
    .end local v3           #file:Ljava/io/FileReader;
    .local v4, file:Ljava/io/FileReader;
    const/4 v9, 0x0

    const/16 v10, 0x400

    :try_start_1
    invoke-virtual {v4, v1, v9, v10}, Ljava/io/FileReader;->read([CII)I

    move-result v5

    .line 582
    .local v5, len:I
    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v9, v1, v10, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    move-result v6

    .line 588
    if-eqz v4, :cond_0

    .line 590
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_0
    :goto_0
    move-object v3, v4

    .line 597
    .end local v4           #file:Ljava/io/FileReader;
    .end local v5           #len:I
    .restart local v3       #file:Ljava/io/FileReader;
    :cond_1
    :goto_1
    const-string v9, "CameraApp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mHDMIState = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    if-ne v6, v7, :cond_3

    .line 602
    :goto_2
    return v7

    .line 583
    :catch_0
    move-exception v2

    .line 584
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_3
    const-string v9, "CameraApp"

    const-string v10, "This kernel does not have dock station support"

    invoke-static {v9, v10, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 588
    if-eqz v3, :cond_1

    .line 590
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 591
    :catch_1
    move-exception v2

    .line 592
    .local v2, e:Ljava/io/IOException;
    const-string v9, "CameraApp"

    const-string v10, ""

    :goto_4
    invoke-static {v9, v10, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 585
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 586
    .local v2, e:Ljava/lang/Exception;
    :goto_5
    :try_start_5
    const-string v9, "CameraApp"

    const-string v10, ""

    invoke-static {v9, v10, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 588
    if-eqz v3, :cond_1

    .line 590
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 591
    :catch_3
    move-exception v2

    .line 592
    .local v2, e:Ljava/io/IOException;
    const-string v9, "CameraApp"

    const-string v10, ""

    goto :goto_4

    .line 588
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_6
    if-eqz v3, :cond_2

    .line 590
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 588
    :cond_2
    :goto_7
    throw v7

    :cond_3
    move v7, v8

    .line 602
    goto :goto_2

    .line 591
    :catch_4
    move-exception v2

    .line 592
    .restart local v2       #e:Ljava/io/IOException;
    const-string v8, "CameraApp"

    const-string v9, ""

    invoke-static {v8, v9, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 591
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #file:Ljava/io/FileReader;
    .restart local v4       #file:Ljava/io/FileReader;
    .restart local v5       #len:I
    :catch_5
    move-exception v2

    .line 592
    .restart local v2       #e:Ljava/io/IOException;
    const-string v9, "CameraApp"

    const-string v10, ""

    invoke-static {v9, v10, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 588
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #len:I
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4           #file:Ljava/io/FileReader;
    .restart local v3       #file:Ljava/io/FileReader;
    goto :goto_6

    .line 585
    .end local v3           #file:Ljava/io/FileReader;
    .restart local v4       #file:Ljava/io/FileReader;
    :catch_6
    move-exception v2

    move-object v3, v4

    .end local v4           #file:Ljava/io/FileReader;
    .restart local v3       #file:Ljava/io/FileReader;
    goto :goto_5

    .line 583
    .end local v3           #file:Ljava/io/FileReader;
    .restart local v4       #file:Ljava/io/FileReader;
    :catch_7
    move-exception v2

    move-object v3, v4

    .end local v4           #file:Ljava/io/FileReader;
    .restart local v3       #file:Ljava/io/FileReader;
    goto :goto_3
.end method

.method private static isRCSeWorkingOn(Landroid/app/Activity;)Z
    .locals 10
    .parameter "activity"

    .prologue
    const/4 v9, 0x1

    .line 283
    const-string v1, "CameraApp"

    const-string v2, "check enter by RCS status()"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const/4 v8, 0x0

    .line 285
    .local v8, nISWorking:I
    const/4 v0, 0x0

    .line 286
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 288
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 289
    if-eqz v0, :cond_0

    .line 290
    const-string v1, "content://com.lge.ims.provisioning/workings"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 292
    :cond_0
    if-eqz v6, :cond_4

    .line 293
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 294
    const-string v1, "rcs_e_is_working"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    goto :goto_0

    .line 297
    :catch_0
    move-exception v7

    .line 298
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v1, "CameraApp"

    const-string v2, "cursor error "

    invoke-static {v1, v2, v7}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 300
    if-eqz v6, :cond_1

    .line 301
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 302
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :goto_1
    const/4 v6, 0x0

    .line 305
    :cond_1
    if-ne v8, v9, :cond_3

    move v1, v9

    :goto_2
    return v1

    .line 300
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 301
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 302
    const/4 v6, 0x0

    .line 300
    :cond_2
    throw v1

    .line 305
    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 300
    :cond_4
    if-eqz v6, :cond_1

    .line 301
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method private static isRmsConnected(Landroid/app/Activity;)Z
    .locals 10
    .parameter "activity"

    .prologue
    const/4 v9, 0x1

    .line 309
    const/4 v6, 0x0

    .line 310
    .local v6, connected:I
    const/4 v7, 0x0

    .line 312
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 313
    .local v0, cr:Landroid/content/ContentResolver;
    if-eqz v0, :cond_3

    .line 314
    const-string v1, "content://com.lguplus.rms/service"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 315
    if-eqz v7, :cond_3

    .line 316
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 317
    const-string v1, "connected"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    goto :goto_0

    .line 321
    .end local v0           #cr:Landroid/content/ContentResolver;
    :catch_0
    move-exception v8

    .line 322
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "CameraApp"

    const-string v2, "cursor error "

    invoke-static {v1, v2, v8}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 324
    if-eqz v7, :cond_0

    .line 325
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 326
    .end local v8           #e:Ljava/lang/Exception;
    :goto_1
    const/4 v7, 0x0

    .line 329
    :cond_0
    if-ne v6, v9, :cond_2

    move v1, v9

    :goto_2
    return v1

    .line 324
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_1

    .line 325
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 326
    const/4 v7, 0x0

    .line 324
    :cond_1
    throw v1

    .line 329
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 324
    .restart local v0       #cr:Landroid/content/ContentResolver;
    :cond_3
    if-eqz v7, :cond_0

    .line 325
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method public static setCheckEnterOutSecure(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 117
    sput p0, Lcom/lge/camera/util/CheckStatusManager;->mCheckEnterOutSecure:I

    .line 118
    return-void
.end method

.method public static setEnterCheckComplete(Z)V
    .locals 0
    .parameter "complete"

    .prologue
    .line 105
    sput-boolean p0, Lcom/lge/camera/util/CheckStatusManager;->mEnterCheckComplete:Z

    .line 106
    return-void
.end method

.method private static setIsEnterDuringCall(Z)V
    .locals 3
    .parameter "duringCall"

    .prologue
    .line 127
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter camera during call : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    sput-boolean p0, Lcom/lge/camera/util/CheckStatusManager;->isEnterDuringCall:Z

    .line 129
    return-void
.end method

.method public static final setRatioForBacklightInRecording()F
    .locals 5

    .prologue
    .line 797
    const-string v2, "CameraApp"

    const-string v3, "back setRatioForBacklightInRecording"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    const-string v2, "ro.lge.heat_lcd_percent"

    const-wide/16 v3, -0x1

    invoke-static {v2, v3, v4}, Lcom/lge/camera/util/CheckStatusManager;->setTemperatureCondition(Ljava/lang/String;J)J

    move-result-wide v0

    .line 799
    .local v0, result:J
    const-wide/16 v2, 0x64

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const-wide/16 v2, 0x32

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 800
    :cond_0
    const/high16 v2, 0x3f80

    .line 803
    :goto_0
    return v2

    .line 802
    :cond_1
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "back setRatioForBacklightInRecording end : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    long-to-float v2, v0

    const v3, 0x3c23d70a

    mul-float/2addr v2, v3

    goto :goto_0
.end method

.method public static final setSecondForBacklightInRecording()J
    .locals 5

    .prologue
    .line 787
    const-string v2, "CameraApp"

    const-string v3, "back setSecondForBacklight"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    const-string v2, "ro.lge.heat_lcd_second"

    const-wide/16 v3, -0x1

    invoke-static {v2, v3, v4}, Lcom/lge/camera/util/CheckStatusManager;->setTemperatureCondition(Ljava/lang/String;J)J

    move-result-wide v0

    .line 789
    .local v0, result:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 790
    const-wide/16 v0, -0x1

    .line 792
    :cond_0
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "back setSecondForBacklight end : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    return-wide v0
.end method

.method public static setTelephonyStateCheckSkip(Z)V
    .locals 3
    .parameter "callCheck"

    .prologue
    .line 246
    sput-boolean p0, Lcom/lge/camera/util/CheckStatusManager;->isTelephonyStateCheckSkip:Z

    .line 247
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TelephonyStateCheck = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/lge/camera/util/CheckStatusManager;->isTelephonyStateCheckSkip:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method public static final setTemperatureCondition(Ljava/lang/String;D)D
    .locals 7
    .parameter "prop"
    .parameter "defaultValue"

    .prologue
    .line 723
    move-wide v1, p1

    .line 724
    .local v1, result:D
    const/4 v0, 0x0

    .line 725
    .local v0, isNeedForcedSetting:Z
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 726
    .local v3, value:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 727
    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 728
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Temperature condition is empty ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "). So use default value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    const/4 v0, 0x1

    .line 739
    :goto_0
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isNeedForcedSetting : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    if-eqz v0, :cond_0

    .line 741
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 742
    const-string v4, "ro.lge.heat_finish"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 743
    const-wide/high16 v1, 0x4046

    .line 760
    :cond_0
    :goto_1
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " value ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    return-wide v1

    .line 731
    :cond_1
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    goto :goto_0

    .line 734
    :cond_2
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Temperature condition is null ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "). So use default value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    const/4 v0, 0x1

    goto :goto_0

    .line 744
    :cond_3
    const-string v4, "ro.lge.heat_block"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 745
    const-wide v1, 0x4045400000000000L

    goto :goto_1
.end method

.method public static final setTemperatureCondition(Ljava/lang/String;J)J
    .locals 6
    .parameter "prop"
    .parameter "defaultValue"

    .prologue
    .line 770
    move-wide v0, p1

    .line 771
    .local v0, result:J
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 772
    .local v2, value:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 773
    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 774
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Temperature condition is empty ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "). So use default value ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    :goto_0
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "value ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    return-wide v0

    .line 776
    :cond_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    .line 779
    :cond_1
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Temperature condition is null ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "). So use default value ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final useBackLightControlInRecording()Z
    .locals 4

    .prologue
    .line 807
    const-string v0, "CameraApp"

    const-string v1, "useBackLightControlInRecording"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    sget-wide v0, Lcom/lge/camera/util/CheckStatusManager;->TEMPERATURE_LCD_CONTROL_SECOND:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
