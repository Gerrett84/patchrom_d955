.class public Lcom/android/lgesettings/powersave/PowerSaveService;
.super Landroid/app/Service;
.source "PowerSaveService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/powersave/PowerSaveService$PowerSaveServiceLocalBinder;
    }
.end annotation


# instance fields
.field private initCheck:Z

.field private final mBinder:Landroid/os/IBinder;

.field private mCurrentBatteryLevel:I

.field private mNotification:Landroid/app/Notification;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPlugType:I

.field private mPowerSave:Lcom/android/lgesettings/powersave/PowerSave;

.field private mPowerSaveReceiver:Landroid/content/BroadcastReceiver;

.field private mPowerSaveStarted:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 40
    new-instance v0, Lcom/android/lgesettings/powersave/PowerSaveService$PowerSaveServiceLocalBinder;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/powersave/PowerSaveService$PowerSaveServiceLocalBinder;-><init>(Lcom/android/lgesettings/powersave/PowerSaveService;)V

    iput-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService;->mBinder:Landroid/os/IBinder;

    .line 42
    iput-boolean v1, p0, Lcom/android/lgesettings/powersave/PowerSaveService;->mPowerSaveStarted:Z

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService;->mCurrentBatteryLevel:I

    .line 44
    iput v1, p0, Lcom/android/lgesettings/powersave/PowerSaveService;->mPlugType:I

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 53
    iput-boolean v1, p0, Lcom/android/lgesettings/powersave/PowerSaveService;->initCheck:Z

    .line 55
    new-instance v0, Lcom/android/lgesettings/powersave/PowerSaveService$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/powersave/PowerSaveService$1;-><init>(Lcom/android/lgesettings/powersave/PowerSaveService;)V

    iput-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService;->mPowerSaveReceiver:Landroid/content/BroadcastReceiver;

    .line 215
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/powersave/PowerSaveService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService;->mCurrentBatteryLevel:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/lgesettings/powersave/PowerSaveService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput p1, p0, Lcom/android/lgesettings/powersave/PowerSaveService;->mCurrentBatteryLevel:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/lgesettings/powersave/PowerSaveService;Landroid/content/Context;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/lgesettings/powersave/PowerSaveService;->getPowerSaveModeValue(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/lgesettings/powersave/PowerSaveService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/lgesettings/powersave/PowerSaveService;->endNotification()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/lgesettings/powersave/PowerSaveService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService;->mPlugType:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/lgesettings/powersave/PowerSaveService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput p1, p0, Lcom/android/lgesettings/powersave/PowerSaveService;->mPlugType:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/lgesettings/powersave/PowerSaveService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService;->mPowerSaveStarted:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/lgesettings/powersave/PowerSaveService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/lgesettings/powersave/PowerSaveService;->mPowerSaveStarted:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/lgesettings/powersave/PowerSaveService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/lgesettings/powersave/PowerSaveService;->startNotification(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/lgesettings/powersave/PowerSaveService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/lgesettings/powersave/PowerSaveService;->getPowerSaveStarted()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/lgesettings/powersave/PowerSaveService;)Lcom/android/lgesettings/powersave/PowerSave;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService;->mPowerSave:Lcom/android/lgesettings/powersave/PowerSave;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/lgesettings/powersave/PowerSaveService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/lgesettings/powersave/PowerSaveService;->setActivationState(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/lgesettings/powersave/PowerSaveService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/lgesettings/powersave/PowerSaveService;->setPowerSaveStarted(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/lgesettings/powersave/PowerSaveService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/lgesettings/powersave/PowerSaveService;->checkCondition()Z

    move-result v0

    return v0
.end method

.method private checkCondition()Z
    .locals 15

    .prologue
    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 392
    const/4 v2, 0x1

    .line 401
    .local v2, canDo:Z
    :try_start_0
    const-string v13, "ril.cdma.inecmmode"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    if-nez v13, :cond_0

    move v2, v12

    .line 406
    :goto_0
    const-string v13, "activity"

    invoke-virtual {p0, v13}, Lcom/android/lgesettings/powersave/PowerSaveService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 407
    .local v1, am:Landroid/app/ActivityManager;
    invoke-virtual {v1, v12}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 409
    .local v0, Info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-nez v0, :cond_1

    move v3, v2

    .line 475
    .end local v2           #canDo:Z
    .local v3, canDo:I
    :goto_1
    return v3

    .end local v0           #Info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v1           #am:Landroid/app/ActivityManager;
    .end local v3           #canDo:I
    .restart local v2       #canDo:Z
    :cond_0
    move v2, v11

    .line 401
    goto :goto_0

    .line 402
    :catch_0
    move-exception v4

    .line 403
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 413
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v0       #Info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v1       #am:Landroid/app/ActivityManager;
    :cond_1
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v8, v11, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 414
    .local v8, topActivity:Landroid/content/ComponentName;
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 417
    .local v10, topActivityName:Ljava/lang/String;
    const-string v11, "com.lge.camera"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 420
    :cond_2
    const-string v11, "com.lge.voicerecorder"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 421
    const/4 v2, 0x0

    .line 425
    :cond_3
    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    .line 426
    .local v9, topActivityClassName:Ljava/lang/String;
    const-string v11, "com.lge.hiddenmenu.wcdma_only.module_test.ChargingTest"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 427
    const/4 v2, 0x0

    .line 434
    :cond_4
    :goto_2
    const-string v11, "com.android.phone.InCallScreen"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 435
    const/4 v2, 0x0

    .line 437
    :cond_5
    const-string v11, "com.lge.vt.ui.VgaVideoCallActivity"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 438
    const/4 v2, 0x0

    .line 440
    :cond_6
    const-string v11, "com.lge.vt.ui.QcifVideoCallActivity"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 441
    const/4 v2, 0x0

    .line 443
    :cond_7
    const-string v11, "com.lge.vt.ui.VgaGroupVideoCallActivity"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 444
    const/4 v2, 0x0

    .line 446
    :cond_8
    const-string v11, "com.lge.vt.ui.QcifGroupVideoCallActivity"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 447
    const/4 v2, 0x0

    .line 452
    :cond_9
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    .line 453
    .local v5, mCM:Lcom/android/internal/telephony/CallManager;
    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v6

    .line 454
    .local v6, phoneState:Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v11, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v6, v11, :cond_a

    sget-object v11, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v6, v11, :cond_b

    .line 455
    :cond_a
    const-string v11, "PowerSaveService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "CallManager CallState : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const/4 v2, 0x0

    .line 461
    :cond_b
    :try_start_1
    const-string v11, "phone"

    invoke-static {v11}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v7

    .line 463
    .local v7, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v7, :cond_d

    .line 464
    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->getCallState()I

    move-result v11

    const/4 v13, 0x2

    if-eq v11, v13, :cond_c

    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->getCallState()I

    move-result v11

    if-eq v11, v12, :cond_c

    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->getCallState()I

    move-result v11

    const/16 v12, 0x64

    if-lt v11, v12, :cond_d

    .line 467
    :cond_c
    const-string v11, "PowerSaveService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "TelephonyManager CallState : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->getCallState()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 468
    const/4 v2, 0x0

    .end local v7           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_d
    :goto_3
    move v3, v2

    .line 475
    .restart local v3       #canDo:I
    goto/16 :goto_1

    .line 428
    .end local v3           #canDo:I
    .end local v5           #mCM:Lcom/android/internal/telephony/CallManager;
    .end local v6           #phoneState:Lcom/android/internal/telephony/PhoneConstants$State;
    :cond_e
    const-string v11, "com.lge.LgHiddenMenu.LgSrvChargingTest"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 429
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 471
    .restart local v5       #mCM:Lcom/android/internal/telephony/CallManager;
    .restart local v6       #phoneState:Lcom/android/internal/telephony/PhoneConstants$State;
    :catch_1
    move-exception v4

    .line 472
    .local v4, e:Landroid/os/RemoteException;
    const-string v11, "PowerSaveService"

    const-string v12, "RemoteException:"

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private checkPowerSaveStarted()V
    .locals 3

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/android/lgesettings/powersave/PowerSaveService;->getPowerSaveStarted()I

    move-result v0

    .line 243
    .local v0, powerSaveState:I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 244
    const-string v1, "PowerSaveService"

    const-string v2, "checkPowerSaveStarted, POWER_SAVE_STARTED > -1"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/lgesettings/powersave/PowerSaveService;->mPowerSaveStarted:Z

    .line 246
    invoke-direct {p0, v0}, Lcom/android/lgesettings/powersave/PowerSaveService;->startNotification(I)V

    .line 252
    :goto_0
    return-void

    .line 249
    :cond_0
    const-string v1, "PowerSaveService"

    const-string v2, "checkPowerSaveStarted, POWER_SAVE_STARTED : -1"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/lgesettings/powersave/PowerSaveService;->mPowerSaveStarted:Z

    goto :goto_0
.end method

.method private endNotification()V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 369
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/powersave/PowerSaveService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0x7f0201e7

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 372
    return-void
.end method

.method private getPowerSaveModeValue(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 315
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "power_save_mode"

    const/16 v2, 0x1e

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getPowerSaveStarted()I
    .locals 3

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "power_save_started"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 223
    const-string v1, "PowerSaveService"

    const-string v2, "initialize"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    new-instance v1, Lcom/android/lgesettings/powersave/PowerSave;

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/lgesettings/powersave/PowerSave;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveService;->mPowerSave:Lcom/android/lgesettings/powersave/PowerSave;

    .line 228
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 229
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    const-string v1, "com.android.lgesettings.powersave.POWERSAVE_ACTIVATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    const-string v1, "com.android.lgesettings.powersave.action.MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    const-string v1, "com.android.lgesettings.powersave.POWERSAVE_GO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveService;->mPowerSaveReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/lgesettings/powersave/PowerSaveService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 237
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveService;->mPowerSave:Lcom/android/lgesettings/powersave/PowerSave;

    invoke-virtual {v1}, Lcom/android/lgesettings/powersave/PowerSave;->updatePowerControl()V

    .line 239
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/lgesettings/powersave/PowerSaveService;->initCheck:Z

    .line 240
    return-void
.end method

.method private setActivationState(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "power_save_mode_activated"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 376
    return-void

    .line 375
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setPowerSaveStarted(I)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 378
    const-string v0, "PowerSaveService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPowerSaveStarted, POWER_SAVE_STARTED : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "power_save_started"

    invoke-static {v0, v1, p1}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 380
    return-void
.end method

.method private startNotification(I)V
    .locals 11
    .parameter

    .prologue
    const v10, 0x7f08124b

    const v4, 0x7f0201e7

    const v3, 0x7f0201e8

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 329
    const v0, 0x7f081270

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/powersave/PowerSaveService;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 330
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/lgesettings/powersave/PowerSaveSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 332
    if-ne p1, v8, :cond_1

    .line 334
    const v0, 0x7f081276

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/powersave/PowerSaveService;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 335
    const v0, 0x7f081241

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/powersave/PowerSaveService;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 336
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.lge.settings.POWER_SAVER_SETTINGS"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move v3, v4

    .line 355
    :goto_0
    new-instance v6, Landroid/app/Notification;

    const-wide/16 v7, 0x0

    invoke-direct {v6, v3, v2, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v6, p0, Lcom/android/lgesettings/powersave/PowerSaveService;->mNotification:Landroid/app/Notification;

    .line 356
    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveService;->mNotification:Landroid/app/Notification;

    iget-object v3, p0, Lcom/android/lgesettings/powersave/PowerSaveService;->mNotification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 358
    const/high16 v2, 0x3000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 359
    invoke-static {p0, v9, v0, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 360
    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveService;->mNotification:Landroid/app/Notification;

    invoke-virtual {v2, p0, v5, v1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 362
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 363
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/powersave/PowerSaveService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveService;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 366
    return-void

    .line 337
    :cond_1
    if-nez p1, :cond_2

    .line 339
    const v0, 0x7f081277

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/powersave/PowerSaveService;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 340
    const v0, 0x7f081242

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/powersave/PowerSaveService;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 341
    new-instance v0, Landroid/content/Intent;

    const-class v6, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;

    invoke-direct {v0, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 342
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 344
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "power_save_mode"

    const/16 v2, 0x1e

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 345
    invoke-virtual {p0, v10}, Lcom/android/lgesettings/powersave/PowerSaveService;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v9

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 346
    invoke-virtual {p0, v10}, Lcom/android/lgesettings/powersave/PowerSaveService;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v6, v8, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "%"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v9

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 347
    new-instance v0, Landroid/content/Intent;

    const-string v6, "com.lge.settings.POWER_SAVER_SETTINGS"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 350
    :cond_3
    const v0, 0x7f08124c

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/powersave/PowerSaveService;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 351
    const v0, 0x7f08124c

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/powersave/PowerSaveService;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 352
    new-instance v0, Landroid/content/Intent;

    const-string v6, "com.lge.settings.POWER_SAVER_SETTINGS"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 309
    const-string v0, "PowerSaveService"

    const-string v1, "onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 256
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 257
    const-string v0, "PowerSaveService"

    const-string v1, "onCreate, service create"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-direct {p0}, Lcom/android/lgesettings/powersave/PowerSaveService;->checkPowerSaveStarted()V

    .line 261
    invoke-direct {p0}, Lcom/android/lgesettings/powersave/PowerSaveService;->init()V

    .line 262
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 281
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 282
    const-string v0, "PowerSaveService"

    const-string v1, "onDestroy, service stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService;->mPowerSaveReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/powersave/PowerSaveService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 290
    invoke-direct {p0}, Lcom/android/lgesettings/powersave/PowerSaveService;->getPowerSaveStarted()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService;->mPowerSave:Lcom/android/lgesettings/powersave/PowerSave;

    invoke-virtual {v0}, Lcom/android/lgesettings/powersave/PowerSave;->doRestore()V

    .line 296
    :cond_0
    invoke-direct {p0}, Lcom/android/lgesettings/powersave/PowerSaveService;->endNotification()V

    .line 297
    iput-boolean v2, p0, Lcom/android/lgesettings/powersave/PowerSaveService;->mPowerSaveStarted:Z

    .line 299
    invoke-direct {p0, v2}, Lcom/android/lgesettings/powersave/PowerSaveService;->setActivationState(Z)V

    .line 300
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/lgesettings/powersave/PowerSaveService;->setPowerSaveStarted(I)V

    .line 304
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService;->mPowerSave:Lcom/android/lgesettings/powersave/PowerSave;

    invoke-virtual {v0}, Lcom/android/lgesettings/powersave/PowerSave;->updatePowerControl()V

    .line 305
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 266
    const-string v0, "PowerSaveService"

    const-string v1, "onStartCommand, service start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    and-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_0

    .line 269
    const-string v0, "PowerSaveService"

    const-string v1, "onStartCommand, service re-start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_0
    iget-boolean v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService;->initCheck:Z

    if-nez v0, :cond_1

    .line 273
    invoke-direct {p0}, Lcom/android/lgesettings/powersave/PowerSaveService;->init()V

    .line 276
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
