.class public Lcom/android/lgesettings/WirelessSettings;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "WirelessSettings.java"


# static fields
.field private static btintent:Landroid/content/Intent;

.field private static mContext:Landroid/content/Context;


# instance fields
.field private PROVISION:Z

.field private bluetoothAvailable:Z

.field private btcm:Landroid/net/ConnectivityManager;

.field csActive:Z

.field isSecondaryUser:Z

.field private mAirplaneModeEnabler:Lcom/android/lgesettings/AirplaneModeEnabler;

.field private mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

.field private final mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

.field private mApnChangeObserver:Landroid/database/ContentObserver;

.field private final mBTTetheringReceiver:Landroid/content/BroadcastReceiver;

.field private mBluetoothEnableForTether:Z

.field private mBluetoothPan:Landroid/bluetooth/BluetoothPan;

.field private mBluetoothRegexs:[Ljava/lang/String;

.field private mBluetoothTether:Landroid/preference/CheckBoxPreference;

.field private mDataNetworkSetting:Landroid/preference/PreferenceScreen;

.field private mIsProvisioned:Z

.field mIsWifiCallingSupport:Z

.field private final mLGMDMReceiver:Landroid/content/BroadcastReceiver;

.field private mMiracast:Lcom/android/lgesettings/MiracastSwitchPreference;

.field private mMobileNetworkSettings:Landroid/preference/PreferenceScreen;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcEnabler:Lcom/android/lgesettings/nfc/LGNfcEnabler;

.field private mNsdEnabler:Lcom/android/lgesettings/NsdEnabler;

.field protected mPhone:Landroid/telephony/TelephonyManager;

.field protected mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field mSmartBeam:Landroid/preference/Preference;

.field mTetherAlertDialog:Landroid/app/AlertDialog;

.field private mWifiCallingEnabler:Lcom/android/lgesettings/lge/WifiCallCheckBox;

.field private nfc_setting:Landroid/preference/PreferenceScreen;

.field private tm:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    .line 144
    iput-boolean v1, p0, Lcom/android/lgesettings/WirelessSettings;->bluetoothAvailable:Z

    .line 148
    iput-boolean v1, p0, Lcom/android/lgesettings/WirelessSettings;->mIsProvisioned:Z

    .line 149
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/lgesettings/WirelessSettings;->bluetoothAvailable:Z

    if-eqz v0, :cond_0

    const-string v0, "ro.build.type"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "eng"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/lgesettings/WirelessSettings;->PROVISION:Z

    .line 160
    iput-boolean v1, p0, Lcom/android/lgesettings/WirelessSettings;->mIsWifiCallingSupport:Z

    .line 172
    iput-boolean v1, p0, Lcom/android/lgesettings/WirelessSettings;->csActive:Z

    .line 878
    new-instance v0, Lcom/android/lgesettings/WirelessSettings$2;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/WirelessSettings$2;-><init>(Lcom/android/lgesettings/WirelessSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 905
    new-instance v0, Lcom/android/lgesettings/WirelessSettings$3;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/WirelessSettings$3;-><init>(Lcom/android/lgesettings/WirelessSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->mBTTetheringReceiver:Landroid/content/BroadcastReceiver;

    .line 1421
    new-instance v0, Lcom/android/lgesettings/WirelessSettings$8;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/WirelessSettings$8;-><init>(Lcom/android/lgesettings/WirelessSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    .line 1436
    new-instance v0, Lcom/android/lgesettings/WirelessSettings$9;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/lgesettings/WirelessSettings$9;-><init>(Lcom/android/lgesettings/WirelessSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->mApnChangeObserver:Landroid/database/ContentObserver;

    .line 1449
    new-instance v0, Lcom/android/lgesettings/WirelessSettings$10;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/WirelessSettings$10;-><init>(Lcom/android/lgesettings/WirelessSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    return-void

    :cond_0
    move v0, v1

    .line 149
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/lgesettings/WirelessSettings;)Landroid/bluetooth/BluetoothPan;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/lgesettings/WirelessSettings;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/lgesettings/WirelessSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/lgesettings/WirelessSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/lgesettings/WirelessSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/lgesettings/WirelessSettings;->gotoNextStep(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/lgesettings/WirelessSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/lgesettings/WirelessSettings;->onBluetoothTether()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/lgesettings/WirelessSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/lgesettings/WirelessSettings;->updateAirplaneModeState(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/lgesettings/WirelessSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/WirelessSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/lgesettings/WirelessSettings;->updateState()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/lgesettings/WirelessSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/lgesettings/WirelessSettings;->unsendTetherStateChangedBroadcast()V

    return-void
.end method

.method static synthetic access$402(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    sput-object p0, Lcom/android/lgesettings/WirelessSettings;->btintent:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/lgesettings/WirelessSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/lgesettings/WirelessSettings;->bluetoothAvailable:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/lgesettings/WirelessSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2, p3}, Lcom/android/lgesettings/WirelessSettings;->updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/lgesettings/WirelessSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/lgesettings/WirelessSettings;->mBluetoothEnableForTether:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/lgesettings/WirelessSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/lgesettings/WirelessSettings;->mBluetoothEnableForTether:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/lgesettings/WirelessSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/lgesettings/WirelessSettings;->PROVISION:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/lgesettings/WirelessSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/lgesettings/WirelessSettings;->mIsProvisioned:Z

    return p1
.end method

.method private checkProvision()V
    .locals 2

    .prologue
    .line 1144
    iget-boolean v0, p0, Lcom/android/lgesettings/WirelessSettings;->mIsProvisioned:Z

    if-nez v0, :cond_0

    .line 1146
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.hotspot.provision_start"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1147
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/WirelessSettings;->startActivity(Landroid/content/Intent;)V

    .line 1151
    :goto_0
    return-void

    .line 1149
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/lgesettings/WirelessSettings;->gotoNextStep(Z)V

    goto :goto_0
.end method

.method private static findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "ifaces"
    .parameter "regexes"

    .prologue
    .line 982
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

    .line 983
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

    .line 984
    .local v7, regex:Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 989
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #iface:Ljava/lang/String;
    .end local v6           #len$:I
    .end local v7           #regex:Ljava/lang/String;
    :goto_2
    return-object v4

    .line 983
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v4       #iface:Ljava/lang/String;
    .restart local v6       #len$:I
    .restart local v7       #regex:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 982
    .end local v7           #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_0

    .line 989
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #iface:Ljava/lang/String;
    .end local v6           #len$:I
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private gotoNextStep(Z)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1269
    if-eqz p1, :cond_6

    .line 1272
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

    .line 1273
    invoke-virtual {p0}, Lcom/android/lgesettings/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f09009d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1278
    :goto_0
    array-length v3, v0

    if-eq v3, v5, :cond_3

    .line 1279
    const-string v0, "WirelessSettings"

    const-string v2, "Bluetooth tethering on"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    const-string v0, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v1, v0, :cond_2

    .line 1283
    const-string v0, "WirelessSettings"

    const-string v1, "DCM Alert Dialog Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    invoke-direct {p0}, Lcom/android/lgesettings/WirelessSettings;->onCreateBluetoothTetherAlertDialg()V

    .line 1344
    :cond_0
    :goto_1
    return-void

    .line 1275
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x1070025

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1286
    :cond_2
    invoke-direct {p0}, Lcom/android/lgesettings/WirelessSettings;->onBluetoothTether()V

    goto :goto_1

    .line 1292
    :cond_3
    const-string v3, "WirelessSettings"

    const-string v4, "Check to ENTITLEMENT for BT tethering"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1294
    aget-object v2, v0, v2

    aget-object v0, v0, v1

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1295
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

    .line 1296
    invoke-virtual {p0}, Lcom/android/lgesettings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "tether_entitlement_check_state"

    invoke-static {v0, v2, v1}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_4

    .line 1298
    const-string v0, "Tether_Type"

    const-string v1, "Bluetooth"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1299
    invoke-virtual {p0, v3, v5}, Lcom/android/lgesettings/WirelessSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 1302
    :cond_4
    const-string v0, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v1, v0, :cond_5

    .line 1303
    const-string v0, "WirelessSettings"

    const-string v1, "DCM Alert Dialog Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    invoke-direct {p0}, Lcom/android/lgesettings/WirelessSettings;->onCreateBluetoothTetherAlertDialg()V

    goto :goto_1

    .line 1306
    :cond_5
    invoke-direct {p0}, Lcom/android/lgesettings/WirelessSettings;->onBluetoothTether()V

    goto :goto_1

    .line 1318
    :cond_6
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1321
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v3

    .line 1322
    iget-object v4, p0, Lcom/android/lgesettings/WirelessSettings;->mBluetoothRegexs:[Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/lgesettings/WirelessSettings;->findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1323
    if-eqz v3, :cond_a

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    .line 1327
    :goto_2
    iget-object v1, p0, Lcom/android/lgesettings/WirelessSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    if-eqz v1, :cond_7

    .line 1329
    iget-object v1, p0, Lcom/android/lgesettings/WirelessSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 1332
    :cond_7
    iget-object v1, p0, Lcom/android/lgesettings/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_8

    .line 1333
    if-eqz v0, :cond_9

    .line 1334
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f080500

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 1340
    :cond_8
    :goto_3
    invoke-direct {p0}, Lcom/android/lgesettings/WirelessSettings;->unsendTetherStateChangedBroadcast()V

    goto/16 :goto_1

    .line 1336
    :cond_9
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f081037

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_3

    :cond_a
    move v0, v2

    goto :goto_2
.end method

.method public static isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v1, 0x1

    .line 263
    invoke-static {p0}, Lcom/android/lgesettings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 269
    :cond_0
    :goto_0
    return v1

    .line 267
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_toggleable_radios"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, toggleable:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onBluetoothTether()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1116
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1117
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 1118
    iput-boolean v3, p0, Lcom/android/lgesettings/WirelessSettings;->mBluetoothEnableForTether:Z

    .line 1119
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 1120
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 1121
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0800a1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 1122
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1131
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/lgesettings/WirelessSettings;->sendTetherStateChangedBroadcast()V

    .line 1133
    return-void

    .line 1125
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 1126
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 1127
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f080fe9

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0
.end method

.method private onCreateBluetoothTetherAlertDialg()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1155
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 1159
    invoke-virtual {p0}, Lcom/android/lgesettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    .line 1160
    const-string v0, "html/%y%z/tether_attention_%x.html"

    const-string v5, "%y"

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1161
    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v5, "JP"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1162
    const-string v0, "html/%y%z/tether_attention_%x.html"

    const-string v5, "%y"

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1163
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

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1164
    const-string v5, "%x"

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1173
    :goto_0
    const/4 v5, 0x0

    .line 1176
    :try_start_0
    invoke-virtual {v4, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1180
    if-eqz v0, :cond_7

    .line 1182
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    .line 1188
    :goto_1
    const-string v4, "file:///android_asset/html/%y%z/tether_attention_%x.html"

    const-string v5, "%y"

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1189
    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    const-string v5, "JP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1190
    const-string v4, "file:///android_asset/html/%y%z/tether_attention_%x.html"

    const-string v5, "%y"

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1191
    const-string v5, "%z"

    if-eqz v0, :cond_3

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

    .line 1192
    const-string v4, "%x"

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 1200
    :goto_3
    invoke-virtual {p0}, Lcom/android/lgesettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/lgesettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    const-string v4, "layout_inflater"

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1201
    const v4, 0x7f040164

    invoke-virtual {v0, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1202
    const v0, 0x7f0a030a

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 1205
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    .line 1206
    if-eqz v5, :cond_0

    .line 1207
    invoke-virtual {v5, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 1208
    invoke-virtual {v5, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 1210
    :cond_0
    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1212
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1213
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1214
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 1215
    const v1, 0x7f08031d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1216
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1217
    new-instance v1, Lcom/android/lgesettings/WirelessSettings$4;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/WirelessSettings$4;-><init>(Lcom/android/lgesettings/WirelessSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1234
    new-instance v1, Lcom/android/lgesettings/WirelessSettings$5;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/WirelessSettings$5;-><init>(Lcom/android/lgesettings/WirelessSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1245
    const v1, 0x7f08031f

    new-instance v2, Lcom/android/lgesettings/WirelessSettings$6;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/WirelessSettings$6;-><init>(Lcom/android/lgesettings/WirelessSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1254
    const v1, 0x7f08031e

    new-instance v2, Lcom/android/lgesettings/WirelessSettings$7;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/WirelessSettings$7;-><init>(Lcom/android/lgesettings/WirelessSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1261
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->mTetherAlertDialog:Landroid/app/AlertDialog;

    .line 1262
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->mTetherAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1263
    return-void

    .line 1167
    :cond_1
    const-string v0, "html/%y%z/tether_attention_%x.html"

    const-string v5, "%y"

    const-string v6, "en"

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1168
    const-string v5, "%z"

    const-string v6, "_us"

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1169
    const-string v5, "%x"

    const-string v6, "en"

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1183
    :catch_0
    move-exception v0

    move v0, v1

    .line 1184
    goto/16 :goto_1

    .line 1177
    :catch_1
    move-exception v0

    .line 1180
    if-eqz v8, :cond_6

    .line 1182
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move v0, v2

    .line 1184
    goto/16 :goto_1

    .line 1183
    :catch_2
    move-exception v0

    move v0, v2

    .line 1184
    goto/16 :goto_1

    .line 1180
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 1182
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1184
    :cond_2
    :goto_4
    throw v0

    .line 1191
    :cond_3
    const-string v0, ""

    goto/16 :goto_2

    .line 1195
    :cond_4
    const-string v3, "file:///android_asset/html/%y%z/tether_attention_%x.html"

    const-string v4, "%y"

    const-string v5, "en"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1196
    const-string v4, "%z"

    if-eqz v0, :cond_5

    const-string v0, "_us"

    :goto_5
    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1197
    const-string v3, "%x"

    const-string v4, "en"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto/16 :goto_3

    .line 1196
    :cond_5
    const-string v0, ""

    goto :goto_5

    .line 1183
    :catch_3
    move-exception v1

    goto :goto_4

    :cond_6
    move v0, v2

    goto/16 :goto_1

    :cond_7
    move v0, v1

    goto/16 :goto_1
.end method

.method private sendTetherStateChangedBroadcast()V
    .locals 5

    .prologue
    .line 1616
    const-string v0, "WirelessSettings"

    const-string v1, "[BTUI] sendTetherStateChangedBroadcast"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1618
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1619
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1620
    sget-object v3, Lcom/android/lgesettings/WirelessSettings;->btintent:Landroid/content/Intent;

    if-eqz v3, :cond_0

    .line 1622
    sget-object v0, Lcom/android/lgesettings/WirelessSettings;->btintent:Landroid/content/Intent;

    const-string v1, "availableArray"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1624
    sget-object v0, Lcom/android/lgesettings/WirelessSettings;->btintent:Landroid/content/Intent;

    const-string v1, "activeArray"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1626
    sget-object v0, Lcom/android/lgesettings/WirelessSettings;->btintent:Landroid/content/Intent;

    const-string v3, "erroredArray"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1630
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 1631
    const-string v1, "WirelessSettings"

    const-string v3, "[BTUI] sendTetherStateChangedBroadcast !!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1633
    const-string v3, "Bluetooth"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1634
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1635
    const/high16 v4, 0x2800

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1637
    const-string v4, "availableArray"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1639
    const-string v2, "activeArray"

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1641
    const-string v1, "erroredArray"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1644
    sget-object v0, Lcom/android/lgesettings/WirelessSettings;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1648
    :goto_0
    return-void

    .line 1646
    :cond_1
    const-string v0, "WirelessSettings"

    const-string v1, "[BTUI] sendTetherStateChangedBroadcast ??"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unsendTetherStateChangedBroadcast()V
    .locals 5

    .prologue
    .line 1651
    const-string v0, "WirelessSettings"

    const-string v1, "[BTUI] UnsendTetherStateChangedBroadcast"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    sget-object v0, Lcom/android/lgesettings/WirelessSettings;->btintent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 1653
    sget-object v0, Lcom/android/lgesettings/WirelessSettings;->btintent:Landroid/content/Intent;

    const-string v1, "availableArray"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1655
    sget-object v0, Lcom/android/lgesettings/WirelessSettings;->btintent:Landroid/content/Intent;

    const-string v1, "activeArray"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1657
    sget-object v1, Lcom/android/lgesettings/WirelessSettings;->btintent:Landroid/content/Intent;

    const-string v2, "erroredArray"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1661
    const-string v1, "Bluetooth"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1662
    const-string v0, "WirelessSettings"

    const-string v1, "[BTUI] unsendTetherStateChangedBroadcast !!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1664
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1665
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1666
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1667
    const/high16 v4, 0x2800

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1669
    const-string v4, "availableArray"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1671
    const-string v0, "activeArray"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1673
    const-string v0, "erroredArray"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1675
    sget-object v0, Lcom/android/lgesettings/WirelessSettings;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1680
    :cond_0
    :goto_0
    return-void

    .line 1677
    :cond_1
    const-string v0, "WirelessSettings"

    const-string v1, "[BTUI] unsendTetherStateChangedBroadcast ??"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateAirplaneModeState(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1354
    invoke-virtual {p0}, Lcom/android/lgesettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_toggleable_radios"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1356
    if-eqz p1, :cond_a

    .line 1358
    if-eqz v0, :cond_0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1359
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "vpn_settings"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1362
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    const-string v1, "nfc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1363
    :cond_3
    invoke-virtual {p0}, Lcom/android/lgesettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "toggle_nfc"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1364
    invoke-virtual {p0}, Lcom/android/lgesettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "android_beam_settings"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1365
    const-string v1, "WirelessSettings"

    const-string v2, "NFC native disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    :cond_4
    invoke-virtual {p0}, Lcom/android/lgesettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1370
    invoke-static {}, Lcom/android/lgesettings/Utils;->isMultiSimEnabled()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/android/lgesettings/Utils;->isTripleSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1372
    :cond_5
    invoke-virtual {p0}, Lcom/android/lgesettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "mobile_network_settings_dualsim"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1379
    :cond_6
    :goto_0
    const-string v1, "SKT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1380
    const-string v1, "data_network_settings"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1383
    :cond_7
    if-eqz v0, :cond_8

    const-string v1, "bluetooth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1419
    :cond_8
    :goto_1
    return-void

    .line 1376
    :cond_9
    invoke-virtual {p0}, Lcom/android/lgesettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "mobile_network_settings"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 1389
    :cond_a
    if-eqz v0, :cond_b

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 1390
    :cond_b
    invoke-virtual {p0}, Lcom/android/lgesettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "vpn_settings"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1393
    :cond_c
    iget-object v1, p0, Lcom/android/lgesettings/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v1, :cond_d

    if-eqz v0, :cond_e

    :cond_d
    const-string v1, "nfc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 1394
    :cond_e
    invoke-virtual {p0}, Lcom/android/lgesettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "toggle_nfc"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1395
    invoke-virtual {p0}, Lcom/android/lgesettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "android_beam_settings"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1396
    const-string v1, "WirelessSettings"

    const-string v2, "Native NFC settings enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    :cond_f
    invoke-virtual {p0}, Lcom/android/lgesettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {p0}, Lcom/android/lgesettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/lgesettings/Utils;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1401
    invoke-static {}, Lcom/android/lgesettings/Utils;->isMultiSimEnabled()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-static {}, Lcom/android/lgesettings/Utils;->isTripleSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1403
    :cond_10
    invoke-virtual {p0}, Lcom/android/lgesettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "mobile_network_settings_dualsim"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1410
    :cond_11
    :goto_2
    const-string v1, "SKT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1411
    const-string v1, "data_network_settings"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1413
    :cond_12
    if-eqz v0, :cond_8

    const-string v1, "bluetooth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_1

    .line 1407
    :cond_13
    invoke-virtual {p0}, Lcom/android/lgesettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "mobile_network_settings"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

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

    .line 1002
    .line 1007
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 1009
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v0

    iget-object v3, p0, Lcom/android/lgesettings/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Lcom/android/lgesettings/MDMSettingsAdapter;->setBluetoothTetheringMenu(Landroid/preference/TwoStatePreference;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1110
    :cond_0
    :goto_0
    return-void

    .line 1018
    :cond_1
    array-length v5, p2

    move v4, v2

    move v3, v2

    :goto_1
    if-ge v4, v5, :cond_4

    aget-object v6, p2, v4

    .line 1019
    iget-object v7, p0, Lcom/android/lgesettings/WirelessSettings;->mBluetoothRegexs:[Ljava/lang/String;

    array-length v8, v7

    move v0, v3

    move v3, v2

    :goto_2
    if-ge v3, v8, :cond_3

    aget-object v9, v7, v3

    .line 1020
    invoke-virtual {v6, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1021
    add-int/lit8 v0, v0, 0x1

    .line 1019
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1018
    :cond_3
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v0

    goto :goto_1

    .line 1028
    :cond_4
    array-length v6, p3

    move v5, v2

    move v4, v2

    :goto_3
    if-ge v5, v6, :cond_7

    aget-object v7, p3, v5

    .line 1029
    iget-object v8, p0, Lcom/android/lgesettings/WirelessSettings;->mBluetoothRegexs:[Ljava/lang/String;

    array-length v9, v8

    move v0, v4

    move v4, v2

    :goto_4
    if-ge v4, v9, :cond_6

    aget-object v10, v8, v4

    .line 1030
    invoke-virtual {v7, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    move v0, v1

    .line 1029
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1028
    :cond_6
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v0

    goto :goto_3

    .line 1036
    :cond_7
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1037
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    .line 1038
    const/16 v5, 0xd

    if-ne v0, v5, :cond_8

    .line 1039
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 1040
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1043
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0800a2

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 1046
    :cond_8
    const/16 v5, 0xb

    if-ne v0, v5, :cond_9

    .line 1047
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 1048
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1049
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0800a1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 1051
    :cond_9
    const/16 v5, 0xc

    if-ne v0, v5, :cond_11

    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    if-eqz v0, :cond_11

    .line 1052
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1055
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothPan;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 1056
    if-eqz v0, :cond_13

    .line 1057
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1062
    :goto_5
    iget-object v5, p0, Lcom/android/lgesettings/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_a

    .line 1063
    iget-object v5, p0, Lcom/android/lgesettings/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1064
    iget-object v5, p0, Lcom/android/lgesettings/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1067
    :cond_a
    if-gt v3, v1, :cond_b

    if-le v0, v1, :cond_d

    .line 1069
    :cond_b
    if-le v0, v1, :cond_c

    .line 1077
    :goto_6
    const v3, 0x7f080feb

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {p0, v3, v1}, Lcom/android/lgesettings/WirelessSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1080
    iget-object v1, p0, Lcom/android/lgesettings/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1089
    :goto_7
    invoke-direct {p0}, Lcom/android/lgesettings/WirelessSettings;->sendTetherStateChangedBroadcast()V

    goto/16 :goto_0

    .line 1073
    :cond_c
    if-le v3, v1, :cond_12

    move v0, v3

    .line 1075
    goto :goto_6

    .line 1081
    :cond_d
    if-ne v3, v1, :cond_e

    .line 1082
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f080fea

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_7

    .line 1083
    :cond_e
    if-eqz v4, :cond_f

    .line 1084
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f080500

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_7

    .line 1086
    :cond_f
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f080fe9

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_7

    .line 1092
    :cond_10
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 1093
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v11}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 1094
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1096
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1099
    invoke-direct {p0}, Lcom/android/lgesettings/WirelessSettings;->unsendTetherStateChangedBroadcast()V

    goto/16 :goto_0

    .line 1104
    :cond_11
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 1105
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1106
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1107
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v11}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto/16 :goto_0

    :cond_12
    move v0, v2

    goto :goto_6

    :cond_13
    move v0, v2

    goto :goto_5
.end method

.method private updateState()V
    .locals 4

    .prologue
    .line 993
    iget-object v3, p0, Lcom/android/lgesettings/WirelessSettings;->btcm:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 994
    .local v0, available:[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/lgesettings/WirelessSettings;->btcm:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v2

    .line 995
    .local v2, tethered:[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/lgesettings/WirelessSettings;->btcm:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v1

    .line 996
    .local v1, errored:[Ljava/lang/String;
    invoke-direct {p0, v0, v2, v1}, Lcom/android/lgesettings/WirelessSettings;->updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 997
    return-void
.end method


# virtual methods
.method public IsDLNAOptionMenu(Ljava/lang/String;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1578
    invoke-virtual {p0}, Lcom/android/lgesettings/WirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1582
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1588
    if-nez v2, :cond_0

    .line 1589
    const-string v1, "Settings"

    const-string v2, "[WirelessSettings]pmApplicationInfo is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    :goto_0
    return v0

    .line 1583
    :catch_0
    move-exception v1

    .line 1584
    const-string v1, "Settings"

    const-string v2, "[WirelessSettings]NameNotFoundException com.lge.smartshare"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1593
    :cond_0
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1594
    const-string v3, "Settings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[WirelessSettings] getApplicationLabel =    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    :try_start_1
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "DLNA"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1601
    const-string v2, "Settings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[WirelessSettings] EnableApplication ->   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1602
    const/4 v0, 0x1

    goto :goto_0

    .line 1604
    :catch_1
    move-exception v1

    .line 1605
    const-string v1, "Settings"

    const-string v2, "[WirelessSettings]Exception IsDLNAOptionMenu Disable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1608
    :cond_1
    const-string v1, "Settings"

    const-string v2, "[WirelessSettings]IsDLNAOptionMenu Disable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public appIsEnabled()Z
    .locals 3

    .prologue
    .line 1507
    invoke-virtual {p0}, Lcom/android/lgesettings/WirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1511
    :try_start_0
    const-string v1, "com.lge.wireless_storage"

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1515
    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    :goto_0
    return v0

    .line 1512
    :catch_0
    move-exception v0

    .line 1513
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public confirmDialog()V
    .locals 3

    .prologue
    .line 1480
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080bfa

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/WirelessSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08059d

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/WirelessSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/android/lgesettings/WirelessSettings$12;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/WirelessSettings$12;-><init>(Lcom/android/lgesettings/WirelessSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08059e

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/WirelessSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/android/lgesettings/WirelessSettings$11;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/WirelessSettings$11;-><init>(Lcom/android/lgesettings/WirelessSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080cbb

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/WirelessSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1502
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1503
    return-void
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 1350
    const v0, 0x7f080883

    return v0
.end method

.method public isInstalledWiFlus(Landroid/content/Context;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1522
    const-string v1, "WirelessSettings"

    const-string v2, "isInstalledWiFlus start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1528
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "itectokyo.wiflus.service"

    const-string v4, "itectokyo.wiflus.ui.wiflusapp.SettingActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1532
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 1533
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 1534
    const/4 v0, 0x1

    .line 1540
    :cond_0
    :goto_0
    const-string v1, "WirelessSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isInstalledWiFlus end result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    return v0

    .line 1536
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 848
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 849
    const-string v0, "exit_ecm_result"

    invoke-virtual {p3, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 852
    invoke-virtual {p0}, Lcom/android/lgesettings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "settings_style"

    invoke-static {v1, v2, v3}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 856
    iget-object v1, p0, Lcom/android/lgesettings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/lgesettings/AirplaneModeEnabler;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v2, p0, Lcom/android/lgesettings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/lgesettings/AirplaneModeEnabler;->setAirplaneModeInECM(ZZ)V

    .line 862
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 863
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 864
    const-string v0, "Tether_Type"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Bluetooth"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 865
    invoke-direct {p0}, Lcom/android/lgesettings/WirelessSettings;->onBluetoothTether()V

    .line 875
    :cond_1
    :goto_0
    return-void

    .line 868
    :cond_2
    const-string v0, "WirelessSettings"

    const-string v1, "ENTITLEMENT check fail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 870
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 30
    .parameter "savedInstanceState"

    .prologue
    .line 274
    invoke-super/range {p0 .. p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 275
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string v28, "airplane_mode_on"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 277
    .local v10, isAirplaneMode:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/WirelessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string v28, "settings_style"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/lgesettings/Utils;->supportEasySettings(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_1d

    const/16 v17, 0x1

    .line 280
    .local v17, nSettingStyle:I
    :goto_0
    const v27, 0x7f060098

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/WirelessSettings;->addPreferencesFromResource(I)V

    .line 281
    const-string v27, "ro.lge.mtk_dualsim"

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 282
    .local v16, mtk_dual:Z
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v27

    if-eqz v27, :cond_1e

    const/16 v27, 0x1

    :goto_1
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/lgesettings/WirelessSettings;->isSecondaryUser:Z

    .line 284
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 286
    .local v6, activity:Landroid/app/Activity;
    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    sput-object v27, Lcom/android/lgesettings/WirelessSettings;->mContext:Landroid/content/Context;

    .line 288
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/WirelessSettings;->setHasOptionsMenu(Z)V

    .line 291
    invoke-static {v6}, Lcom/android/lgesettings/Utils;->supportEasySettings(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_0

    .line 292
    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v27

    const v28, 0x7f020344

    invoke-virtual/range {v27 .. v28}, Landroid/app/ActionBar;->setIcon(I)V

    .line 293
    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v27

    const v28, 0x7f0809f4

    invoke-virtual/range {v27 .. v28}, Landroid/app/ActionBar;->setTitle(I)V

    .line 296
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v7

    .line 298
    .local v7, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v7, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v27

    if-nez v27, :cond_1

    .line 299
    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/WirelessSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-object/from16 v28, v0

    const/16 v29, 0x5

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v7, v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 303
    :cond_1
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v10, v0, :cond_1f

    const/16 v27, 0x1

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/lgesettings/WirelessSettings;->updateAirplaneModeState(Z)V

    .line 304
    const-string v27, "toggle_airplane"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    check-cast v27, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    .line 305
    const-string v27, "toggle_nfc"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    .line 308
    .local v18, nfc:Landroid/preference/Preference;
    sget-boolean v27, Lcom/lge/config/ConfigBuildFlags;->CAPP_NFS:Z

    if-eqz v27, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/lgesettings/WirelessSettings;->isSecondaryUser:Z

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_3

    .line 309
    :cond_2
    const-string v27, "network_storage_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    if-eqz v27, :cond_3

    .line 310
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    const-string v28, "network_storage_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 316
    :cond_3
    const/16 v27, 0x1

    move/from16 v0, v16

    move/from16 v1, v27

    if-ne v0, v1, :cond_6

    .line 317
    const-string v27, "WirelessSettings"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "jisu.kim MTK Dual: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const-string v27, "BR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const-string v27, "vee5ds"

    const-string v28, "ro.product.device"

    invoke-static/range {v28 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_5

    :cond_4
    const-string v27, "CIS"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_6

    const-string v27, "vee7ds"

    const-string v28, "ro.product.device"

    invoke-static/range {v28 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_6

    .line 320
    :cond_5
    const-string v27, "WirelessSettings"

    const-string v28, "jisu.kim vee5ds"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 325
    :cond_6
    const-string v27, "android_beam_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    .line 326
    .local v8, androidBeam:Landroid/preference/Preference;
    const-string v27, "nfc_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    .line 327
    .local v19, nfc_settings:Landroid/preference/Preference;
    const-string v27, "sprint_manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    .line 328
    .local v24, sprint_manager:Landroid/preference/Preference;
    const-string v27, "toggle_nsd"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/CheckBoxPreference;

    .line 330
    .local v20, nsd:Landroid/preference/CheckBoxPreference;
    const-string v27, "wifi_p2p_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v26

    check-cast v26, Landroid/preference/PreferenceScreen;

    .line 333
    .local v26, wdPref:Landroid/preference/PreferenceScreen;
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    const-string v28, "wifi_p2p_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 338
    const-string v27, "enable_bluetooth_tethering"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    check-cast v27, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    .line 341
    const-string v27, "smart_share_beam"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/WirelessSettings;->mSmartBeam:Landroid/preference/Preference;

    .line 343
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/WirelessSettings;->isInstalledWiFlus(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_20

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/WirelessSettings;->mSmartBeam:Landroid/preference/Preference;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 349
    :goto_3
    if-nez v17, :cond_22

    .line 351
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->supportAirplaneListMenu()Z

    move-result v27

    if-eqz v27, :cond_21

    .line 352
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    const-string v28, "toggle_airplane"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 363
    :cond_7
    :goto_4
    invoke-static {v6}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    move-object/from16 v27, v0

    if-nez v27, :cond_23

    .line 365
    const-string v27, "WirelessSettings"

    const-string v28, "This device doesn\'t support NFC"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 367
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 368
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 369
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 370
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/WirelessSettings;->mNfcEnabler:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    .line 402
    .end local v8           #androidBeam:Landroid/preference/Preference;
    .end local v18           #nfc:Landroid/preference/Preference;
    :cond_8
    :goto_5
    if-eqz v20, :cond_9

    .line 403
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 407
    :cond_9
    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string v28, "airplane_mode_toggleable_radios"

    invoke-static/range {v27 .. v28}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 410
    .local v25, toggleable:Ljava/lang/String;
    const-string v27, "LGU"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_a

    .line 411
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    const-string v28, "vpn_settings"

    invoke-virtual/range {v27 .. v28}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    const v28, 0x7f080aad

    invoke-virtual/range {v27 .. v28}, Landroid/preference/Preference;->setTitle(I)V

    .line 416
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/lgesettings/WirelessSettings;->isSecondaryUser:Z

    move/from16 v27, v0

    if-nez v27, :cond_27

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x111003f

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v27

    if-eqz v27, :cond_27

    const/4 v12, 0x1

    .line 418
    .local v12, isWimaxEnabled:Z
    :goto_6
    if-nez v12, :cond_b

    .line 419
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v23

    .line 420
    .local v23, root:Landroid/preference/PreferenceScreen;
    const-string v27, "wimax_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    .line 421
    .local v22, ps:Landroid/preference/Preference;
    if-eqz v22, :cond_b

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 452
    .end local v22           #ps:Landroid/preference/Preference;
    .end local v23           #root:Landroid/preference/PreferenceScreen;
    :cond_b
    const-string v27, "bluetooth.pan"

    const-string v28, "false"

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 453
    .local v13, ispan:Ljava/lang/String;
    const-string v27, "true"

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_c

    .line 454
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/lgesettings/WirelessSettings;->bluetoothAvailable:Z

    .line 456
    :cond_c
    const-string v27, "Settings"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "[wirelessSettings] bluetoothAvailable="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/lgesettings/WirelessSettings;->bluetoothAvailable:Z

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/lgesettings/WirelessSettings;->bluetoothAvailable:Z

    move/from16 v27, v0

    if-eqz v27, :cond_e

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_f

    .line 459
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 477
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/lgesettings/WirelessSettings;->isSecondaryUser:Z

    move/from16 v27, v0

    if-nez v27, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_11

    .line 478
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    const-string v28, "mobile_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 479
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    const-string v28, "mobile_network_settings_dualsim"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 481
    :cond_11
    const-string v27, "WirelessSettings"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "isSecondaryUser="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/lgesettings/WirelessSettings;->isSecondaryUser:Z

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/lgesettings/WirelessSettings;->isSecondaryUser:Z

    move/from16 v27, v0

    if-eqz v27, :cond_12

    .line 483
    const-string v27, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 484
    const-string v27, "vpn_selector"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 487
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/WirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v27

    const-string v28, "com.lge.software.wfdService"

    invoke-virtual/range {v27 .. v28}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_28

    .line 489
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    const-string v28, "wifi_screen_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 497
    :goto_7
    const-string v27, "data_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    check-cast v27, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/WirelessSettings;->mDataNetworkSetting:Landroid/preference/PreferenceScreen;

    .line 498
    const-string v27, "KT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 499
    .local v3, CARRIER_KT:Z
    const-string v27, "SKT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 500
    .local v4, CARRIER_SKT:Z
    if-eqz v3, :cond_29

    if-eqz v4, :cond_29

    const/4 v5, 0x1

    .line 502
    .local v5, SKT_KT:Z
    :goto_8
    if-nez v4, :cond_2a

    .line 503
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/WirelessSettings;->mDataNetworkSetting:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 519
    :goto_9
    const-string v27, "proxy_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    .line 520
    .local v15, mGlobalProxy:Landroid/preference/Preference;
    const-string v27, "device_policy"

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/admin/DevicePolicyManager;

    .line 523
    .local v14, mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 524
    invoke-virtual {v14}, Landroid/app/admin/DevicePolicyManager;->getGlobalProxyAdmin()Landroid/content/ComponentName;

    move-result-object v27

    if-nez v27, :cond_2e

    const/16 v27, 0x1

    :goto_a
    move/from16 v0, v27

    invoke-virtual {v15, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 528
    const-string v27, "connectivity"

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/net/ConnectivityManager;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/WirelessSettings;->btcm:Landroid/net/ConnectivityManager;

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/WirelessSettings;->btcm:Landroid/net/ConnectivityManager;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/WirelessSettings;->mBluetoothRegexs:[Ljava/lang/String;

    .line 534
    sget-object v27, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v28, "d1lv"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_13

    .line 535
    const-string v27, "usb_tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    .line 536
    .local v21, p:Landroid/preference/Preference;
    if-eqz v21, :cond_13

    .line 537
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 540
    .end local v21           #p:Landroid/preference/Preference;
    :cond_13
    const-string v27, "settings"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "[wirelessSettings] isSecondaryUser = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/lgesettings/WirelessSettings;->isSecondaryUser:Z

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const-string v27, "settings"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "[wirelessSettings] btcm.isTetheringSupported() = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/WirelessSettings;->btcm:Landroid/net/ConnectivityManager;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/lgesettings/WirelessSettings;->isSecondaryUser:Z

    move/from16 v27, v0

    if-nez v27, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/WirelessSettings;->btcm:Landroid/net/ConnectivityManager;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v27

    if-nez v27, :cond_2f

    .line 545
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    const-string v28, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 604
    :cond_15
    :goto_b
    const-string v27, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v27

    if-nez v27, :cond_16

    .line 605
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    const-string v28, "mobile_network_settings"

    invoke-virtual/range {v27 .. v28}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    check-cast v27, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/WirelessSettings;->mMobileNetworkSettings:Landroid/preference/PreferenceScreen;

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/WirelessSettings;->mMobileNetworkSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v27, v0

    const v28, 0x7f080aaf

    invoke-virtual/range {v27 .. v28}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 611
    :cond_16
    if-nez v10, :cond_17

    if-nez v17, :cond_17

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    move-object/from16 v27, v0

    const v28, 0x7f081034

    invoke-virtual/range {v27 .. v28}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 614
    :cond_17
    if-eqz v26, :cond_18

    .line 615
    const v27, 0x7f080ab0

    invoke-virtual/range {v26 .. v27}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 619
    :cond_18
    new-instance v27, Lcom/android/lgesettings/WirelessSettings$1;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/lgesettings/WirelessSettings$1;-><init>(Lcom/android/lgesettings/WirelessSettings;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/WirelessSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 634
    const-string v27, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/WirelessSettings;->mPhone:Landroid/telephony/TelephonyManager;

    .line 639
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v27

    if-nez v27, :cond_1a

    .line 640
    invoke-static {}, Lcom/android/lgesettings/Utils;->isMultiSimEnabled()Z

    move-result v27

    if-nez v27, :cond_19

    invoke-static {}, Lcom/android/lgesettings/Utils;->isTripleSimEnabled()Z

    move-result v27

    if-eqz v27, :cond_36

    .line 641
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    const-string v28, "mobile_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 649
    :cond_1a
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    const-string v28, "button_wifi_calling_key"

    invoke-virtual/range {v27 .. v28}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    check-cast v27, Lcom/android/lgesettings/lge/WifiCallCheckBox;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/WirelessSettings;->mWifiCallingEnabler:Lcom/android/lgesettings/lge/WifiCallCheckBox;

    .line 650
    invoke-static {}, Lcom/android/lgesettings/lge/WifiCallCheckBox;->isSupport()Z

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/lgesettings/WirelessSettings;->mIsWifiCallingSupport:Z

    .line 651
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/lgesettings/WirelessSettings;->mIsWifiCallingSupport:Z

    move/from16 v27, v0

    if-nez v27, :cond_1b

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/WirelessSettings;->mWifiCallingEnabler:Lcom/android/lgesettings/lge/WifiCallCheckBox;

    move-object/from16 v27, v0

    if-eqz v27, :cond_1b

    .line 653
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/WirelessSettings;->mWifiCallingEnabler:Lcom/android/lgesettings/lge/WifiCallCheckBox;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 654
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/WirelessSettings;->mWifiCallingEnabler:Lcom/android/lgesettings/lge/WifiCallCheckBox;

    .line 680
    :cond_1b
    const/4 v11, 0x0

    .line 681
    .local v11, isLGEVPN:Z
    const-string v27, "WirelessSettings"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "[onCreate] isLGEVPN"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const-string v27, "ro.lge.capp_lgevpn"

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_37

    .line 683
    const-string v27, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 690
    :goto_d
    sget-boolean v27, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v27, :cond_1c

    .line 691
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 692
    .local v9, filterLGMDM:Landroid/content/IntentFilter;
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Lcom/android/lgesettings/MDMSettingsAdapter;->addWirelessSettingsPolicyChangeIntentFilter(Landroid/content/IntentFilter;)V

    .line 693
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/WirelessSettings;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v9}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 696
    .end local v9           #filterLGMDM:Landroid/content/IntentFilter;
    :cond_1c
    return-void

    .line 277
    .end local v3           #CARRIER_KT:Z
    .end local v4           #CARRIER_SKT:Z
    .end local v5           #SKT_KT:Z
    .end local v6           #activity:Landroid/app/Activity;
    .end local v7           #adapter:Landroid/bluetooth/BluetoothAdapter;
    .end local v11           #isLGEVPN:Z
    .end local v12           #isWimaxEnabled:Z
    .end local v13           #ispan:Ljava/lang/String;
    .end local v14           #mDPM:Landroid/app/admin/DevicePolicyManager;
    .end local v15           #mGlobalProxy:Landroid/preference/Preference;
    .end local v16           #mtk_dual:Z
    .end local v17           #nSettingStyle:I
    .end local v19           #nfc_settings:Landroid/preference/Preference;
    .end local v20           #nsd:Landroid/preference/CheckBoxPreference;
    .end local v24           #sprint_manager:Landroid/preference/Preference;
    .end local v25           #toggleable:Ljava/lang/String;
    .end local v26           #wdPref:Landroid/preference/PreferenceScreen;
    :cond_1d
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 282
    .restart local v16       #mtk_dual:Z
    .restart local v17       #nSettingStyle:I
    :cond_1e
    const/16 v27, 0x0

    goto/16 :goto_1

    .line 303
    .restart local v6       #activity:Landroid/app/Activity;
    .restart local v7       #adapter:Landroid/bluetooth/BluetoothAdapter;
    :cond_1f
    const/16 v27, 0x0

    goto/16 :goto_2

    .line 346
    .restart local v8       #androidBeam:Landroid/preference/Preference;
    .restart local v18       #nfc:Landroid/preference/Preference;
    .restart local v19       #nfc_settings:Landroid/preference/Preference;
    .restart local v20       #nsd:Landroid/preference/CheckBoxPreference;
    .restart local v24       #sprint_manager:Landroid/preference/Preference;
    .restart local v26       #wdPref:Landroid/preference/PreferenceScreen;
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/WirelessSettings;->mSmartBeam:Landroid/preference/Preference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_3

    .line 355
    :cond_21
    new-instance v27, Lcom/android/lgesettings/AirplaneModeEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-direct {v0, v6, v1, v2}, Lcom/android/lgesettings/AirplaneModeEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/lgesettings/AirplaneModeEnabler;

    goto/16 :goto_4

    .line 358
    :cond_22
    const/16 v27, 0x1

    move/from16 v0, v17

    move/from16 v1, v27

    if-ne v0, v1, :cond_7

    .line 359
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    const-string v28, "toggle_airplane"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    .line 372
    :cond_23
    invoke-static {}, Lcom/android/lgesettings/Utils;->hasFeatureNfcLock()Z

    move-result v27

    if-eqz v27, :cond_25

    .line 373
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 374
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 376
    const-string v27, "nfc_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    check-cast v27, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/WirelessSettings;->nfc_setting:Landroid/preference/PreferenceScreen;

    .line 377
    invoke-static {}, Lcom/android/lgesettings/Utils;->hasFeatureNfcLockForKDDI()Z

    move-result v27

    if-eqz v27, :cond_24

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/WirelessSettings;->nfc_setting:Landroid/preference/PreferenceScreen;

    move-object/from16 v27, v0

    const v28, 0x7f08021d

    invoke-virtual/range {v27 .. v28}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 383
    :goto_e
    new-instance v27, Lcom/android/lgesettings/nfc/LGNfcEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/WirelessSettings;->nfc_setting:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-direct {v0, v6, v1}, Lcom/android/lgesettings/nfc/LGNfcEnabler;-><init>(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/WirelessSettings;->mNfcEnabler:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    .line 384
    const-string v27, "WirelessSettings"

    const-string v28, "hasFeatureNfcLock"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    .end local v8           #androidBeam:Landroid/preference/Preference;
    .end local v18           #nfc:Landroid/preference/Preference;
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/lgesettings/Utils;->hasSprintTouchV2(Landroid/content/Context;)Z

    move-result v27

    if-nez v27, :cond_8

    .line 397
    const-string v27, "WirelessSettings"

    const-string v28, "doesn\'t have sprint touch v2 or up version."

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_5

    .line 380
    .restart local v8       #androidBeam:Landroid/preference/Preference;
    .restart local v18       #nfc:Landroid/preference/Preference;
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/WirelessSettings;->nfc_setting:Landroid/preference/PreferenceScreen;

    move-object/from16 v27, v0

    const v28, 0x7f080238

    invoke-virtual/range {v27 .. v28}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/WirelessSettings;->nfc_setting:Landroid/preference/PreferenceScreen;

    move-object/from16 v27, v0

    const v28, 0x7f080239

    invoke-virtual/range {v27 .. v28}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_e

    .line 386
    :cond_25
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_26

    .line 387
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 388
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 389
    new-instance v27, Lcom/android/lgesettings/nfc/LGNfcEnabler;

    check-cast v18, Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    .end local v18           #nfc:Landroid/preference/Preference;
    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-direct {v0, v6, v1}, Lcom/android/lgesettings/nfc/LGNfcEnabler;-><init>(Landroid/content/Context;Lcom/android/lgesettings/nfc/NfcSwitchPreference;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/WirelessSettings;->mNfcEnabler:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    goto :goto_f

    .line 391
    .restart local v18       #nfc:Landroid/preference/Preference;
    :cond_26
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 392
    new-instance v27, Lcom/android/lgesettings/nfc/LGNfcEnabler;

    check-cast v18, Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    .end local v18           #nfc:Landroid/preference/Preference;
    check-cast v8, Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    .end local v8           #androidBeam:Landroid/preference/Preference;
    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-direct {v0, v6, v1, v8}, Lcom/android/lgesettings/nfc/LGNfcEnabler;-><init>(Landroid/content/Context;Lcom/android/lgesettings/nfc/NfcSwitchPreference;Lcom/android/lgesettings/nfc/NfcSwitchPreference;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/WirelessSettings;->mNfcEnabler:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    goto/16 :goto_f

    .line 416
    .restart local v25       #toggleable:Ljava/lang/String;
    :cond_27
    const/4 v12, 0x0

    goto/16 :goto_6

    .line 492
    .restart local v12       #isWimaxEnabled:Z
    .restart local v13       #ispan:Ljava/lang/String;
    :cond_28
    const-string v27, "wifi_screen_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    check-cast v27, Lcom/android/lgesettings/MiracastSwitchPreference;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/WirelessSettings;->mMiracast:Lcom/android/lgesettings/MiracastSwitchPreference;

    goto/16 :goto_7

    .line 500
    .restart local v3       #CARRIER_KT:Z
    .restart local v4       #CARRIER_SKT:Z
    :cond_29
    const/4 v5, 0x0

    goto/16 :goto_8

    .line 506
    .restart local v5       #SKT_KT:Z
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/WirelessSettings;->tm:Landroid/telephony/TelephonyManager;

    move-object/from16 v27, v0

    if-eqz v27, :cond_2c

    .line 507
    const-string v27, "wire"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "tm.isNetworkRoaming() = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/WirelessSettings;->tm:Landroid/telephony/TelephonyManager;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/WirelessSettings;->tm:Landroid/telephony/TelephonyManager;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v27

    if-nez v27, :cond_2b

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/lgesettings/Utils;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v27

    if-nez v27, :cond_2d

    .line 509
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/WirelessSettings;->mDataNetworkSetting:Landroid/preference/PreferenceScreen;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 514
    :cond_2c
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/WirelessSettings;->mDataNetworkSetting:Landroid/preference/PreferenceScreen;

    move-object/from16 v27, v0

    const v28, 0x7f080cc1

    invoke-virtual/range {v27 .. v28}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_9

    .line 511
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/WirelessSettings;->mDataNetworkSetting:Landroid/preference/PreferenceScreen;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_10

    .line 524
    .restart local v14       #mDPM:Landroid/app/admin/DevicePolicyManager;
    .restart local v15       #mGlobalProxy:Landroid/preference/Preference;
    :cond_2e
    const/16 v27, 0x0

    goto/16 :goto_a

    .line 549
    :cond_2f
    const-string v27, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_31

    .line 552
    const-string v27, "WirelessSettings"

    const-string v28, "remove Preference()"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const-string v27, "sprint_manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    if-eqz v27, :cond_30

    .line 555
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    const-string v28, "sprint_manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 557
    :cond_30
    const-string v27, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    if-eqz v27, :cond_15

    .line 558
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    const-string v28, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_b

    .line 565
    :cond_31
    const-string v27, "TMO"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_32

    sget-object v27, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v28, "u2"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_32

    .line 566
    const-string v27, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    .line 567
    .restart local v21       #p:Landroid/preference/Preference;
    if-eqz v21, :cond_15

    .line 568
    const v27, 0x7f0812c1

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 569
    const v27, 0x7f0812c2

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_b

    .line 572
    .end local v21           #p:Landroid/preference/Preference;
    :cond_32
    const/16 v27, 0x1

    const-string v28, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_33

    .line 573
    const-string v27, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    .line 575
    .restart local v21       #p:Landroid/preference/Preference;
    if-eqz v21, :cond_15

    .line 576
    const v27, 0x7f0812f0

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 577
    const v27, 0x7f080dc0

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_b

    .line 580
    .end local v21           #p:Landroid/preference/Preference;
    :cond_33
    const/16 v27, 0x1

    const-string v28, "LGU"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_34

    .line 581
    const-string v27, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    .line 583
    .restart local v21       #p:Landroid/preference/Preference;
    if-eqz v21, :cond_15

    .line 584
    const v27, 0x7f0804dc

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 585
    const v27, 0x7f080bde

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_b

    .line 588
    .end local v21           #p:Landroid/preference/Preference;
    :cond_34
    const/16 v27, 0x1

    const-string v28, "ATT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_35

    .line 589
    const-string v27, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    .line 591
    .restart local v21       #p:Landroid/preference/Preference;
    if-eqz v21, :cond_15

    .line 592
    const v27, 0x7f080ab4

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_b

    .line 595
    .end local v21           #p:Landroid/preference/Preference;
    :cond_35
    const-string v27, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    .line 596
    .restart local v21       #p:Landroid/preference/Preference;
    if-eqz v21, :cond_15

    .line 597
    const v27, 0x7f0804dc

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_b

    .line 643
    .end local v21           #p:Landroid/preference/Preference;
    :cond_36
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v27

    const-string v28, "mobile_network_settings_dualsim"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_c

    .line 685
    .restart local v11       #isLGEVPN:Z
    :cond_37
    const-string v27, "vpn_selector"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_d
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 1466
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onDestroy()V

    .line 1468
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_0

    .line 1470
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/WirelessSettings;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1476
    :cond_0
    :goto_0
    return-void

    .line 1471
    :catch_0
    move-exception v0

    .line 1472
    const-string v1, "MDM"

    const-string v2, "mLGMDMReceiver unregisterReceiver "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1561
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 1562
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1563
    const-string v2, "com.lge.smartshare.dlna.action.launcher"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1564
    invoke-virtual {p0}, Lcom/android/lgesettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1565
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/WirelessSettings;->startActivity(Landroid/content/Intent;)V

    .line 1573
    :goto_0
    return v0

    .line 1567
    :cond_0
    const/high16 v2, 0x1400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1568
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/WirelessSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1573
    :cond_1
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 808
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPause()V

    .line 811
    iget-object v1, p0, Lcom/android/lgesettings/WirelessSettings;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/lgesettings/WirelessSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-static {v1, v2}, Lcom/android/lgesettings/Utils;->release_TelephonyListener(Landroid/telephony/TelephonyManager;Landroid/telephony/PhoneStateListener;)V

    .line 814
    iget-object v1, p0, Lcom/android/lgesettings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/lgesettings/AirplaneModeEnabler;

    if-eqz v1, :cond_0

    .line 815
    iget-object v1, p0, Lcom/android/lgesettings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/lgesettings/AirplaneModeEnabler;

    invoke-virtual {v1}, Lcom/android/lgesettings/AirplaneModeEnabler;->pause()V

    .line 817
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/WirelessSettings;->mNfcEnabler:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    if-eqz v1, :cond_1

    .line 818
    iget-object v1, p0, Lcom/android/lgesettings/WirelessSettings;->mNfcEnabler:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    invoke-virtual {v1}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->pause()V

    .line 820
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/WirelessSettings;->mNsdEnabler:Lcom/android/lgesettings/NsdEnabler;

    if-eqz v1, :cond_2

    .line 821
    iget-object v1, p0, Lcom/android/lgesettings/WirelessSettings;->mNsdEnabler:Lcom/android/lgesettings/NsdEnabler;

    invoke-virtual {v1}, Lcom/android/lgesettings/NsdEnabler;->pause()V

    .line 823
    :cond_2
    iget-object v1, p0, Lcom/android/lgesettings/WirelessSettings;->mMiracast:Lcom/android/lgesettings/MiracastSwitchPreference;

    if-eqz v1, :cond_3

    .line 824
    iget-object v1, p0, Lcom/android/lgesettings/WirelessSettings;->mMiracast:Lcom/android/lgesettings/MiracastSwitchPreference;

    invoke-virtual {v1}, Lcom/android/lgesettings/MiracastSwitchPreference;->pause()V

    .line 826
    :cond_3
    invoke-virtual {p0}, Lcom/android/lgesettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 827
    .local v0, activity:Landroid/app/Activity;
    iget-object v1, p0, Lcom/android/lgesettings/WirelessSettings;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 829
    iget-object v1, p0, Lcom/android/lgesettings/WirelessSettings;->mBTTetheringReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 831
    iget-boolean v1, p0, Lcom/android/lgesettings/WirelessSettings;->PROVISION:Z

    if-eqz v1, :cond_4

    .line 832
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/lgesettings/WirelessSettings;->mIsProvisioned:Z

    .line 837
    :cond_4
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/WirelessSettings;->mApnChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 840
    iget-boolean v1, p0, Lcom/android/lgesettings/WirelessSettings;->mIsWifiCallingSupport:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/lgesettings/WirelessSettings;->mWifiCallingEnabler:Lcom/android/lgesettings/lge/WifiCallCheckBox;

    if-eqz v1, :cond_5

    .line 841
    iget-object v1, p0, Lcom/android/lgesettings/WirelessSettings;->mWifiCallingEnabler:Lcom/android/lgesettings/lge/WifiCallCheckBox;

    invoke-virtual {v1}, Lcom/android/lgesettings/lge/WifiCallCheckBox;->pause()V

    .line 844
    :cond_5
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x1

    .line 192
    const-string v5, "smart_share_beam"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 193
    const-string v4, "WirelessSettings"

    const-string v5, "smart_share_beam"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance v2, Landroid/content/Intent;

    const-string v4, "wiflus.intent.action.SETTING"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 195
    .local v2, intent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 196
    const/high16 v4, 0x2000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 197
    invoke-virtual {p0, v2}, Lcom/android/lgesettings/WirelessSettings;->startActivity(Landroid/content/Intent;)V

    .line 259
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    :cond_1
    :goto_1
    return v4

    .line 199
    :cond_2
    iget-object v5, p0, Lcom/android/lgesettings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_3

    const-string v5, "ril.cdma.inecmmode"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 202
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v5, v4}, Lcom/android/lgesettings/WirelessSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 207
    :cond_3
    iget-object v5, p0, Lcom/android/lgesettings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_4

    iget-boolean v5, p0, Lcom/android/lgesettings/WirelessSettings;->csActive:Z

    if-ne v4, v5, :cond_4

    .line 210
    iget-object v5, p0, Lcom/android/lgesettings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/lgesettings/AirplaneModeEnabler;

    invoke-virtual {v5}, Lcom/android/lgesettings/AirplaneModeEnabler;->updatePreferences()V

    goto :goto_1

    .line 213
    :cond_4
    iget-object v5, p0, Lcom/android/lgesettings/WirelessSettings;->mDataNetworkSetting:Landroid/preference/PreferenceScreen;

    if-ne p2, v5, :cond_5

    .line 214
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 215
    .local v3, mIntent:Landroid/content/Intent;
    const-string v4, "com.android.lgesettings"

    const-string v5, "com.android.lgesettings.lgesetting.wireless.DataNetworkModeSetting"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    const-string v4, "cancelable"

    const-string v5, "true"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    invoke-virtual {p0, v3}, Lcom/android/lgesettings/WirelessSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 220
    .end local v3           #mIntent:Landroid/content/Intent;
    :cond_5
    const-string v5, "network_storage_settings"

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    if-ne p2, v5, :cond_7

    .line 221
    invoke-virtual {p0}, Lcom/android/lgesettings/WirelessSettings;->appIsEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 222
    invoke-super {p0, p1, p2}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    goto :goto_1

    .line 224
    :cond_6
    invoke-virtual {p0}, Lcom/android/lgesettings/WirelessSettings;->confirmDialog()V

    goto :goto_0

    .line 226
    :cond_7
    iget-object v5, p0, Lcom/android/lgesettings/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_a

    .line 228
    sget-boolean v5, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v5, :cond_8

    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/android/lgesettings/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Lcom/android/lgesettings/MDMSettingsAdapter;->setBluetoothTetheringMenu(Landroid/preference/TwoStatePreference;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 233
    :cond_8
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 235
    .local v1, cm:Landroid/net/ConnectivityManager;
    iget-object v5, p0, Lcom/android/lgesettings/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 238
    .local v0, bluetoothTetherState:Z
    iget-boolean v5, p0, Lcom/android/lgesettings/WirelessSettings;->PROVISION:Z

    if-eqz v5, :cond_9

    if-ne v0, v4, :cond_9

    .line 239
    invoke-direct {p0}, Lcom/android/lgesettings/WirelessSettings;->checkProvision()V

    goto/16 :goto_0

    .line 241
    :cond_9
    invoke-direct {p0, v0}, Lcom/android/lgesettings/WirelessSettings;->gotoNextStep(Z)V

    goto/16 :goto_0

    .line 246
    .end local v0           #bluetoothTetherState:Z
    .end local v1           #cm:Landroid/net/ConnectivityManager;
    :cond_a
    iget-object v5, p0, Lcom/android/lgesettings/WirelessSettings;->mWifiCallingEnabler:Lcom/android/lgesettings/lge/WifiCallCheckBox;

    if-ne p2, v5, :cond_b

    .line 247
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 248
    .restart local v3       #mIntent:Landroid/content/Intent;
    const-string v4, "com.movial.wificall"

    const-string v5, "com.movial.wificall.Settings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    invoke-virtual {p0, v3}, Lcom/android/lgesettings/WirelessSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 253
    .end local v3           #mIntent:Landroid/content/Intent;
    :cond_b
    iget-object v5, p0, Lcom/android/lgesettings/WirelessSettings;->nfc_setting:Landroid/preference/PreferenceScreen;

    if-ne p2, v5, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    if-nez v5, :cond_0

    .line 255
    const-string v5, "LGNfcEnabler"

    const-string v6, "onPreferenceTreeClick - nfc Settings."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1549
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 1550
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 1552
    const-string v0, "com.lge.smartshare"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/WirelessSettings;->IsDLNAOptionMenu(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1553
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1554
    const v0, 0x7f080fba

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/WirelessSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1557
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 700
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onResume()V

    .line 703
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/lgesettings/WirelessSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-static {v0, v3}, Lcom/android/lgesettings/Utils;->set_TelephonyListener(Landroid/telephony/TelephonyManager;Landroid/telephony/PhoneStateListener;)V

    .line 707
    invoke-virtual {p0}, Lcom/android/lgesettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "airplane_mode_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 710
    invoke-virtual {p0}, Lcom/android/lgesettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 711
    if-ne v3, v1, :cond_d

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/lgesettings/WirelessSettings;->updateAirplaneModeState(Z)V

    .line 712
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 714
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 715
    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 718
    const-string v5, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 721
    const-string v5, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 723
    iget-boolean v5, p0, Lcom/android/lgesettings/WirelessSettings;->PROVISION:Z

    if-eqz v5, :cond_0

    .line 725
    const-string v5, "com.lge.hotspotprovision.STATE_CHANGED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 728
    :cond_0
    iget-object v5, p0, Lcom/android/lgesettings/WirelessSettings;->mBTTetheringReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 729
    iget-boolean v0, p0, Lcom/android/lgesettings/WirelessSettings;->bluetoothAvailable:Z

    if-eqz v0, :cond_1

    .line 730
    invoke-direct {p0}, Lcom/android/lgesettings/WirelessSettings;->updateState()V

    .line 733
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_e

    .line 734
    iput-boolean v1, p0, Lcom/android/lgesettings/WirelessSettings;->csActive:Z

    .line 739
    :goto_1
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/lgesettings/AirplaneModeEnabler;

    if-eqz v0, :cond_2

    .line 740
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/lgesettings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/lgesettings/AirplaneModeEnabler;->resume()V

    .line 742
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->mNfcEnabler:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    if-eqz v0, :cond_3

    .line 743
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->mNfcEnabler:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    invoke-virtual {v0}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->resume()V

    .line 745
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->mNsdEnabler:Lcom/android/lgesettings/NsdEnabler;

    if-eqz v0, :cond_4

    .line 746
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->mNsdEnabler:Lcom/android/lgesettings/NsdEnabler;

    invoke-virtual {v0}, Lcom/android/lgesettings/NsdEnabler;->resume()V

    .line 748
    :cond_4
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->mMiracast:Lcom/android/lgesettings/MiracastSwitchPreference;

    if-eqz v0, :cond_5

    .line 749
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->mMiracast:Lcom/android/lgesettings/MiracastSwitchPreference;

    invoke-virtual {v0}, Lcom/android/lgesettings/MiracastSwitchPreference;->resume()V

    .line 751
    :cond_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->tm:Landroid/telephony/TelephonyManager;

    .line 752
    const-string v0, "SKT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 753
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->tm:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_7

    .line 754
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/android/lgesettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/Utils;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 755
    :cond_6
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->mDataNetworkSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 765
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/android/lgesettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 766
    if-eq v3, v1, :cond_8

    invoke-virtual {p0}, Lcom/android/lgesettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/Utils;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 767
    :cond_8
    invoke-virtual {p0}, Lcom/android/lgesettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v3, "mobile_network_settings"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 774
    :cond_9
    :goto_3
    iget-boolean v0, p0, Lcom/android/lgesettings/WirelessSettings;->mIsWifiCallingSupport:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->mWifiCallingEnabler:Lcom/android/lgesettings/lge/WifiCallCheckBox;

    if-eqz v0, :cond_a

    .line 775
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->mWifiCallingEnabler:Lcom/android/lgesettings/lge/WifiCallCheckBox;

    invoke-virtual {v0}, Lcom/android/lgesettings/lge/WifiCallCheckBox;->resume()V

    .line 779
    :cond_a
    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/lgesettings/WirelessSettings;->mApnChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 783
    invoke-virtual {p0}, Lcom/android/lgesettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/lgesetting/Config/Config;->isVZWAdminDisabled(Landroid/content/Context;)Z

    move-result v0

    if-ne v1, v0, :cond_b

    .line 784
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 788
    :cond_b
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_c

    .line 789
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v0

    iget-object v3, p0, Lcom/android/lgesettings/WirelessSettings;->mDataNetworkSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Lcom/android/lgesettings/MDMSettingsAdapter;->setMobileNetworkMenu(Landroid/preference/PreferenceScreen;)V

    .line 791
    iget-boolean v0, p0, Lcom/android/lgesettings/WirelessSettings;->isSecondaryUser:Z

    if-nez v0, :cond_c

    .line 792
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v0

    const-string v3, "network_storage_settings"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/lgesettings/MDMSettingsAdapter;->setWirelessStorageMenu(Landroid/preference/Preference;)V

    .line 797
    :cond_c
    invoke-virtual {p0}, Lcom/android/lgesettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 799
    invoke-virtual {p0}, Lcom/android/lgesettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/WirelessSettings;->isInstalledWiFlus(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 800
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->mSmartBeam:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 804
    :goto_4
    return-void

    :cond_d
    move v0, v2

    .line 711
    goto/16 :goto_0

    .line 736
    :cond_e
    iput-boolean v2, p0, Lcom/android/lgesettings/WirelessSettings;->csActive:Z

    goto/16 :goto_1

    .line 757
    :cond_f
    if-eq v3, v1, :cond_10

    invoke-virtual {p0}, Lcom/android/lgesettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/Utils;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 758
    :cond_10
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->mDataNetworkSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_2

    .line 760
    :cond_11
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->mDataNetworkSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_2

    .line 769
    :cond_12
    invoke-virtual {p0}, Lcom/android/lgesettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v3, "mobile_network_settings"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_3

    .line 802
    :cond_13
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings;->mSmartBeam:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_4
.end method
