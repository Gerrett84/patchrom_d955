.class public Lcom/android/server/ZeroWaitManager;
.super Ljava/lang/Object;
.source "ZeroWaitManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ZeroWaitManager$Bootani;
    }
.end annotation


# static fields
.field private static final ACTION_LG_ZW_RESUME:Ljava/lang/String; = "sys.lge.zw.resume"

.field private static final ACTION_ZWAIT_ENABLE:Ljava/lang/String; = "sys.lge.zwait.enable"

.field private static final BIT_ZW_ADB:I = 0x20

.field private static final BIT_ZW_AIRPLANE:I = 0x1

.field private static final BIT_ZW_BT:I = 0x2

.field private static final BIT_ZW_GPS:I = 0x4

.field private static final BIT_ZW_KNOCKON:I = 0x40

.field private static final BIT_ZW_NFC:I = 0x10

.field private static final BIT_ZW_WIFI:I = 0x8

.field private static final PERSIST_PROPERTY:Ljava/lang/String; = "persist.sys.lge.zwait"

.field private static final PERSIST_ZWAIT_ENABLED:Ljava/lang/String; = "persist.sys.lge.zwait_enable"

.field private static final SETTING_KNOCK_ON:Ljava/lang/String; = "gesture_trun_screen_on"

.field private static final STATE_FILE_PATH:Ljava/lang/String; = "/sys/class/zwait/state"

.field private static final TAG:Ljava/lang/String; = "LGZW"

.field private static final WL_RECOVER_FILE_PATH:Ljava/lang/String; = "/sys/power/wake_lock"

.field private static final ZWMODE_OFF:I = 0x0

.field private static final ZWMODE_SYSTEM:I = 0x1

.field private static final ZWMODE_USER:I = 0x2

.field private static mIsRunBootanim:Z

.field private static mIsRunShutdownanim:Z

.field private static mZwaitReady:Z


# instance fields
.field private WakeLockTimeout:Z

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAlarmManager:Lcom/android/server/AlarmManagerService;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBatteryService:Lcom/android/server/BatteryService;

.field private mBluetooth:Landroid/bluetooth/BluetoothAdapter;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mEmptyView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mLightsService:Lcom/android/server/LightsService;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mObserver:Landroid/os/UEventObserver;

.field private mPM:Landroid/os/PowerManager;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProgressInEnter:Z

.field private mProgressInExit:Z

.field private mSensorManager:Landroid/hardware/SystemSensorManager;

.field private mTimer:Ljava/util/Timer;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWifi:Landroid/net/wifi/WifiManager;

.field private mZWMode:I

