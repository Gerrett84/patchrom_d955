.class public Lcom/lge/autorun/Autorun;
.super Ljava/lang/Object;
.source "Autorun.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/autorun/Autorun$autorunTimerTask;,
        Lcom/lge/autorun/Autorun$UsbPlugCheckTimerTask;,
        Lcom/lge/autorun/Autorun$UsbHandler;
    }
.end annotation


# static fields
.field public static AUTORUN_DELAY_TIME:I = 0x0

.field private static final AUTORUN_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/misc/usb_autorun"

.field private static final DEBUG:Z = false

.field private static HARD_DISCONNECTED_DELAY_TIME:I = 0x0

.field private static final MSG_AUTORUN_UPDATE:I = 0x2

.field private static final MSG_USB_PLUG:I = 0x1

.field private static final MSG_USB_UNPLUG:I = 0x0

.field private static final STATE_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/state"

.field private static final USB_STATE_PATH:Ljava/lang/String; = "DEVPATH=/devices/virtual/android_usb/android0"


# instance fields
.field private final ACTION_USB_CONNECTED_POPUP:Ljava/lang/String;

.field public final TAG:Ljava/lang/String;

.field private mAutorunObservered:Z

.field mAutorunTimer:Ljava/util/Timer;

.field private mAutorunUEventObserver:Landroid/os/UEventObserver;

.field private mBootCompleted:Z

.field protected final mContext:Landroid/content/Context;

.field private mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

.field private mHandler:Lcom/lge/autorun/Autorun$UsbHandler;

.field private mSetupWizardRunning:Z

.field mUsbPlugTimer:Ljava/util/Timer;

.field private mUsbStateObservered:Z

.field mUsbStateReceiver:Landroid/content/BroadcastReceiver;

.field private mUsbStateUEventObserver:Landroid/os/UEventObserver;

.field private mUsbUnPlugged:Z

