.class final Lcom/android/server/power/DoubleTapService;
.super Ljava/lang/Object;
.source "DoubleTapService.java"


# static fields
.field private static final ACTION_DOUBLE_TAP:Ljava/lang/String; = "com.lge.intent.action.ACTION_DOUBLE_TAP"

.field private static final DBG:Z = true

.field private static final GESTURE_TILT_VIEW:Ljava/lang/String; = "gesture_tilt_view"

.field private static final LED:Ljava/lang/String; = "/sys/class/g2_rgb_led/use_patterns/onoff_patterns"

.field private static LED_B_LP5521:Ljava/lang/String; = null

.field private static LED_G_LP5521:Ljava/lang/String; = null

.field private static LED_R_LP5521:Ljava/lang/String; = null

.field private static final OFF_COLOR:Ljava/lang/String; = "0x000000"

.field private static final PROXIMITY_NEGATIVE:I = 0x0

.field private static final PROXIMITY_POSITIVE:I = 0x1

.field private static final PROXIMITY_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "DoubleTapService"

.field private static final TILT_GESTURE_PACKAGE_NAME:Ljava/lang/String; = "com.lge.tiltgesture"

.field private static final TOUCH_GESTURE_PATH:Ljava/lang/String; = "/sys/devices/virtual/input/lge_touch/touch_gesture"

.field private static final WHITE_COLOR:Ljava/lang/String; = "0xffffff"

.field private static isLP5521:Z

.field private static mIsTouchDT:Z

.field private static mTiltingGestureTest:Z

.field private static mUseLollipopCover:Z

.field private static mUseQuickCover:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentQuickCover:Z

.field private final mDoubleTapListener:Landroid/hardware/SensorEventListener;

.field private mDoubleTapSensor:Landroid/hardware/Sensor;

.field private mDoubleTapSetting:Z

.field private mEmotionalEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field private mInit:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProximity:I

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorEnabled:Z

.field private final mProximitySensorListener:Landroid/hardware/SensorEventListener;

.field private mRunnable:Ljava/lang/Runnable;

.field private mRunnableResetLed:Ljava/lang/Runnable;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mTiltingGestureSetting:Z

.field private mTimeAfterSleep:J

.field private mTimeToSleep:J

