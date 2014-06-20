.class public Lcom/android/lgesettings/AirplaneModeEnabler_VZW;
.super Ljava/lang/Object;
.source "AirplaneModeEnabler_VZW.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static airplanemode_on_off:Z

.field private static global_airplane:Z


# instance fields
.field private final EVENT_AIRPLANE_MODE_UI_BLOCK_TIMER:I

.field csActive:Z

.field fromSettings:Z

.field fromTouch:Z

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mApnChangeObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsStateChanging:Z

.field protected mPhone:Landroid/telephony/TelephonyManager;

.field protected mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/widget/Switch;

.field serviceState:Landroid/telephony/ServiceState;

.field wdPref:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->airplanemode_on_off:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;Landroid/preference/PreferenceScreen;)V
    .locals 3
    .parameter "context"
    .parameter "switch_"
    .parameter "pref"

    .prologue
    const/4 v2, 0x0

    .line 215
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->serviceState:Landroid/telephony/ServiceState;

    .line 78
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->EVENT_AIRPLANE_MODE_UI_BLOCK_TIMER:I

    .line 83
    iput-boolean v2, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->csActive:Z

    .line 84
    iput-boolean v2, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->fromSettings:Z

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->wdPref:Landroid/preference/PreferenceScreen;

    .line 87
    iput-boolean v2, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->fromTouch:Z

    .line 101
    new-instance v0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/AirplaneModeEnabler_VZW$1;-><init>(Lcom/android/lgesettings/AirplaneModeEnabler_VZW;)V

    iput-object v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mHandler:Landroid/os/Handler;

    .line 156
    new-instance v0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/lgesettings/AirplaneModeEnabler_VZW$2;-><init>(Lcom/android/lgesettings/AirplaneModeEnabler_VZW;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 176
    new-instance v0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/lgesettings/AirplaneModeEnabler_VZW$3;-><init>(Lcom/android/lgesettings/AirplaneModeEnabler_VZW;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mApnChangeObserver:Landroid/database/ContentObserver;

    .line 191
    iput-boolean v2, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mIsStateChanging:Z

    .line 192
    new-instance v0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW$4;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/AirplaneModeEnabler_VZW$4;-><init>(Lcom/android/lgesettings/AirplaneModeEnabler_VZW;)V

    iput-object v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 216
    iput-object p1, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mContext:Landroid/content/Context;

    .line 217
    iput-object p2, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mSwitch:Landroid/widget/Switch;

    .line 219
    new-instance v0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v1, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 220
    iget-object v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 222
    iput-object p3, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->wdPref:Landroid/preference/PreferenceScreen;

    .line 224
    new-instance v0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW$5;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/AirplaneModeEnabler_VZW$5;-><init>(Lcom/android/lgesettings/AirplaneModeEnabler_VZW;)V

    iput-object v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 240
    iget-object v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mPhone:Landroid/telephony/TelephonyManager;

    .line 242
    return-void
.end method

.method static synthetic access$002(Lcom/android/lgesettings/AirplaneModeEnabler_VZW;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mIsStateChanging:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/lgesettings/AirplaneModeEnabler_VZW;)Lcom/android/internal/telephony/PhoneStateIntentReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 69
    sget-boolean v0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->airplanemode_on_off:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    sput-boolean p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->airplanemode_on_off:Z

    return p0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 69
    sget-boolean v0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->global_airplane:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/lgesettings/AirplaneModeEnabler_VZW;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->onAirplaneModeChanged()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/lgesettings/AirplaneModeEnabler_VZW;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/lgesettings/AirplaneModeEnabler_VZW;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method private getBTButtonStatus()I
    .locals 3

    .prologue
    .line 645
    const/4 v1, 0x0

    .line 646
    .local v1, status:I
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    .line 648
    .local v0, getBTstate:I
    packed-switch v0, :pswitch_data_0

    .line 658
    const/4 v1, 0x0

    .line 662
    :goto_0
    return v1

    .line 650
    :pswitch_0
    const/4 v1, 0x1

    .line 651
    goto :goto_0

    .line 654
    :pswitch_1
    const/4 v1, 0x2

    .line 655
    goto :goto_0

    .line 648
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 440
    const-string v1, "Airplanemodeenabler_VZW"

    const-string v2, "isAirplaneModeOn"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private onAirplaneModeChanged()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 526
    iget-object v2, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    .line 528
    .local v0, airplaneModeEnabled:Z
    iget-object v2, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 530
    iget-boolean v2, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->csActive:Z

    if-nez v2, :cond_0

    .line 531
    iget-object v2, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 535
    :cond_0
    iget-object v2, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/lgesettings/lgesetting/Config/Config;->isVZWAdminDisabled(Landroid/content/Context;)Z

    move-result v1

    .line 536
    .local v1, value:Z
    if-eqz v1, :cond_1

    .line 537
    iget-object v4, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mSwitch:Landroid/widget/Switch;

    if-nez v1, :cond_4

    move v2, v3

    :goto_0
    invoke-virtual {v4, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 542
    :cond_1
    iget-object v2, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->wdPref:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_2

    .line 543
    iget-object v2, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->wdPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 546
    :cond_2
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v2, :cond_3

    .line 547
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/lgesettings/MDMSettingsAdapter;->setDisallowAirplaneModeSummary_VZW(Landroid/content/ComponentName;Landroid/content/Context;Landroid/widget/Switch;)Z

    .line 550
    :cond_3
    const-string v2, "onAirplaneModeChanged"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "airplanemode_on_off="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->airplanemode_on_off:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    return-void

    .line 537
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setAirplaneModeOn(Z)V
    .locals 9
    .parameter "enabling"

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 449
    sget-boolean v5, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v5, :cond_0

    .line 450
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/lgesettings/MDMSettingsAdapter;->setDisallowAirplaneModeSummary_VZW(Landroid/content/ComponentName;Landroid/content/Context;Landroid/widget/Switch;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 451
    const-string v3, "setAirplaneModeOn"

    const-string v4, "MDM Block"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :goto_0
    return-void

    .line 456
    :cond_0
    const-string v5, "Airplanemodeenabler_VZW"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setAirplaneModeOn() enabling: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v5, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 459
    iget-object v5, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->wdPref:Landroid/preference/PreferenceScreen;

    if-eqz v5, :cond_1

    .line 460
    iget-object v5, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->wdPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 464
    :cond_1
    if-eqz p1, :cond_2

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v5

    const/16 v6, 0xc

    if-ne v5, v6, :cond_2

    .line 465
    iput-boolean v3, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mIsStateChanging:Z

    .line 472
    :cond_2
    const-string v0, ""

    .line 473
    .local v0, airplaneText:Ljava/lang/String;
    const-string v5, "VZW"

    const-string v6, "ro.build.target_operator"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 474
    iget-object v5, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mContext:Landroid/content/Context;

    const v6, 0x7f081053

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 479
    :goto_1
    const-string v5, "ro.airplane.phoneapp"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v3, :cond_3

    .line 480
    const-string v5, "Airplanemodeenabler_VZW"

    const-string v6, "setAirplaneModeOn() setting app popup."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    if-eqz p1, :cond_3

    .line 484
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x1040014

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1010355

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    invoke-virtual {v5, v6, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 492
    .local v2, mAirplaneModeDialog:Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 500
    .end local v2           #mAirplaneModeDialog:Landroid/app/AlertDialog;
    :cond_3
    iget-object v5, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 502
    iget-object v5, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->wdPref:Landroid/preference/PreferenceScreen;

    if-eqz v5, :cond_4

    .line 503
    iget-object v5, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->wdPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 506
    :cond_4
    iget-object v5, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    if-eqz p1, :cond_6

    :goto_2
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 510
    iget-object v3, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 513
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 514
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "state"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 515
    iget-object v3, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 476
    .end local v1           #intent:Landroid/content/Intent;
    :cond_5
    iget-object v5, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mContext:Landroid/content/Context;

    const v6, 0x7f080fa6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    move v3, v4

    .line 506
    goto :goto_2
.end method


# virtual methods
.method public isVTCalling()Z
    .locals 7

    .prologue
    .line 624
    const/4 v1, 0x0

    .line 625
    .local v1, result:Z
    const/4 v3, 0x0

    .line 626
    .local v3, vtCallState:I
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 628
    .local v2, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 630
    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCallState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 635
    :cond_0
    :goto_0
    const/16 v4, 0x64

    if-lt v3, v4, :cond_1

    .line 636
    const/4 v1, 0x1

    .line 640
    :goto_1
    const-string v4, "Airplanemodeenabler_VZW"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isVTCalling() return: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    return v1

    .line 631
    :catch_0
    move-exception v0

    .line 632
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 638
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 565
    const-string v0, "Airplanemodeenabler_VZW"

    const-string v1, " onCheckedChanged() start "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_1

    .line 568
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/lgesettings/MDMSettingsAdapter;->setDisallowAirplaneModeSummary_VZW(Landroid/content/ComponentName;Landroid/content/Context;Landroid/widget/Switch;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 569
    const-string v0, "Airplanemodeenabler_VZW"

    const-string v1, "onCheckedChanged LGMDM Block"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :cond_0
    :goto_0
    return-void

    .line 575
    :cond_1
    iget-boolean v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->fromTouch:Z

    if-nez v0, :cond_2

    .line 576
    iget-object v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 579
    :cond_2
    iput-boolean v4, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->fromTouch:Z

    .line 583
    iput-boolean v5, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->fromSettings:Z

    .line 586
    iget-boolean v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mIsStateChanging:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->getBTButtonStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 587
    :cond_3
    const-string v0, "Airplanemodeenabler_VZW"

    const-string v1, "[BTUI] state is changing... return for a while"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iget-object v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mContext:Landroid/content/Context;

    const v2, 0x7f080f0c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 593
    :cond_4
    iget-object v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    .line 594
    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 597
    iget-boolean v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->csActive:Z

    if-ne v5, v0, :cond_6

    .line 601
    iget-object v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->wdPref:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_5

    .line 602
    iget-object v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->wdPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 605
    :cond_5
    iget-object v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 606
    const-string v0, "Airplanemodeenabler_VZW"

    const-string v1, "onPreferenceChange() setting app toast."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    iget-object v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mContext:Landroid/content/Context;

    const v1, 0x7f080ed2

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 612
    :cond_6
    sget-boolean v0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->airplanemode_on_off:Z

    if-nez v0, :cond_0

    .line 613
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->global_airplane:Z

    .line 614
    const-string v0, "Airplanemodeenabler_VZW"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "airplanemode_on_off = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->airplanemode_on_off:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    const-string v0, "Airplanemodeenabler_VZW"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "global_airplane= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->global_airplane:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->setAirplaneModeOn(Z)V

    .line 617
    sput-boolean v5, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->airplanemode_on_off:Z

    goto/16 :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-static {v0, v1}, Lcom/android/lgesettings/Utils;->release_TelephonyListener(Landroid/telephony/TelephonyManager;Landroid/telephony/PhoneStateListener;)V

    .line 420
    iget-object v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 421
    iget-object v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 425
    iget-object v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mApnChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 431
    :try_start_0
    iget-object v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    :goto_0
    return-void

    .line 432
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public resume()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 332
    iget-object v5, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-static {v5, v6}, Lcom/android/lgesettings/Utils;->set_TelephonyListener(Landroid/telephony/TelephonyManager;Landroid/telephony/PhoneStateListener;)V

    .line 344
    iget-object v5, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    .line 346
    .local v0, bIsAirplaneModeOn:Z
    const-string v5, "Airplanemodeenabler_VZW"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resume() bIsAirplaneModeOn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", global_airplane="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->global_airplane:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", airplanemode_on_off="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->airplanemode_on_off:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v5

    const/16 v6, 0xc

    if-eq v5, v6, :cond_0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_1

    .line 352
    :cond_0
    iput-boolean v4, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mIsStateChanging:Z

    .line 356
    :cond_1
    sget-boolean v5, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->global_airplane:Z

    if-eq v0, v5, :cond_2

    .line 358
    sput-boolean v0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->global_airplane:Z

    .line 359
    sput-boolean v4, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->airplanemode_on_off:Z

    .line 364
    :cond_2
    iget-boolean v5, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->csActive:Z

    if-nez v5, :cond_3

    sget-boolean v5, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->airplanemode_on_off:Z

    if-nez v5, :cond_3

    .line 365
    iget-object v5, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 366
    const-string v5, "Airplanemodeenabler_VZW"

    const-string v6, " resume mSwitch.setEnabled = true"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_3
    iget-object v5, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->wdPref:Landroid/preference/PreferenceScreen;

    if-eqz v5, :cond_4

    .line 370
    iget-object v5, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->wdPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 373
    :cond_4
    iget-boolean v5, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->fromTouch:Z

    if-nez v5, :cond_8

    .line 374
    iget-object v5, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mSwitch:Landroid/widget/Switch;

    iget-object v6, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setChecked(Z)V

    .line 379
    :goto_0
    iget-object v5, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 380
    iget-object v5, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6, v3, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 385
    iget-object v5, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    iget-object v7, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mApnChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6, v3, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 389
    iget-object v5, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p0}, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->isVTCalling()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 390
    :cond_5
    iput-boolean v3, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->csActive:Z

    .line 396
    :goto_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 397
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 398
    iget-object v5, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 402
    sget-boolean v5, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v5, :cond_6

    .line 403
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/lgesettings/MDMSettingsAdapter;->setDisallowAirplaneModeSummary_VZW(Landroid/content/ComponentName;Landroid/content/Context;Landroid/widget/Switch;)Z

    .line 408
    :cond_6
    iget-object v5, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/lgesettings/lgesetting/Config/Config;->isVZWAdminDisabled(Landroid/content/Context;)Z

    move-result v2

    .line 409
    .local v2, value:Z
    if-eqz v2, :cond_7

    .line 410
    iget-object v5, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mSwitch:Landroid/widget/Switch;

    if-nez v2, :cond_a

    :goto_2
    invoke-virtual {v5, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 414
    :cond_7
    return-void

    .line 376
    .end local v1           #intentFilter:Landroid/content/IntentFilter;
    .end local v2           #value:Z
    :cond_8
    iput-boolean v4, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->fromTouch:Z

    goto :goto_0

    .line 392
    :cond_9
    iput-boolean v4, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->csActive:Z

    goto :goto_1

    .restart local v1       #intentFilter:Landroid/content/IntentFilter;
    .restart local v2       #value:Z
    :cond_a
    move v3, v4

    .line 410
    goto :goto_2
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 8
    .parameter "switch_"

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 245
    const-string v4, "Airplanemodeenabler_VZW"

    const-string v5, " setSwitch start"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v4, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mSwitch:Landroid/widget/Switch;

    if-ne v4, p1, :cond_1

    .line 247
    const-string v2, "Airplanemodeenabler_VZW"

    const-string v3, " setSwitch end return"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    iget-object v4, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v7}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 252
    iput-object p1, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mSwitch:Landroid/widget/Switch;

    .line 253
    iget-object v4, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 255
    iget-object v4, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mSwitch:Landroid/widget/Switch;

    new-instance v5, Lcom/android/lgesettings/AirplaneModeEnabler_VZW$6;

    invoke-direct {v5, p0}, Lcom/android/lgesettings/AirplaneModeEnabler_VZW$6;-><init>(Lcom/android/lgesettings/AirplaneModeEnabler_VZW;)V

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    iget-object v4, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mSwitch:Landroid/widget/Switch;

    new-instance v5, Lcom/android/lgesettings/AirplaneModeEnabler_VZW$7;

    invoke-direct {v5, p0}, Lcom/android/lgesettings/AirplaneModeEnabler_VZW$7;-><init>(Lcom/android/lgesettings/AirplaneModeEnabler_VZW;)V

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 289
    sget-boolean v4, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->airplanemode_on_off:Z

    if-eqz v4, :cond_2

    .line 290
    iget-object v4, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 291
    const-string v4, "Airplanemodeenabler_VZW"

    const-string v5, " setSwitch airplanemode_on_off = true, mSwitch.setEnabled = false"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_2
    iget-object v4, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 296
    .local v0, isEnabled:I
    if-ne v2, v0, :cond_5

    .line 297
    iget-object v4, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 304
    :cond_3
    :goto_1
    sget-boolean v4, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v4, :cond_4

    .line 305
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v7, v5, v6}, Lcom/android/lgesettings/MDMSettingsAdapter;->setDisallowAirplaneModeSummary_VZW(Landroid/content/ComponentName;Landroid/content/Context;Landroid/widget/Switch;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 306
    const-string v4, "setAirplaneModeOn"

    const-string v5, "MDM Block"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_4
    iget-object v4, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/lgesettings/lgesetting/Config/Config;->isVZWAdminDisabled(Landroid/content/Context;)Z

    move-result v1

    .line 313
    .local v1, value:Z
    if-eqz v1, :cond_0

    .line 314
    iget-object v4, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mSwitch:Landroid/widget/Switch;

    if-nez v1, :cond_6

    :goto_2
    invoke-virtual {v4, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 299
    .end local v1           #value:Z
    :cond_5
    if-nez v0, :cond_3

    .line 300
    iget-object v4, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v3}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1

    .restart local v1       #value:Z
    :cond_6
    move v2, v3

    .line 314
    goto :goto_2
.end method

.method public setSwitchChecked(Z)V
    .locals 3
    .parameter "checked"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 321
    iget-object v2, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isEnabled()Z

    move-result v2

    if-ne v2, v0, :cond_1

    .line 322
    iput-boolean v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->fromTouch:Z

    .line 323
    iget-object v2, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mSwitch:Landroid/widget/Switch;

    if-nez p1, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 327
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 323
    goto :goto_0

    .line 325
    :cond_1
    iput-boolean v1, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->fromTouch:Z

    goto :goto_1
.end method