.field private mZeroWaitReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 107
    sput-boolean v0, Lcom/android/server/ZeroWaitManager;->mIsRunShutdownanim:Z

    .line 108
    sput-boolean v0, Lcom/android/server/ZeroWaitManager;->mIsRunBootanim:Z

    .line 109
    sput-boolean v0, Lcom/android/server/ZeroWaitManager;->mZwaitReady:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/LightsService;Lcom/android/server/power/PowerManagerService;Lcom/android/server/BatteryService;)V
    .locals 1
    .parameter "context"
    .parameter "lights"
    .parameter "power"
    .parameter "battery"

    .prologue
    const/4 v0, 0x0

    .line 570
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput v0, p0, Lcom/android/server/ZeroWaitManager;->mZWMode:I

    .line 105
    iput-boolean v0, p0, Lcom/android/server/ZeroWaitManager;->mProgressInEnter:Z

    .line 106
    iput-boolean v0, p0, Lcom/android/server/ZeroWaitManager;->mProgressInExit:Z

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ZeroWaitManager;->mEmptyView:Landroid/view/View;

    .line 162
    new-instance v0, Lcom/android/server/ZeroWaitManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/ZeroWaitManager$1;-><init>(Lcom/android/server/ZeroWaitManager;)V

    iput-object v0, p0, Lcom/android/server/ZeroWaitManager;->mHandler:Landroid/os/Handler;

    .line 172
    new-instance v0, Lcom/android/server/ZeroWaitManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/ZeroWaitManager$2;-><init>(Lcom/android/server/ZeroWaitManager;)V

    iput-object v0, p0, Lcom/android/server/ZeroWaitManager;->mObserver:Landroid/os/UEventObserver;

    .line 187
    new-instance v0, Lcom/android/server/ZeroWaitManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/ZeroWaitManager$3;-><init>(Lcom/android/server/ZeroWaitManager;)V

    iput-object v0, p0, Lcom/android/server/ZeroWaitManager;->mZeroWaitReceiver:Landroid/content/BroadcastReceiver;

    .line 571
    iput-object p1, p0, Lcom/android/server/ZeroWaitManager;->mContext:Landroid/content/Context;

    .line 572
    iput-object p2, p0, Lcom/android/server/ZeroWaitManager;->mLightsService:Lcom/android/server/LightsService;

    .line 573
    iput-object p3, p0, Lcom/android/server/ZeroWaitManager;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 574
    iput-object p4, p0, Lcom/android/server/ZeroWaitManager;->mBatteryService:Lcom/android/server/BatteryService;

    .line 575
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/android/server/ZeroWaitManager;->mIsRunBootanim:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    sput-boolean p0, Lcom/android/server/ZeroWaitManager;->mIsRunBootanim:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/server/ZeroWaitManager;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/ZeroWaitManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/ZeroWaitManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/server/ZeroWaitManager;->delay(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/ZeroWaitManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/server/ZeroWaitManager;->hideEmptyView()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/ZeroWaitManager;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/ZeroWaitManager;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$502(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    sput-boolean p0, Lcom/android/server/ZeroWaitManager;->mZwaitReady:Z

    return p0
.end method

.method static synthetic access$602(Lcom/android/server/ZeroWaitManager;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/server/ZeroWaitManager;->mTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/server/ZeroWaitManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/server/ZeroWaitManager;->WakeLockTimeout:Z

    return p1
.end method

.method private dealPartialWakelocks(Z)Z
    .locals 9
    .parameter "ignore"

    .prologue
    const/4 v4, 0x0

    const v8, 0xffff

    const/4 v5, 0x1

    .line 283
    iget-object v3, p0, Lcom/android/server/ZeroWaitManager;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    iput-object v3, p0, Lcom/android/server/ZeroWaitManager;->mActivityManager:Landroid/app/ActivityManager;

    .line 284
    iget-object v3, p0, Lcom/android/server/ZeroWaitManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 286
    .local v2, mRunningApps:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v2, :cond_1

    .line 287
    const-string v3, "LGZW"

    const-string v4, "getRunningAppProcesses() or getRunningServices() returned null pointer!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v3, v5

    .line 315
    :goto_0
    return v3

    .line 289
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 290
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 291
    .local v0, ai:Landroid/app/ActivityManager$RunningAppProcessInfo;
    if-eqz p1, :cond_5

    .line 292
    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    const/16 v6, 0x2710

    if-ge v3, v6, :cond_2

    .line 293
    const-string v3, "LGZW"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "skip "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "(pid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " uid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for importance"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v3, p0, Lcom/android/server/ZeroWaitManager;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    iget v6, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-virtual {v3, v6}, Lcom/android/server/power/PowerManagerService;->getWakeLockFlags(I)I

    move-result v3

    and-int/2addr v3, v8

    if-ne v3, v5, :cond_3

    .line 296
    const-string v3, "LGZW"

    const-string v5, "service get partail wakelock"

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 297
    goto :goto_0

    .line 301
    :cond_2
    iget-object v3, p0, Lcom/android/server/ZeroWaitManager;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    iget v6, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-virtual {v3, v6}, Lcom/android/server/power/PowerManagerService;->getWakeLockFlags(I)I

    move-result v3

    and-int/2addr v3, v8

    if-ne v3, v5, :cond_4

    .line 303
    const-string v3, "LGZW"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Partial WakeLock process name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " uid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " pid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 305
    :cond_4
    const-string v3, "LGZW"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "process name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " uid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " pid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 308
    :cond_5
    iget-object v3, p0, Lcom/android/server/ZeroWaitManager;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    iget v6, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-virtual {v3, v6}, Lcom/android/server/power/PowerManagerService;->getWakeLockFlags(I)I

    move-result v3

    and-int/2addr v3, v8

    if-ne v3, v5, :cond_3

    move v3, v4

    .line 310
    goto/16 :goto_0
.end method

.method private delay(I)V
    .locals 3
    .parameter "ms"

    .prologue
    .line 564
    int-to-long v1, p1

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    :goto_0
    return-void

    .line 565
    :catch_0
    move-exception v0

    .line 566
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "LGZW"

    const-string v2, "delay does not work properly"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private forceKillActiveApps()V
    .locals 14

    .prologue
    .line 319
    iget-object v11, p0, Lcom/android/server/ZeroWaitManager;->mContext:Landroid/content/Context;

    const-string v12, "activity"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManager;

    iput-object v11, p0, Lcom/android/server/ZeroWaitManager;->mActivityManager:Landroid/app/ActivityManager;

    .line 320
    iget-object v11, p0, Lcom/android/server/ZeroWaitManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v11}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v7

    .line 322
    .local v7, mRunningApps:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    iget-object v11, p0, Lcom/android/server/ZeroWaitManager;->mActivityManager:Landroid/app/ActivityManager;

    const/16 v12, 0xc8

    invoke-virtual {v11, v12}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v8

    .line 323
    .local v8, mRunningSvcs:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    if-eqz v8, :cond_0

    if-nez v7, :cond_3

    .line 324
    :cond_0
    const-string v11, "LGZW"

    const-string v12, "getRunningAppProcesses() or getRunningServices() returned null pointer!"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_1
    new-instance v5, Landroid/content/Intent;

    const-string v11, "com.lge.music.playstatechanged"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 370
    .local v5, intent:Landroid/content/Intent;
    const/high16 v11, 0x2000

    invoke-virtual {v5, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 371
    const-string v11, "playing"

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 372
    iget-object v11, p0, Lcom/android/server/ZeroWaitManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 375
    const/16 v0, 0x14

    .line 376
    .local v0, MAX_RECENT_TASKS:I
    iget-object v11, p0, Lcom/android/server/ZeroWaitManager;->mActivityManager:Landroid/app/ActivityManager;

    const/16 v12, 0x14

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v9

    .line 377
    .local v9, recentTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    if-nez v9, :cond_a

    .line 378
    const-string v11, "LGZW"

    const-string v12, "getRecentTasks() returned null pointer!"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_2
    return-void

    .line 326
    .end local v0           #MAX_RECENT_TASKS:I
    .end local v5           #intent:Landroid/content/Intent;
    .end local v9           #recentTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :cond_3
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_1

    .line 327
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 328
    .local v1, ai:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v11, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v12, 0x190

    if-ge v11, v12, :cond_5

    iget v11, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v12, 0x82

    if-eq v11, v12, :cond_5

    iget v11, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v12, 0xc8

    if-eq v11, v12, :cond_5

    iget v11, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v12, 0x64

    if-eq v11, v12, :cond_5

    .line 332
    const-string v11, "LGZW"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "skip "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " for importance"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 336
    :cond_5
    iget v11, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v12, 0x82

    if-eq v11, v12, :cond_6

    iget v11, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v12, 0xc8

    if-eq v11, v12, :cond_6

    iget v11, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v12, 0x64

    if-ne v11, v12, :cond_9

    .line 339
    :cond_6
    const/4 v3, 0x0

    .line 340
    .local v3, hasService:Z
    const/4 v6, 0x0

    .local v6, j:I
    :goto_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-ge v6, v11, :cond_7

    .line 341
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 343
    .local v10, si:Landroid/app/ActivityManager$RunningServiceInfo;
    iget v11, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iget v12, v10, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    if-ne v11, v12, :cond_8

    iget v11, v10, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    and-int/lit8 v11, v11, 0x2

    if-nez v11, :cond_8

    .line 345
    const/4 v3, 0x1

    .line 349
    .end local v10           #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_7
    if-eqz v3, :cond_9

    .line 350
    const-string v11, "LGZW"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "skip "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " for service"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 340
    .restart local v10       #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 355
    .end local v3           #hasService:Z
    .end local v6           #j:I
    .end local v10           #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_9
    const-string v11, "LGZW"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "kill "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " importance:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v11, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v12, "com.lge.shutdownmonitor"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 361
    :try_start_0
    iget v11, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v11}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 362
    :catch_0
    move-exception v2

    .line 363
    .local v2, e:Ljava/lang/Exception;
    const-string v11, "LGZW"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "cannot kill the process = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " pid = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 380
    .end local v1           #ai:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v4           #i:I
    .restart local v0       #MAX_RECENT_TASKS:I
    .restart local v5       #intent:Landroid/content/Intent;
    .restart local v9       #recentTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :cond_a
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_3
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_2

    .line 381
    iget-object v12, p0, Lcom/android/server/ZeroWaitManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v11, v11, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    const/4 v13, 0x0

    invoke-virtual {v12, v11, v13}, Landroid/app/ActivityManager;->removeTask(II)Z

    .line 380
    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method

.method private hideEmptyView()V
    .locals 3

    .prologue
    .line 129
    iget-object v1, p0, Lcom/android/server/ZeroWaitManager;->mEmptyView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/android/server/ZeroWaitManager;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 131
    .local v0, wm:Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/server/ZeroWaitManager;->mEmptyView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 132
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/ZeroWaitManager;->mEmptyView:Landroid/view/View;

    .line 134
    .end local v0           #wm:Landroid/view/WindowManager;
    :cond_0
    return-void
.end method

.method private ignoreWakeLock(Ljava/lang/String;)V
    .locals 4
    .parameter "name"

    .prologue
    .line 253
    :try_start_0
    const-string v1, "/sys/power/wake_lock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " 1000000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_0
    return-void

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, e:Ljava/io/IOException;
    const-string v1, "LGZW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to write \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/sys/power/wake_lock"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isGpsLocationProviderEnabled()Z
    .locals 2

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/server/ZeroWaitManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private read_property()I
    .locals 2

    .prologue
    .line 203
    const-string v0, "persist.sys.lge.zwait"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private recoverWakeLock(Ljava/lang/String;)V
    .locals 4
    .parameter "name"

    .prologue
    .line 262
    :try_start_0
    const-string v1, "/sys/power/wake_lock"

    invoke-static {v1, p1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :goto_0
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, e:Ljava/io/IOException;
    const-string v1, "LGZW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to write \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/sys/power/wake_lock"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setZWOff()V
    .locals 3

    .prologue
    .line 222
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/ZeroWaitManager;->mZWMode:I

    .line 224
    :try_start_0
    const-string v1, "/sys/class/zwait/state"

    const-string v2, "off"

    invoke-static {v1, v2}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :goto_0
    return-void

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, e:Ljava/io/IOException;
    const-string v1, "LGZW"

    const-string v2, "Fail to write \"off\" in /sys/class/zwait/state"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setZWSystem()V
    .locals 3

    .prologue
    .line 232
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/ZeroWaitManager;->mZWMode:I

    .line 234
    :try_start_0
    const-string v1, "/sys/class/zwait/state"

    const-string v2, "system"

    invoke-static {v1, v2}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :goto_0
    return-void

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, e:Ljava/io/IOException;
    const-string v1, "LGZW"

    const-string v2, "Fail to write \"system\" in /sys/class/zwait/state"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setZWUser()V
    .locals 3

    .prologue
    .line 242
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/ZeroWaitManager;->mZWMode:I

    .line 244
    :try_start_0
    const-string v1, "/sys/class/zwait/state"

    const-string v2, "user"

    invoke-static {v1, v2}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_0
    return-void

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, e:Ljava/io/IOException;
    const-string v1, "LGZW"

    const-string v2, "Fail to write \"user\" in /sys/class/zwait/state"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showEmptyView()V
    .locals 7

    .prologue
    const/16 v1, 0x7d0

    .line 114
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d6

    const/16 v4, 0x500

    const/4 v5, -0x1

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 120
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 122
    iget-object v1, p0, Lcom/android/server/ZeroWaitManager;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 123
    .local v6, wm:Landroid/view/WindowManager;
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/server/ZeroWaitManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/ZeroWaitManager;->mEmptyView:Landroid/view/View;

    .line 124
    iget-object v1, p0, Lcom/android/server/ZeroWaitManager;->mEmptyView:Landroid/view/View;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 125
    iget-object v1, p0, Lcom/android/server/ZeroWaitManager;->mEmptyView:Landroid/view/View;

    invoke-interface {v6, v1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    return-void
.end method

.method private stopAnimOff()V
    .locals 7

    .prologue
    .line 476
    iget-object v4, p0, Lcom/android/server/ZeroWaitManager;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    iput-object v4, p0, Lcom/android/server/ZeroWaitManager;->mActivityManager:Landroid/app/ActivityManager;

    .line 477
    iget-object v4, p0, Lcom/android/server/ZeroWaitManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v4}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 479
    .local v3, mRunningApps:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v3, :cond_1

    .line 480
    const-string v4, "LGZW"

    const-string v5, "getRunningAppProcesses() returned null pointer!"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_0
    return-void

    .line 482
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 483
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 485
    .local v0, ai:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :try_start_0
    iget-object v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v5, "com.lge.shutdownmonitor"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 486
    const-string v4, "LGZW"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "kill the process = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v4, p0, Lcom/android/server/ZeroWaitManager;->mActivityManager:Landroid/app/ActivityManager;

    const-string v5, "com.lge.shutdownmonitor"

    invoke-virtual {v4, v5}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 489
    :catch_0
    move-exception v1

    .line 490
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "LGZW"

    const-string v5, "cannot stop shutdownmonitor"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private stopCameraClientPid()V
    .locals 6

    .prologue
    .line 208
    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 209
    .local v2, info:Landroid/hardware/Camera$CameraInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 210
    invoke-static {v1, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 211
    iget v3, v2, Landroid/hardware/Camera$CameraInfo;->client_pid:I

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    .line 209
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 214
    :cond_0
    :try_start_0
    iget v3, v2, Landroid/hardware/Camera$CameraInfo;->client_pid:I

    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "LGZW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot kill the camera process = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/hardware/Camera$CameraInfo;->client_pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 219
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method private turnLightsOff()V
    .locals 7

    .prologue
    .line 269
    iget-object v5, p0, Lcom/android/server/ZeroWaitManager;->mLightsService:Lcom/android/server/LightsService;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v3

    .line 270
    .local v3, lcdLight:Lcom/android/server/LightsService$Light;
    iget-object v5, p0, Lcom/android/server/ZeroWaitManager;->mLightsService:Lcom/android/server/LightsService;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v1

    .line 271
    .local v1, buttonLight:Lcom/android/server/LightsService$Light;
    iget-object v5, p0, Lcom/android/server/ZeroWaitManager;->mLightsService:Lcom/android/server/LightsService;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v2

    .line 272
    .local v2, keyboardLight:Lcom/android/server/LightsService$Light;
    iget-object v5, p0, Lcom/android/server/ZeroWaitManager;->mLightsService:Lcom/android/server/LightsService;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v0

    .line 273
    .local v0, attentionLight:Lcom/android/server/LightsService$Light;
    iget-object v5, p0, Lcom/android/server/ZeroWaitManager;->mLightsService:Lcom/android/server/LightsService;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v4

    .line 275
    .local v4, powerLight:Lcom/android/server/LightsService$Light;
    invoke-virtual {v3}, Lcom/android/server/LightsService$Light;->turnOff()V

    .line 276
    invoke-virtual {v1}, Lcom/android/server/LightsService$Light;->turnOff()V

    .line 277
    invoke-virtual {v2}, Lcom/android/server/LightsService$Light;->turnOff()V

    .line 278
    invoke-virtual {v0}, Lcom/android/server/LightsService$Light;->turnOff()V

    .line 279
    invoke-virtual {v4}, Lcom/android/server/LightsService$Light;->turnOff()V

    .line 280
    return-void
.end method

.method private turnOffDevices()I
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 407
    iget-object v6, p0, Lcom/android/server/ZeroWaitManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "airplane_mode_on"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 409
    .local v1, airplaneMode:I
    const/4 v5, 0x0

    .line 410
    .local v5, modeConfig:I
    const/4 v0, 0x0

    .line 411
    .local v0, adbPrevStatus:I
    iget-object v6, p0, Lcom/android/server/ZeroWaitManager;->mContext:Landroid/content/Context;

    const-string v9, "wifi"

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    iput-object v6, p0, Lcom/android/server/ZeroWaitManager;->mWifi:Landroid/net/wifi/WifiManager;

    .line 412
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/ZeroWaitManager;->mBluetooth:Landroid/bluetooth/BluetoothAdapter;

    .line 413
    if-nez v1, :cond_3

    .line 414
    iget-object v6, p0, Lcom/android/server/ZeroWaitManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "airplane_mode_on"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 416
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 417
    .local v3, intent:Landroid/content/Intent;
    const/high16 v6, 0x2000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 418
    const-string v6, "state"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 419
    iget-object v6, p0, Lcom/android/server/ZeroWaitManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 420
    or-int/lit8 v5, v5, 0x1

    .line 448
    :goto_0
    iget-object v6, p0, Lcom/android/server/ZeroWaitManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "gesture_trun_screen_on"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 449
    .local v4, knockOn:I
    if-ne v4, v7, :cond_0

    .line 450
    const-string v6, "LGZW"

    const-string v9, "turned knock-on off"

    invoke-static {v6, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v6, p0, Lcom/android/server/ZeroWaitManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "gesture_trun_screen_on"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 452
    or-int/lit8 v5, v5, 0x40

    .line 455
    :cond_0
    iget-object v6, p0, Lcom/android/server/ZeroWaitManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "adb_enabled"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 456
    if-ne v0, v7, :cond_1

    .line 457
    iget-object v6, p0, Lcom/android/server/ZeroWaitManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "adb_enabled"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 458
    or-int/lit8 v5, v5, 0x20

    .line 462
    :cond_1
    invoke-direct {p0}, Lcom/android/server/ZeroWaitManager;->isGpsLocationProviderEnabled()Z

    move-result v2

    .line 463
    .local v2, gpsEnabled:Z
    if-eqz v2, :cond_2

    .line 464
    or-int/lit8 v5, v5, 0x4

    .line 465
    const-string v6, "LGZW"

    const-string v9, "turned GPS off"

    invoke-static {v6, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v9, p0, Lcom/android/server/ZeroWaitManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v10, "gps"

    if-nez v2, :cond_7

    move v6, v7

    :goto_1
    invoke-static {v9, v10, v6}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 470
    :cond_2
    const-string v6, "LGZW"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "turnOffDevices(): persist.sys.lge.zwait = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    return v5

    .line 422
    .end local v2           #gpsEnabled:Z
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #knockOn:I
    :cond_3
    iget-object v6, p0, Lcom/android/server/ZeroWaitManager;->mWifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v6

    if-nez v6, :cond_6

    .line 423
    iget-object v6, p0, Lcom/android/server/ZeroWaitManager;->mWifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v6

    const/4 v9, 0x3

    if-eq v6, v9, :cond_4

    .line 424
    const-string v6, "LGZW"

    const-string v9, "let WiFi turned off"

    invoke-static {v6, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_4
    :goto_2
    iget-object v6, p0, Lcom/android/server/ZeroWaitManager;->mBluetooth:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v6, :cond_5

    .line 432
    iget-object v6, p0, Lcom/android/server/ZeroWaitManager;->mBluetooth:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 433
    or-int/lit8 v5, v5, 0x2

    .line 434
    iget-object v6, p0, Lcom/android/server/ZeroWaitManager;->mBluetooth:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 435
    const-string v6, "LGZW"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "turned BT off"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/ZeroWaitManager;->mBluetooth:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_5
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 440
    .restart local v3       #intent:Landroid/content/Intent;
    const/high16 v6, 0x800

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 441
    const-string v6, "android.nfc.extra.ADAPTER_STATE"

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 442
    iget-object v6, p0, Lcom/android/server/ZeroWaitManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 443
    or-int/lit8 v5, v5, 0x10

    .line 444
    const-string v6, "LGZW"

    const-string v9, "turned NFC off"

    invoke-static {v6, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 427
    .end local v3           #intent:Landroid/content/Intent;
    :cond_6
    or-int/lit8 v5, v5, 0x8

    .line 428
    iget-object v6, p0, Lcom/android/server/ZeroWaitManager;->mWifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6, v8}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 429
    const-string v6, "LGZW"

    const-string v9, "turned Wifi off"

    invoke-static {v6, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .restart local v2       #gpsEnabled:Z
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v4       #knockOn:I
    :cond_7
    move v6, v8

    .line 466
    goto/16 :goto_1
.end method

.method private turnOnDevices(I)V
    .locals 5
    .parameter "modeConfig"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 517
    iget-object v1, p0, Lcom/android/server/ZeroWaitManager;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/server/ZeroWaitManager;->mWifi:Landroid/net/wifi/WifiManager;

    .line 518
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ZeroWaitManager;->mBluetooth:Landroid/bluetooth/BluetoothAdapter;

    .line 519
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_4

    .line 520
    iget-object v1, p0, Lcom/android/server/ZeroWaitManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 522
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 523
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 524
    const-string v1, "state"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 525
    iget-object v1, p0, Lcom/android/server/ZeroWaitManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 545
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    and-int/lit8 v1, p1, 0x40

    if-eqz v1, :cond_1

    .line 546
    const-string v1, "LGZW"

    const-string v2, "turned knock on"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v1, p0, Lcom/android/server/ZeroWaitManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gesture_trun_screen_on"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 550
    :cond_1
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    .line 551
    const-string v1, "LGZW"

    const-string v2, "turned GPS on"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-object v1, p0, Lcom/android/server/ZeroWaitManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "gps"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 556
    :cond_2
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_3

    .line 557
    const-string v1, "LGZW"

    const-string v2, "Turned ADB on"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object v1, p0, Lcom/android/server/ZeroWaitManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "adb_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 560
    :cond_3
    return-void

    .line 527
    :cond_4
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_5

    .line 528
    iget-object v1, p0, Lcom/android/server/ZeroWaitManager;->mWifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 529
    const-string v1, "LGZW"

    const-string v2, "let WiFi turned on"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :cond_5
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_6

    .line 532
    iget-object v1, p0, Lcom/android/server/ZeroWaitManager;->mBluetooth:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 533
    const-string v1, "LGZW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "turned BT on"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ZeroWaitManager;->mBluetooth:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_6
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_0

    .line 536
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 537
    .restart local v0       #intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 538
    const-string v1, "android.nfc.extra.ADAPTER_STATE"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 539
    iget-object v1, p0, Lcom/android/server/ZeroWaitManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 540
    const-string v1, "LGZW"

    const-string v2, "turned NFC on"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private turnOthersOff()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 387
    iget-object v1, p0, Lcom/android/server/ZeroWaitManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3, v3}, Landroid/media/AudioManager;->setStreamSolo(IZ)V

    .line 388
    iget-object v1, p0, Lcom/android/server/ZeroWaitManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v4, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 389
    iget-object v1, p0, Lcom/android/server/ZeroWaitManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 393
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ZeroWaitManager;->mSensorManager:Landroid/hardware/SystemSensorManager;

    invoke-virtual {v1}, Landroid/hardware/SystemSensorManager;->disableSensorsZW()V

    .line 394
    const-string v1, "LGZW"

    const-string v2, "Disable Sensors"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    :goto_0
    iget-object v1, p0, Lcom/android/server/ZeroWaitManager;->mAlarmManager:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService;->disableAlarm()I

    .line 402
    iget-object v1, p0, Lcom/android/server/ZeroWaitManager;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v2, "charge_only"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 403
    return-void

    .line 395
    :catch_0
    move-exception v0

    .line 396
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "LGZW"

    const-string v2, "cannot disable sensors"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private turnOthersOn()V
    .locals 5

    .prologue
    .line 505
    const-string v2, "persist.sys.usb.config"

    const-string v3, "charge_only"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 506
    .local v1, usbConfig:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/ZeroWaitManager;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 508
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ZeroWaitManager;->mSensorManager:Landroid/hardware/SystemSensorManager;

    invoke-virtual {v2}, Landroid/hardware/SystemSensorManager;->enableSensorsZW()V

    .line 509
    const-string v2, "LGZW"

    const-string v3, "enable sensors"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    :goto_0
    iget-object v2, p0, Lcom/android/server/ZeroWaitManager;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "sys.lge.zw.resume"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 514
    return-void

    .line 510
    :catch_0
    move-exception v0

    .line 511
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LGZW"

    const-string v3, "cannot enable sensors"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private write_property(I)V
    .locals 3
    .parameter "val"

    .prologue
    .line 198
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 199
    .local v0, zwProp:Ljava/lang/Integer;
    const-string v1, "persist.sys.lge.zwait"

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    return-void
.end method


# virtual methods
.method public enterZWMode(Z)V
    .locals 8
    .parameter "bySystem"

    .prologue
    const/4 v7, 0x1

    .line 597
    const/4 v2, 0x0

    .line 598
    .local v2, val:I
    iput-boolean v7, p0, Lcom/android/server/ZeroWaitManager;->WakeLockTimeout:Z

    .line 599
    iget-boolean v3, p0, Lcom/android/server/ZeroWaitManager;->mProgressInEnter:Z

    if-ne v3, v7, :cond_0

    .line 656
    :goto_0
    return-void

    .line 601
    :cond_0
    iput-boolean v7, p0, Lcom/android/server/ZeroWaitManager;->mProgressInEnter:Z

    .line 602
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/ZeroWaitManager;->mProgressInExit:Z

    .line 604
    if-eqz p1, :cond_2

    .line 605
    const-string v3, "LGZW"

    const-string v4, "enterZWMode() by System (No Battery)"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    invoke-direct {p0}, Lcom/android/server/ZeroWaitManager;->setZWSystem()V

    .line 613
    :goto_1
    invoke-direct {p0}, Lcom/android/server/ZeroWaitManager;->turnOthersOff()V

    .line 614
    invoke-direct {p0}, Lcom/android/server/ZeroWaitManager;->stopCameraClientPid()V

    .line 615
    invoke-direct {p0}, Lcom/android/server/ZeroWaitManager;->showEmptyView()V

    .line 617
    :try_start_0
    const-string v3, "LGZW"

    const-string v4, "start ZeroWait shutdown"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 619
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.lge.shutdownmonitor"

    const-string v4, "com.lge.shutdownmonitor.ShutdownMonitorActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 620
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 621
    iget-object v3, p0, Lcom/android/server/ZeroWaitManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 622
    const/16 v3, 0x7d0

    invoke-direct {p0, v3}, Lcom/android/server/ZeroWaitManager;->delay(I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    .end local v1           #intent:Landroid/content/Intent;
    :goto_2
    invoke-direct {p0}, Lcom/android/server/ZeroWaitManager;->turnOffDevices()I

    move-result v2

    .line 629
    invoke-direct {p0, v2}, Lcom/android/server/ZeroWaitManager;->write_property(I)V

    .line 631
    invoke-direct {p0}, Lcom/android/server/ZeroWaitManager;->turnLightsOff()V

    .line 632
    iget-object v3, p0, Lcom/android/server/ZeroWaitManager;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v7}, Lcom/android/server/power/PowerManagerService;->goToSleep(JI)V

    .line 634
    const-string v3, "ctl.stop"

    const-string v4, "shutdownanim"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    invoke-direct {p0}, Lcom/android/server/ZeroWaitManager;->stopAnimOff()V

    .line 637
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    iput-object v3, p0, Lcom/android/server/ZeroWaitManager;->mTimer:Ljava/util/Timer;

    .line 638
    iget-object v3, p0, Lcom/android/server/ZeroWaitManager;->mTimer:Ljava/util/Timer;

    new-instance v4, Lcom/android/server/ZeroWaitManager$4;

    invoke-direct {v4, p0}, Lcom/android/server/ZeroWaitManager$4;-><init>(Lcom/android/server/ZeroWaitManager;)V

    const-wide/16 v5, 0xfa0

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 649
    :goto_3
    invoke-direct {p0, v7}, Lcom/android/server/ZeroWaitManager;->dealPartialWakelocks(Z)Z

    move-result v3

    if-eq v3, v7, :cond_1

    iget-boolean v3, p0, Lcom/android/server/ZeroWaitManager;->WakeLockTimeout:Z

    if-nez v3, :cond_3

    .line 650
    :cond_1
    const-string v3, "PowerManagerService"

    invoke-direct {p0, v3}, Lcom/android/server/ZeroWaitManager;->ignoreWakeLock(Ljava/lang/String;)V

    .line 651
    const-string v3, "LGZW"

    const-string v4, "Ignore Partial wakelocks"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 608
    :cond_2
    const-string v3, "LGZW"

    const-string v4, "enterZWMode() by User"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    invoke-direct {p0}, Lcom/android/server/ZeroWaitManager;->setZWUser()V

    .line 610
    invoke-direct {p0}, Lcom/android/server/ZeroWaitManager;->forceKillActiveApps()V

    goto :goto_1

    .line 623
    :catch_0
    move-exception v0

    .line 624
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "LGZW"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 654
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :cond_3
    const/16 v3, 0x64

    invoke-direct {p0, v3}, Lcom/android/server/ZeroWaitManager;->delay(I)V

    goto :goto_3
.end method

.method public exitZWMode()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 659
    iget-boolean v2, p0, Lcom/android/server/ZeroWaitManager;->mProgressInExit:Z

    if-ne v2, v3, :cond_1

    .line 691
    :cond_0
    :goto_0
    return-void

    .line 661
    :cond_1
    iput-boolean v3, p0, Lcom/android/server/ZeroWaitManager;->mProgressInExit:Z

    .line 662
    iput-boolean v5, p0, Lcom/android/server/ZeroWaitManager;->mProgressInEnter:Z

    .line 664
    invoke-direct {p0, v5}, Lcom/android/server/ZeroWaitManager;->dealPartialWakelocks(Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 665
    const-string v2, "PowerManagerService"

    invoke-direct {p0, v2}, Lcom/android/server/ZeroWaitManager;->recoverWakeLock(Ljava/lang/String;)V

    .line 666
    :cond_2
    invoke-direct {p0}, Lcom/android/server/ZeroWaitManager;->read_property()I

    move-result v1

    .line 667
    .local v1, val:I
    const-string v2, "LGZW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exitZWMode() mZWMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/ZeroWaitManager;->mZWMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " val: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    iget v2, p0, Lcom/android/server/ZeroWaitManager;->mZWMode:I

    if-nez v2, :cond_3

    .line 672
    if-eqz v1, :cond_0

    .line 673
    invoke-direct {p0, v1}, Lcom/android/server/ZeroWaitManager;->turnOnDevices(I)V

    .line 674
    invoke-direct {p0, v5}, Lcom/android/server/ZeroWaitManager;->write_property(I)V

    goto :goto_0

    .line 679
    :cond_3
    new-instance v0, Lcom/android/server/ZeroWaitManager$Bootani;

    invoke-direct {v0, p0, v6}, Lcom/android/server/ZeroWaitManager$Bootani;-><init>(Lcom/android/server/ZeroWaitManager;Lcom/android/server/ZeroWaitManager$1;)V

    .line 680
    .local v0, bootani:Lcom/android/server/ZeroWaitManager$Bootani;
    invoke-virtual {v0}, Lcom/android/server/ZeroWaitManager$Bootani;->start()V

    .line 682
    invoke-direct {p0, v1}, Lcom/android/server/ZeroWaitManager;->turnOnDevices(I)V

    .line 683
    invoke-direct {p0, v5}, Lcom/android/server/ZeroWaitManager;->write_property(I)V

    .line 684
    invoke-direct {p0}, Lcom/android/server/ZeroWaitManager;->turnOthersOn()V

    .line 685
    invoke-direct {p0}, Lcom/android/server/ZeroWaitManager;->setZWOff()V

    .line 686
    sput-boolean v5, Lcom/android/server/ZeroWaitManager;->mZwaitReady:Z

    .line 687
    iget-object v2, p0, Lcom/android/server/ZeroWaitManager;->mTimer:Ljava/util/Timer;

    if-eqz v2, :cond_0

    .line 688
    iget-object v2, p0, Lcom/android/server/ZeroWaitManager;->mTimer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 689
    iput-object v6, p0, Lcom/android/server/ZeroWaitManager;->mTimer:Ljava/util/Timer;

    goto :goto_0
.end method

.method public init()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 578
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/virtual/switch/zwait/state"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/android/server/ZeroWaitManager;->mObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVPATH=/devices/virtual/switch/zwait"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 583
    iget-object v0, p0, Lcom/android/server/ZeroWaitManager;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SystemSensorManager;

    iput-object v0, p0, Lcom/android/server/ZeroWaitManager;->mSensorManager:Landroid/hardware/SystemSensorManager;

    .line 584
    const-string v0, "alarm"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService;

    iput-object v0, p0, Lcom/android/server/ZeroWaitManager;->mAlarmManager:Lcom/android/server/AlarmManagerService;

    .line 585
    iget-object v0, p0, Lcom/android/server/ZeroWaitManager;->mContext:Landroid/content/Context;

    const-string v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/android/server/ZeroWaitManager;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 586
    iget-object v0, p0, Lcom/android/server/ZeroWaitManager;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/ZeroWaitManager;->mAudioManager:Landroid/media/AudioManager;

    .line 587
    iget-object v0, p0, Lcom/android/server/ZeroWaitManager;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/ZeroWaitManager;->mPM:Landroid/os/PowerManager;

    .line 588
    iget-object v0, p0, Lcom/android/server/ZeroWaitManager;->mPM:Landroid/os/PowerManager;

    const v1, 0x1000001a

    const-string v2, "ZeroWait"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ZeroWaitManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 590
    iget-object v0, p0, Lcom/android/server/ZeroWaitManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/ZeroWaitManager;->mZeroWaitReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "sys.lge.zwait.enable"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 592
    iget-object v0, p0, Lcom/android/server/ZeroWaitManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ZeroWaitManager;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 593
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 581
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isZWModeEnabled()Z
    .locals 2

    .prologue
    .line 694
    sget-boolean v0, Lcom/android/server/ZeroWaitManager;->mZwaitReady:Z

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/android/server/ZeroWaitManager;->mBatteryService:Lcom/android/server/BatteryService;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/server/BatteryService;->isPowered(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 696
    const-string v0, "persist.sys.lge.zwait_enable"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 699
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