.field private mTouchGestureWakeupObserver:Landroid/os/UEventObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    sput-boolean v1, Lcom/android/server/power/DoubleTapService;->mUseQuickCover:Z

    .line 48
    sput-boolean v1, Lcom/android/server/power/DoubleTapService;->mUseLollipopCover:Z

    .line 62
    const-string v0, "/sys/class/leds/R/brightness"

    sput-object v0, Lcom/android/server/power/DoubleTapService;->LED_R_LP5521:Ljava/lang/String;

    .line 63
    const-string v0, "/sys/class/leds/G/brightness"

    sput-object v0, Lcom/android/server/power/DoubleTapService;->LED_G_LP5521:Ljava/lang/String;

    .line 64
    const-string v0, "/sys/class/leds/B/brightness"

    sput-object v0, Lcom/android/server/power/DoubleTapService;->LED_B_LP5521:Ljava/lang/String;

    .line 65
    sput-boolean v1, Lcom/android/server/power/DoubleTapService;->isLP5521:Z

    .line 66
    sput-boolean v1, Lcom/android/server/power/DoubleTapService;->mIsTouchDT:Z

    .line 71
    const-string v0, "zee"

    const-string v1, "ro.product.device"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/DoubleTapService;->mTiltingGestureTest:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/SensorManager;)V
    .locals 6
    .parameter "context"
    .parameter "sensorManager"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 77
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v3, p0, Lcom/android/server/power/DoubleTapService;->mInit:Z

    .line 43
    iput-boolean v2, p0, Lcom/android/server/power/DoubleTapService;->mCurrentQuickCover:Z

    .line 45
    iput-boolean v3, p0, Lcom/android/server/power/DoubleTapService;->mEmotionalEnabled:Z

    .line 54
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/power/DoubleTapService;->mProximity:I

    .line 74
    iput-boolean v3, p0, Lcom/android/server/power/DoubleTapService;->mTiltingGestureSetting:Z

    .line 228
    new-instance v1, Lcom/android/server/power/DoubleTapService$2;

    invoke-direct {v1, p0}, Lcom/android/server/power/DoubleTapService$2;-><init>(Lcom/android/server/power/DoubleTapService;)V

    iput-object v1, p0, Lcom/android/server/power/DoubleTapService;->mDoubleTapListener:Landroid/hardware/SensorEventListener;

    .line 277
    new-instance v1, Lcom/android/server/power/DoubleTapService$3;

    invoke-direct {v1, p0}, Lcom/android/server/power/DoubleTapService$3;-><init>(Lcom/android/server/power/DoubleTapService;)V

    iput-object v1, p0, Lcom/android/server/power/DoubleTapService;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    .line 306
    new-instance v1, Lcom/android/server/power/DoubleTapService$4;

    invoke-direct {v1, p0}, Lcom/android/server/power/DoubleTapService$4;-><init>(Lcom/android/server/power/DoubleTapService;)V

    iput-object v1, p0, Lcom/android/server/power/DoubleTapService;->mRunnable:Ljava/lang/Runnable;

    .line 321
    new-instance v1, Lcom/android/server/power/DoubleTapService$5;

    invoke-direct {v1, p0}, Lcom/android/server/power/DoubleTapService$5;-><init>(Lcom/android/server/power/DoubleTapService;)V

    iput-object v1, p0, Lcom/android/server/power/DoubleTapService;->mTouchGestureWakeupObserver:Landroid/os/UEventObserver;

    .line 357
    new-instance v1, Lcom/android/server/power/DoubleTapService$6;

    invoke-direct {v1, p0}, Lcom/android/server/power/DoubleTapService$6;-><init>(Lcom/android/server/power/DoubleTapService;)V

    iput-object v1, p0, Lcom/android/server/power/DoubleTapService;->mRunnableResetLed:Ljava/lang/Runnable;

    .line 78
    iput-object p1, p0, Lcom/android/server/power/DoubleTapService;->mContext:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/android/server/power/DoubleTapService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 80
    iput-boolean v2, p0, Lcom/android/server/power/DoubleTapService;->mInit:Z

    .line 81
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/DoubleTapService;->mHandler:Landroid/os/Handler;

    .line 82
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/power/DoubleTapService;->mTimeToSleep:J

    iput-wide v4, p0, Lcom/android/server/power/DoubleTapService;->mTimeAfterSleep:J

    .line 83
    iget-object v1, p0, Lcom/android/server/power/DoubleTapService;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v4, 0x19

    invoke-virtual {v1, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/DoubleTapService;->mDoubleTapSensor:Landroid/hardware/Sensor;

    .line 84
    iget-object v1, p0, Lcom/android/server/power/DoubleTapService;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/DoubleTapService;->mProximitySensor:Landroid/hardware/Sensor;

    .line 85
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/power/DoubleTapService;->mPowerManager:Landroid/os/PowerManager;

    .line 88
    iget-object v1, p0, Lcom/android/server/power/DoubleTapService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x2070010

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/power/DoubleTapService;->mUseQuickCover:Z

    .line 90
    iget-object v1, p0, Lcom/android/server/power/DoubleTapService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x2070011

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/power/DoubleTapService;->mUseLollipopCover:Z

    .line 93
    const-string v1, "vu3"

    const-string v4, "ro.product.device"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    sput-boolean v2, Lcom/android/server/power/DoubleTapService;->isLP5521:Z

    .line 95
    sput-boolean v2, Lcom/android/server/power/DoubleTapService;->mIsTouchDT:Z

    .line 98
    :cond_0
    const-string v1, "g2"

    const-string v4, "ro.product.device"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    sput-boolean v2, Lcom/android/server/power/DoubleTapService;->mIsTouchDT:Z

    .line 102
    :cond_1
    const-string v1, "zee"

    const-string v4, "ro.product.device"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 103
    sput-boolean v2, Lcom/android/server/power/DoubleTapService;->mIsTouchDT:Z

    .line 106
    :cond_2
    sget-boolean v1, Lcom/android/server/power/DoubleTapService;->mIsTouchDT:Z

    if-eqz v1, :cond_3

    .line 107
    iget-object v1, p0, Lcom/android/server/power/DoubleTapService;->mTouchGestureWakeupObserver:Landroid/os/UEventObserver;

    const-string v4, "DEVPATH=/devices/system/lge_touch/lge_touch0"

    invoke-virtual {v1, v4}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 110
    :cond_3
    sget-boolean v1, Lcom/android/server/power/DoubleTapService;->mTiltingGestureTest:Z

    if-eqz v1, :cond_4

    .line 112
    new-instance v0, Lcom/android/server/power/DoubleTapService$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/DoubleTapService$1;-><init>(Lcom/android/server/power/DoubleTapService;Landroid/os/Handler;)V

    .line 121
    .local v0, mContentObserver:Landroid/database/ContentObserver;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "gesture_tilt_view"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 124
    iget-object v1, p0, Lcom/android/server/power/DoubleTapService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "gesture_tilt_view"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_5

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/power/DoubleTapService;->mTiltingGestureSetting:Z

    .line 128
    .end local v0           #mContentObserver:Landroid/database/ContentObserver;
    :cond_4
    return-void

    .restart local v0       #mContentObserver:Landroid/database/ContentObserver;
    :cond_5
    move v1, v3

    .line 124
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/power/DoubleTapService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/android/server/power/DoubleTapService;->mTiltingGestureSetting:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/power/DoubleTapService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/android/server/power/DoubleTapService;->mTiltingGestureSetting:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/power/DoubleTapService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/server/power/DoubleTapService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/android/server/power/DoubleTapService;->LED_R_LP5521:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/power/DoubleTapService;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/DoubleTapService;->writeValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/android/server/power/DoubleTapService;->LED_G_LP5521:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/android/server/power/DoubleTapService;->LED_B_LP5521:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400()Z
    .locals 1

    .prologue
    .line 25
    sget-boolean v0, Lcom/android/server/power/DoubleTapService;->mTiltingGestureTest:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/power/DoubleTapService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/android/server/power/DoubleTapService;->mCurrentQuickCover:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/power/DoubleTapService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/server/power/DoubleTapService;->setProximitySensorEnabled(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/power/DoubleTapService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/android/server/power/DoubleTapService;->mProximity:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/power/DoubleTapService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput p1, p0, Lcom/android/server/power/DoubleTapService;->mProximity:I

    return p1
.end method

.method static synthetic access$1800()Z
    .locals 1

    .prologue
    .line 25
    sget-boolean v0, Lcom/android/server/power/DoubleTapService;->mIsTouchDT:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/power/DoubleTapService;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/server/power/DoubleTapService;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/power/DoubleTapService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/android/server/power/DoubleTapService;->mInit:Z

    return v0
.end method

.method static synthetic access$2000()Z
    .locals 1

    .prologue
    .line 25
    sget-boolean v0, Lcom/android/server/power/DoubleTapService;->mUseQuickCover:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/power/DoubleTapService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/android/server/power/DoubleTapService;->mInit:Z

    return p1
.end method

.method static synthetic access$2100()Z
    .locals 1

    .prologue
    .line 25
    sget-boolean v0, Lcom/android/server/power/DoubleTapService;->mUseLollipopCover:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/power/DoubleTapService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/server/power/DoubleTapService;->readValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/power/DoubleTapService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/android/server/power/DoubleTapService;->mTimeAfterSleep:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/server/power/DoubleTapService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-wide p1, p0, Lcom/android/server/power/DoubleTapService;->mTimeAfterSleep:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/android/server/power/DoubleTapService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/android/server/power/DoubleTapService;->mTimeToSleep:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/android/server/power/DoubleTapService;)Landroid/os/PowerManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/server/power/DoubleTapService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/power/DoubleTapService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/android/server/power/DoubleTapService;->mEmotionalEnabled:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/power/DoubleTapService;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/server/power/DoubleTapService;->mRunnableResetLed:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/power/DoubleTapService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/server/power/DoubleTapService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900()Z
    .locals 1

    .prologue
    .line 25
    sget-boolean v0, Lcom/android/server/power/DoubleTapService;->isLP5521:Z

    return v0
.end method

.method private readValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "path"

    .prologue
    .line 403
    const-string v2, ""

    .line 404
    .local v2, value:Ljava/lang/String;
    const/4 v0, 0x0

    .line 406
    .local v0, in:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 407
    .end local v0           #in:Ljava/io/BufferedReader;
    .local v1, in:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 408
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 412
    if-eqz v1, :cond_0

    .line 413
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v0, v1

    .line 419
    .end local v1           #in:Ljava/io/BufferedReader;
    .restart local v0       #in:Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    if-nez v2, :cond_2

    .line 420
    const-string v2, ""

    .line 422
    :cond_2
    return-object v2

    .line 415
    .end local v0           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    :catch_0
    move-exception v3

    move-object v0, v1

    .line 416
    .end local v1           #in:Ljava/io/BufferedReader;
    .restart local v0       #in:Ljava/io/BufferedReader;
    goto :goto_0

    .line 409
    :catch_1
    move-exception v3

    .line 412
    :goto_1
    if-eqz v0, :cond_1

    .line 413
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 415
    :catch_2
    move-exception v3

    goto :goto_0

    .line 411
    :catchall_0
    move-exception v3

    .line 412
    :goto_2
    if-eqz v0, :cond_3

    .line 413
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 415
    :cond_3
    :goto_3
    throw v3

    :catch_3
    move-exception v4

    goto :goto_3

    .line 411
    .end local v0           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1           #in:Ljava/io/BufferedReader;
    .restart local v0       #in:Ljava/io/BufferedReader;
    goto :goto_2

    .line 409
    .end local v0           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    :catch_4
    move-exception v3

    move-object v0, v1

    .end local v1           #in:Ljava/io/BufferedReader;
    .restart local v0       #in:Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method private setProximitySensorEnabled(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 214
    const-string v0, "DoubleTapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProximitySensorEnabled() : enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", by = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    monitor-enter p0

    .line 217
    if-eqz p1, :cond_1

    .line 218
    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Lcom/android/server/power/DoubleTapService;->mProximity:I

    .line 219
    iget-object v0, p0, Lcom/android/server/power/DoubleTapService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/DoubleTapService;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/power/DoubleTapService;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 225
    :cond_0
    :goto_0
    monitor-exit p0

    .line 226
    return-void

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/DoubleTapService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/DoubleTapService;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 222
    sget-boolean v0, Lcom/android/server/power/DoubleTapService;->mIsTouchDT:Z

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/server/power/DoubleTapService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/DoubleTapService;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private supportTiltGesture(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    .line 427
    const/4 v1, 0x1

    .line 428
    .local v1, isPackageInstalled:Z
    const/4 v2, 0x0

    .line 429
    .local v2, packageInfo:Landroid/content/pm/PackageInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 433
    .local v3, packageManager:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v4, "com.lge.tiltgesture"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 440
    :goto_0
    if-nez v2, :cond_0

    .line 441
    const/4 v1, 0x0

    .line 444
    :cond_0
    return v1

    .line 436
    :catch_0
    move-exception v0

    .line 437
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private writeValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "path"
    .parameter "value"

    .prologue
    .line 382
    const/4 v0, 0x0

    .line 384
    .local v0, bw:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 385
    .end local v0           #bw:Ljava/io/BufferedWriter;
    .local v1, bw:Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 386
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 387
    const/4 v3, 0x1

    .line 393
    if-eqz v1, :cond_0

    .line 394
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v0, v1

    .line 398
    .end local v1           #bw:Ljava/io/BufferedWriter;
    .restart local v0       #bw:Ljava/io/BufferedWriter;
    :cond_1
    :goto_1
    return v3

    .line 396
    .end local v0           #bw:Ljava/io/BufferedWriter;
    .restart local v1       #bw:Ljava/io/BufferedWriter;
    :catch_0
    move-exception v2

    .line 397
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 388
    .end local v1           #bw:Ljava/io/BufferedWriter;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v0       #bw:Ljava/io/BufferedWriter;
    :catch_1
    move-exception v2

    .line 389
    .local v2, e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 390
    const/4 v3, 0x0

    .line 393
    if-eqz v0, :cond_1

    .line 394
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 396
    :catch_2
    move-exception v2

    .line 397
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 392
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 393
    :goto_3
    if-eqz v0, :cond_2

    .line 394
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 398
    :cond_2
    :goto_4
    throw v3

    .line 396
    :catch_3
    move-exception v2

    .line 397
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 392
    .end local v0           #bw:Ljava/io/BufferedWriter;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #bw:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1           #bw:Ljava/io/BufferedWriter;
    .restart local v0       #bw:Ljava/io/BufferedWriter;
    goto :goto_3

    .line 388
    .end local v0           #bw:Ljava/io/BufferedWriter;
    .restart local v1       #bw:Ljava/io/BufferedWriter;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1           #bw:Ljava/io/BufferedWriter;
    .restart local v0       #bw:Ljava/io/BufferedWriter;
    goto :goto_2
.end method


# virtual methods
.method public updateCoverState(Z)V
    .locals 5
    .parameter "coverState"

    .prologue
    const/4 v2, 0x0

    .line 200
    const-string v1, "DoubleTapService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCoverState "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    if-nez p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/power/DoubleTapService;->mCurrentQuickCover:Z

    .line 202
    sget-boolean v1, Lcom/android/server/power/DoubleTapService;->mIsTouchDT:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/DoubleTapService;->mCurrentQuickCover:Z

    if-nez v1, :cond_0

    .line 203
    invoke-direct {p0, v2}, Lcom/android/server/power/DoubleTapService;->setProximitySensorEnabled(Z)V

    .line 205
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_1
    const-string v2, "/sys/devices/virtual/input/lge_touch/touch_gesture"

    iget-boolean v1, p0, Lcom/android/server/power/DoubleTapService;->mDoubleTapSetting:Z

    if-eqz v1, :cond_2

    const-string v1, "1"

    :goto_2
    invoke-direct {p0, v2, v1}, Lcom/android/server/power/DoubleTapService;->writeValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 211
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 201
    goto :goto_0

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DoubleTapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ex : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 209
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    const-string v1, "0"

    goto :goto_2
.end method

.method public updateScreenState(Z)V
    .locals 4
    .parameter "screen_on"

    .prologue
    const/4 v3, 0x0

    .line 158
    const-string v0, "DoubleTapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateScreenState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    if-eqz p1, :cond_2

    .line 162
    sget-boolean v0, Lcom/android/server/power/DoubleTapService;->mIsTouchDT:Z

    if-eqz v0, :cond_0

    .line 163
    invoke-direct {p0, v3}, Lcom/android/server/power/DoubleTapService;->setProximitySensorEnabled(Z)V

    .line 179
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/android/server/power/DoubleTapService;->mTiltingGestureTest:Z

    if-eqz v0, :cond_1

    .line 180
    iget-boolean v0, p0, Lcom/android/server/power/DoubleTapService;->mTiltingGestureSetting:Z

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/android/server/power/DoubleTapService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    .line 185
    if-nez p1, :cond_3

    .line 186
    const-string v0, "DoubleTapService"

    const-string v1, "[TILTING] registerListener - mDoubleTapListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lcom/android/server/power/DoubleTapService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/DoubleTapService;->mDoubleTapListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/power/DoubleTapService;->mDoubleTapSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 197
    :cond_1
    :goto_1
    return-void

    .line 167
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/DoubleTapService;->mTimeToSleep:J

    .line 170
    invoke-direct {p0, v3}, Lcom/android/server/power/DoubleTapService;->setProximitySensorEnabled(Z)V

    .line 172
    sget-boolean v0, Lcom/android/server/power/DoubleTapService;->mIsTouchDT:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/DoubleTapService;->mCurrentQuickCover:Z

    if-eqz v0, :cond_0

    .line 173
    iget-boolean v0, p0, Lcom/android/server/power/DoubleTapService;->mDoubleTapSetting:Z

    invoke-direct {p0, v0}, Lcom/android/server/power/DoubleTapService;->setProximitySensorEnabled(Z)V

    .line 174
    const-string v0, "DoubleTapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProximitySensorEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/power/DoubleTapService;->mDoubleTapSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 190
    :cond_3
    const-string v0, "DoubleTapService"

    const-string v1, "[TILTING] unregisterListener - mDoubleTapListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcom/android/server/power/DoubleTapService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/DoubleTapService;->mDoubleTapListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_1
.end method

.method public updateSettings(ZZ)V
    .locals 4
    .parameter "doubleTapSetting"
    .parameter "emotionalSetting"

    .prologue
    .line 131
    const-string v0, "DoubleTapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSettings "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iput-boolean p2, p0, Lcom/android/server/power/DoubleTapService;->mEmotionalEnabled:Z

    .line 134
    sget-boolean v0, Lcom/android/server/power/DoubleTapService;->mIsTouchDT:Z

    if-eqz v0, :cond_3

    .line 135
    iput-boolean p1, p0, Lcom/android/server/power/DoubleTapService;->mDoubleTapSetting:Z

    .line 136
    const-string v1, "/sys/devices/virtual/input/lge_touch/touch_gesture"

    iget-boolean v0, p0, Lcom/android/server/power/DoubleTapService;->mDoubleTapSetting:Z

    if-eqz v0, :cond_2

    const-string v0, "1"

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/android/server/power/DoubleTapService;->writeValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 148
    :cond_0
    :goto_1
    sget-boolean v0, Lcom/android/server/power/DoubleTapService;->mTiltingGestureTest:Z

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/android/server/power/DoubleTapService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/power/DoubleTapService;->supportTiltGesture(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    iput-boolean p1, p0, Lcom/android/server/power/DoubleTapService;->mTiltingGestureSetting:Z

    .line 155
    :cond_1
    return-void

    .line 136
    :cond_2
    const-string v0, "0"

    goto :goto_0

    .line 138
    :cond_3
    iget-object v0, p0, Lcom/android/server/power/DoubleTapService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 140
    if-eqz p1, :cond_4

    .line 141
    iget-object v0, p0, Lcom/android/server/power/DoubleTapService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/DoubleTapService;->mDoubleTapListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/power/DoubleTapService;->mDoubleTapSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_1

    .line 143
    :cond_4
    iget-object v0, p0, Lcom/android/server/power/DoubleTapService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/DoubleTapService;->mDoubleTapListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_1
.end method
