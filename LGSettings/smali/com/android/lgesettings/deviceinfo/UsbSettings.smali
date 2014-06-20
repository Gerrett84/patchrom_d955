.class public Lcom/android/lgesettings/deviceinfo/UsbSettings;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "UsbSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mCharger:Lcom/android/lgesettings/lge/RadioButtonPreference;

.field private mChekshowDoNot:Z

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentFunction:Ljava/lang/String;

.field private mDefaultFunction:Ljava/lang/String;

.field private mFirstAutorunDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mInstallAutorunDialog:Landroid/app/AlertDialog;

.field private mInternet:Lcom/android/lgesettings/lge/RadioButtonPreference;

.field private mInternetConnection:I

.field private final mLGMDMReceiver:Landroid/content/BroadcastReceiver;

.field private mMassStorage:Lcom/android/lgesettings/lge/RadioButtonPreference;

.field private mMediasync:Lcom/android/lgesettings/lge/RadioButtonPreference;

.field private mNeedSleep:Z

.field private mPcsuite:Lcom/android/lgesettings/lge/RadioButtonPreference;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mProgress:Landroid/app/ProgressDialog;

.field private mPtp:Lcom/android/lgesettings/lge/RadioButtonPreference;

.field private mSetChekshowDoNot:Z

.field private final mStateReceiver:Landroid/content/BroadcastReceiver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTether:Lcom/android/lgesettings/lge/RadioButtonPreference;

.field private mUsbLauncher:Z

