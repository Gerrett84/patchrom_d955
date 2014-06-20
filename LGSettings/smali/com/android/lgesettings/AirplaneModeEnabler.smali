.class public Lcom/android/lgesettings/AirplaneModeEnabler;
.super Ljava/lang/Object;
.source "AirplaneModeEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static airplanemode_on_off:Z

.field private static global_airplane:Z


# instance fields
.field private final EVENT_AIRPLANE_MODE_UI_BLOCK_TIMER:I

.field csActive:Z

.field fromSettings:Z

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private final mCheckBoxPref:Landroid/preference/CheckBoxPreference;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsStateChanging:Z

.field protected mPhone:Landroid/telephony/TelephonyManager;

.field protected mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field serviceState:Landroid/telephony/ServiceState;

.field wdPref:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/lgesettings/AirplaneModeEnabler;->airplanemode_on_off:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceScreen;)V
    .locals 3
    .parameter "context"
    .parameter "airplaneModeCheckBoxPreference"
    .parameter "pref"

    .prologue
    const/4 v2, 0x0

    .line 228
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->serviceState:Landroid/telephony/ServiceState;

    .line 70
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->EVENT_AIRPLANE_MODE_UI_BLOCK_TIMER:I

    .line 75
    iput-boolean v2, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->csActive:Z

    .line 76
    iput-boolean v2, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->fromSettings:Z

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->wdPref:Landroid/preference/PreferenceScreen;

    .line 87
    new-instance v0, Lcom/android/lgesettings/AirplaneModeEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/AirplaneModeEnabler$1;-><init>(Lcom/android/lgesettings/AirplaneModeEnabler;)V

    iput-object v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mHandler:Landroid/os/Handler;

    .line 146
    new-instance v0, Lcom/android/lgesettings/AirplaneModeEnabler$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/lgesettings/AirplaneModeEnabler$2;-><init>(Lcom/android/lgesettings/AirplaneModeEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 172
    iput-boolean v2, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mIsStateChanging:Z

    .line 173
    new-instance v0, Lcom/android/lgesettings/AirplaneModeEnabler$3;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/AirplaneModeEnabler$3;-><init>(Lcom/android/lgesettings/AirplaneModeEnabler;)V

    iput-object v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 230
    iput-object p1, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    .line 231
    iput-object p2, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    .line 233
    invoke-virtual {p2, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 235
    new-instance v0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v1, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 236
    iget-object v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 238
    iput-object p3, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->wdPref:Landroid/preference/PreferenceScreen;

    .line 241
    new-instance v0, Lcom/android/lgesettings/AirplaneModeEnabler$4;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/AirplaneModeEnabler$4;-><init>(Lcom/android/lgesettings/AirplaneModeEnabler;)V

    iput-object v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 256
    iget-object v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mPhone:Landroid/telephony/TelephonyManager;

    .line 258
    return-void
.end method

.method static synthetic access$002(Lcom/android/lgesettings/AirplaneModeEnabler;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mIsStateChanging:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/lgesettings/AirplaneModeEnabler;)Lcom/android/internal/telephony/PhoneStateIntentReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 59
    sget-boolean v0, Lcom/android/lgesettings/AirplaneModeEnabler;->global_airplane:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/lgesettings/AirplaneModeEnabler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 59
    sget-boolean v0, Lcom/android/lgesettings/AirplaneModeEnabler;->airplanemode_on_off:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    sput-boolean p0, Lcom/android/lgesettings/AirplaneModeEnabler;->airplanemode_on_off:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/lgesettings/AirplaneModeEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/lgesettings/AirplaneModeEnabler;->onAirplaneModeChanged()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/lgesettings/AirplaneModeEnabler;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 348
    const-string v1, "Airplanemodeenabler"

    const-string v2, "isAirplaneModeOn"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
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
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 434
    iget-object v1, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/lgesettings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    .line 436
    .local v0, airplaneModeEnabled:Z
    iget-object v1, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 437
    iget-object v3, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    move-object v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 439
    iget-object v1, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/lgesettings/lgesetting/Config/Config;->isVZWAdminDisabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 440
    iget-object v1, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 442
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->wdPref:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_1

    .line 443
    iget-object v1, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->wdPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 447
    :cond_1
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v1, :cond_2

    .line 448
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v1

    iget-object v3, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/lgesettings/MDMSettingsAdapter;->setDisallowAirplaneModeSummary(Landroid/content/ComponentName;Landroid/content/Context;Landroid/preference/CheckBoxPreference;)Z

    .line 451
    :cond_2
    const-string v1, "Airplanemodeenabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAirplaneModeChanged - airplanemode_on_off = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/lgesettings/AirplaneModeEnabler;->airplanemode_on_off:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    return-void

    .line 437
    :cond_3
    iget-object v1, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    const v4, 0x7f081034

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private setAirplaneModeOn(Z)V
    .locals 9
    .parameter "enabling"

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 357
    sget-boolean v3, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v3, :cond_0

    .line 359
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v3

    iget-object v6, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v8, v6, v7}, Lcom/android/lgesettings/MDMSettingsAdapter;->setDisallowAirplaneModeSummary(Landroid/content/ComponentName;Landroid/content/Context;Landroid/preference/CheckBoxPreference;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 360
    const-string v3, "setAirplaneModeOn"

    const-string v4, "MDM Block"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :goto_0
    return-void

    .line 365
    :cond_0
    const-string v3, "Airplanemodeenabler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setAirplaneModeOn() enabling: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v3, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 368
    iget-object v3, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->wdPref:Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_1

    .line 369
    iget-object v3, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->wdPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 372
    :cond_1
    if-eqz p1, :cond_2

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v3

    const/16 v6, 0xc

    if-ne v3, v6, :cond_2

    .line 373
    iput-boolean v4, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mIsStateChanging:Z

    .line 380
    :cond_2
    const-string v0, ""

    .line 381
    .local v0, airplaneText:Ljava/lang/String;
    const-string v3, "l1v_vzw_us"

    const-string v6, "ro.product.name"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 382
    iget-object v3, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    const v6, 0x7f080fa5

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 387
    :goto_1
    const-string v3, "ro.airplane.phoneapp"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 388
    const-string v3, "Airplanemodeenabler"

    const-string v6, "setAirplaneModeOn() setting app popup."

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    if-eqz p1, :cond_3

    .line 392
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x1040014

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v6, 0x1010355

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v6, 0x104000a

    invoke-virtual {v3, v6, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 400
    .local v2, mAirplaneModeDialog:Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 406
    .end local v2           #mAirplaneModeDialog:Landroid/app/AlertDialog;
    :cond_3
    iget-object v3, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 408
    iget-object v3, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->wdPref:Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_4

    .line 409
    iget-object v3, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->wdPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 411
    :cond_4
    iget-object v6, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    if-eqz p1, :cond_6

    const v3, 0x7f080ab6

    :goto_2
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 414
    iget-object v3, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    if-eqz p1, :cond_7

    move v3, v4

    :goto_3
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 418
    iget-object v3, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 421
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 422
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "state"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 423
    iget-object v3, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 384
    .end local v1           #intent:Landroid/content/Intent;
    :cond_5
    iget-object v3, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    const v6, 0x7f080fa6

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 411
    :cond_6
    const v3, 0x7f080ab7

    goto :goto_2

    :cond_7
    move v3, v5

    .line 414
    goto :goto_3
.end method


# virtual methods
.method public isVTCalling()Z
    .locals 7

    .prologue
    .line 544
    const/4 v1, 0x0

    .line 545
    .local v1, result:Z
    const/4 v3, 0x0

    .line 546
    .local v3, vtCallState:I
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 548
    .local v2, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 550
    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCallState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 555
    :cond_0
    :goto_0
    const/16 v4, 0x64

    if-lt v3, v4, :cond_1

    .line 556
    const/4 v1, 0x1

    .line 560
    :goto_1
    const-string v4, "Airplanemodeenabler"

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

    .line 561
    return v1

    .line 551
    :catch_0
    move-exception v0

    .line 552
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 558
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 459
    iput-boolean v2, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->fromSettings:Z

    .line 461
    sget-boolean v3, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/lgesettings/MDMSettingsAdapter;->setDisallowAirplaneModeSummary(Landroid/content/ComponentName;Landroid/content/Context;Landroid/preference/CheckBoxPreference;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 463
    const-string v2, "AirplaneModeEnabler"

    const-string v3, "LGMDM Block"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    .end local p2
    :goto_0
    return v1

    .line 468
    .restart local p2
    :cond_0
    iget-boolean v3, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mIsStateChanging:Z

    if-eqz v3, :cond_1

    .line 469
    const-string v2, "AirplaneModeEnabler"

    const-string v3, "[BTUI] state is changing... return for a while"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 473
    :cond_1
    iget-object v3, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    .line 474
    const-string v3, "ril.cdma.inecmmode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .end local p2
    :cond_2
    :goto_1
    move v1, v2

    .line 512
    goto :goto_0

    .line 478
    .restart local p2
    :cond_3
    const-string v3, "Airplanemodeenabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceChange - csActive="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->csActive:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-boolean v3, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->csActive:Z

    if-ne v2, v3, :cond_7

    .line 481
    iget-object v3, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/lgesettings/lgesetting/Config/Config;->isVZWAdminDisabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 482
    iget-object v3, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 484
    :cond_4
    iget-object v3, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->wdPref:Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_5

    .line 485
    iget-object v3, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->wdPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 487
    :cond_5
    iget-object v3, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 489
    const-string v3, "ro.airplane.phoneapp"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v2, :cond_6

    .line 490
    const-string v3, "Airplanemodeenabler"

    const-string v4, "onPreferenceChange() setting app toast."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v3, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    const v4, 0x7f080ed2

    invoke-static {v3, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_2
    move v1, v2

    .line 501
    goto :goto_0

    .line 493
    :cond_6
    const-string v3, "Airplanemodeenabler"

    const-string v4, "onPreferenceChange() phone app toast."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object v3, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 496
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 497
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "state"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 498
    iget-object v1, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_2

    .line 504
    .end local v0           #intent:Landroid/content/Intent;
    :cond_7
    sget-boolean v1, Lcom/android/lgesettings/AirplaneModeEnabler;->airplanemode_on_off:Z

    if-nez v1, :cond_2

    move-object v1, p2

    .line 505
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lcom/android/lgesettings/AirplaneModeEnabler;->global_airplane:Z

    .line 506
    const-string v1, "Airplanemodeenabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "airplanemode_on_off"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/lgesettings/AirplaneModeEnabler;->airplanemode_on_off:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    const-string v1, "Airplanemodeenabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "global_airplane="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/lgesettings/AirplaneModeEnabler;->global_airplane:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/lgesettings/AirplaneModeEnabler;->setAirplaneModeOn(Z)V

    .line 509
    sput-boolean v2, Lcom/android/lgesettings/AirplaneModeEnabler;->airplanemode_on_off:Z

    goto/16 :goto_1
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-static {v0, v1}, Lcom/android/lgesettings/Utils;->release_TelephonyListener(Landroid/telephony/TelephonyManager;Landroid/telephony/PhoneStateListener;)V

    .line 335
    iget-object v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 336
    iget-object v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 337
    iget-object v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 342
    :try_start_0
    iget-object v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :goto_0
    return-void

    .line 343
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public resume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 263
    iget-object v2, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-static {v2, v3}, Lcom/android/lgesettings/Utils;->set_TelephonyListener(Landroid/telephony/TelephonyManager;Landroid/telephony/PhoneStateListener;)V

    .line 275
    iget-object v2, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/lgesettings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    .line 277
    .local v0, bIsAirplaneModeOn:Z
    const-string v2, "Airplanemodeenabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resume() bIsAirplaneModeOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", global_airplane="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/lgesettings/AirplaneModeEnabler;->global_airplane:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", airplanemode_on_off="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/lgesettings/AirplaneModeEnabler;->airplanemode_on_off:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 283
    :cond_0
    iput-boolean v6, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mIsStateChanging:Z

    .line 287
    :cond_1
    sget-boolean v2, Lcom/android/lgesettings/AirplaneModeEnabler;->global_airplane:Z

    if-eq v0, v2, :cond_2

    .line 289
    sput-boolean v0, Lcom/android/lgesettings/AirplaneModeEnabler;->global_airplane:Z

    .line 290
    sput-boolean v6, Lcom/android/lgesettings/AirplaneModeEnabler;->airplanemode_on_off:Z

    .line 294
    :cond_2
    iget-object v2, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/lgesettings/lgesetting/Config/Config;->isVZWAdminDisabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 295
    iget-object v2, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 298
    :cond_3
    iget-object v2, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->wdPref:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_4

    .line 299
    iget-object v2, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->wdPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 302
    :cond_4
    iget-object v2, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 304
    iget-object v2, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 305
    iget-object v2, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 306
    iget-object v2, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 310
    iget-object v2, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/android/lgesettings/AirplaneModeEnabler;->isVTCalling()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 311
    :cond_5
    iput-boolean v5, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->csActive:Z

    .line 317
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 318
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 319
    iget-object v2, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 323
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v2, :cond_6

    .line 324
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/lgesettings/MDMSettingsAdapter;->setDisallowAirplaneModeSummary(Landroid/content/ComponentName;Landroid/content/Context;Landroid/preference/CheckBoxPreference;)Z

    .line 327
    :cond_6
    return-void

    .line 313
    .end local v1           #intentFilter:Landroid/content/IntentFilter;
    :cond_7
    iput-boolean v6, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->csActive:Z

    goto :goto_0
.end method

.method public setAirplaneModeInECM(ZZ)V
    .locals 0
    .parameter "isECMExit"
    .parameter "isAirplaneModeOn"

    .prologue
    .line 516
    if-eqz p1, :cond_0

    .line 518
    invoke-direct {p0, p2}, Lcom/android/lgesettings/AirplaneModeEnabler;->setAirplaneModeOn(Z)V

    .line 523
    :goto_0
    return-void

    .line 521
    :cond_0
    invoke-direct {p0}, Lcom/android/lgesettings/AirplaneModeEnabler;->onAirplaneModeChanged()V

    goto :goto_0
.end method

.method public updatePreferences()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 526
    invoke-static {}, Lcom/android/lgesettings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 527
    iget-object v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 529
    iget-object v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->wdPref:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->wdPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 541
    :cond_0
    :goto_0
    return-void

    .line 533
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/lgesettings/lgesetting/Config/Config;->isVZWAdminDisabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 534
    iget-object v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 536
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->wdPref:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_3

    .line 537
    iget-object v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->wdPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 539
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/lgesettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/lgesettings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method
