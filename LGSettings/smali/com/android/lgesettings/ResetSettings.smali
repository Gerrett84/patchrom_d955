.class public Lcom/android/lgesettings/ResetSettings;
.super Landroid/app/Fragment;
.source "ResetSettings.java"


# instance fields
.field mConfirmDlg:Landroid/app/AlertDialog;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContentView:Landroid/view/View;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mFontServerConnected:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsShowDlg:Z

.field private mProgressDlg:Landroid/app/ProgressDialog;

.field private mProgressHandler:Landroid/os/Handler;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRemoteFontServer:Lcom/android/lgesettings/FontServerConnection;

.field private mResetSetting:Landroid/widget/Button;

.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 69
    iput-object v1, p0, Lcom/android/lgesettings/ResetSettings;->mConfirmDlg:Landroid/app/AlertDialog;

    .line 70
    iput-boolean v2, p0, Lcom/android/lgesettings/ResetSettings;->mIsShowDlg:Z

    .line 72
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/ResetSettings;->mCurConfig:Landroid/content/res/Configuration;

    .line 77
    iput-object v1, p0, Lcom/android/lgesettings/ResetSettings;->mProgressDlg:Landroid/app/ProgressDialog;

    .line 78
    iput-object v1, p0, Lcom/android/lgesettings/ResetSettings;->mProgressHandler:Landroid/os/Handler;

    .line 97
    iput-boolean v2, p0, Lcom/android/lgesettings/ResetSettings;->mFontServerConnected:Z

    .line 98
    iput-object v1, p0, Lcom/android/lgesettings/ResetSettings;->mRemoteFontServer:Lcom/android/lgesettings/FontServerConnection;

    .line 99
    new-instance v0, Lcom/android/lgesettings/ResetSettings$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/ResetSettings$1;-><init>(Lcom/android/lgesettings/ResetSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/ResetSettings;->mHandler:Landroid/os/Handler;

    .line 142
    new-instance v0, Lcom/android/lgesettings/ResetSettings$2;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/ResetSettings$2;-><init>(Lcom/android/lgesettings/ResetSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/ResetSettings;->mRunnable:Ljava/lang/Runnable;

    .line 250
    new-instance v0, Lcom/android/lgesettings/ResetSettings$5;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/ResetSettings$5;-><init>(Lcom/android/lgesettings/ResetSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/ResetSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private GestureSettingsResetDB()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 724
    invoke-virtual {p0}, Lcom/android/lgesettings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gesture_home_rearrange"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 725
    invoke-virtual {p0}, Lcom/android/lgesettings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gesture_voice_call"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 726
    invoke-virtual {p0}, Lcom/android/lgesettings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gesture_alarm"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 727
    invoke-virtual {p0}, Lcom/android/lgesettings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gesture_video_player"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 728
    return-void
.end method

.method private SetWiFiSettingsDBToDefault()V
    .locals 2

    .prologue
    .line 318
    const-string v0, "[ResetSetting][Wi-fi]"

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const-string v0, "[ResetSetting][Wi-fi]"

    const-string v1, "end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    return-void
.end method

.method static synthetic access$002(Lcom/android/lgesettings/ResetSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/lgesettings/ResetSettings;->mFontServerConnected:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/lgesettings/ResetSettings;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/lgesettings/ResetSettings;->mProgressDlg:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/lgesettings/ResetSettings;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/lgesettings/ResetSettings;->mProgressDlg:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/lgesettings/ResetSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/lgesettings/ResetSettings;->mIsShowDlg:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/lgesettings/ResetSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/lgesettings/ResetSettings;->mIsShowDlg:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/lgesettings/ResetSettings;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/lgesettings/ResetSettings;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/lgesettings/ResetSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/lgesettings/ResetSettings;->updateSettingsDB()V

    return-void
.end method

.method private doSleep(I)V
    .locals 3
    .parameter "time"

    .prologue
    .line 732
    int-to-long v1, p1

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 736
    :goto_0
    return-void

    .line 733
    :catch_0
    move-exception v0

    .line 734
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "ResetSettings"

    const-string v2, "[AUTORUN] waiting exception"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private establishInitialState()V
    .locals 4

    .prologue
    .line 156
    iget-object v2, p0, Lcom/android/lgesettings/ResetSettings;->mContentView:Landroid/view/View;

    const v3, 0x7f0a028e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/lgesettings/ResetSettings;->mResetSetting:Landroid/widget/Button;

    .line 157
    iget-object v2, p0, Lcom/android/lgesettings/ResetSettings;->mResetSetting:Landroid/widget/Button;

    new-instance v3, Lcom/android/lgesettings/ResetSettings$3;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/ResetSettings$3;-><init>(Lcom/android/lgesettings/ResetSettings;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v2, p0, Lcom/android/lgesettings/ResetSettings;->mContentView:Landroid/view/View;

    const v3, 0x7f0a028d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 210
    .local v0, MoreInfo:Landroid/widget/Button;
    new-instance v2, Lcom/android/lgesettings/ResetSettings$4;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/ResetSettings$4;-><init>(Lcom/android/lgesettings/ResetSettings;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 231
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "lge.settings.intent.action.RESET_SETTING"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Lcom/android/lgesettings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/ResetSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 233
    return-void
.end method

.method private locationServicesReset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 688
    invoke-virtual {p0}, Lcom/android/lgesettings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vzw_lbs"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 690
    invoke-virtual {p0}, Lcom/android/lgesettings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 692
    invoke-virtual {p0}, Lcom/android/lgesettings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 694
    return-void
.end method

.method private lockScreenReset()V
    .locals 2

    .prologue
    .line 617
    const-string v0, "ResetSettings"

    const-string v1, "Lock screen reset start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    const-string v0, "ResetSettings"

    const-string v1, "Lock screen reset end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    return-void
.end method

.method private resetBackupAndResetDB()V
    .locals 5

    .prologue
    .line 456
    const-string v2, "ResetSettings"

    const-string v3, "[Backup & reset] start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const-string v2, "backup"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .line 462
    .local v0, backupManager:Landroid/app/backup/IBackupManager;
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, v2}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 470
    :goto_0
    iget-object v2, p0, Lcom/android/lgesettings/ResetSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "backup_auto_restore"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 473
    const-string v2, "ResetSettings"

    const-string v3, "[Backup & reset] end"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    return-void

    .line 463
    :catch_0
    move-exception v1

    .line 464
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 465
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 466
    .local v1, e:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method private resetBtDB()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 533
    const-string v4, "ResetSettings"

    const-string v5, "[Bt Reset DB] start"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    const-string v0, "com.android.lgesettings_preferences"

    .line 535
    .local v0, KEY_DISCOVERABLE_TIMEOUT:Ljava/lang/String;
    const-string v1, "BtUiSearchFilter"

    .line 537
    .local v1, KEY_SEARCH_FILTER:Ljava/lang/String;
    const-string v4, "ResetSettings"

    const-string v5, "[Bt Reset DB] make Discoverable time as 2min"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v4, p0, Lcom/android/lgesettings/ResetSettings;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 539
    .local v2, mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "bt_discoverable_timeout"

    const-string v6, "twomin"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 540
    const-string v4, "ResetSettings"

    const-string v5, "[Bt Reset DB] make Search Filter as All Devices"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v4, p0, Lcom/android/lgesettings/ResetSettings;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 542
    .local v3, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "key_scan_filter_type"

    const/16 v6, 0x1f00

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 553
    const-string v4, "ResetSettings"

    const-string v5, "[Bt Reset DB] end"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    return-void
.end method

.method private resetDateAndTimeDB()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 656
    const-string v2, "ResetSettings"

    const-string v3, "[Date & time] start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    invoke-virtual {p0}, Lcom/android/lgesettings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_time"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 663
    invoke-virtual {p0}, Lcom/android/lgesettings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_time_zone"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 666
    invoke-virtual {p0}, Lcom/android/lgesettings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "time_12_24"

    const-string v4, "12"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 667
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.TIME_SET"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 668
    .local v0, timeChanged:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/lgesettings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 671
    invoke-virtual {p0}, Lcom/android/lgesettings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "date_format"

    const-string v4, "dd-MM-yyy"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 672
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.TIME_SET"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 673
    .local v1, timeChangedFormat:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/lgesettings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 675
    const-string v2, "ResetSettings"

    const-string v3, "[Date & time] end"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    return-void
.end method

.method private resetDisplayDB()V
    .locals 2

    .prologue
    .line 452
    const-string v0, "ResetSettings"

    const-string v1, "[Display] end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    return-void
.end method

.method private resetFontData()V
    .locals 2

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/android/lgesettings/ResetSettings;->mFontServerConnected:Z

    if-nez v0, :cond_1

    .line 114
    const-string v0, "ResetSettings"

    const-string v1, "Failure : not yet connected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/ResetSettings;->mRemoteFontServer:Lcom/android/lgesettings/FontServerConnection;

    if-nez v0, :cond_2

    .line 118
    const-string v0, "ResetSettings"

    const-string v1, "Failure : mRemoteFontServer is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 122
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/ResetSettings;->mRemoteFontServer:Lcom/android/lgesettings/FontServerConnection;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/lgesettings/ResetSettings;->mRemoteFontServer:Lcom/android/lgesettings/FontServerConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/FontServerConnection;->selectDefaultTypeface(I)V

    goto :goto_0
.end method

.method private resetMobileDataDB()V
    .locals 2

    .prologue
    .line 697
    const-string v0, "ResetSettings"

    const-string v1, "[MobileData] start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    const-string v0, "ResetSettings"

    const-string v1, "[MobileData] end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    return-void
.end method

.method private resetModeChangeDB()V
    .locals 3

    .prologue
    .line 718
    const-string v0, "[ResetSetting][ModeChange]"

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    invoke-virtual {p0}, Lcom/android/lgesettings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ui_type_settings"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 720
    const-string v0, "[ResetSetting][ModeChange]"

    const-string v1, "end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    return-void
.end method

.method private resetPcConnectionDB()V
    .locals 7

    .prologue
    const/16 v6, 0x14

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 477
    const-string v2, "ResetSettings"

    const-string v3, "[PC connection] start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-virtual {p0}, Lcom/android/lgesettings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 481
    .local v0, context:Landroid/content/Context;
    const-string v2, "usb"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbManager;

    .line 483
    .local v1, usbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isMassStorageSupport(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 484
    invoke-static {v0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->getUsbConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 485
    const-string v2, "mass_storage"

    invoke-virtual {v1, v2, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 486
    invoke-static {v0, v4}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->setMassStorage(Landroid/content/Context;Z)Z

    .line 503
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/lgesettings/ResetSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "usb_ask_on_connection"

    invoke-static {v2, v3, v4}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 507
    iget-object v2, p0, Lcom/android/lgesettings/ResetSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "linkcloud_settings"

    invoke-static {v2, v3, v5}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 511
    iget-object v2, p0, Lcom/android/lgesettings/ResetSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "osp_wifi_settings"

    invoke-static {v2, v3, v5}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 515
    iget-object v2, p0, Lcom/android/lgesettings/ResetSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "car_home_auto_launch"

    invoke-static {v2, v3, v4}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 519
    iget-object v2, p0, Lcom/android/lgesettings/ResetSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "desk_home_auto_launch"

    invoke-static {v2, v3, v4}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 523
    iget-object v2, p0, Lcom/android/lgesettings/ResetSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "media_home_auto_launch"

    invoke-static {v2, v3, v4}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 527
    iget-object v2, p0, Lcom/android/lgesettings/ResetSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "pouch_mode_auto_launch"

    invoke-static {v2, v3, v4}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 530
    const-string v2, "ResetSettings"

    const-string v3, "[PC connection] end"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    return-void

    .line 488
    :cond_1
    const-string v2, "mass_storage"

    invoke-virtual {v1, v2, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 489
    invoke-direct {p0, v6}, Lcom/android/lgesettings/ResetSettings;->doSleep(I)V

    .line 490
    const-string v2, "2"

    invoke-static {v0, v2, v5}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->changeAutorunMode(Landroid/content/Context;Ljava/lang/String;Z)Z

    goto :goto_0

    .line 492
    :cond_2
    invoke-static {v0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isMtpSupport(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 493
    invoke-static {v0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->getUsbConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 494
    const-string v2, "mtp_only"

    invoke-virtual {v1, v2, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto :goto_0

    .line 496
    :cond_3
    const-string v2, "mtp_only"

    invoke-virtual {v1, v2, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 497
    invoke-direct {p0, v6}, Lcom/android/lgesettings/ResetSettings;->doSleep(I)V

    .line 498
    const-string v2, "1"

    invoke-static {v0, v2, v5}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->changeAutorunMode(Landroid/content/Context;Ljava/lang/String;Z)Z

    goto :goto_0
.end method

.method private resetSoundDB()V
    .locals 2

    .prologue
    .line 679
    const-string v0, "ResetSettings"

    const-string v1, "[SoundData] start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    const-string v0, "ResetSettings"

    const-string v1, "[SoundData] end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    return-void
.end method

.method private setAccessibilityResetDB()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 557
    const-string v0, "[ResetSetting][Accessibility]"

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-virtual {p0}, Lcom/android/lgesettings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "speak_password"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 561
    invoke-virtual {p0}, Lcom/android/lgesettings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "long_press_timeout"

    const-string v2, "500"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 563
    invoke-virtual {p0}, Lcom/android/lgesettings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_script_injection"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 566
    const-string v0, "[ResetSetting][Accessibility]"

    const-string v1, "end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    return-void
.end method

.method private setPowersaverResetDB()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 570
    const-string v1, "[ResetSetting][Powersave]"

    const-string v2, "start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    invoke-virtual {p0}, Lcom/android/lgesettings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "power_save_enabled"

    invoke-static {v1, v2, v5}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 574
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 575
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.lgesettings"

    const-string v2, "com.android.lgesettings.powersave.PowerSaveService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 576
    invoke-virtual {p0}, Lcom/android/lgesettings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    .line 578
    invoke-virtual {p0}, Lcom/android/lgesettings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "power_save_enabled"

    invoke-static {v1, v2, v5}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 581
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "power_save_mode"

    const/16 v3, 0x1e

    invoke-static {v1, v2, v3}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 583
    invoke-virtual {p0}, Lcom/android/lgesettings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "power_save_battery_indicator"

    invoke-static {v1, v2, v5}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 585
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.lgesettings.powersave.action.BATTERY_INDICATOR_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 586
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/lgesettings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 588
    invoke-virtual {p0}, Lcom/android/lgesettings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "power_save_wifi"

    invoke-static {v1, v2, v4}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 590
    invoke-virtual {p0}, Lcom/android/lgesettings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "power_save_sync"

    invoke-static {v1, v2, v5}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 592
    invoke-virtual {p0}, Lcom/android/lgesettings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "power_save_bt"

    invoke-static {v1, v2, v4}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 594
    invoke-virtual {p0}, Lcom/android/lgesettings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "power_save_nfc"

    invoke-static {v1, v2, v4}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 596
    invoke-virtual {p0}, Lcom/android/lgesettings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "power_save_touch"

    invoke-static {v1, v2, v4}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 598
    invoke-virtual {p0}, Lcom/android/lgesettings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "power_save_cpu_adjust"

    invoke-static {v1, v2, v4}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 600
    invoke-virtual {p0}, Lcom/android/lgesettings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "power_save_brightness_adjust"

    invoke-static {v1, v2, v4}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 602
    invoke-virtual {p0}, Lcom/android/lgesettings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "power_save_brightness"

    const/16 v3, 0x14

    invoke-static {v1, v2, v3}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 604
    invoke-virtual {p0}, Lcom/android/lgesettings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "power_save_screen_timeout_adjust"

    invoke-static {v1, v2, v4}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 606
    invoke-virtual {p0}, Lcom/android/lgesettings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "power_save_screen_timeout"

    const/16 v3, 0x3a98

    invoke-static {v1, v2, v3}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 608
    invoke-virtual {p0}, Lcom/android/lgesettings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "power_save_front_led_adjust"

    invoke-static {v1, v2, v4}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 610
    invoke-virtual {p0}, Lcom/android/lgesettings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "power_save_front_led"

    const/16 v3, 0x5dc

    invoke-static {v1, v2, v3}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 613
    const-string v1, "[ResetSetting][Powersave]"

    const-string v2, "end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    return-void
.end method

.method private updateSettingsDB()V
    .locals 2

    .prologue
    .line 264
    const-string v0, "ResetSettings"

    const-string v1, "Default SettingsDB start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-direct {p0}, Lcom/android/lgesettings/ResetSettings;->resetMobileDataDB()V

    .line 270
    invoke-direct {p0}, Lcom/android/lgesettings/ResetSettings;->SetWiFiSettingsDBToDefault()V

    .line 274
    invoke-direct {p0}, Lcom/android/lgesettings/ResetSettings;->resetModeChangeDB()V

    .line 277
    invoke-direct {p0}, Lcom/android/lgesettings/ResetSettings;->resetSoundDB()V

    .line 279
    invoke-direct {p0}, Lcom/android/lgesettings/ResetSettings;->resetDisplayDB()V

    .line 282
    invoke-direct {p0}, Lcom/android/lgesettings/ResetSettings;->resetFontData()V

    .line 286
    invoke-direct {p0}, Lcom/android/lgesettings/ResetSettings;->locationServicesReset()V

    .line 289
    invoke-direct {p0}, Lcom/android/lgesettings/ResetSettings;->lockScreenReset()V

    .line 291
    invoke-direct {p0}, Lcom/android/lgesettings/ResetSettings;->GestureSettingsResetDB()V

    .line 293
    invoke-direct {p0}, Lcom/android/lgesettings/ResetSettings;->setPowersaverResetDB()V

    .line 298
    invoke-direct {p0}, Lcom/android/lgesettings/ResetSettings;->resetBackupAndResetDB()V

    .line 301
    invoke-direct {p0}, Lcom/android/lgesettings/ResetSettings;->resetDateAndTimeDB()V

    .line 304
    invoke-direct {p0}, Lcom/android/lgesettings/ResetSettings;->setAccessibilityResetDB()V

    .line 307
    invoke-direct {p0}, Lcom/android/lgesettings/ResetSettings;->resetPcConnectionDB()V

    .line 310
    invoke-direct {p0}, Lcom/android/lgesettings/ResetSettings;->resetBtDB()V

    .line 313
    const-string v0, "ResetSettings"

    const-string v1, "Default SettingsDB end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 136
    new-instance v0, Lcom/android/lgesettings/FontServerConnection;

    invoke-virtual {p0}, Lcom/android/lgesettings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/ResetSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/lgesettings/FontServerConnection;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/lgesettings/ResetSettings;->mRemoteFontServer:Lcom/android/lgesettings/FontServerConnection;

    .line 137
    iget-object v0, p0, Lcom/android/lgesettings/ResetSettings;->mRemoteFontServer:Lcom/android/lgesettings/FontServerConnection;

    invoke-virtual {v0}, Lcom/android/lgesettings/FontServerConnection;->connectFontServerService()V

    .line 140
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 83
    const v0, 0x7f040127

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/ResetSettings;->mContentView:Landroid/view/View;

    .line 85
    invoke-virtual {p0}, Lcom/android/lgesettings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/android/lgesettings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080988

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/ResetSettings;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/ResetSettings;->mContentResolver:Landroid/content/ContentResolver;

    .line 91
    invoke-direct {p0}, Lcom/android/lgesettings/ResetSettings;->establishInitialState()V

    .line 92
    iget-object v0, p0, Lcom/android/lgesettings/ResetSettings;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/android/lgesettings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/ResetSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 241
    iget-object v0, p0, Lcom/android/lgesettings/ResetSettings;->mRemoteFontServer:Lcom/android/lgesettings/FontServerConnection;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/lgesettings/ResetSettings;->mRemoteFontServer:Lcom/android/lgesettings/FontServerConnection;

    invoke-virtual {v0}, Lcom/android/lgesettings/FontServerConnection;->disconnectFontServerService()V

    .line 243
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/ResetSettings;->mRemoteFontServer:Lcom/android/lgesettings/FontServerConnection;

    .line 247
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 248
    return-void
.end method