.field private mUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    .line 105
    iput-boolean v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbLauncher:Z

    .line 110
    iput-boolean v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mNeedSleep:Z

    .line 112
    iput-boolean v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mChekshowDoNot:Z

    .line 113
    iput-boolean v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mSetChekshowDoNot:Z

    .line 115
    new-instance v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/deviceinfo/UsbSettings$1;-><init>(Lcom/android/lgesettings/deviceinfo/UsbSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 160
    new-instance v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/deviceinfo/UsbSettings$2;-><init>(Lcom/android/lgesettings/deviceinfo/UsbSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    .line 1361
    new-instance v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;-><init>(Lcom/android/lgesettings/deviceinfo/UsbSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mHandler:Landroid/os/Handler;

    .line 1901
    new-instance v0, Lcom/android/lgesettings/deviceinfo/UsbSettings$4;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/deviceinfo/UsbSettings$4;-><init>(Lcom/android/lgesettings/deviceinfo/UsbSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/deviceinfo/UsbSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->updateTetherState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mInstallAutorunDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/lgesettings/deviceinfo/UsbSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mInstallAutorunDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbLauncher:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/lgesettings/deviceinfo/UsbSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->autorunAck()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/lgesettings/deviceinfo/UsbSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->autorunChangeMode()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Lcom/android/lgesettings/lge/RadioButtonPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mTether:Lcom/android/lgesettings/lge/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Lcom/android/lgesettings/lge/RadioButtonPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mMassStorage:Lcom/android/lgesettings/lge/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/lgesettings/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mChekshowDoNot:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mSetChekshowDoNot:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/lgesettings/deviceinfo/UsbSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->startAutorun()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/lgesettings/deviceinfo/UsbSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->callPopup(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/lgesettings/deviceinfo/UsbSettings;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mProgress:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/lgesettings/deviceinfo/UsbSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mInternetConnection:I

    return v0
.end method

.method static synthetic access$2102(Lcom/android/lgesettings/deviceinfo/UsbSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput p1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mInternetConnection:I

    return p1
.end method

.method static synthetic access$2200(Lcom/android/lgesettings/deviceinfo/UsbSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->doSleep(I)V

    return-void
.end method

.method static synthetic access$2302(Lcom/android/lgesettings/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mNeedSleep:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/lgesettings/deviceinfo/UsbSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->cancelProgressPopup()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/lgesettings/deviceinfo/UsbSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->startUmsSelection()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/lgesettings/deviceinfo/UsbSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/lgesettings/deviceinfo/UsbSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/lgesettings/deviceinfo/UsbSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mFirstAutorunDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/lgesettings/deviceinfo/UsbSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mFirstAutorunDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private autorunAck()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 985
    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->cancelAutorunTimer()V

    .line 986
    invoke-direct {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->cancelProgressPopup()V

    .line 1002
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    const-string v1, "ecm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1003
    sput-boolean v2, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityUsbModeChange:Z

    .line 1004
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v1, "ecm"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1005
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    .line 1006
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->callTetherPopup(Landroid/content/Context;)V

    .line 1021
    :goto_0
    return-void

    .line 1009
    :cond_0
    sput-boolean v2, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityUsbModeChange:Z

    .line 1010
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1011
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    .line 1014
    sget-boolean v0, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityFinish:Z

    if-eqz v0, :cond_1

    .line 1015
    const-string v0, "UsbSettings"

    const-string v1, "[AUTORUN] autorunAck() : finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 1018
    :cond_1
    const-string v0, "UsbSettings"

    const-string v1, "[AUTORUN] autorunAck() : Do not finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    sput-boolean v2, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityFinish:Z

    goto :goto_0
.end method

.method private autorunChangeMode()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1026
    const-wide/16 v1, 0x12c

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1045
    :goto_0
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    const-string v2, "ecm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1046
    sput-boolean v3, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityUsbModeChange:Z

    .line 1047
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v2, "ecm"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1048
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    .line 1049
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->callTetherPopup(Landroid/content/Context;)V

    .line 1068
    :goto_1
    return-void

    .line 1027
    :catch_0
    move-exception v0

    .line 1028
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "UsbSettings"

    const-string v2, "[AUTORUN] Exception wait for termination of PC Launcher, so just skip it"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1052
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    sput-boolean v3, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityUsbModeChange:Z

    .line 1053
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1054
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    .line 1057
    sget-boolean v1, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityFinish:Z

    if-eqz v1, :cond_1

    .line 1059
    const-string v1, "UsbSettings"

    const-string v2, "[AUTORUN] autorunChangeMode() : finish"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 1064
    :cond_1
    const-string v1, "UsbSettings"

    const-string v2, "[AUTORUN] autorunChangeMode() : Do not finish"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    sput-boolean v3, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityFinish:Z

    goto :goto_1
.end method

.method private callPopup(I)V
    .locals 3
    .parameter

    .prologue
    .line 1354
    const-string v0, "UsbSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AUTORUN] callPopup() : popup id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1358
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1359
    return-void
.end method

.method private cancelProgressPopup()V
    .locals 1

    .prologue
    .line 1745
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mProgress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 1746
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 1748
    :cond_0
    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 4

    .prologue
    const v3, 0x7f080a14

    .line 437
    const v1, 0x7f06006f

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->addPreferencesFromResource(I)V

    .line 439
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 441
    .local v0, root:Landroid/preference/PreferenceScreen;
    const-string v1, "usb_charger"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/lge/RadioButtonPreference;

    iput-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCharger:Lcom/android/lgesettings/lge/RadioButtonPreference;

    .line 442
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCharger:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v1, p0}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 443
    const-string v1, "usb_media_sync"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/lge/RadioButtonPreference;

    iput-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mMediasync:Lcom/android/lgesettings/lge/RadioButtonPreference;

    .line 444
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mMediasync:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v1, p0}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 445
    const-string v1, "usb_tether"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/lge/RadioButtonPreference;

    iput-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mTether:Lcom/android/lgesettings/lge/RadioButtonPreference;

    .line 446
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mTether:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v1, p0}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 447
    const-string v1, "usb_pc_suite"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/lge/RadioButtonPreference;

    iput-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mPcsuite:Lcom/android/lgesettings/lge/RadioButtonPreference;

    .line 448
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mPcsuite:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v1, p0}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 449
    const-string v1, "usb_ptp"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/lge/RadioButtonPreference;

    iput-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mPtp:Lcom/android/lgesettings/lge/RadioButtonPreference;

    .line 450
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mPtp:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v1, p0}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 451
    const-string v1, "usb_mass_storage"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/lge/RadioButtonPreference;

    iput-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mMassStorage:Lcom/android/lgesettings/lge/RadioButtonPreference;

    .line 452
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mMassStorage:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v1, p0}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 453
    const-string v1, "usb_internet"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/lge/RadioButtonPreference;

    iput-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mInternet:Lcom/android/lgesettings/lge/RadioButtonPreference;

    .line 454
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mInternet:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v1, p0}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 456
    const-string v1, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 457
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCharger:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const v2, 0x7f080a11

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setSummary(I)V

    .line 458
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mMediasync:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v1, v3}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setSummary(I)V

    .line 459
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mPtp:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const v2, 0x7f080482

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setTitle(I)V

    .line 460
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mPtp:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const v2, 0x7f080a16

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setSummary(I)V

    .line 463
    :cond_0
    const-string v1, "ro.build.target_operator"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ATT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "US"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 464
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mPcsuite:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const v2, 0x7f080486

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setTitle(I)V

    .line 465
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mMediasync:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v1, v3}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setSummary(I)V

    .line 467
    :cond_1
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "i_skt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "i_u"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 468
    :cond_2
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mMassStorage:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const v2, 0x7f080a22

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setTitle(I)V

    .line 469
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mMassStorage:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const v2, 0x7f080a23

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 472
    :cond_3
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VZW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 473
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mTether:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 474
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mPcsuite:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 479
    :goto_0
    const-string v1, "ro.build.target_operator"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TRF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DCM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KDDI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "x2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_4
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TMO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "US"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ACG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v1

    if-nez v1, :cond_c

    .line 484
    :cond_6
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mTether:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 486
    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isPCsoftwareTRFModel()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 487
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mPcsuite:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 496
    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isMtpSupport(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 497
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mMediasync:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 498
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mPtp:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 500
    :cond_8
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isMassStorageSupport(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 501
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mMassStorage:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 503
    :cond_9
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 504
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mTether:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 506
    :cond_a
    return-object v0

    .line 476
    :cond_b
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mInternet:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 490
    :cond_c
    const-string v1, "ro.build.target_operator"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SPR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 492
    :cond_d
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mTether:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 493
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mPcsuite:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private doSleep(I)V
    .locals 3
    .parameter "time"

    .prologue
    .line 1915
    int-to-long v1, p1

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1921
    :goto_0
    return-void

    .line 1916
    :catch_0
    move-exception v0

    .line 1918
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "UsbSettings"

    const-string v2, "[AUTORUN] waiting exception"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1896
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private startAutorun()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 1940
    const-string v0, "UsbSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AUTORUN] startAutorun() : mDefaultFunction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1942
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    const-string v1, "charge_only"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1943
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->getUsbConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1944
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    const-string v1, "4"

    invoke-static {v0, v1, v3}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->changeAutorunMode(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1945
    sput-boolean v3, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityUsbModeChange:Z

    .line 1946
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1947
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    .line 2003
    :cond_0
    :goto_0
    return-void

    .line 1949
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->callPopup(I)V

    goto :goto_0

    .line 1952
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    const-string v1, "mass_storage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1953
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->getUsbConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1954
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    const-string v1, "2"

    invoke-static {v0, v1, v3}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->changeAutorunMode(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1955
    sput-boolean v3, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityUsbModeChange:Z

    .line 1956
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1957
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    goto :goto_0

    .line 1959
    :cond_3
    invoke-direct {p0, v4}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->callPopup(I)V

    goto :goto_0

    .line 1962
    :cond_4
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    const-string v1, "mtp_only"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1963
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->getUsbConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1964
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    const-string v1, "1"

    invoke-static {v0, v1, v3}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->changeAutorunMode(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1965
    sput-boolean v3, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityUsbModeChange:Z

    .line 1966
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1967
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    goto :goto_0

    .line 1969
    :cond_5
    invoke-direct {p0, v4}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->callPopup(I)V

    goto :goto_0

    .line 1972
    :cond_6
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    const-string v1, "ecm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1973
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->getUsbConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1974
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    const-string v1, "5"

    invoke-static {v0, v1, v3}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->changeAutorunMode(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1975
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->callTetherPopup(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1977
    :cond_7
    invoke-direct {p0, v4}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->callPopup(I)V

    goto/16 :goto_0

    .line 1980
    :cond_8
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    const-string v1, "pc_suite"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1981
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->getUsbConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1982
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    const-string v1, "0"

    invoke-static {v0, v1, v3}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->changeAutorunMode(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1983
    sput-boolean v3, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityUsbModeChange:Z

    .line 1984
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1985
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    .line 1986
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->finish()V

    goto/16 :goto_0

    .line 1988
    :cond_9
    invoke-direct {p0, v4}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->callPopup(I)V

    goto/16 :goto_0

    .line 1991
    :cond_a
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    const-string v1, "ptp_only"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1992
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->getUsbConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1993
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    const-string v1, "6"

    invoke-static {v0, v1, v3}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->changeAutorunMode(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1994
    sput-boolean v3, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityUsbModeChange:Z

    .line 1995
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1996
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    .line 1997
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->finish()V

    goto/16 :goto_0

    .line 1999
    :cond_b
    invoke-direct {p0, v4}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->callPopup(I)V

    goto/16 :goto_0
.end method

.method private startUmsSelection()V
    .locals 3

    .prologue
    .line 1768
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1769
    const-string v1, "DirectUMS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1770
    const-string v1, "com.android.lgesettings"

    const-string v2, "com.android.lgesettings.lge.UmsSelection"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1771
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1772
    return-void
.end method

.method private updateTetherState()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 123
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/MDMSettingsAdapter;->checkDisabledUsbType(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "network_lock_setting_mode"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 131
    .local v1, networkLockMode:I
    if-nez v1, :cond_2

    .line 132
    const-string v2, "UsbSettings"

    const-string v3, "Skip LTE check"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 136
    :cond_2
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_4

    .line 139
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mTether:Lcom/android/lgesettings/lge/RadioButtonPreference;

    if-eqz v2, :cond_3

    .line 140
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mTether:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v2, v4}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setEnabled(Z)V

    .line 150
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hidden_usb_tethering_enable"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 151
    .local v0, enable:I
    if-ne v0, v5, :cond_0

    .line 152
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mTether:Lcom/android/lgesettings/lge/RadioButtonPreference;

    if-eqz v2, :cond_0

    .line 153
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mTether:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v2, v5}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setEnabled(Z)V

    goto :goto_0

    .line 144
    .end local v0           #enable:I
    :cond_4
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mTether:Lcom/android/lgesettings/lge/RadioButtonPreference;

    if-eqz v2, :cond_3

    .line 145
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mTether:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v2, v5}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private updateToggles(Ljava/lang/String;)V
    .locals 13
    .parameter "function"

    .prologue
    .line 800
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCharger:Lcom/android/lgesettings/lge/RadioButtonPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mMediasync:Lcom/android/lgesettings/lge/RadioButtonPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mTether:Lcom/android/lgesettings/lge/RadioButtonPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mPcsuite:Lcom/android/lgesettings/lge/RadioButtonPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mPtp:Lcom/android/lgesettings/lge/RadioButtonPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mMassStorage:Lcom/android/lgesettings/lge/RadioButtonPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mInternet:Lcom/android/lgesettings/lge/RadioButtonPreference;

    if-nez v0, :cond_1

    .line 982
    :cond_0
    :goto_0
    return-void

    .line 804
    :cond_1
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_2

    .line 805
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCharger:Lcom/android/lgesettings/lge/RadioButtonPreference;

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mMediasync:Lcom/android/lgesettings/lge/RadioButtonPreference;

    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mMassStorage:Lcom/android/lgesettings/lge/RadioButtonPreference;

    iget-object v4, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mPcsuite:Lcom/android/lgesettings/lge/RadioButtonPreference;

    iget-object v5, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mTether:Lcom/android/lgesettings/lge/RadioButtonPreference;

    iget-object v6, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mPtp:Lcom/android/lgesettings/lge/RadioButtonPreference;

    iget-object v7, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mInternet:Lcom/android/lgesettings/lge/RadioButtonPreference;

    iget v8, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mInternetConnection:I

    iget-object v9, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual/range {v0 .. v9}, Lcom/android/lgesettings/MDMSettingsAdapter;->setUsbMenu(Lcom/android/lgesettings/lge/RadioButtonPreference;Lcom/android/lgesettings/lge/RadioButtonPreference;Lcom/android/lgesettings/lge/RadioButtonPreference;Lcom/android/lgesettings/lge/RadioButtonPreference;Lcom/android/lgesettings/lge/RadioButtonPreference;Lcom/android/lgesettings/lge/RadioButtonPreference;Lcom/android/lgesettings/lge/RadioButtonPreference;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 808
    const-string p1, "charge_only"

    .line 809
    const-string v0, "charge_only"

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    .line 816
    :cond_2
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SPR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 818
    :cond_3
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/lgesettings/lge/OverlayUtils;->getAllowUsbDrive(Landroid/content/ComponentName;)Z

    move-result v11

    .line 819
    .local v11, allowUsbDrive:Z
    if-nez v11, :cond_6

    .line 820
    const-string p1, "charge_only"

    .line 821
    const-string v0, "charge_only"

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    .line 822
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCharger:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 823
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mMediasync:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v0}, Lcom/android/lgesettings/lge/RadioButtonPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 824
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mMediasync:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setEnabled(Z)V

    .line 825
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mMediasync:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const v1, 0x7f080c24

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setSummary(I)V

    .line 827
    :cond_4
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mPtp:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v0}, Lcom/android/lgesettings/lge/RadioButtonPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 828
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mPtp:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setEnabled(Z)V

    .line 829
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mPtp:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const v1, 0x7f080c26

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setSummary(I)V

    .line 831
    :cond_5
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mPcsuite:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v0}, Lcom/android/lgesettings/lge/RadioButtonPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 832
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mPcsuite:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setEnabled(Z)V

    .line 833
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mPcsuite:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const v1, 0x7f080c25

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setSummary(I)V

    .line 837
    :cond_6
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/lgesettings/lge/OverlayUtils;->getAllowTethering(Landroid/content/ComponentName;)Z

    move-result v10

    .line 838
    .local v10, allowTethering:Z
    if-nez v10, :cond_7

    .line 839
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mTether:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v0}, Lcom/android/lgesettings/lge/RadioButtonPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 840
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mTether:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setEnabled(Z)V

    .line 841
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mTether:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const v1, 0x7f080c18

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setSummary(I)V

    .line 846
    .end local v10           #allowTethering:Z
    .end local v11           #allowUsbDrive:Z
    :cond_7
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isMassStorageSupport(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 847
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mMassStorage:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isMassStorageEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setEnabled(Z)V

    .line 849
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_8

    .line 850
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mMassStorage:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Lcom/android/lgesettings/MDMSettingsAdapter;->setUsbMenu(Lcom/android/lgesettings/lge/RadioButtonPreference;Lcom/android/lgesettings/lge/RadioButtonPreference;Lcom/android/lgesettings/lge/RadioButtonPreference;Lcom/android/lgesettings/lge/RadioButtonPreference;Lcom/android/lgesettings/lge/RadioButtonPreference;Lcom/android/lgesettings/lge/RadioButtonPreference;Lcom/android/lgesettings/lge/RadioButtonPreference;ILjava/lang/String;)Z

    .line 856
    :cond_8
    const-string v0, "charge_only"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 857
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCharger:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 858
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mMediasync:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 859
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mTether:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 860
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mPcsuite:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 861
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mPtp:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 862
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mMassStorage:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 863
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mInternet:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 864
    :cond_9
    const-string v0, "mtp_only"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 865
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCharger:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 866
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mMediasync:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 867
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mPcsuite:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 868
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mTether:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 869
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mPtp:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 870
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mMassStorage:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 871
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mInternet:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 872
    :cond_a
    const-string v0, "ptp_only"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 873
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCharger:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 874
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mMediasync:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 875
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mTether:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 876
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mPcsuite:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 877
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mPtp:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 878
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mMassStorage:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 879
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mInternet:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 880
    :cond_b
    const-string v0, "mass_storage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 881
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCharger:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 882
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mMediasync:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 883
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mTether:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 884
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mPcsuite:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 885
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mPtp:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 886
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mMassStorage:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 887
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mInternet:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 889
    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isMassSeperatedModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 890
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ums_selected_storage"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 891
    .local v12, selectedStorage:I
    if-nez v12, :cond_c

    .line 892
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mMassStorage:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const v1, 0x7f080d0f

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 893
    :cond_c
    const/4 v0, 0x1

    if-ne v12, v0, :cond_d

    .line 894
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mMassStorage:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const v1, 0x7f08045e

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 896
    :cond_d
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mMassStorage:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const v1, 0x7f080d0f

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 899
    .end local v12           #selectedStorage:I
    :cond_e
    const-string v0, "ecm"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "pc_suite"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 900
    :cond_f
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 901
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCharger:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 902
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mMediasync:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 903
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mTether:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 904
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mPcsuite:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 905
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mPtp:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 906
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mMassStorage:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 907
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mInternet:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 909
    iget v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mInternetConnection:I

    if-nez v0, :cond_10

    .line 910
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mInternet:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const v1, 0x7f0807ed

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 911
    :cond_10
    iget v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mInternetConnection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 912
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mInternet:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const v1, 0x7f080a10

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 914
    :cond_11
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mInternet:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 917
    :cond_12
    const-string v0, "ecm"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 918
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCharger:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 919
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mMediasync:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 920
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mTether:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 921
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mPcsuite:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 922
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mPtp:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 923
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mMassStorage:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 924
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mInternet:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 925
    :cond_13
    const-string v0, "pc_suite"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 926
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCharger:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 927
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mMediasync:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 928
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mTether:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 929
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mPcsuite:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 930
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mPtp:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 931
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mMassStorage:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 932
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mInternet:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 936
    :cond_14
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "u0_cdma"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    :cond_15
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SPR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 938
    :cond_16
    const-string v0, "usb_enable_diag"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 939
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCharger:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 940
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mMediasync:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 941
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mTether:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 942
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mPcsuite:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 943
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mPtp:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 944
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mMassStorage:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 945
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mInternet:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 946
    :cond_17
    const-string v0, "usb_enable_ecm"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 947
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCharger:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 948
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mMediasync:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 949
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mTether:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 950
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mPcsuite:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 951
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mPtp:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 952
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mMassStorage:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 953
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mInternet:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 955
    :cond_18
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mTether:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 956
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mPcsuite:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 957
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mPtp:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 958
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mMassStorage:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 959
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mInternet:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 960
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCharger:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 961
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mMediasync:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 964
    :cond_19
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mTether:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 965
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mPcsuite:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 966
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mPtp:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 967
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mMassStorage:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 968
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mInternet:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 970
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 973
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCharger:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 974
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mMediasync:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 977
    :cond_1a
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCharger:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 978
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mMediasync:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1775
    invoke-super {p0, p1, p2, p3}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1776
    const-string v0, "UsbSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AUTORUN] onActivityResult() : requestCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    const-string v0, "UsbSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AUTORUN] onActivityResult() : resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    const-string v0, "UsbSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AUTORUN] onActivityResult() : intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1849
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 1850
    const-string v0, "mass_storage"

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    .line 1851
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    .line 1852
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->finish()V

    .line 1893
    :cond_0
    :goto_0
    return-void

    .line 1855
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 1856
    if-nez v0, :cond_3

    .line 1857
    const-string v0, "charge_only"

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    .line 1858
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->getUsbConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1859
    sput-boolean v3, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityUsbModeChange:Z

    .line 1860
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1861
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    .line 1867
    :goto_1
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->setMassStorage(Landroid/content/Context;Z)Z

    .line 1890
    :goto_2
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    goto :goto_0

    .line 1863
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1864
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    goto :goto_1

    .line 1870
    :cond_3
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1871
    sput-boolean v3, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityUsbModeChange:Z

    .line 1872
    const-string v0, "mass_storage"

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    .line 1873
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    goto :goto_2

    .line 1876
    :cond_4
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->getUsbConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1877
    const-string v0, "charge_only"

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    .line 1878
    sput-boolean v3, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityUsbModeChange:Z

    .line 1879
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1880
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    .line 1882
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->setMassStorage(Landroid/content/Context;Z)Z

    goto :goto_2

    .line 1884
    :cond_5
    const-string v0, "mass_storage"

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    .line 1885
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1886
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    goto :goto_2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mFirstAutorunDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mFirstAutorunDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 617
    iget-boolean v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mChekshowDoNot:Z

    iput-boolean v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mSetChekshowDoNot:Z

    .line 618
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mFirstAutorunDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 619
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mFirstAutorunDialog:Landroid/app/AlertDialog;

    .line 620
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->callPopup(I)V

    .line 623
    :cond_0
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 624
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    const/16 v12, 0x10

    const/4 v11, -0x2

    const/4 v7, 0x1

    const/4 v10, 0x0

    .line 511
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 513
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iput-object v6, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    .line 515
    const-string v6, "usb"

    invoke-virtual {p0, v6}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/usb/UsbManager;

    iput-object v6, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 516
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    iput-object v6, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 518
    iget-object v6, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v6}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    .line 519
    sget-boolean v6, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityUsbModeChange:Z

    if-nez v6, :cond_5

    .line 520
    iget-object v6, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    .line 529
    :goto_0
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    const-string v8, "VZW"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 530
    iget-object v6, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    const-string v8, "ecm"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 531
    iput v10, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mInternetConnection:I

    .line 539
    :cond_0
    :goto_1
    const-string v6, "UsbSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[AUTORUN] onCreate() : mDefaultFunction="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const-string v6, "UsbSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[AUTORUN] onCreate() : mCurrentFunction="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    invoke-direct {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 544
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 545
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_9

    const-string v6, "extra_usb_launcher"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    :goto_2
    iput-boolean v6, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbLauncher:Z

    .line 548
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    const-string v8, "MPCS"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 549
    iget-object v6, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    const-string v8, "phone"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    iput-object v6, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 550
    iget-object v6, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v6, :cond_1

    .line 551
    iget-object v6, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v8, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v9, 0x40

    invoke-virtual {v6, v8, v9}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 554
    :cond_1
    invoke-direct {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->updateTetherState()V

    .line 557
    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.lge.intent.action.tether_state_change"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 558
    .local v3, i1:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 559
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.lge.intent.action.activity_finish"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 560
    .local v4, i2:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 562
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    const-string v8, "VZW"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isDirectAutorunModel()Z

    move-result v6

    if-nez v6, :cond_b

    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isMultiUser()Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->supportAutorunMode(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 566
    new-instance v1, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 567
    .local v1, autorunButton:Landroid/widget/ImageButton;
    const/16 v6, 0x3e8

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setId(I)V

    .line 568
    invoke-virtual {v1, v10}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 569
    const v6, 0x7f0201bb

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 571
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0e0003

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 573
    .local v5, padding:I
    invoke-virtual {v1, v10, v10, v5, v10}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 574
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v12, v12}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 576
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    new-instance v8, Landroid/app/ActionBar$LayoutParams;

    const v9, 0x800015

    invoke-direct {v8, v11, v11, v9}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v6, v1, v8}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 581
    iget-object v6, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->getUsbConnected(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 582
    invoke-virtual {p0, v7}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->setHasOptionsMenu(Z)V

    .line 583
    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 590
    :goto_3
    iget-object v6, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->getAutorunDialogDoNotShow(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_3

    sget-boolean v6, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityUsbModeChange:Z

    if-nez v6, :cond_3

    sget-boolean v6, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mDirectAutorun:Z

    if-nez v6, :cond_3

    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isAutorunTimer()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->getUsbConnected(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 595
    const/4 v6, 0x6

    invoke-direct {p0, v6}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->callPopup(I)V

    .line 604
    .end local v1           #autorunButton:Landroid/widget/ImageButton;
    .end local v5           #padding:I
    :cond_3
    :goto_4
    sget-boolean v6, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v6, :cond_4

    .line 605
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 606
    .local v2, filterLGMDM:Landroid/content/IntentFilter;
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/lgesettings/MDMSettingsAdapter;->addUsbPolicyChangeIntentFilter(Landroid/content/IntentFilter;)V

    .line 608
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 611
    .end local v2           #filterLGMDM:Landroid/content/IntentFilter;
    :cond_4
    return-void

    .line 522
    .end local v0           #args:Landroid/os/Bundle;
    .end local v3           #i1:Landroid/content/Intent;
    .end local v4           #i2:Landroid/content/Intent;
    :cond_5
    sget-object v6, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActiveCurrentFunction:Ljava/lang/String;

    if-eqz v6, :cond_6

    const-string v6, ""

    sget-object v8, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActiveCurrentFunction:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 523
    sget-object v6, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActiveCurrentFunction:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    goto/16 :goto_0

    .line 525
    :cond_6
    iget-object v6, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    goto/16 :goto_0

    .line 532
    :cond_7
    iget-object v6, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    const-string v8, "pc_suite"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 533
    iput v7, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mInternetConnection:I

    goto/16 :goto_1

    .line 535
    :cond_8
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mInternetConnection:I

    goto/16 :goto_1

    .restart local v0       #args:Landroid/os/Bundle;
    :cond_9
    move v6, v7

    .line 545
    goto/16 :goto_2

    .line 585
    .restart local v1       #autorunButton:Landroid/widget/ImageButton;
    .restart local v3       #i1:Landroid/content/Intent;
    .restart local v4       #i2:Landroid/content/Intent;
    .restart local v5       #padding:I
    :cond_a
    invoke-virtual {p0, v10}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->setHasOptionsMenu(Z)V

    .line 586
    invoke-virtual {v1, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 587
    invoke-virtual {v1, v10}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_3

    .line 600
    .end local v1           #autorunButton:Landroid/widget/ImageButton;
    .end local v5           #padding:I
    :cond_b
    invoke-virtual {p0, v10}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->setHasOptionsMenu(Z)V

    goto :goto_4
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1925
    const v0, 0x7f110005

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1926
    invoke-super {p0, p1, p2}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1927
    return-void
.end method

.method public onDestroy()V
    .locals 8

    .prologue
    .line 626
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onDestroy()V

    .line 627
    const-string v5, "UsbSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[AUTORUN] onDestroy() : getDefaultFunction ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v7}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget-object v5, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mProgress:Landroid/app/ProgressDialog;

    if-eqz v5, :cond_0

    .line 630
    iget-object v5, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 632
    :cond_0
    iget-object v5, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mFirstAutorunDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_1

    .line 633
    iget-object v5, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mFirstAutorunDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 636
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 637
    .local v0, autorunButton:Landroid/widget/ImageButton;
    if-eqz v0, :cond_2

    .line 638
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->setHasOptionsMenu(Z)V

    .line 639
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 643
    :cond_2
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MPCS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 644
    iget-object v5, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v5, :cond_3

    .line 645
    iget-object v5, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 650
    :cond_3
    sget-boolean v5, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v5, :cond_4

    .line 652
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 659
    :cond_4
    :goto_0
    const-string v5, "persist.sys.usb.config"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 660
    .local v2, functions1:Ljava/lang/String;
    const-string v5, "sys.usb.config"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 661
    .local v3, functions2:Ljava/lang/String;
    const-string v5, "sys.usb.state"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 662
    .local v4, functions3:Ljava/lang/String;
    const-string v5, "UsbSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[AUTORUN] onDestroy() : persist.sys.usb.config="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    const-string v5, "UsbSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[AUTORUN] onDestroy() : sys.usb.config="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    const-string v5, "UsbSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[AUTORUN] onDestroy() : sys.usb.state="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    return-void

    .line 653
    .end local v2           #functions1:Ljava/lang/String;
    .end local v3           #functions2:Ljava/lang/String;
    .end local v4           #functions3:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 654
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "MDM"

    const-string v6, "mLGMDMReceiver unregisterReceiver "

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 1931
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0490

    if-ne v0, v1, :cond_0

    .line 1932
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->callPopup(I)V

    .line 1933
    const/4 v0, 0x1

    .line 1936
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 670
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPause()V

    .line 672
    sput-boolean v4, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mUsbSettingsRun:Z

    .line 673
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 675
    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isAutorunTimer()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 676
    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->cancelAutorunTimer()V

    .line 678
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mProgress:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 679
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->cancel()V

    .line 686
    :cond_0
    sput-boolean v3, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityUsbModeChange:Z

    .line 687
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 688
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    .line 689
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    .line 691
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    const-string v2, "ecm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 692
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->callTetherPopup(Landroid/content/Context;)V

    .line 696
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    sput-object v1, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActiveCurrentFunction:Ljava/lang/String;

    .line 697
    const-string v1, "UsbSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AUTORUN] onPause() : mActiveCurrentFunction = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActiveCurrentFunction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget-boolean v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mNeedSleep:Z

    if-eqz v1, :cond_2

    .line 700
    iput-boolean v4, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mNeedSleep:Z

    .line 702
    const-wide/16 v1, 0x1f4

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 709
    :cond_2
    :goto_0
    return-void

    .line 703
    :catch_0
    move-exception v0

    .line 705
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "UsbSettings"

    const-string v2, "[AUTORUN] waiting exception"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x3

    const/16 v4, 0x14

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1074
    invoke-static {}, Lcom/android/lgesettings/Utils;->isMonkeyRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1350
    :cond_0
    :goto_0
    return v0

    .line 1078
    :cond_1
    sget-boolean v2, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mUsbSettingsRun:Z

    if-eqz v2, :cond_0

    .line 1082
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->getUsbConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1083
    sput-boolean v1, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mDirectAutorun:Z

    .line 1084
    sput-boolean v0, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityFinish:Z

    .line 1086
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->connectUsbTether(Landroid/content/Context;Z)I

    .line 1088
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mMassStorage:Lcom/android/lgesettings/lge/RadioButtonPreference;

    if-eq p1, v2, :cond_2

    .line 1089
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->setMassStorage(Landroid/content/Context;Z)Z

    .line 1093
    :cond_2
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCharger:Lcom/android/lgesettings/lge/RadioButtonPreference;

    if-ne p1, v2, :cond_6

    .line 1094
    const-string v2, "UsbSettings"

    const-string v3, "[AUTORUN] onPreferenceChange() : USB_FUNCTION_CHARGE_ONLY"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    const-string v2, "charge_only"

    iput-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    .line 1096
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    .line 1098
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VZW"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1099
    const-string v2, "/sys/class/android_usb/android0/f_cdrom_storage/lun/cdrom_usbmode"

    const-string v3, "4"

    invoke-static {v2, v3}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->writeToFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1102
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->getUsbConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1103
    sput-boolean v0, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityUsbModeChange:Z

    .line 1104
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1105
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    .line 1126
    :goto_1
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->finish()V

    goto :goto_0

    .line 1107
    :cond_3
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1108
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    .line 1110
    invoke-direct {p0, v4}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->doSleep(I)V

    .line 1111
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    const-string v3, "4"

    invoke-static {v2, v3, v1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->changeAutorunMode(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 1112
    iput-boolean v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mNeedSleep:Z

    goto :goto_1

    .line 1115
    :cond_4
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->getUsbConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1116
    sput-boolean v0, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityUsbModeChange:Z

    .line 1117
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1118
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    goto :goto_1

    .line 1120
    :cond_5
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1121
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    .line 1123
    iput-boolean v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mNeedSleep:Z

    goto :goto_1

    .line 1127
    :cond_6
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mMediasync:Lcom/android/lgesettings/lge/RadioButtonPreference;

    if-ne p1, v2, :cond_e

    .line 1128
    const-string v2, "UsbSettings"

    const-string v3, "[AUTORUN] onPreferenceChange() : USB_FUNCTION_MTP_ONLY"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    const-string v2, "mtp_only"

    iput-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    .line 1130
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    .line 1132
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VZW"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1133
    const-string v2, "/sys/class/android_usb/android0/f_cdrom_storage/lun/cdrom_usbmode"

    const-string v3, "1"

    invoke-static {v2, v3}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->writeToFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1136
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->getUsbConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1137
    sput-boolean v0, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityUsbModeChange:Z

    .line 1138
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1139
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    .line 1148
    :goto_2
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->finish()V

    goto/16 :goto_0

    .line 1141
    :cond_7
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1142
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    .line 1144
    invoke-direct {p0, v4}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->doSleep(I)V

    .line 1145
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    const-string v3, "1"

    invoke-static {v2, v3, v1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->changeAutorunMode(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 1146
    iput-boolean v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mNeedSleep:Z

    goto :goto_2

    .line 1150
    :cond_8
    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isMtpAutorunModel()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isDirectAutorunModel()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1152
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->getUsbConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1153
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    const-string v2, "1"

    invoke-static {v1, v2, v0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->changeAutorunMode(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1154
    sput-boolean v0, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityUsbModeChange:Z

    .line 1155
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1156
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    .line 1157
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->finish()V

    goto/16 :goto_0

    .line 1159
    :cond_9
    invoke-direct {p0, v5}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->callPopup(I)V

    goto/16 :goto_0

    .line 1162
    :cond_a
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1163
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    .line 1164
    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isDisconnectBugModel()Z

    move-result v2

    if-nez v2, :cond_b

    .line 1165
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    const-string v3, "1"

    invoke-static {v2, v3, v1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->changeAutorunMode(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 1167
    :cond_b
    iput-boolean v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mNeedSleep:Z

    .line 1168
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->finish()V

    goto/16 :goto_0

    .line 1171
    :cond_c
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->getUsbConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1172
    sput-boolean v0, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityUsbModeChange:Z

    .line 1173
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1174
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    .line 1181
    :goto_3
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->finish()V

    goto/16 :goto_0

    .line 1176
    :cond_d
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1177
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    .line 1179
    iput-boolean v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mNeedSleep:Z

    goto :goto_3

    .line 1184
    :cond_e
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mTether:Lcom/android/lgesettings/lge/RadioButtonPreference;

    if-ne p1, v2, :cond_15

    .line 1185
    const-string v2, "UsbSettings"

    const-string v3, "[AUTORUN] onPreferenceChange() : USB_FUNCTION_TETHER"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    const-string v2, "ecm"

    iput-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    .line 1187
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    .line 1189
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VZW"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    move v0, v1

    .line 1190
    goto/16 :goto_0

    .line 1192
    :cond_f
    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isDirectAutorunModel()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1193
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->getUsbConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1194
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    const-string v2, "5"

    invoke-static {v1, v2, v0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->changeAutorunMode(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_10

    .line 1195
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->callTetherPopup(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1197
    :cond_10
    invoke-direct {p0, v5}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->callPopup(I)V

    goto/16 :goto_0

    .line 1200
    :cond_11
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1201
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    .line 1202
    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isDisconnectBugModel()Z

    move-result v2

    if-nez v2, :cond_12

    .line 1203
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    const-string v3, "5"

    invoke-static {v2, v3, v1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->changeAutorunMode(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 1205
    :cond_12
    iput-boolean v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mNeedSleep:Z

    .line 1206
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->finish()V

    goto/16 :goto_0

    .line 1209
    :cond_13
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->getUsbConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1210
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->callTetherPopup(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1212
    :cond_14
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1213
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    .line 1214
    iput-boolean v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mNeedSleep:Z

    .line 1215
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->finish()V

    goto/16 :goto_0

    .line 1219
    :cond_15
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mPcsuite:Lcom/android/lgesettings/lge/RadioButtonPreference;

    if-ne p1, v2, :cond_1c

    .line 1220
    const-string v2, "UsbSettings"

    const-string v3, "[AUTORUN] onPreferenceChange() : USB_FUNCTION_PC_SUITE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    const-string v2, "pc_suite"

    iput-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    .line 1222
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    .line 1224
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VZW"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    move v0, v1

    .line 1225
    goto/16 :goto_0

    .line 1227
    :cond_16
    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isDirectAutorunModel()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1228
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->getUsbConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1229
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    const-string v2, "0"

    invoke-static {v1, v2, v0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->changeAutorunMode(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_17

    .line 1230
    sput-boolean v0, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityUsbModeChange:Z

    .line 1231
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1232
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    .line 1233
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->finish()V

    goto/16 :goto_0

    .line 1235
    :cond_17
    invoke-direct {p0, v5}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->callPopup(I)V

    goto/16 :goto_0

    .line 1238
    :cond_18
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1239
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    .line 1240
    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isDisconnectBugModel()Z

    move-result v2

    if-nez v2, :cond_19

    .line 1241
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    const-string v3, "0"

    invoke-static {v2, v3, v1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->changeAutorunMode(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 1243
    :cond_19
    iput-boolean v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mNeedSleep:Z

    .line 1244
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->finish()V

    goto/16 :goto_0

    .line 1247
    :cond_1a
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->getUsbConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1248
    sput-boolean v0, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityUsbModeChange:Z

    .line 1249
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1250
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    .line 1256
    :goto_4
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->finish()V

    goto/16 :goto_0

    .line 1252
    :cond_1b
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1253
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    .line 1254
    iput-boolean v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mNeedSleep:Z

    goto :goto_4

    .line 1260
    :cond_1c
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mPtp:Lcom/android/lgesettings/lge/RadioButtonPreference;

    if-ne p1, v2, :cond_20

    .line 1261
    const-string v2, "UsbSettings"

    const-string v3, "[AUTORUN] onPreferenceChange() : USB_FUNCTION_PTP_ONLY"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    const-string v2, "ptp_only"

    iput-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    .line 1263
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    .line 1265
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VZW"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1266
    const-string v2, "/sys/class/android_usb/android0/f_cdrom_storage/lun/cdrom_usbmode"

    const-string v3, "6"

    invoke-static {v2, v3}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->writeToFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1269
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->getUsbConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1270
    sput-boolean v0, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityUsbModeChange:Z

    .line 1271
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1272
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    .line 1293
    :goto_5
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->finish()V

    goto/16 :goto_0

    .line 1274
    :cond_1d
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1275
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    .line 1277
    invoke-direct {p0, v4}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->doSleep(I)V

    .line 1278
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    const-string v3, "6"

    invoke-static {v2, v3, v1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->changeAutorunMode(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 1279
    iput-boolean v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mNeedSleep:Z

    goto :goto_5

    .line 1282
    :cond_1e
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->getUsbConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1283
    sput-boolean v0, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityUsbModeChange:Z

    .line 1284
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1285
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    goto :goto_5

    .line 1287
    :cond_1f
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1288
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    .line 1290
    iput-boolean v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mNeedSleep:Z

    goto :goto_5

    .line 1294
    :cond_20
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mMassStorage:Lcom/android/lgesettings/lge/RadioButtonPreference;

    if-ne p1, v2, :cond_25

    .line 1295
    const-string v2, "UsbSettings"

    const-string v3, "[AUTORUN] onPreferenceChange() : USB_FUNCTION_MASS_STORAGE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    const-string v2, "mass_storage"

    iput-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    .line 1297
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    .line 1299
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VZW"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1300
    const-string v2, "/sys/class/android_usb/android0/f_cdrom_storage/lun/cdrom_usbmode"

    const-string v3, "2"

    invoke-static {v2, v3}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->writeToFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1303
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->getUsbConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1304
    sput-boolean v0, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityUsbModeChange:Z

    .line 1305
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1306
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    .line 1308
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->setMassStorage(Landroid/content/Context;Z)Z

    .line 1317
    :goto_6
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->finish()V

    goto/16 :goto_0

    .line 1310
    :cond_21
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1311
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    .line 1313
    invoke-direct {p0, v4}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->doSleep(I)V

    .line 1314
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    const-string v3, "2"

    invoke-static {v2, v3, v1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->changeAutorunMode(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 1315
    iput-boolean v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mNeedSleep:Z

    goto :goto_6

    .line 1319
    :cond_22
    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isMassSeperatedModel()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1320
    invoke-direct {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->startUmsSelection()V

    goto/16 :goto_0

    .line 1322
    :cond_23
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->getUsbConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1323
    sput-boolean v0, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActivityUsbModeChange:Z

    .line 1324
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1325
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    .line 1327
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->setMassStorage(Landroid/content/Context;Z)Z

    .line 1334
    :goto_7
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->finish()V

    goto/16 :goto_0

    .line 1329
    :cond_24
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1330
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    .line 1332
    iput-boolean v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mNeedSleep:Z

    goto :goto_7

    .line 1337
    :cond_25
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mInternet:Lcom/android/lgesettings/lge/RadioButtonPreference;

    if-ne p1, v2, :cond_0

    .line 1338
    const-string v2, "ecm"

    invoke-direct {p0, v2}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    .line 1340
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    const-string v3, "ecm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1341
    iput v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mInternetConnection:I

    .line 1347
    :goto_8
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->callPopup(I)V

    goto/16 :goto_0

    .line 1342
    :cond_26
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    const-string v2, "pc_suite"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1343
    iput v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mInternetConnection:I

    goto :goto_8

    .line 1345
    :cond_27
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mInternetConnection:I

    goto :goto_8
.end method

.method public onResume()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v1, 0x0

    .line 721
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onResume()V

    .line 722
    const-string v0, "UsbSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AUTORUN] onResume() : getDefaultFunction="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    sput-boolean v11, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mUsbSettingsRun:Z

    .line 727
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    .line 728
    .local v10, intentFilter:Landroid/content/IntentFilter;
    const-string v0, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 729
    const-string v0, "com.lge.intent.action.autorun_timeout"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 730
    const-string v0, "com.lge.intent.action.autorun_ack"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 731
    const-string v0, "com.lge.intent.action.autorun_change_mode"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 732
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 733
    const-string v0, "com.lge.intent.action.mass_state_change"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 734
    const-string v0, "com.lge.intent.action.tether_state_change"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 735
    const-string v0, "com.lge.intent.action.activity_finish"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 736
    invoke-virtual {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v10}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 749
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->checkStorageVolume(Landroid/content/Context;)V

    .line 750
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    .line 752
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mTether:Lcom/android/lgesettings/lge/RadioButtonPreference;

    if-eqz v0, :cond_0

    .line 753
    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mTether:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-direct {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->isAirplaneModeOn()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v11

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setEnabled(Z)V

    .line 756
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MPCS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 757
    invoke-direct {p0}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->updateTetherState()V

    .line 762
    :cond_0
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_1

    .line 763
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v0

    iget-object v5, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mTether:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v8, -0x1

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v6, v1

    move-object v7, v1

    move-object v9, v1

    invoke-virtual/range {v0 .. v9}, Lcom/android/lgesettings/MDMSettingsAdapter;->setUsbMenu(Lcom/android/lgesettings/lge/RadioButtonPreference;Lcom/android/lgesettings/lge/RadioButtonPreference;Lcom/android/lgesettings/lge/RadioButtonPreference;Lcom/android/lgesettings/lge/RadioButtonPreference;Lcom/android/lgesettings/lge/RadioButtonPreference;Lcom/android/lgesettings/lge/RadioButtonPreference;Lcom/android/lgesettings/lge/RadioButtonPreference;ILjava/lang/String;)Z

    .line 770
    :cond_1
    sget-boolean v0, Lcom/android/lgesettings/lgesetting/Config/Config;->THREELM_MDM:Z

    if-eqz v0, :cond_5

    .line 771
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "usb_blocked"

    invoke-static {v0, v2, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v11, :cond_7

    .line 772
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    const-string v2, "charge_only"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 773
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mCharger:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {p0, v0, v1}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 776
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mMediasync:Lcom/android/lgesettings/lge/RadioButtonPreference;

    if-eqz v0, :cond_3

    .line 777
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mMediasync:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v0, v12}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setEnabled(Z)V

    .line 779
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mPcsuite:Lcom/android/lgesettings/lge/RadioButtonPreference;

    if-eqz v0, :cond_4

    .line 780
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mPcsuite:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v0, v12}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setEnabled(Z)V

    .line 782
    :cond_4
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mPtp:Lcom/android/lgesettings/lge/RadioButtonPreference;

    if-eqz v0, :cond_5

    .line 783
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mPtp:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v0, v12}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setEnabled(Z)V

    .line 797
    :cond_5
    :goto_1
    return-void

    :cond_6
    move v0, v12

    .line 753
    goto :goto_0

    .line 786
    :cond_7
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mMediasync:Lcom/android/lgesettings/lge/RadioButtonPreference;

    if-eqz v0, :cond_8

    .line 787
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mMediasync:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v0, v11}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setEnabled(Z)V

    .line 789
    :cond_8
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mPcsuite:Lcom/android/lgesettings/lge/RadioButtonPreference;

    if-eqz v0, :cond_9

    .line 790
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mPcsuite:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v0, v11}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setEnabled(Z)V

    .line 792
    :cond_9
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mPtp:Lcom/android/lgesettings/lge/RadioButtonPreference;

    if-eqz v0, :cond_5

    .line 793
    iget-object v0, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings;->mPtp:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v0, v11}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setEnabled(Z)V

    goto :goto_1
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 713
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onStop()V

    .line 714
    const-string v0, "UsbSettings"

    const-string v1, "[AUTORUN] onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    const-string v0, ""

    sput-object v0, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mActiveCurrentFunction:Ljava/lang/String;

    .line 717
    return-void
.end method
