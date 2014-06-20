.class public Lcom/android/lgesettings/TetherNetworkSettings;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "TetherNetworkSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private PROVISION:Z

.field private final REQUEST_FIRST_TIME_USE_USB:I

.field b_isWifiOnly:Z

.field private bluetoothAvailable:Z

.field csActive:Z

.field private loopCounting:I

.field private mAirplaneModeEnabler:Lcom/android/lgesettings/AirplaneModeEnabler;

.field private mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

.field private final mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

.field private mApnChangeObserver:Landroid/database/ContentObserver;

.field private mAvailableTetherNum:I

.field private mBluetoothEnableForTether:Z

.field private mBluetoothPan:Landroid/bluetooth/BluetoothPan;

.field private mBluetoothRegexs:[Ljava/lang/String;

.field private mBluetoothTether:Lcom/android/lgesettings/SettingsSwitchPreference;

.field private mCdromStorage:Z

.field private mCheckingMobileData:Z

.field private mDefaultTether:I

.field private mHandler:Landroid/os/Handler;

.field private mIsProvisioned:Z

.field mIsWifiCallingSupport:Z

.field private final mLGMDMReceiver:Landroid/content/BroadcastReceiver;

.field private mMassStorageActive:Z

.field private mMobileNetworkSettings:Landroid/preference/PreferenceScreen;

.field private mNetworkSettingsCategory:Landroid/preference/PreferenceCategory;

.field private mNsdEnabler:Lcom/android/lgesettings/NsdEnabler;

.field protected mPhone:Landroid/telephony/TelephonyManager;

.field protected mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mProvisionApp:[Ljava/lang/String;

.field mTetherAlertDialog:Landroid/app/AlertDialog;

.field private final mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherChoice:I

.field private mTetherHelp:Landroid/preference/PreferenceScreen;

.field private mTetheringCategory:Landroid/preference/PreferenceCategory;

.field private mTimer:Ljava/util/Timer;

.field mUsbAvailable:Z

.field private mUsbConnected:Z

.field private mUsbRegexs:[Ljava/lang/String;

.field private mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

.field private mUsbTetherTurningOn:Z

.field private mWiFiCallingCategory:Landroid/preference/PreferenceCategory;

.field mWifiAvailable:Z

.field private mWifiCallingEnabler:Lcom/android/lgesettings/lge/WifiCallCheckBox;

.field private mWifiTether:Lcom/android/lgesettings/WifiApSwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 101
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    .line 148
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbRegexs:[Ljava/lang/String;

    .line 149
    iput-boolean v2, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbAvailable:Z

    .line 150
    iput-boolean v2, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mWifiAvailable:Z

    .line 153
    iput-boolean v2, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTetherTurningOn:Z

    .line 154
    iput-boolean v2, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mCdromStorage:Z

    .line 169
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->REQUEST_FIRST_TIME_USE_USB:I

    .line 177
    iput-boolean v2, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mCheckingMobileData:Z

    .line 188
    iput v2, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mAvailableTetherNum:I

    .line 189
    iput v2, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mDefaultTether:I

    .line 192
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mTetherChoice:I

    .line 209
    iput-boolean v2, p0, Lcom/android/lgesettings/TetherNetworkSettings;->bluetoothAvailable:Z

    .line 213
    iput-boolean v2, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mIsProvisioned:Z

    .line 215
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->PROVISION:Z

    .line 228
    iput-boolean v2, p0, Lcom/android/lgesettings/TetherNetworkSettings;->csActive:Z

    .line 235
    iput-boolean v2, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mIsWifiCallingSupport:Z

    .line 245
    iput-boolean v2, p0, Lcom/android/lgesettings/TetherNetworkSettings;->b_isWifiOnly:Z

    .line 1454
    new-instance v0, Lcom/android/lgesettings/TetherNetworkSettings$20;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/TetherNetworkSettings$20;-><init>(Lcom/android/lgesettings/TetherNetworkSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 1464
    new-instance v0, Lcom/android/lgesettings/TetherNetworkSettings$21;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/TetherNetworkSettings$21;-><init>(Lcom/android/lgesettings/TetherNetworkSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 2124
    new-instance v0, Lcom/android/lgesettings/TetherNetworkSettings$22;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/TetherNetworkSettings$22;-><init>(Lcom/android/lgesettings/TetherNetworkSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    .line 2139
    new-instance v0, Lcom/android/lgesettings/TetherNetworkSettings$23;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/lgesettings/TetherNetworkSettings$23;-><init>(Lcom/android/lgesettings/TetherNetworkSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mApnChangeObserver:Landroid/database/ContentObserver;

    .line 2159
    new-instance v0, Lcom/android/lgesettings/TetherNetworkSettings$24;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/TetherNetworkSettings$24;-><init>(Lcom/android/lgesettings/TetherNetworkSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/TetherNetworkSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/lgesettings/TetherNetworkSettings;->setUsbTethering(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/lgesettings/TetherNetworkSettings;)Lcom/android/lgesettings/SettingsSwitchPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/lgesettings/TetherNetworkSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mCdromStorage:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/lgesettings/TetherNetworkSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTetherTurningOn:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/lgesettings/TetherNetworkSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothEnableForTether:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/lgesettings/TetherNetworkSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothEnableForTether:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/lgesettings/TetherNetworkSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->PROVISION:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/lgesettings/TetherNetworkSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mTetherChoice:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/lgesettings/TetherNetworkSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/lgesettings/TetherNetworkSettings;->gotoNextStep(Z)V

    return-void
.end method

.method static synthetic access$1602(Lcom/android/lgesettings/TetherNetworkSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mIsProvisioned:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/lgesettings/TetherNetworkSettings;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbRegexs:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-static {p0, p1}, Lcom/android/lgesettings/TetherNetworkSettings;->findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/lgesettings/TetherNetworkSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/lgesettings/TetherNetworkSettings;->onBluetoothTether()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/lgesettings/TetherNetworkSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/lgesettings/TetherNetworkSettings;->updateState()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/lgesettings/TetherNetworkSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/lgesettings/TetherNetworkSettings;->updateAirplaneModeState(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/lgesettings/TetherNetworkSettings;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mMobileNetworkSettings:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/lgesettings/TetherNetworkSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/lgesettings/TetherNetworkSettings;)Ljava/util/Timer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/lgesettings/TetherNetworkSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mCheckingMobileData:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/lgesettings/TetherNetworkSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/lgesettings/TetherNetworkSettings;->startUpsell(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/lgesettings/TetherNetworkSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->loopCounting:I

    return v0
.end method

.method static synthetic access$2608(Lcom/android/lgesettings/TetherNetworkSettings;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->loopCounting:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->loopCounting:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/lgesettings/TetherNetworkSettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/lgesettings/TetherNetworkSettings;)Lcom/android/lgesettings/SettingsSwitchPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/lgesettings/TetherNetworkSettings;)Landroid/bluetooth/BluetoothPan;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/lgesettings/TetherNetworkSettings;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/lgesettings/TetherNetworkSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/android/lgesettings/TetherNetworkSettings;->updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/lgesettings/TetherNetworkSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->bluetoothAvailable:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/lgesettings/TetherNetworkSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/android/lgesettings/TetherNetworkSettings;->updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/lgesettings/TetherNetworkSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mMassStorageActive:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/lgesettings/TetherNetworkSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbConnected:Z

    return p1
.end method

.method private checkProvision()V
    .locals 2

    .prologue
    .line 1979
    iget-boolean v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mIsProvisioned:Z

    if-nez v1, :cond_0

    .line 1980
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mTetherChoice:I

    .line 1981
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.hotspot.provision_start"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1982
    .local v0, proIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/TetherNetworkSettings;->startActivity(Landroid/content/Intent;)V

    .line 1987
    .end local v0           #proIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 1985
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/lgesettings/TetherNetworkSettings;->gotoNextStep(Z)V

    goto :goto_0
.end method

.method private connectUpsell(I)V
    .locals 8
    .parameter

    .prologue
    const-wide/16 v2, 0x1f4

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2176
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/TetherNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 2177
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    .line 2180
    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    .line 2181
    const-string v1, "Hoon,USB"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "USB:WiFi Off ..ing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    invoke-virtual {v0, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 2184
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2185
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2186
    const-string v0, "Hoon,USB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!cm.getMobileDataEnabled()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2187
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/lgesettings/TetherNetworkSettings;->onCreateTetherAlertDialg(I)V

    .line 2188
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    invoke-virtual {v0, v6}, Lcom/android/lgesettings/SettingsSwitchPreference;->setEnabled(Z)V

    .line 2245
    :goto_0
    return-void

    .line 2192
    :cond_0
    iput-boolean v6, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mCheckingMobileData:Z

    .line 2193
    if-ne p1, v6, :cond_1

    .line 2197
    :cond_1
    iput v7, p0, Lcom/android/lgesettings/TetherNetworkSettings;->loopCounting:I

    .line 2199
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mHandler:Landroid/os/Handler;

    .line 2200
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_2

    .line 2201
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 2202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mTimer:Ljava/util/Timer;

    .line 2204
    :cond_2
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0, v6}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mTimer:Ljava/util/Timer;

    .line 2205
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/lgesettings/TetherNetworkSettings$25;

    invoke-direct {v1, p0, p1}, Lcom/android/lgesettings/TetherNetworkSettings$25;-><init>(Lcom/android/lgesettings/TetherNetworkSettings;I)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0

    .line 2241
    :cond_3
    const-string v0, "Hoon,USB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "intent.setClassName(com.lge.upsell, com.lge.upsell.DataService);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2242
    invoke-direct {p0, p1}, Lcom/android/lgesettings/TetherNetworkSettings;->startUpsell(I)V

    goto :goto_0
.end method

.method private static findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "ifaces"
    .parameter "regexes"

    .prologue
    .line 1655
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v3, v2

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v5           #len$:I
    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v4, v0, v3

    .line 1656
    .local v4, iface:Ljava/lang/String;
    move-object v1, p1

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v6, :cond_1

    aget-object v7, v1, v2

    .line 1657
    .local v7, regex:Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1662
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #iface:Ljava/lang/String;
    .end local v6           #len$:I
    .end local v7           #regex:Ljava/lang/String;
    :goto_2
    return-object v4

    .line 1656
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v4       #iface:Ljava/lang/String;
    .restart local v6       #len$:I
    .restart local v7       #regex:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1655
    .end local v7           #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_0

    .line 1662
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #iface:Ljava/lang/String;
    .end local v6           #len$:I
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private getSettingInt(Ljava/lang/String;I)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2298
    const-string v0, "TetherNetworkSettings"

    const-string v1, "CSC_A getSettingInt"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2299
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "first_time_use_Settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2301
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getbFirstTimeUse()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2279
    const-string v1, "TetherNetworkSettings"

    const-string v2, "CSC_B getbFirstTimeUse"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2280
    const-string v1, "wifi_help_ask"

    invoke-direct {p0, v1, v0}, Lcom/android/lgesettings/TetherNetworkSettings;->getSettingInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 2289
    :goto_0
    return v0

    .line 2286
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private gotoNextStep(Z)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1989
    if-eqz p1, :cond_4

    .line 1992
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v3, "US"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ATT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1993
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f09009d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1998
    :goto_0
    array-length v3, v0

    if-eq v3, v5, :cond_2

    .line 1999
    const-string v0, "TetherNetworkSettings"

    const-string v1, "Bluetooth tethering on"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    invoke-direct {p0}, Lcom/android/lgesettings/TetherNetworkSettings;->onBluetoothTether()V

    .line 2042
    :cond_0
    :goto_1
    return-void

    .line 1995
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x1070025

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2002
    :cond_2
    const-string v3, "TetherNetworkSettings"

    const-string v4, "Check to ENTITLEMENT for BT tethering"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2003
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2004
    aget-object v2, v0, v2

    aget-object v0, v0, v1

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2005
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v2, "US"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ATT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2006
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "tether_entitlement_check_state"

    invoke-static {v0, v2, v1}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_3

    .line 2008
    const-string v0, "Tether_Type"

    const-string v1, "BT"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2009
    invoke-virtual {p0, v3, v5}, Lcom/android/lgesettings/TetherNetworkSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 2011
    :cond_3
    invoke-direct {p0}, Lcom/android/lgesettings/TetherNetworkSettings;->onBluetoothTether()V

    goto :goto_1

    .line 2018
    :cond_4
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/TetherNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2021
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v3

    .line 2022
    iget-object v4, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothRegexs:[Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/lgesettings/TetherNetworkSettings;->findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2023
    if-eqz v3, :cond_7

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    .line 2029
    :goto_2
    iget-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    if-eqz v1, :cond_5

    .line 2030
    iget-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 2033
    :cond_5
    iget-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    if-eqz v1, :cond_0

    .line 2034
    if-eqz v0, :cond_6

    .line 2035
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const v1, 0x7f080500

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_1

    .line 2037
    :cond_6
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const v1, 0x7f081037

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_1

    :cond_7
    move v0, v2

    goto :goto_2
.end method

.method private isTmusSimCard(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2315
    if-nez p1, :cond_1

    .line 2316
    const-string v1, "TetherNetworkSettings"

    const-string v2, "MCC + MNC : null!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2331
    :cond_0
    :goto_0
    return v0

    .line 2319
    :cond_1
    const-string v1, "TetherNetworkSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gsm.sim.operator.gid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "gsm.sim.operator.gid"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2320
    const-string v1, "6D38"

    const-string v2, "gsm.sim.operator.gid"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2323
    const-string v1, "TetherNetworkSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MCC + MNC : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2324
    const-string v1, "00101"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "310160"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "310200"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "310210"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "310220"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "310230"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "310240"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "310250"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "310260"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "310270"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "310300"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "310310"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "310490"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "310530"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "310580"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "310590"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "310640"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "310660"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "310800"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2329
    :cond_2
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private isUpsell()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2248
    .line 2249
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2251
    :try_start_0
    const-string v2, "com.lge.upsell"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2252
    const/4 v0, 0x1

    .line 2259
    :goto_0
    return v0

    .line 2254
    :catch_0
    move-exception v1

    .line 2255
    const-string v1, "TetherNetworkSettings"

    const-string v2, "not support Upsell"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onBluetoothTether()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1951
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1952
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 1953
    iput-boolean v3, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothEnableForTether:Z

    .line 1954
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 1955
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    if-eqz v0, :cond_0

    .line 1956
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const v1, 0x7f0800a1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->setSummary(I)V

    .line 1957
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->setEnabled(Z)V

    .line 1968
    :cond_0
    :goto_0
    return-void

    .line 1961
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    if-eqz v0, :cond_2

    .line 1962
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 1964
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    if-eqz v0, :cond_0

    .line 1965
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const v1, 0x7f080fe9

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->setSummary(I)V

    goto :goto_0
.end method

.method private onCreateTetherAlertDialg(I)V
    .locals 9
    .parameter

    .prologue
    const v4, 0x7f080a88

    const v3, 0x7f0804ef

    const v8, 0x1010355

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 550
    if-ne p1, v1, :cond_1

    .line 551
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/TetherNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080a67

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080a68

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/lgesettings/TetherNetworkSettings$4;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/TetherNetworkSettings$4;-><init>(Lcom/android/lgesettings/TetherNetworkSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/lgesettings/TetherNetworkSettings$3;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/TetherNetworkSettings$3;-><init>(Lcom/android/lgesettings/TetherNetworkSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/lgesettings/TetherNetworkSettings$2;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/TetherNetworkSettings$2;-><init>(Lcom/android/lgesettings/TetherNetworkSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/lgesettings/TetherNetworkSettings$1;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/TetherNetworkSettings$1;-><init>(Lcom/android/lgesettings/TetherNetworkSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 586
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mTetherAlertDialog:Landroid/app/AlertDialog;

    .line 587
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mTetherAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 786
    :cond_0
    :goto_0
    return-void

    .line 589
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    .line 590
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 594
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 595
    const-string v4, "html/%y%z/tether_attention_%x.html"

    const-string v5, "%y"

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 596
    const-string v5, "%z"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 597
    const-string v5, "%x"

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 600
    const/4 v5, 0x0

    .line 603
    :try_start_0
    invoke-virtual {v0, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 607
    if-eqz v0, :cond_a

    .line 609
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    .line 615
    :goto_1
    const-string v4, "file:///android_asset/html/%y%z/tether_attention_%x.html"

    const-string v5, "%y"

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 616
    const-string v5, "%z"

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 617
    const-string v4, "%x"

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 620
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/lgesettings/TetherNetworkSettings;->getActivity()Landroid/app/Activity;

    const-string v4, "layout_inflater"

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 621
    const v4, 0x7f040164

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 622
    const v0, 0x7f0a030a

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 625
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    .line 626
    if-eqz v5, :cond_2

    .line 627
    invoke-virtual {v5, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 628
    invoke-virtual {v5, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 630
    :cond_2
    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 632
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/TetherNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 633
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 634
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 635
    const v1, 0x7f08031d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 636
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 637
    new-instance v1, Lcom/android/lgesettings/TetherNetworkSettings$5;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/TetherNetworkSettings$5;-><init>(Lcom/android/lgesettings/TetherNetworkSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 652
    new-instance v1, Lcom/android/lgesettings/TetherNetworkSettings$6;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/TetherNetworkSettings$6;-><init>(Lcom/android/lgesettings/TetherNetworkSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 659
    const v1, 0x7f08031f

    new-instance v2, Lcom/android/lgesettings/TetherNetworkSettings$7;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/TetherNetworkSettings$7;-><init>(Lcom/android/lgesettings/TetherNetworkSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 666
    const v1, 0x7f08031e

    new-instance v2, Lcom/android/lgesettings/TetherNetworkSettings$8;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/TetherNetworkSettings$8;-><init>(Lcom/android/lgesettings/TetherNetworkSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 672
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mTetherAlertDialog:Landroid/app/AlertDialog;

    .line 673
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mTetherAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 610
    :catch_0
    move-exception v0

    move v0, v1

    .line 611
    goto/16 :goto_1

    .line 604
    :catch_1
    move-exception v0

    .line 607
    if-eqz v5, :cond_9

    .line 609
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move v0, v2

    .line 611
    goto/16 :goto_1

    .line 610
    :catch_2
    move-exception v0

    move v0, v2

    .line 611
    goto/16 :goto_1

    .line 607
    :catchall_0
    move-exception v0

    if-eqz v5, :cond_3

    .line 609
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 611
    :cond_3
    :goto_3
    throw v0

    .line 616
    :cond_4
    const-string v0, ""

    goto/16 :goto_2

    .line 675
    :cond_5
    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    .line 676
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/SettingsSwitchPreference;->setChecked(Z)V

    .line 677
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/TetherNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 678
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 679
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 680
    const v1, 0x7f081331

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 681
    const v1, 0x7f081333

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 682
    new-instance v1, Lcom/android/lgesettings/TetherNetworkSettings$9;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/TetherNetworkSettings$9;-><init>(Lcom/android/lgesettings/TetherNetworkSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 693
    new-instance v1, Lcom/android/lgesettings/TetherNetworkSettings$10;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/TetherNetworkSettings$10;-><init>(Lcom/android/lgesettings/TetherNetworkSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 700
    new-instance v1, Lcom/android/lgesettings/TetherNetworkSettings$11;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/TetherNetworkSettings$11;-><init>(Lcom/android/lgesettings/TetherNetworkSettings;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 709
    const v1, 0x7f080a89

    new-instance v2, Lcom/android/lgesettings/TetherNetworkSettings$12;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/TetherNetworkSettings$12;-><init>(Lcom/android/lgesettings/TetherNetworkSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 715
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mTetherAlertDialog:Landroid/app/AlertDialog;

    .line 716
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mTetherAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 719
    :cond_6
    const/4 v0, 0x4

    if-ne p1, v0, :cond_7

    .line 720
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/SettingsSwitchPreference;->setChecked(Z)V

    .line 721
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/TetherNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 722
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 723
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 724
    const v1, 0x7f081331

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 725
    const v1, 0x7f081106

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 726
    new-instance v1, Lcom/android/lgesettings/TetherNetworkSettings$13;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/TetherNetworkSettings$13;-><init>(Lcom/android/lgesettings/TetherNetworkSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 737
    new-instance v1, Lcom/android/lgesettings/TetherNetworkSettings$14;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/TetherNetworkSettings$14;-><init>(Lcom/android/lgesettings/TetherNetworkSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 744
    new-instance v1, Lcom/android/lgesettings/TetherNetworkSettings$15;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/TetherNetworkSettings$15;-><init>(Lcom/android/lgesettings/TetherNetworkSettings;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 753
    const v1, 0x7f080a89

    new-instance v2, Lcom/android/lgesettings/TetherNetworkSettings$16;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/TetherNetworkSettings$16;-><init>(Lcom/android/lgesettings/TetherNetworkSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 759
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mTetherAlertDialog:Landroid/app/AlertDialog;

    .line 760
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mTetherAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 763
    :cond_7
    const/4 v0, 0x5

    if-ne p1, v0, :cond_8

    .line 764
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/TetherNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 765
    const v1, 0x7f080291

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 766
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 767
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 768
    new-instance v1, Lcom/android/lgesettings/TetherNetworkSettings$17;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/TetherNetworkSettings$17;-><init>(Lcom/android/lgesettings/TetherNetworkSettings;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 772
    const v1, 0x7f0804f0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 773
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 776
    :cond_8
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 777
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/TetherNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 778
    const v1, 0x7f0804ed

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 779
    const v1, 0x7f0804ee

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 780
    new-instance v1, Lcom/android/lgesettings/TetherNetworkSettings$18;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/TetherNetworkSettings$18;-><init>(Lcom/android/lgesettings/TetherNetworkSettings;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 784
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 610
    :catch_3
    move-exception v1

    goto/16 :goto_3

    :cond_9
    move v0, v2

    goto/16 :goto_1

    :cond_a
    move v0, v1

    goto/16 :goto_1
.end method

.method private setSettingInt(Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2304
    const-string v0, "TetherNetworkSettings"

    const-string v1, "CSC_A setSettingInt"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2305
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "first_time_use_Settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2307
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2308
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2309
    return-void
.end method

.method private setUsbTethering(Z)V
    .locals 7
    .parameter "enabled"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 509
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/TetherNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 511
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    .line 547
    :goto_0
    return-void

    .line 515
    :cond_0
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VZW"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 516
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->setTetherStatus(Landroid/content/Context;Z)V

    .line 518
    if-eqz p1, :cond_2

    .line 519
    iput-boolean v6, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTetherTurningOn:Z

    .line 525
    :cond_1
    :goto_1
    const-string v2, "TetherNetworkSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[AUTORUN] TetherNetworkSettings USB Tethering!! enabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    move-result v2

    if-eqz v2, :cond_3

    .line 527
    const-string v2, "TetherNetworkSettings"

    const-string v3, "[AUTORUN] ============ USB Tethering ERROR !! ============"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iput-boolean v5, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTetherTurningOn:Z

    .line 529
    iget-object v2, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    invoke-virtual {v2, v5}, Lcom/android/lgesettings/SettingsSwitchPreference;->setChecked(Z)V

    .line 530
    iget-object v2, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const v3, 0x7f0804fa

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/SettingsSwitchPreference;->setSummary(I)V

    goto :goto_0

    .line 522
    :cond_2
    iput-boolean v5, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTetherTurningOn:Z

    goto :goto_1

    .line 534
    :cond_3
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SPR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 535
    const-string v2, "persist.service.usb_ther"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 536
    .local v1, userdebugmode:Ljava/lang/String;
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 537
    if-eqz p1, :cond_5

    .line 538
    const-string v2, "persist.sys.usb.state"

    const-string v3, "on"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    .end local v1           #userdebugmode:Ljava/lang/String;
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/SettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 546
    sput-boolean v6, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mTetherChanged:Z

    goto :goto_0

    .line 540
    .restart local v1       #userdebugmode:Ljava/lang/String;
    :cond_5
    const-string v2, "persist.sys.usb.state"

    const-string v3, "off"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private setbFirstTimeUse(I)V
    .locals 1
    .parameter

    .prologue
    .line 2294
    const-string v0, "wifi_help_ask"

    invoke-direct {p0, v0, p1}, Lcom/android/lgesettings/TetherNetworkSettings;->setSettingInt(Ljava/lang/String;I)V

    .line 2296
    return-void
.end method

.method private startProvisioningIfNecessary(I)V
    .locals 5
    .parameter "choice"

    .prologue
    const/4 v4, 0x0

    .line 456
    iput p1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mTetherChoice:I

    .line 457
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherNetworkSettings;->isProvisioningNeeded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 458
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 459
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mProvisionApp:[Ljava/lang/String;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mProvisionApp:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 460
    invoke-virtual {p0, v0, v4}, Lcom/android/lgesettings/TetherNetworkSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 464
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 462
    :cond_0
    invoke-direct {p0}, Lcom/android/lgesettings/TetherNetworkSettings;->startTethering()V

    goto :goto_0
.end method

.method private startTethering()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 467
    const-string v2, "gsm.sim.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 469
    .local v1, operator_numeric:Ljava/lang/String;
    iget v2, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mTetherChoice:I

    packed-switch v2, :pswitch_data_0

    .line 506
    :goto_0
    :pswitch_0
    return-void

    .line 475
    :pswitch_1
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DCM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 476
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/lgesettings/TetherNetworkSettings;->onCreateTetherAlertDialg(I)V

    goto :goto_0

    .line 478
    :cond_0
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v2

    const-string v3, "US"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TMO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 479
    const-string v2, "TetherNetworkSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[AUTORUN] isTmusSimCard "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-direct {p0}, Lcom/android/lgesettings/TetherNetworkSettings;->isUpsell()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 481
    invoke-direct {p0, v1}, Lcom/android/lgesettings/TetherNetworkSettings;->isTmusSimCard(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 482
    invoke-direct {p0, v5}, Lcom/android/lgesettings/TetherNetworkSettings;->connectUpsell(I)V

    goto :goto_0

    .line 484
    :cond_1
    invoke-direct {p0}, Lcom/android/lgesettings/TetherNetworkSettings;->getbFirstTimeUse()Z

    move-result v2

    if-nez v2, :cond_2

    .line 485
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 486
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "Tethering_Type"

    const-string v3, "USB"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 487
    const-string v2, "com.lge.upsell"

    const-string v3, "com.lge.upsell.FirstTimeUse"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 488
    const/4 v2, 0x7

    invoke-virtual {p0, v0, v2}, Lcom/android/lgesettings/TetherNetworkSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 490
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    invoke-direct {p0, v5}, Lcom/android/lgesettings/TetherNetworkSettings;->setUsbTethering(Z)V

    goto :goto_0

    .line 494
    :cond_3
    invoke-direct {p0, v5}, Lcom/android/lgesettings/TetherNetworkSettings;->onCreateTetherAlertDialg(I)V

    goto :goto_0

    .line 498
    :cond_4
    invoke-direct {p0, v5}, Lcom/android/lgesettings/TetherNetworkSettings;->onCreateTetherAlertDialg(I)V

    goto :goto_0

    .line 469
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private startUpsell(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 2263
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2264
    if-ne p1, v1, :cond_1

    .line 2265
    iput-boolean v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTetherTurningOn:Z

    .line 2266
    const-string v1, "Tethering_Type"

    const-string v2, "USB"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2271
    :cond_0
    :goto_0
    const-string v1, "com.lge.upsell"

    const-string v2, "com.lge.upsell.DataService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2272
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2273
    return-void

    .line 2268
    :cond_1
    if-nez p1, :cond_0

    .line 2269
    const-string v1, "Tethering_Type"

    const-string v2, "Wifi"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private updateAirplaneModeState(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2052
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_toggleable_radios"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2056
    if-eqz p1, :cond_6

    .line 2063
    if-eqz v0, :cond_0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2064
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mNetworkSettingsCategory:Landroid/preference/PreferenceCategory;

    const-string v2, "vpn_settings"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2068
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2069
    invoke-static {}, Lcom/android/lgesettings/Utils;->isMultiSimEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/lgesettings/Utils;->isTripleSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2070
    :cond_2
    iget-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mNetworkSettingsCategory:Landroid/preference/PreferenceCategory;

    const-string v2, "mobile_network_settings_dualsim"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2084
    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    const-string v1, "bluetooth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2122
    :cond_4
    :goto_1
    return-void

    .line 2073
    :cond_5
    iget-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mNetworkSettingsCategory:Landroid/preference/PreferenceCategory;

    const-string v2, "mobile_network_settings"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2074
    iget-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mNetworkSettingsCategory:Landroid/preference/PreferenceCategory;

    const-string v2, "mobile_network_settings"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 2095
    :cond_6
    if-eqz v0, :cond_7

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 2096
    :cond_7
    iget-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mNetworkSettingsCategory:Landroid/preference/PreferenceCategory;

    const-string v2, "vpn_settings"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2099
    :cond_8
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/lgesettings/Utils;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2102
    invoke-static {}, Lcom/android/lgesettings/Utils;->isMultiSimEnabled()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {}, Lcom/android/lgesettings/Utils;->isTripleSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2103
    :cond_9
    iget-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mNetworkSettingsCategory:Landroid/preference/PreferenceCategory;

    const-string v2, "mobile_network_settings_dualsim"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2116
    :cond_a
    :goto_2
    if-eqz v0, :cond_4

    const-string v1, "bluetooth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    .line 2106
    :cond_b
    iget-boolean v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->b_isWifiOnly:Z

    if-nez v1, :cond_a

    .line 2107
    iget-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mNetworkSettingsCategory:Landroid/preference/PreferenceCategory;

    const-string v2, "mobile_network_settings"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_2
.end method

.method private updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const v11, 0x7f081037

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1845
    .line 1852
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v0

    iget-object v3, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    invoke-virtual {v0, v3}, Lcom/android/lgesettings/MDMSettingsAdapter;->setBluetoothTetheringMenu(Landroid/preference/TwoStatePreference;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1945
    :cond_0
    :goto_0
    return-void

    .line 1858
    :cond_1
    array-length v5, p2

    move v4, v2

    move v3, v2

    :goto_1
    if-ge v4, v5, :cond_4

    aget-object v6, p2, v4

    .line 1859
    iget-object v7, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothRegexs:[Ljava/lang/String;

    array-length v8, v7

    move v0, v3

    move v3, v2

    :goto_2
    if-ge v3, v8, :cond_3

    aget-object v9, v7, v3

    .line 1860
    invoke-virtual {v6, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1861
    add-int/lit8 v0, v0, 0x1

    .line 1859
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1858
    :cond_3
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v0

    goto :goto_1

    .line 1867
    :cond_4
    array-length v6, p3

    move v5, v2

    move v4, v2

    :goto_3
    if-ge v5, v6, :cond_7

    aget-object v7, p3, v5

    .line 1868
    iget-object v8, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothRegexs:[Ljava/lang/String;

    array-length v9, v8

    move v0, v4

    move v4, v2

    :goto_4
    if-ge v4, v9, :cond_6

    aget-object v10, v8, v4

    .line 1869
    invoke-virtual {v7, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    move v0, v1

    .line 1868
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1867
    :cond_6
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v0

    goto :goto_3

    .line 1875
    :cond_7
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1876
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    .line 1877
    const/16 v5, 0xd

    if-ne v0, v5, :cond_8

    .line 1878
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    if-eqz v0, :cond_0

    .line 1879
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/SettingsSwitchPreference;->setEnabled(Z)V

    .line 1882
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const v1, 0x7f0800a2

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->setSummary(I)V

    goto :goto_0

    .line 1885
    :cond_8
    const/16 v5, 0xb

    if-ne v0, v5, :cond_9

    .line 1886
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    if-eqz v0, :cond_0

    .line 1887
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/SettingsSwitchPreference;->setEnabled(Z)V

    .line 1888
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const v1, 0x7f0800a1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->setSummary(I)V

    goto :goto_0

    .line 1890
    :cond_9
    const/16 v5, 0xc

    if-ne v0, v5, :cond_11

    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    if-eqz v0, :cond_11

    .line 1891
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1894
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothPan;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 1895
    if-eqz v0, :cond_13

    .line 1896
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1901
    :goto_5
    iget-object v5, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    if-eqz v5, :cond_a

    .line 1902
    iget-object v5, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    invoke-virtual {v5, v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->setChecked(Z)V

    .line 1903
    iget-object v5, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    invoke-virtual {v5, v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->setEnabled(Z)V

    .line 1906
    :cond_a
    if-gt v3, v1, :cond_b

    if-le v0, v1, :cond_d

    .line 1908
    :cond_b
    if-le v0, v1, :cond_c

    .line 1916
    :goto_6
    const v3, 0x7f080feb

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {p0, v3, v1}, Lcom/android/lgesettings/TetherNetworkSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1919
    iget-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/android/lgesettings/SettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1912
    :cond_c
    if-le v3, v1, :cond_12

    move v0, v3

    .line 1914
    goto :goto_6

    .line 1920
    :cond_d
    if-ne v3, v1, :cond_e

    .line 1921
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const v1, 0x7f080fea

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 1922
    :cond_e
    if-eqz v4, :cond_f

    .line 1923
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const v1, 0x7f080500

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 1925
    :cond_f
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const v1, 0x7f080fe9

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 1928
    :cond_10
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    if-eqz v0, :cond_0

    .line 1929
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    invoke-virtual {v0, v11}, Lcom/android/lgesettings/SettingsSwitchPreference;->setSummary(I)V

    .line 1930
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->setEnabled(Z)V

    .line 1932
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1933
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/SettingsSwitchPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 1939
    :cond_11
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    if-eqz v0, :cond_0

    .line 1940
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->setEnabled(Z)V

    .line 1941
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/SettingsSwitchPreference;->setChecked(Z)V

    .line 1942
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    invoke-virtual {v0, v11}, Lcom/android/lgesettings/SettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_0

    :cond_12
    move v0, v2

    goto :goto_6

    :cond_13
    move v0, v2

    goto/16 :goto_5
.end method

.method private updateState()V
    .locals 5

    .prologue
    .line 1665
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/TetherNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1668
    .local v1, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 1669
    .local v0, available:[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v3

    .line 1670
    .local v3, tethered:[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v2

    .line 1672
    .local v2, errored:[Ljava/lang/String;
    invoke-direct {p0, v0, v3, v2}, Lcom/android/lgesettings/TetherNetworkSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1673
    return-void
.end method

.method private updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "available"
    .parameter "tethered"
    .parameter "errored"

    .prologue
    .line 1677
    invoke-direct {p0, p1, p2, p3}, Lcom/android/lgesettings/TetherNetworkSettings;->updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1678
    iget-boolean v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->bluetoothAvailable:Z

    if-eqz v0, :cond_0

    .line 1679
    invoke-direct {p0, p1, p2, p3}, Lcom/android/lgesettings/TetherNetworkSettings;->updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1681
    :cond_0
    return-void
.end method

.method private updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1685
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/TetherNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1687
    iget-boolean v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbConnected:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mMassStorageActive:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 1688
    :goto_0
    const/4 v5, 0x0

    .line 1689
    array-length v6, p1

    const/4 v2, 0x0

    move v4, v2

    :goto_1
    if-ge v4, v6, :cond_3

    aget-object v7, p1, v4

    .line 1690
    iget-object v8, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v9, v8

    const/4 v2, 0x0

    move v3, v2

    move v2, v5

    :goto_2
    if-ge v3, v9, :cond_2

    aget-object v5, v8, v3

    .line 1691
    invoke-virtual {v7, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1692
    if-nez v2, :cond_0

    .line 1693
    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v2

    .line 1690
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1687
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1689
    :cond_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v5, v2

    goto :goto_1

    .line 1698
    :cond_3
    const/4 v4, 0x0

    .line 1699
    array-length v6, p2

    const/4 v0, 0x0

    move v3, v0

    :goto_3
    if-ge v3, v6, :cond_6

    aget-object v7, p2, v3

    .line 1700
    iget-object v8, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v9, v8

    const/4 v0, 0x0

    move v2, v0

    move v0, v4

    :goto_4
    if-ge v2, v9, :cond_5

    aget-object v4, v8, v2

    .line 1701
    invoke-virtual {v7, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1702
    const/4 v0, 0x1

    .line 1700
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1699
    :cond_5
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v4, v0

    goto :goto_3

    .line 1706
    :cond_6
    const/4 v2, 0x0

    .line 1707
    array-length v6, p3

    const/4 v0, 0x0

    move v3, v0

    :goto_5
    if-ge v3, v6, :cond_9

    aget-object v7, p3, v3

    .line 1708
    iget-object v8, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v9, v8

    const/4 v0, 0x0

    move v11, v0

    move v0, v2

    move v2, v11

    :goto_6
    if-ge v2, v9, :cond_8

    aget-object v10, v8, v2

    .line 1709
    invoke-virtual {v7, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1710
    const/4 v0, 0x1

    .line 1708
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1707
    :cond_8
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_5

    .line 1716
    :cond_9
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v0

    iget-object v3, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    invoke-virtual {v0, v3}, Lcom/android/lgesettings/MDMSettingsAdapter;->setUsbTetheringMenu(Landroid/preference/TwoStatePreference;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1841
    :cond_a
    :goto_7
    return-void

    .line 1722
    :cond_b
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v3, "VZW"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1723
    if-eqz v4, :cond_e

    .line 1724
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const v1, 0x7f0804f7

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->setSummary(I)V

    .line 1725
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->setEnabled(Z)V

    .line 1726
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->setChecked(Z)V

    .line 1816
    :goto_8
    sget-boolean v0, Lcom/android/lgesettings/lgesetting/Config/Config;->THREELM_MDM:Z

    if-eqz v0, :cond_c

    .line 1817
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tethering_blocked"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 1819
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const v1, 0x7f080007

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->setSummary(I)V

    .line 1820
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->setEnabled(Z)V

    .line 1821
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->setChecked(Z)V

    .line 1829
    :cond_c
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/lgesettings/lge/OverlayUtils;->getAllowTethering(Landroid/content/ComponentName;)Z

    move-result v0

    .line 1830
    iget-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    invoke-virtual {v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1831
    if-nez v0, :cond_d

    .line 1832
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->setEnabled(Z)V

    .line 1833
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const v1, 0x7f080c18

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->setSummary(I)V

    .line 1838
    :cond_d
    iget-boolean v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mCheckingMobileData:Z

    if-eqz v0, :cond_a

    .line 1839
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->setEnabled(Z)V

    goto :goto_7

    .line 1727
    :cond_e
    if-eqz v2, :cond_f

    .line 1728
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const v1, 0x7f0804fa

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->setSummary(I)V

    .line 1729
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->setEnabled(Z)V

    .line 1730
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->setChecked(Z)V

    goto :goto_8

    .line 1731
    :cond_f
    iget-boolean v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mMassStorageActive:Z

    if-eqz v0, :cond_10

    .line 1732
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const v1, 0x7f0804f8

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->setSummary(I)V

    .line 1733
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->setEnabled(Z)V

    .line 1734
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->setChecked(Z)V

    goto :goto_8

    .line 1736
    :cond_10
    iget-boolean v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbConnected:Z

    if-eqz v0, :cond_13

    .line 1737
    iget-boolean v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mCdromStorage:Z

    if-eqz v0, :cond_11

    .line 1738
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const v1, 0x7f0804f9

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->setSummary(I)V

    .line 1739
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->setEnabled(Z)V

    .line 1740
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->setChecked(Z)V

    goto/16 :goto_8

    .line 1742
    :cond_11
    const-string v0, "usb"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/TetherNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 1743
    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v0

    .line 1744
    const-string v1, "ecm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1745
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const v1, 0x7f0804f6

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->setSummary(I)V

    .line 1746
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->setEnabled(Z)V

    .line 1747
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->setChecked(Z)V

    goto/16 :goto_8

    .line 1749
    :cond_12
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const v1, 0x7f080a4d

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->setSummary(I)V

    .line 1750
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->setEnabled(Z)V

    .line 1751
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->setChecked(Z)V

    goto/16 :goto_8

    .line 1755
    :cond_13
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const v1, 0x7f0804f9

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->setSummary(I)V

    .line 1756
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->setEnabled(Z)V

    .line 1757
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->setChecked(Z)V

    goto/16 :goto_8

    .line 1762
    :cond_14
    if-eqz v4, :cond_15

    .line 1763
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const v1, 0x7f0804f7

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->setSummary(I)V

    .line 1764
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->setEnabled(Z)V

    .line 1765
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->setChecked(Z)V

    .line 1766
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTetherTurningOn:Z

    goto/16 :goto_8

    .line 1779
    :cond_15
    if-eqz v1, :cond_18

    .line 1780
    if-nez v5, :cond_17

    .line 1781
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const v1, 0x7f0804f6

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->setSummary(I)V

    .line 1782
    iget-boolean v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTetherTurningOn:Z

    if-eqz v0, :cond_16

    .line 1783
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->setEnabled(Z)V

    .line 1784
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->setChecked(Z)V

    goto/16 :goto_8

    .line 1787
    :cond_16
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->setEnabled(Z)V

    .line 1788
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->setChecked(Z)V

    goto/16 :goto_8

    .line 1792
    :cond_17
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const v1, 0x7f0804fa

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->setSummary(I)V

    .line 1793
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->setEnabled(Z)V

    .line 1794
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->setChecked(Z)V

    .line 1795
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTetherTurningOn:Z

    goto/16 :goto_8

    .line 1798
    :cond_18
    if-eqz v2, :cond_19

    .line 1799
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const v1, 0x7f0804fa

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->setSummary(I)V

    .line 1800
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->setEnabled(Z)V

    .line 1801
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->setChecked(Z)V

    goto/16 :goto_8

    .line 1803
    :cond_19
    iget-boolean v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mMassStorageActive:Z

    if-eqz v0, :cond_1a

    .line 1804
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const v1, 0x7f0804f8

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->setSummary(I)V

    .line 1805
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->setEnabled(Z)V

    .line 1806
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->setChecked(Z)V

    goto/16 :goto_8

    .line 1809
    :cond_1a
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const v1, 0x7f0804f9

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->setSummary(I)V

    .line 1810
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->setEnabled(Z)V

    .line 1811
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsSwitchPreference;->setChecked(Z)V

    goto/16 :goto_8
.end method


# virtual methods
.method public disableWifi()V
    .locals 4

    .prologue
    .line 789
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/TetherNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 790
    .local v1, mWifiManager:Landroid/net/wifi/WifiManager;
    if-eqz v1, :cond_0

    .line 791
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 795
    .local v0, isWifiEnabled:Z
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 798
    const-wide/16 v2, 0xc8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 802
    .end local v0           #isWifiEnabled:Z
    :cond_0
    :goto_0
    return-void

    .line 799
    .restart local v0       #isWifiEnabled:Z
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 2048
    const v0, 0x7f080883

    return v0
.end method

.method isProvisioningNeeded()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 449
    const-string v1, "net.tethering.noprovisioning"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 452
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mProvisionApp:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 1401
    if-ne p1, v1, :cond_1

    .line 1402
    const-string v0, "exit_ecm_result"

    invoke-virtual {p3, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1405
    iget-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    .line 1406
    iget-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mAirplaneModeEnabler:Lcom/android/lgesettings/AirplaneModeEnabler;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v2, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/lgesettings/AirplaneModeEnabler;->setAirplaneModeInECM(ZZ)V

    .line 1451
    :cond_0
    :goto_0
    return-void

    .line 1410
    :cond_1
    if-nez p1, :cond_3

    .line 1411
    if-ne p2, v3, :cond_2

    .line 1412
    invoke-direct {p0}, Lcom/android/lgesettings/TetherNetworkSettings;->startTethering()V

    goto :goto_0

    .line 1416
    :cond_2
    iget v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mTetherChoice:I

    packed-switch v0, :pswitch_data_0

    .line 1426
    :goto_1
    :pswitch_0
    iput v3, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mTetherChoice:I

    goto :goto_0

    .line 1421
    :pswitch_1
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    invoke-virtual {v0, v4}, Lcom/android/lgesettings/SettingsSwitchPreference;->setChecked(Z)V

    goto :goto_1

    .line 1429
    :cond_3
    const/16 v0, 0xa

    if-ne p1, v0, :cond_6

    .line 1430
    if-ne p2, v3, :cond_5

    .line 1431
    invoke-direct {p0, v1}, Lcom/android/lgesettings/TetherNetworkSettings;->gotoNextStep(Z)V

    .line 1435
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/android/lgesettings/TetherNetworkSettings;->updateState()V

    goto :goto_0

    .line 1432
    :cond_5
    if-nez p2, :cond_4

    .line 1433
    const-string v0, "TetherNetworkSettings"

    const-string v1, "Bluetooth Tethering canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1437
    :cond_6
    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 1440
    const-string v0, "TetherNetworkSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AUTORUN] REQUEST_FIRST_TIME_USE_USB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    const-string v0, "help_ask"

    invoke-virtual {p3, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1442
    invoke-direct {p0, v0}, Lcom/android/lgesettings/TetherNetworkSettings;->setbFirstTimeUse(I)V

    .line 1443
    if-ne p2, v3, :cond_0

    .line 1445
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1446
    const-string v1, "Tethering_Type"

    const-string v2, "USB"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1447
    const-string v1, "com.android.lgesettings"

    const-string v2, "com.android.lgesettings.lge.TetherSettingsHelpUsb"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1448
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/TetherNetworkSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1416
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 816
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 821
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->b_isWifiOnly:Z

    .line 822
    const-string v0, "settings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TetherNetworkSettings] isWifiOnly = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/lgesettings/TetherNetworkSettings;->b_isWifiOnly:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 825
    const-string v0, "SPR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 826
    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/high16 v1, 0x7f03

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 827
    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f08010c

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 830
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 833
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->supportAirplaneListMenu()Z

    move-result v0

    if-eqz v0, :cond_30

    move v2, v3

    .line 837
    :goto_0
    const v0, 0x7f060064

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/TetherNetworkSettings;->addPreferencesFromResource(I)V

    .line 840
    const-string v0, "tether_category"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/TetherNetworkSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mTetheringCategory:Landroid/preference/PreferenceCategory;

    .line 841
    const-string v0, "network_setting_category"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/TetherNetworkSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mNetworkSettingsCategory:Landroid/preference/PreferenceCategory;

    .line 843
    const-string v0, "wfc_category"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/TetherNetworkSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mWiFiCallingCategory:Landroid/preference/PreferenceCategory;

    .line 844
    const-string v0, "ro.lge.mtk_dualsim"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 848
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 850
    if-eqz v0, :cond_1

    .line 851
    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v8, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v9, 0x5

    invoke-virtual {v0, v1, v8, v9}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 855
    :cond_1
    if-ne v7, v3, :cond_21

    move v0, v3

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/lgesettings/TetherNetworkSettings;->updateAirplaneModeState(Z)V

    .line 856
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mNetworkSettingsCategory:Landroid/preference/PreferenceCategory;

    const-string v1, "toggle_airplane"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    .line 860
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mNetworkSettingsCategory:Landroid/preference/PreferenceCategory;

    const-string v1, "toggle_nsd"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 864
    iget-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mTetheringCategory:Landroid/preference/PreferenceCategory;

    const-string v8, "enable_bluetooth_tethering"

    invoke-virtual {v1, v8}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/SettingsSwitchPreference;

    iput-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    .line 867
    iget-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mTetheringCategory:Landroid/preference/PreferenceCategory;

    const-string v8, "tether_settings"

    invoke-virtual {v1, v8}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/WifiApSwitchPreference;

    iput-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mWifiTether:Lcom/android/lgesettings/WifiApSwitchPreference;

    .line 870
    if-nez v2, :cond_22

    .line 871
    new-instance v1, Lcom/android/lgesettings/AirplaneModeEnabler;

    iget-object v8, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    invoke-direct {v1, v6, v8, v5}, Lcom/android/lgesettings/AirplaneModeEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceScreen;)V

    iput-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mAirplaneModeEnabler:Lcom/android/lgesettings/AirplaneModeEnabler;

    .line 879
    :cond_2
    :goto_2
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mNetworkSettingsCategory:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_3

    .line 880
    iget-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mNetworkSettingsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 883
    :cond_3
    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_toggleable_radios"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 898
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mProvisionApp:[Ljava/lang/String;

    .line 902
    iget-boolean v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->b_isWifiOnly:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mNetworkSettingsCategory:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_4

    .line 903
    const-string v0, "settings"

    const-string v1, "[TetherNetworkSettings] is Wi-Fi only Device - delete Network settings "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mNetworkSettingsCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mNetworkSettingsCategory:Landroid/preference/PreferenceCategory;

    const-string v8, "mobile_network_settings"

    invoke-virtual {v1, v8}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 935
    :cond_4
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mNetworkSettingsCategory:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_2f

    .line 936
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mNetworkSettingsCategory:Landroid/preference/PreferenceCategory;

    const-string v1, "proxy_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    move-object v1, v0

    .line 939
    :goto_3
    const-string v0, "device_policy"

    invoke-virtual {v6, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 943
    iget-object v8, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mNetworkSettingsCategory:Landroid/preference/PreferenceCategory;

    if-eqz v8, :cond_5

    if-eqz v1, :cond_5

    .line 944
    iget-object v8, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mNetworkSettingsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v8, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 947
    :cond_5
    if-eqz v1, :cond_6

    .line 948
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getGlobalProxyAdmin()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_23

    move v0, v3

    :goto_4
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 952
    :cond_6
    const-string v0, "connectivity"

    invoke-virtual {v6, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 955
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbRegexs:[Ljava/lang/String;

    .line 956
    iget-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mTetheringCategory:Landroid/preference/PreferenceCategory;

    const-string v6, "usb_tethering"

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/SettingsSwitchPreference;

    iput-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    .line 957
    iget-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    invoke-virtual {v1, p0}, Lcom/android/lgesettings/SettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 958
    iget-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    invoke-virtual {v1, v4}, Lcom/android/lgesettings/SettingsSwitchPreference;->setDivider(Z)V

    .line 959
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v6, "US"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v6, "TMO"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v6, "VZW"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v6, "SPR"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v6, "BM"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 964
    :cond_8
    iget-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_24

    move v1, v3

    :goto_5
    iput-boolean v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbAvailable:Z

    .line 966
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v6, "VZW"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbAvailable:Z

    if-eqz v1, :cond_9

    .line 967
    iget-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const v6, 0x7f080a4c

    invoke-virtual {v1, v6}, Lcom/android/lgesettings/SettingsSwitchPreference;->setTitle(I)V

    .line 969
    :cond_9
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v6, "SPR"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v6, "BM"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    invoke-static {}, Lcom/android/lgesettings/Utils;->getChameleonUsbTetheringMenuEnabled()Z

    move-result v1

    if-nez v1, :cond_b

    .line 971
    iput-boolean v4, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbAvailable:Z

    .line 974
    :cond_b
    iget-boolean v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbAvailable:Z

    if-eqz v1, :cond_c

    invoke-static {}, Lcom/android/lgesettings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 975
    :cond_c
    iget-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mTetheringCategory:Landroid/preference/PreferenceCategory;

    iget-object v6, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 979
    :cond_d
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothRegexs:[Ljava/lang/String;

    .line 980
    const-string v1, "bluetooth.pan"

    const-string v6, "false"

    invoke-static {v1, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 981
    const-string v6, "true"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 982
    iput-boolean v3, p0, Lcom/android/lgesettings/TetherNetworkSettings;->bluetoothAvailable:Z

    .line 985
    :cond_e
    const-string v1, "US"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "TMO"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 986
    iput-boolean v4, p0, Lcom/android/lgesettings/TetherNetworkSettings;->bluetoothAvailable:Z

    .line 990
    :cond_f
    const-string v1, "TetherNetworkSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bluetoothAvailable "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v8, p0, Lcom/android/lgesettings/TetherNetworkSettings;->bluetoothAvailable:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    iget-boolean v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->bluetoothAvailable:Z

    if-nez v1, :cond_25

    .line 992
    iget-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mTetheringCategory:Landroid/preference/PreferenceCategory;

    iget-object v6, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1004
    :cond_10
    :goto_6
    const-string v1, "TetherNetworkSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " cm.isTetheringSupported()  "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/android/lgesettings/TetherNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1008
    :cond_11
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mTetheringCategory:Landroid/preference/PreferenceCategory;

    const-string v1, "tether_settings"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/TetherNetworkSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1009
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mTetheringCategory:Landroid/preference/PreferenceCategory;

    const-string v1, "mobile_hotspot_vzw"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1010
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mTetheringCategory:Landroid/preference/PreferenceCategory;

    const-string v1, "mobile_hotspot_vzw"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/TetherNetworkSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1056
    :cond_12
    :goto_7
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mNetworkSettingsCategory:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->b_isWifiOnly:Z

    if-nez v0, :cond_13

    .line 1057
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mNetworkSettingsCategory:Landroid/preference/PreferenceCategory;

    const-string v1, "mobile_network_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mMobileNetworkSettings:Landroid/preference/PreferenceScreen;

    .line 1059
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mMobileNetworkSettings:Landroid/preference/PreferenceScreen;

    const v1, 0x7f080aaf

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 1063
    :cond_13
    if-nez v7, :cond_14

    if-nez v2, :cond_14

    .line 1064
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f081034

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 1068
    :cond_14
    new-instance v0, Lcom/android/lgesettings/TetherNetworkSettings$19;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/TetherNetworkSettings$19;-><init>(Lcom/android/lgesettings/TetherNetworkSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 1083
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/TetherNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mPhone:Landroid/telephony/TelephonyManager;

    .line 1103
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mNetworkSettingsCategory:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_16

    .line 1104
    invoke-static {}, Lcom/android/lgesettings/Utils;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {}, Lcom/android/lgesettings/Utils;->isTripleSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1105
    :cond_15
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mNetworkSettingsCategory:Landroid/preference/PreferenceCategory;

    const-string v1, "mobile_network_settings"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/TetherNetworkSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1119
    :cond_16
    :goto_8
    const-string v0, "tethering_help"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/TetherNetworkSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mTetherHelp:Landroid/preference/PreferenceScreen;

    .line 1120
    iput v4, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mAvailableTetherNum:I

    .line 1121
    iget-boolean v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbAvailable:Z

    if-eqz v0, :cond_17

    .line 1122
    iget v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mAvailableTetherNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mAvailableTetherNum:I

    .line 1123
    iput v3, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mDefaultTether:I

    .line 1125
    :cond_17
    iget-boolean v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->bluetoothAvailable:Z

    if-eqz v0, :cond_18

    .line 1126
    iget v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mAvailableTetherNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mAvailableTetherNum:I

    .line 1127
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mDefaultTether:I

    .line 1129
    :cond_18
    iget-boolean v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mWifiAvailable:Z

    if-eqz v0, :cond_19

    .line 1130
    iget v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mAvailableTetherNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mAvailableTetherNum:I

    .line 1131
    iput v4, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mDefaultTether:I

    .line 1135
    :cond_19
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mWiFiCallingCategory:Landroid/preference/PreferenceCategory;

    const-string v1, "button_wifi_calling_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/lge/WifiCallCheckBox;

    iput-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mWifiCallingEnabler:Lcom/android/lgesettings/lge/WifiCallCheckBox;

    .line 1136
    invoke-static {}, Lcom/android/lgesettings/lge/WifiCallCheckBox;->isSupport()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mIsWifiCallingSupport:Z

    .line 1137
    iget-boolean v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mIsWifiCallingSupport:Z

    if-nez v0, :cond_1a

    .line 1138
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mWifiCallingEnabler:Lcom/android/lgesettings/lge/WifiCallCheckBox;

    if-eqz v0, :cond_1a

    .line 1139
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mWiFiCallingCategory:Landroid/preference/PreferenceCategory;

    const-string v1, "button_wifi_calling_key"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/TetherNetworkSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1140
    iput-object v5, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mWifiCallingEnabler:Lcom/android/lgesettings/lge/WifiCallCheckBox;

    .line 1145
    :cond_1a
    iget v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mAvailableTetherNum:I

    if-lez v0, :cond_1b

    invoke-virtual {p0}, Lcom/android/lgesettings/TetherNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1146
    :cond_1b
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mTetheringCategory:Landroid/preference/PreferenceCategory;

    const-string v1, "lg_category_summary"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1147
    iget-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mTetheringCategory:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mTetherHelp:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1148
    if-eqz v0, :cond_1c

    .line 1149
    iget-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mTetheringCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1154
    :cond_1c
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mWiFiCallingCategory:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mWiFiCallingCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-gtz v0, :cond_1d

    .line 1155
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mWiFiCallingCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1162
    :cond_1d
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mNetworkSettingsCategory:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mNetworkSettingsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-gtz v0, :cond_1e

    .line 1163
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mNetworkSettingsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1165
    :cond_1e
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mTetheringCategory:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mTetheringCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-gtz v0, :cond_1f

    .line 1166
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mTetheringCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1171
    :cond_1f
    const-string v0, "ro.lge.capp_lgevpn"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1172
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mNetworkSettingsCategory:Landroid/preference/PreferenceCategory;

    const-string v1, "vpn_settings"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/TetherNetworkSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1179
    :goto_9
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_20

    .line 1180
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1181
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/lgesettings/MDMSettingsAdapter;->addTetherPolicyChangeIntentFilter(Landroid/content/IntentFilter;)V

    .line 1182
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1185
    :cond_20
    return-void

    :cond_21
    move v0, v4

    .line 855
    goto/16 :goto_1

    .line 873
    :cond_22
    if-ne v2, v3, :cond_2

    .line 874
    iget-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mNetworkSettingsCategory:Landroid/preference/PreferenceCategory;

    const-string v8, "toggle_airplane"

    invoke-virtual {p0, v8}, Lcom/android/lgesettings/TetherNetworkSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    :cond_23
    move v0, v4

    .line 948
    goto/16 :goto_4

    :cond_24
    move v1, v4

    .line 964
    goto/16 :goto_5

    .line 994
    :cond_25
    iget-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 995
    iget-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    invoke-virtual {v1, v3}, Lcom/android/lgesettings/SettingsSwitchPreference;->setChecked(Z)V

    .line 999
    :goto_a
    iget-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    if-eqz v1, :cond_10

    .line 1000
    iget-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    invoke-virtual {v1, v4}, Lcom/android/lgesettings/SettingsSwitchPreference;->setDivider(Z)V

    .line 1001
    iget-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    invoke-virtual {v1, p0}, Lcom/android/lgesettings/SettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_6

    .line 997
    :cond_26
    iget-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    invoke-virtual {v1, v4}, Lcom/android/lgesettings/SettingsSwitchPreference;->setChecked(Z)V

    goto :goto_a

    .line 1014
    :cond_27
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1017
    const-string v0, "WirelessSettings"

    const-string v1, "remove Preference()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mTetheringCategory:Landroid/preference/PreferenceCategory;

    const-string v1, "tether_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1020
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mTetheringCategory:Landroid/preference/PreferenceCategory;

    const-string v1, "tether_settings"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/TetherNetworkSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_7

    .line 1032
    :cond_28
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mTetheringCategory:Landroid/preference/PreferenceCategory;

    const-string v1, "mobile_hotspot_vzw"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 1033
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mTetheringCategory:Landroid/preference/PreferenceCategory;

    const-string v1, "mobile_hotspot_vzw"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/TetherNetworkSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1036
    :cond_29
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mTetheringCategory:Landroid/preference/PreferenceCategory;

    const-string v1, "tether_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1038
    const-string v1, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v3, v1, :cond_2a

    .line 1040
    const v1, 0x7f0812f0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 1041
    const v1, 0x7f080dc0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 1051
    :goto_b
    iput-boolean v3, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mWifiAvailable:Z

    goto/16 :goto_7

    .line 1043
    :cond_2a
    const-string v1, "ATT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v3, v1, :cond_2b

    .line 1044
    const v1, 0x7f080ab4

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    goto :goto_b

    .line 1046
    :cond_2b
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v6, "US"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v6, "TMO"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1047
    const v1, 0x7f0812a8

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    goto :goto_b

    .line 1049
    :cond_2c
    const v1, 0x7f0804dc

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    goto :goto_b

    .line 1108
    :cond_2d
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mNetworkSettingsCategory:Landroid/preference/PreferenceCategory;

    const-string v1, "mobile_network_settings_dualsim"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/TetherNetworkSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_8

    .line 1174
    :cond_2e
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mNetworkSettingsCategory:Landroid/preference/PreferenceCategory;

    const-string v1, "vpn_selector"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/TetherNetworkSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_9

    :cond_2f
    move-object v1, v5

    goto/16 :goto_3

    :cond_30
    move v2, v4

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 1265
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onDestroy()V

    .line 1267
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1268
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1269
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mTimer:Ljava/util/Timer;

    .line 1273
    :cond_0
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_1

    .line 1275
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1281
    :cond_1
    :goto_0
    return-void

    .line 1276
    :catch_0
    move-exception v0

    .line 1277
    const-string v1, "MDM"

    const-string v2, "mLGMDMReceiver unregisterReceiver "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 1376
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPause()V

    .line 1379
    iget-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-static {v1, v2}, Lcom/android/lgesettings/Utils;->release_TelephonyListener(Landroid/telephony/TelephonyManager;Landroid/telephony/PhoneStateListener;)V

    .line 1382
    iget-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mAirplaneModeEnabler:Lcom/android/lgesettings/AirplaneModeEnabler;

    if-eqz v1, :cond_0

    .line 1383
    iget-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mAirplaneModeEnabler:Lcom/android/lgesettings/AirplaneModeEnabler;

    invoke-virtual {v1}, Lcom/android/lgesettings/AirplaneModeEnabler;->pause()V

    .line 1386
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mNsdEnabler:Lcom/android/lgesettings/NsdEnabler;

    if-eqz v1, :cond_1

    .line 1387
    iget-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mNsdEnabler:Lcom/android/lgesettings/NsdEnabler;

    invoke-virtual {v1}, Lcom/android/lgesettings/NsdEnabler;->pause()V

    .line 1389
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1390
    .local v0, activity:Landroid/app/Activity;
    iget-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1393
    iget-boolean v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mIsWifiCallingSupport:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mWifiCallingEnabler:Lcom/android/lgesettings/lge/WifiCallCheckBox;

    if-eqz v1, :cond_2

    .line 1394
    iget-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mWifiCallingEnabler:Lcom/android/lgesettings/lge/WifiCallCheckBox;

    invoke-virtual {v1}, Lcom/android/lgesettings/lge/WifiCallCheckBox;->pause()V

    .line 1397
    :cond_2
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 12
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 313
    const-string v9, "TetherNetworkSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onPreferenceChange preference = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v9, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    if-ne p1, v9, :cond_a

    .line 316
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v9

    const-string v10, "TMO"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v9

    const-string v10, "US"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 317
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    .line 318
    .local v8, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v9

    if-nez v9, :cond_0

    .line 319
    const/4 v9, 0x6

    invoke-direct {p0, v9}, Lcom/android/lgesettings/TetherNetworkSettings;->onCreateTetherAlertDialg(I)V

    .line 320
    iget-object v9, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/lgesettings/SettingsSwitchPreference;->setChecked(Z)V

    .line 321
    const/4 v9, 0x0

    .line 445
    .end local v8           #tm:Landroid/telephony/TelephonyManager;
    .end local p2
    :goto_0
    return v9

    .line 325
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v5, 0x1

    .line 328
    .local v5, newState:Z
    :goto_1
    sget-boolean v9, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v9, :cond_2

    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v9

    iget-object v10, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    invoke-virtual {v9, v10}, Lcom/android/lgesettings/MDMSettingsAdapter;->setUsbTetheringMenu(Landroid/preference/TwoStatePreference;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 330
    const/4 v9, 0x1

    goto :goto_0

    .line 325
    .end local v5           #newState:Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 333
    .restart local v5       #newState:Z
    :cond_2
    if-eqz v5, :cond_9

    .line 335
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v9

    const-string v10, "VZW"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 336
    const-string v9, "wifi"

    invoke-virtual {p0, v9}, Lcom/android/lgesettings/TetherNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 337
    .local v4, mWifiManager:Landroid/net/wifi/WifiManager;
    if-eqz v4, :cond_3

    .line 338
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    .line 339
    .local v3, isWifiEnabled:Z
    const/4 v9, 0x1

    if-ne v3, v9, :cond_3

    .line 340
    const-string v9, "Tethersettings"

    const-string v10, "WiFi is ON! "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v9, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mUsbTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/lgesettings/SettingsSwitchPreference;->setChecked(Z)V

    .line 342
    const/4 v9, 0x3

    invoke-direct {p0, v9}, Lcom/android/lgesettings/TetherNetworkSettings;->onCreateTetherAlertDialg(I)V

    .line 343
    const/4 v9, 0x1

    goto :goto_0

    .line 347
    .end local v3           #isWifiEnabled:Z
    :cond_3
    iget-boolean v9, p0, Lcom/android/lgesettings/TetherNetworkSettings;->PROVISION:Z

    if-eqz v9, :cond_5

    .line 348
    iget-boolean v9, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mIsProvisioned:Z

    if-eqz v9, :cond_4

    .line 350
    invoke-direct {p0, v5}, Lcom/android/lgesettings/TetherNetworkSettings;->setUsbTethering(Z)V

    .line 380
    .end local v4           #mWifiManager:Landroid/net/wifi/WifiManager;
    :goto_2
    const/4 v9, 0x1

    goto :goto_0

    .line 353
    .restart local v4       #mWifiManager:Landroid/net/wifi/WifiManager;
    :cond_4
    const/4 v9, 0x1

    iput v9, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mTetherChoice:I

    .line 354
    new-instance v6, Landroid/content/Intent;

    const-string v9, "com.lge.hotspot.provision_start"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 355
    .local v6, proIntent:Landroid/content/Intent;
    invoke-virtual {p0, v6}, Lcom/android/lgesettings/TetherNetworkSettings;->startActivity(Landroid/content/Intent;)V

    .line 356
    const/4 v9, 0x1

    goto :goto_0

    .line 360
    .end local v6           #proIntent:Landroid/content/Intent;
    :cond_5
    invoke-direct {p0, v5}, Lcom/android/lgesettings/TetherNetworkSettings;->setUsbTethering(Z)V

    goto :goto_2

    .line 364
    .end local v4           #mWifiManager:Landroid/net/wifi/WifiManager;
    :cond_6
    const-string v9, "MPCS_TMO"

    const-string v10, "ro.build.target_operator_ext"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 365
    invoke-direct {p0}, Lcom/android/lgesettings/TetherNetworkSettings;->getbFirstTimeUse()Z

    move-result v9

    if-nez v9, :cond_7

    .line 366
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 367
    .local v2, intent:Landroid/content/Intent;
    const-string v9, "Tethering_Type"

    const-string v10, "USB"

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    const-string v9, "com.lge.upsell"

    const-string v10, "com.lge.upsell.FirstTimeUse"

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    const/4 v9, 0x7

    invoke-virtual {p0, v2, v9}, Lcom/android/lgesettings/TetherNetworkSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 371
    .end local v2           #intent:Landroid/content/Intent;
    :cond_7
    invoke-direct {p0, v5}, Lcom/android/lgesettings/TetherNetworkSettings;->setUsbTethering(Z)V

    goto :goto_2

    .line 373
    :cond_8
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/lgesettings/TetherNetworkSettings;->startProvisioningIfNecessary(I)V

    goto :goto_2

    .line 377
    :cond_9
    invoke-direct {p0, v5}, Lcom/android/lgesettings/TetherNetworkSettings;->setUsbTethering(Z)V

    goto :goto_2

    .line 381
    .end local v5           #newState:Z
    .restart local p2
    :cond_a
    iget-object v9, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    if-ne p1, v9, :cond_14

    .line 382
    const-string v9, "CHRISWON"

    const-string v10, "mSwitchListener"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_b

    const/4 v0, 0x1

    .line 386
    .local v0, bluetoothTetherState:Z
    :goto_3
    sget-boolean v9, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v9, :cond_c

    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v9

    iget-object v10, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    invoke-virtual {v9, v10}, Lcom/android/lgesettings/MDMSettingsAdapter;->setBluetoothTetheringMenu(Landroid/preference/TwoStatePreference;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 388
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 384
    .end local v0           #bluetoothTetherState:Z
    :cond_b
    const/4 v0, 0x0

    goto :goto_3

    .line 392
    .restart local v0       #bluetoothTetherState:Z
    :cond_c
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v9

    const-string v10, "VZW"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 393
    if-eqz v0, :cond_f

    .line 394
    const-string v9, "wifi"

    invoke-virtual {p0, v9}, Lcom/android/lgesettings/TetherNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 395
    .restart local v4       #mWifiManager:Landroid/net/wifi/WifiManager;
    if-eqz v4, :cond_d

    .line 396
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    .line 397
    .restart local v3       #isWifiEnabled:Z
    const/4 v9, 0x1

    if-ne v3, v9, :cond_d

    .line 398
    const-string v9, "Tethersettings"

    const-string v10, "WiFi is ON! "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v9, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mBluetoothTether:Lcom/android/lgesettings/SettingsSwitchPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/lgesettings/SettingsSwitchPreference;->setChecked(Z)V

    .line 400
    const/4 v9, 0x4

    invoke-direct {p0, v9}, Lcom/android/lgesettings/TetherNetworkSettings;->onCreateTetherAlertDialg(I)V

    .line 401
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 405
    .end local v3           #isWifiEnabled:Z
    :cond_d
    iget-boolean v9, p0, Lcom/android/lgesettings/TetherNetworkSettings;->PROVISION:Z

    if-eqz v9, :cond_e

    .line 406
    invoke-direct {p0}, Lcom/android/lgesettings/TetherNetworkSettings;->checkProvision()V

    .line 442
    .end local v4           #mWifiManager:Landroid/net/wifi/WifiManager;
    :goto_4
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 408
    .restart local v4       #mWifiManager:Landroid/net/wifi/WifiManager;
    :cond_e
    invoke-direct {p0, v0}, Lcom/android/lgesettings/TetherNetworkSettings;->gotoNextStep(Z)V

    goto :goto_4

    .line 412
    .end local v4           #mWifiManager:Landroid/net/wifi/WifiManager;
    :cond_f
    invoke-direct {p0, v0}, Lcom/android/lgesettings/TetherNetworkSettings;->gotoNextStep(Z)V

    goto :goto_4

    .line 415
    :cond_10
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v9

    const-string v10, "KDDI"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 416
    if-eqz v0, :cond_12

    .line 417
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "TETHER_POPUP_KDDI"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 418
    .local v1, checkShow:I
    if-nez v1, :cond_11

    .line 419
    new-instance v7, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 420
    .local v7, send:Landroid/content/Intent;
    const-string v9, "com.android.lgesettings"

    const-string v10, "com.android.lgesettings.deviceinfo.TetherPopupKDDIActivity"

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 421
    const/16 v9, 0xa

    invoke-virtual {p0, v7, v9}, Lcom/android/lgesettings/TetherNetworkSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_4

    .line 423
    .end local v7           #send:Landroid/content/Intent;
    :cond_11
    const-string v9, "TetherNetworkSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "KDDI tethering TETHER_POPUP_KDDI is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-direct {p0, v0}, Lcom/android/lgesettings/TetherNetworkSettings;->gotoNextStep(Z)V

    goto :goto_4

    .line 427
    .end local v1           #checkShow:I
    :cond_12
    invoke-direct {p0, v0}, Lcom/android/lgesettings/TetherNetworkSettings;->gotoNextStep(Z)V

    goto :goto_4

    .line 439
    :cond_13
    invoke-direct {p0, v0}, Lcom/android/lgesettings/TetherNetworkSettings;->gotoNextStep(Z)V

    goto :goto_4

    .line 445
    .end local v0           #bluetoothTetherState:Z
    .restart local p2
    :cond_14
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 253
    iget-object v3, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_0

    const-string v3, "ril.cdma.inecmmode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 256
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v3, v4}, Lcom/android/lgesettings/TetherNetworkSettings;->startActivityForResult(Landroid/content/Intent;I)V

    move v3, v4

    .line 308
    :goto_0
    return v3

    .line 261
    :cond_0
    iget-object v3, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_1

    iget-boolean v3, p0, Lcom/android/lgesettings/TetherNetworkSettings;->csActive:Z

    if-ne v4, v3, :cond_1

    .line 264
    iget-object v3, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mAirplaneModeEnabler:Lcom/android/lgesettings/AirplaneModeEnabler;

    invoke-virtual {v3}, Lcom/android/lgesettings/AirplaneModeEnabler;->updatePreferences()V

    move v3, v4

    .line 265
    goto :goto_0

    .line 277
    :cond_1
    iget-object v3, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mTetherHelp:Landroid/preference/PreferenceScreen;

    if-ne p2, v3, :cond_6

    .line 278
    new-instance v2, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/lgesettings/TetherNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 279
    .local v2, p:Landroid/preference/Preference;
    const v3, 0x7f08087f

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 281
    iget v3, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mAvailableTetherNum:I

    if-le v3, v4, :cond_3

    .line 282
    const-class v3, Lcom/android/lgesettings/lge/TetherSettingsHelp;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceActivity;

    invoke-virtual {v3, v6, v2}, Landroid/preference/PreferenceActivity;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    :cond_2
    :goto_1
    move v3, v4

    .line 299
    goto :goto_0

    .line 286
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 287
    .local v0, intent:Landroid/content/Intent;
    iget v3, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mDefaultTether:I

    if-nez v3, :cond_4

    .line 288
    const-string v3, "com.android.lgesettings"

    const-string v5, "com.android.lgesettings.wifi.WifiHotspotHelp"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/TetherNetworkSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 291
    :cond_4
    iget v3, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mDefaultTether:I

    if-ne v3, v4, :cond_5

    .line 292
    const-string v3, "com.android.lgesettings"

    const-string v5, "com.android.lgesettings.lge.TetherSettingsHelpUsb"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/TetherNetworkSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 295
    :cond_5
    iget v3, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mDefaultTether:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    goto :goto_1

    .line 301
    .end local v0           #intent:Landroid/content/Intent;
    .end local v2           #p:Landroid/preference/Preference;
    :cond_6
    iget-object v3, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mWifiCallingEnabler:Lcom/android/lgesettings/lge/WifiCallCheckBox;

    if-ne p2, v3, :cond_7

    .line 302
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 303
    .local v1, mIntent:Landroid/content/Intent;
    const-string v3, "com.movial.wificall"

    const-string v4, "com.movial.wificall.Settings"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/TetherNetworkSettings;->startActivity(Landroid/content/Intent;)V

    .line 308
    .end local v1           #mIntent:Landroid/content/Intent;
    :cond_7
    invoke-super {p0, p1, p2}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1285
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onResume()V

    .line 1287
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-static {v0, v3}, Lcom/android/lgesettings/Utils;->set_TelephonyListener(Landroid/telephony/TelephonyManager;Landroid/telephony/PhoneStateListener;)V

    .line 1290
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "airplane_mode_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1293
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 1295
    const-string v0, "shared"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mMassStorageActive:Z

    .line 1297
    if-ne v3, v1, :cond_a

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/lgesettings/TetherNetworkSettings;->updateAirplaneModeState(Z)V

    .line 1298
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1300
    iget-boolean v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->bluetoothAvailable:Z

    if-eqz v0, :cond_0

    .line 1301
    invoke-direct {p0}, Lcom/android/lgesettings/TetherNetworkSettings;->updateState()V

    .line 1304
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_b

    .line 1305
    iput-boolean v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->csActive:Z

    .line 1310
    :goto_1
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mAirplaneModeEnabler:Lcom/android/lgesettings/AirplaneModeEnabler;

    if-eqz v0, :cond_1

    .line 1311
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mAirplaneModeEnabler:Lcom/android/lgesettings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/lgesettings/AirplaneModeEnabler;->resume()V

    .line 1314
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mNsdEnabler:Lcom/android/lgesettings/NsdEnabler;

    if-eqz v0, :cond_2

    .line 1315
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mNsdEnabler:Lcom/android/lgesettings/NsdEnabler;

    invoke-virtual {v0}, Lcom/android/lgesettings/NsdEnabler;->resume()V

    .line 1330
    :cond_2
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1331
    invoke-static {}, Lcom/android/lgesettings/Utils;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/lgesettings/Utils;->isTripleSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1332
    :cond_3
    if-eq v3, v1, :cond_4

    invoke-virtual {p0}, Lcom/android/lgesettings/TetherNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/Utils;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1333
    :cond_4
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mNetworkSettingsCategory:Landroid/preference/PreferenceCategory;

    const-string v3, "mobile_network_settings_dualsim"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1348
    :cond_5
    :goto_2
    iget-boolean v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mIsWifiCallingSupport:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mWifiCallingEnabler:Lcom/android/lgesettings/lge/WifiCallCheckBox;

    if-eqz v0, :cond_6

    .line 1349
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mWifiCallingEnabler:Lcom/android/lgesettings/lge/WifiCallCheckBox;

    invoke-virtual {v0}, Lcom/android/lgesettings/lge/WifiCallCheckBox;->resume()V

    .line 1353
    :cond_6
    invoke-direct {p0}, Lcom/android/lgesettings/TetherNetworkSettings;->updateState()V

    .line 1355
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/lgesetting/Config/Config;->isVZWAdminDisabled(Landroid/content/Context;)Z

    move-result v0

    if-ne v1, v0, :cond_8

    .line 1356
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1358
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1359
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mMobileNetworkSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1361
    :cond_7
    const-string v0, "TetherNetworkSettings"

    const-string v1, "onCreate :: mMobileNetworkSettings value = false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    :cond_8
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_9

    .line 1366
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mWifiTether:Lcom/android/lgesettings/WifiApSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/MDMSettingsAdapter;->setWifiApEnablerMenu(Landroid/preference/Preference;)Z

    .line 1367
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1368
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v0

    const-string v1, "mobile_hotspot_vzw"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/TetherNetworkSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/MDMSettingsAdapter;->setWifiApEnablerMenu(Landroid/preference/Preference;)Z

    .line 1372
    :cond_9
    return-void

    :cond_a
    move v0, v2

    .line 1297
    goto/16 :goto_0

    .line 1307
    :cond_b
    iput-boolean v2, p0, Lcom/android/lgesettings/TetherNetworkSettings;->csActive:Z

    goto/16 :goto_1

    .line 1335
    :cond_c
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mNetworkSettingsCategory:Landroid/preference/PreferenceCategory;

    const-string v3, "mobile_network_settings_dualsim"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 1339
    :cond_d
    if-eq v3, v1, :cond_e

    invoke-virtual {p0}, Lcom/android/lgesettings/TetherNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/Utils;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1340
    :cond_e
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v3, "mobile_network_settings"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_2

    .line 1342
    :cond_f
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v3, "mobile_network_settings"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_2
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 1189
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onStart()V

    .line 1191
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1194
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1195
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1198
    const-string v2, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1201
    const-string v2, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1203
    iget-boolean v2, p0, Lcom/android/lgesettings/TetherNetworkSettings;->PROVISION:Z

    if-eqz v2, :cond_0

    .line 1204
    const-string v2, "com.lge.hotspotprovision.STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1208
    :cond_0
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ATT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v2

    const-string v3, "US"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1209
    const-string v2, "com.android.lgesettings.EntitlementCheckService.BT_ENTITLEMENT_CHECK_OK"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1210
    const-string v2, "com.android.lgesettings.EntitlementCheckService.BT_ENTITLEMENT_CHECK_FAILURE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1213
    :cond_1
    iget-object v2, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1215
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1216
    const-string v2, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1217
    iget-object v2, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1219
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1220
    const-string v2, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1221
    const-string v2, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1222
    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1223
    iget-object v2, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1226
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "US"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TMO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1227
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1228
    const-string v2, "com.lge.upsell.Upsell.UPSELL_CHECK_USB_SUCCESS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1229
    const-string v2, "com.lge.upsell.Upsell.UPSELL_CHECK_USB_FAIL"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1230
    iget-object v2, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1235
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mWifiTether:Lcom/android/lgesettings/WifiApSwitchPreference;

    if-eqz v0, :cond_3

    .line 1236
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mWifiTether:Lcom/android/lgesettings/WifiApSwitchPreference;

    invoke-virtual {v0}, Lcom/android/lgesettings/WifiApSwitchPreference;->resume()V

    .line 1240
    :cond_3
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 1244
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onStop()V

    .line 1246
    iget-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mWifiTether:Lcom/android/lgesettings/WifiApSwitchPreference;

    if-eqz v1, :cond_0

    .line 1247
    iget-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mWifiTether:Lcom/android/lgesettings/WifiApSwitchPreference;

    invoke-virtual {v1}, Lcom/android/lgesettings/WifiApSwitchPreference;->pause()V

    .line 1251
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/TetherNetworkSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1254
    .local v0, activity:Landroid/app/Activity;
    iget-object v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1256
    iget-boolean v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->PROVISION:Z

    if-eqz v1, :cond_1

    .line 1257
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/lgesettings/TetherNetworkSettings;->mIsProvisioned:Z

    .line 1261
    :cond_1
    return-void
.end method