.field private final setupwizard_trigger:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/16 v0, 0x12c

    sput v0, Lcom/lge/autorun/Autorun;->HARD_DISCONNECTED_DELAY_TIME:I

    .line 54
    const/16 v0, 0x7530

    sput v0, Lcom/lge/autorun/Autorun;->AUTORUN_DELAY_TIME:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v5, "AUTORUN"

    iput-object v5, p0, Lcom/lge/autorun/Autorun;->TAG:Ljava/lang/String;

    .line 34
    const-string v5, "com.lge.setup_wizard.AUTORUNON"

    iput-object v5, p0, Lcom/lge/autorun/Autorun;->setupwizard_trigger:Ljava/lang/String;

    .line 35
    iput-object v7, p0, Lcom/lge/autorun/Autorun;->mUsbPlugTimer:Ljava/util/Timer;

    .line 36
    iput-object v7, p0, Lcom/lge/autorun/Autorun;->mAutorunTimer:Ljava/util/Timer;

    .line 37
    iput-object v7, p0, Lcom/lge/autorun/Autorun;->mUsbStateUEventObserver:Landroid/os/UEventObserver;

    .line 39
    iput-boolean v8, p0, Lcom/lge/autorun/Autorun;->mUsbUnPlugged:Z

    .line 41
    iput-boolean v6, p0, Lcom/lge/autorun/Autorun;->mBootCompleted:Z

    .line 42
    const-string v5, "com.lge.android.server.usb_connected_popup"

    iput-object v5, p0, Lcom/lge/autorun/Autorun;->ACTION_USB_CONNECTED_POPUP:Ljava/lang/String;

    .line 44
    iput-boolean v6, p0, Lcom/lge/autorun/Autorun;->mAutorunObservered:Z

    .line 45
    iput-boolean v6, p0, Lcom/lge/autorun/Autorun;->mUsbStateObservered:Z

    .line 63
    iput-boolean v6, p0, Lcom/lge/autorun/Autorun;->mSetupWizardRunning:Z

    .line 147
    new-instance v5, Lcom/lge/autorun/Autorun$1;

    invoke-direct {v5, p0}, Lcom/lge/autorun/Autorun$1;-><init>(Lcom/lge/autorun/Autorun;)V

    iput-object v5, p0, Lcom/lge/autorun/Autorun;->mUsbStateReceiver:Landroid/content/BroadcastReceiver;

    .line 173
    new-instance v5, Lcom/lge/autorun/Autorun$2;

    invoke-direct {v5, p0}, Lcom/lge/autorun/Autorun$2;-><init>(Lcom/lge/autorun/Autorun;)V

    iput-object v5, p0, Lcom/lge/autorun/Autorun;->mAutorunUEventObserver:Landroid/os/UEventObserver;

    .line 66
    iput-object p1, p0, Lcom/lge/autorun/Autorun;->mContext:Landroid/content/Context;

    .line 68
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 69
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v5, "com.lge.setup_wizard.AUTORUNON"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    iget-object v5, p0, Lcom/lge/autorun/Autorun;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/lge/autorun/Autorun;->mUsbStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 74
    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string v6, "/sys/class/android_usb/android0/state"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, state:Ljava/lang/String;
    const-string v5, "DISCONNECTED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 76
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/lge/autorun/Autorun;->mUsbUnPlugged:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v3           #state:Ljava/lang/String;
    :goto_0
    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "Autorun"

    const/16 v6, 0xa

    invoke-direct {v4, v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 85
    .local v4, thread:Landroid/os/HandlerThread;
    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 88
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 90
    .local v2, looper:Landroid/os/Looper;
    :goto_1
    if-nez v2, :cond_1

    .line 91
    const-string v5, "AUTORUN"

    const-string v6, "[AUTORUN] Thread looper is not ready, which waits 100 ms."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const-wide/16 v5, 0x32

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 96
    :goto_2
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    goto :goto_1

    .line 78
    .end local v2           #looper:Landroid/os/Looper;
    .end local v4           #thread:Landroid/os/HandlerThread;
    .restart local v3       #state:Ljava/lang/String;
    :cond_0
    const/4 v5, 0x0

    :try_start_2
    iput-boolean v5, p0, Lcom/lge/autorun/Autorun;->mUsbUnPlugged:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 81
    .end local v3           #state:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 82
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "AUTORUN"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[AUTORUN] Exception is ocurred when read state ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 98
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #looper:Landroid/os/Looper;
    .restart local v4       #thread:Landroid/os/HandlerThread;
    :cond_1
    new-instance v5, Lcom/lge/autorun/Autorun$UsbHandler;

    invoke-direct {v5, p0, v2}, Lcom/lge/autorun/Autorun$UsbHandler;-><init>(Lcom/lge/autorun/Autorun;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/lge/autorun/Autorun;->mHandler:Lcom/lge/autorun/Autorun$UsbHandler;

    .line 103
    invoke-virtual {p0}, Lcom/lge/autorun/Autorun;->callUsbPlugFunction()V

    .line 104
    return-void

    .line 94
    :catch_1
    move-exception v5

    goto :goto_2
.end method

.method static synthetic access$002(Lcom/lge/autorun/Autorun;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/lge/autorun/Autorun;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$102(Lcom/lge/autorun/Autorun;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/lge/autorun/Autorun;->mSetupWizardRunning:Z

    return p1
.end method

.method static synthetic access$200(Lcom/lge/autorun/Autorun;)Lcom/lge/autorun/Autorun$UsbHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lge/autorun/Autorun;->mHandler:Lcom/lge/autorun/Autorun$UsbHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/autorun/Autorun;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/lge/autorun/Autorun;->mAutorunObservered:Z

    return v0
.end method

.method static synthetic access$302(Lcom/lge/autorun/Autorun;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/lge/autorun/Autorun;->mAutorunObservered:Z

    return p1
.end method

.method static synthetic access$400(Lcom/lge/autorun/Autorun;)Landroid/os/UEventObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lge/autorun/Autorun;->mAutorunUEventObserver:Landroid/os/UEventObserver;

    return-object v0
.end method

.method static synthetic access$502(Lcom/lge/autorun/Autorun;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/lge/autorun/Autorun;->mUsbUnPlugged:Z

    return p1
.end method

.method static synthetic access$600(Lcom/lge/autorun/Autorun;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/lge/autorun/Autorun;->judgeUsbPlugState(Ljava/lang/String;)V

    return-void
.end method

.method private judgeUsbPlugState(Ljava/lang/String;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 329
    const-string v0, "DISCONNECTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    invoke-direct {p0}, Lcom/lge/autorun/Autorun;->startUsbPlugTimer()V

    .line 334
    :goto_0
    return-void

    .line 332
    :cond_0
    invoke-direct {p0}, Lcom/lge/autorun/Autorun;->stopUsbPlugTimer()V

    goto :goto_0
.end method

.method private startUsbPlugTimer()V
    .locals 5

    .prologue
    .line 337
    iget-object v1, p0, Lcom/lge/autorun/Autorun;->mUsbPlugTimer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 338
    iget-object v1, p0, Lcom/lge/autorun/Autorun;->mUsbPlugTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 339
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/autorun/Autorun;->mUsbPlugTimer:Ljava/util/Timer;

    .line 341
    :cond_0
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/lge/autorun/Autorun;->mUsbPlugTimer:Ljava/util/Timer;

    .line 343
    :try_start_0
    iget-object v1, p0, Lcom/lge/autorun/Autorun;->mUsbPlugTimer:Ljava/util/Timer;

    new-instance v2, Lcom/lge/autorun/Autorun$UsbPlugCheckTimerTask;

    invoke-direct {v2, p0}, Lcom/lge/autorun/Autorun$UsbPlugCheckTimerTask;-><init>(Lcom/lge/autorun/Autorun;)V

    sget v3, Lcom/lge/autorun/Autorun;->HARD_DISCONNECTED_DELAY_TIME:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :goto_0
    return-void

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "AUTORUN"

    const-string v2, "[AUTORUN] error!! Timer already have been canceled. but not treate it"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopUsbPlugTimer()V
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/lge/autorun/Autorun;->mUsbPlugTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/lge/autorun/Autorun;->mUsbPlugTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 352
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/autorun/Autorun;->mUsbPlugTimer:Ljava/util/Timer;

    .line 354
    :cond_0
    iget-boolean v0, p0, Lcom/lge/autorun/Autorun;->mUsbUnPlugged:Z

    if-eqz v0, :cond_1

    .line 356
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/autorun/Autorun;->mUsbUnPlugged:Z

    .line 357
    iget-object v0, p0, Lcom/lge/autorun/Autorun;->mHandler:Lcom/lge/autorun/Autorun$UsbHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/autorun/Autorun$UsbHandler;->sendMessage(I)V

    .line 359
    :cond_1
    return-void
.end method


# virtual methods
.method public addUsbDeviceManager(Lcom/android/server/usb/UsbDeviceManager;)V
    .locals 0
    .parameter "mgr"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/lge/autorun/Autorun;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 111
    return-void
.end method

.method protected autorunStartTimer()V
    .locals 5

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/lge/autorun/Autorun;->autorunStopTimer()V

    .line 433
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/lge/autorun/Autorun;->mAutorunTimer:Ljava/util/Timer;

    .line 437
    :try_start_0
    iget-object v1, p0, Lcom/lge/autorun/Autorun;->mAutorunTimer:Ljava/util/Timer;

    new-instance v2, Lcom/lge/autorun/Autorun$autorunTimerTask;

    invoke-direct {v2, p0}, Lcom/lge/autorun/Autorun$autorunTimerTask;-><init>(Lcom/lge/autorun/Autorun;)V

    sget v3, Lcom/lge/autorun/Autorun;->AUTORUN_DELAY_TIME:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    :goto_0
    return-void

    .line 438
    :catch_0
    move-exception v0

    .line 439
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "AUTORUN"

    const-string v2, "[AUTORUN] error!! Timer already have been canceled. but not treate it"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected autorunStopTimer()V
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/lge/autorun/Autorun;->mAutorunTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/lge/autorun/Autorun;->mAutorunTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 448
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/autorun/Autorun;->mAutorunTimer:Ljava/util/Timer;

    .line 450
    :cond_0
    return-void
.end method

.method protected callUsbPlugFunction()V
    .locals 2

    .prologue
    .line 370
    new-instance v0, Lcom/lge/autorun/Autorun$3;

    invoke-direct {v0, p0}, Lcom/lge/autorun/Autorun$3;-><init>(Lcom/lge/autorun/Autorun;)V

    iput-object v0, p0, Lcom/lge/autorun/Autorun;->mUsbStateUEventObserver:Landroid/os/UEventObserver;

    .line 380
    iget-object v0, p0, Lcom/lge/autorun/Autorun;->mUsbStateUEventObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVPATH=/devices/virtual/android_usb/android0"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 381
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/autorun/Autorun;->mUsbStateObservered:Z

    .line 382
    return-void
.end method

.method public distroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 117
    iget-boolean v0, p0, Lcom/lge/autorun/Autorun;->mAutorunObservered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/autorun/Autorun;->mAutorunUEventObserver:Landroid/os/UEventObserver;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/lge/autorun/Autorun;->mAutorunUEventObserver:Landroid/os/UEventObserver;

    invoke-virtual {v0}, Landroid/os/UEventObserver;->stopObserving()V

    .line 119
    iput-boolean v1, p0, Lcom/lge/autorun/Autorun;->mAutorunObservered:Z

    .line 121
    :cond_0
    iget-boolean v0, p0, Lcom/lge/autorun/Autorun;->mUsbStateObservered:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/autorun/Autorun;->mUsbStateUEventObserver:Landroid/os/UEventObserver;

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/lge/autorun/Autorun;->mUsbStateUEventObserver:Landroid/os/UEventObserver;

    invoke-virtual {v0}, Landroid/os/UEventObserver;->stopObserving()V

    .line 123
    iput-boolean v1, p0, Lcom/lge/autorun/Autorun;->mUsbStateObservered:Z

    .line 127
    :cond_1
    return-void
.end method

.method public getCurrentFunction()Ljava/lang/String;
    .locals 4

    .prologue
    .line 319
    const-string v2, "sys.usb.config"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 320
    .local v1, functions:Ljava/lang/String;
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 321
    .local v0, commaIndex:I
    if-lez v0, :cond_0

    .line 322
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 324
    .end local v1           #functions:Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public getIsBootCompleted()Z
    .locals 1

    .prologue
    .line 388
    iget-boolean v0, p0, Lcom/lge/autorun/Autorun;->mBootCompleted:Z

    return v0
.end method

.method public getIsSetupWizardRunning()Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 396
    :try_start_0
    iget-object v6, p0, Lcom/lge/autorun/Autorun;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 397
    .local v3, pm:Landroid/content/pm/PackageManager;
    const-string v6, "com.android.LGSetupWizard"

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2

    .line 398
    .local v2, mComponentState:I
    iget-object v6, p0, Lcom/lge/autorun/Autorun;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "device_provisioned"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-lez v6, :cond_2

    move v1, v4

    .line 399
    .local v1, isProvisioned:Z
    :goto_0
    const/4 v6, 0x2

    if-eq v2, v6, :cond_0

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    :cond_0
    move v4, v5

    .line 406
    .end local v1           #isProvisioned:Z
    .end local v2           #mComponentState:I
    .end local v3           #pm:Landroid/content/pm/PackageManager;
    :cond_1
    :goto_1
    return v4

    .restart local v2       #mComponentState:I
    .restart local v3       #pm:Landroid/content/pm/PackageManager;
    :cond_2
    move v1, v5

    .line 398
    goto :goto_0

    .line 404
    .end local v2           #mComponentState:I
    .end local v3           #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 405
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "AUTORUN"

    const-string v6, "[AUTORUN] error is occurred when getApplicationEnabledSetting"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getSetupWizardState()Z
    .locals 1

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/lge/autorun/Autorun;->mSetupWizardRunning:Z

    return v0
.end method

.method public getUsbUnPlugState()Z
    .locals 1

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/lge/autorun/Autorun;->mUsbUnPlugged:Z

    return v0
.end method

.method protected onAutorunUpdateState(Ljava/lang/String;)V
    .locals 6
    .parameter "state"

    .prologue
    const/4 v5, 0x1

    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, alwaysAsk:Z
    const/4 v2, 0x0

    .line 252
    .local v2, mDefaultFunctions:Ljava/lang/String;
    const-string v3, "ACK"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/lge/autorun/Autorun;->autorunStopTimer()V

    .line 293
    :goto_0
    return-void

    .line 256
    :cond_0
    iget-object v3, p0, Lcom/lge/autorun/Autorun;->mAutorunTimer:Ljava/util/Timer;

    if-eqz v3, :cond_1

    .line 257
    invoke-virtual {p0}, Lcom/lge/autorun/Autorun;->autorunStopTimer()V

    .line 260
    :cond_1
    const-string v3, "change_ask"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 262
    if-ne v0, v5, :cond_3

    .line 264
    const-string v2, "charge_only"

    .line 285
    :cond_2
    :goto_1
    const-wide/16 v3, 0x32

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :goto_2
    const-string v3, "AUTORUN"

    const-string v4, "[AUTORUN] call setCurrentFunction by UsbDeviceManager #9"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual {p0, v2, v5}, Lcom/lge/autorun/Autorun;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 292
    iget-object v3, p0, Lcom/lge/autorun/Autorun;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.lge.android.server.usb_connected_popup"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 267
    :cond_3
    const-string v3, "AUTORUN"

    const-string v4, "[AUTORUN] alwaysAsk false"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 269
    :cond_4
    const-string v3, "change_acm"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 270
    const-string v2, "pc_suite"

    goto :goto_1

    .line 271
    :cond_5
    const-string v3, "change_mtp"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 272
    const-string v2, "mtp_only"

    goto :goto_1

    .line 273
    :cond_6
    const-string v3, "change_ptp"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 274
    const-string v2, "ptp_only"

    goto :goto_1

    .line 275
    :cond_7
    const-string v3, "change_charge"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 276
    const-string v2, "charge_only"

    goto :goto_1

    .line 277
    :cond_8
    const-string v3, "change_tether"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 278
    const-string v2, "ecm"

    goto :goto_1

    .line 279
    :cond_9
    const-string v3, "TIMEOUT"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 281
    const-string v2, "mtp_only"

    goto :goto_1

    .line 286
    :catch_0
    move-exception v1

    .line 287
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v3, "AUTORUN"

    const-string v4, "[AUTORUN] Exception wait for termination of PC Launcher, so just skip it"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method protected onBootComplete()V
    .locals 0

    .prologue
    .line 165
    return-void
.end method

.method protected onSetupWizardEnd()V
    .locals 2

    .prologue
    .line 169
    const-string v0, "sys.usb.provisioned"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/autorun/Autorun;->mSetupWizardRunning:Z

    .line 171
    return-void
.end method

.method protected onUsbPlugged()V
    .locals 0

    .prologue
    .line 299
    return-void
.end method

.method protected onUsbUnPlugged()V
    .locals 0

    .prologue
    .line 296
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 133
    iget-boolean v0, p0, Lcom/lge/autorun/Autorun;->mAutorunObservered:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/autorun/Autorun;->mAutorunUEventObserver:Landroid/os/UEventObserver;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/lge/autorun/Autorun;->mAutorunUEventObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVPATH=/devices/virtual/misc/usb_autorun"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 135
    iput-boolean v2, p0, Lcom/lge/autorun/Autorun;->mAutorunObservered:Z

    .line 137
    :cond_0
    iget-boolean v0, p0, Lcom/lge/autorun/Autorun;->mUsbStateObservered:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lge/autorun/Autorun;->mUsbStateUEventObserver:Landroid/os/UEventObserver;

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/lge/autorun/Autorun;->mUsbStateUEventObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVPATH=/devices/virtual/android_usb/android0"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 139
    iput-boolean v2, p0, Lcom/lge/autorun/Autorun;->mUsbStateObservered:Z

    .line 141
    :cond_1
    return-void
.end method

.method public setCurrentFunction(Ljava/lang/String;Z)V
    .locals 1
    .parameter "function"
    .parameter "makeDefault"

    .prologue
    .line 414
    iget-object v0, p0, Lcom/lge/autorun/Autorun;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_1

    .line 416
    iget-object v0, p0, Lcom/lge/autorun/Autorun;->mAutorunTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {p0}, Lcom/lge/autorun/Autorun;->autorunStopTimer()V

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/lge/autorun/Autorun;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(Ljava/lang/String;Z)V

    .line 421
    :cond_1
    return-void
.end method
