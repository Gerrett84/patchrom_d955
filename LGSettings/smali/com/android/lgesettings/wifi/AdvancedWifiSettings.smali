.class public Lcom/android/lgesettings/wifi/AdvancedWifiSettings;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "AdvancedWifiSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final LGE_SKT_CM:Z

.field private static mFilter:Landroid/content/IntentFilter;

.field private static final mLgeKtCm:Z

.field private static mReceiver:Landroid/content/BroadcastReceiver;

.field private static sValidRegulatoryChannelCounts:[I


# instance fields
.field OPERATOR_KT:Z

.field private c:Ljava/lang/Class;

.field private mAddIwlanNetwork:Landroid/preference/Preference;

.field private mIwlanDialog:Lcom/android/lgesettings/wifi/IwlanDialog;

.field private mIwlanEnabledCategory:Landroid/preference/Preference;

.field private mIwlanEnabler:Lcom/android/lgesettings/wifi/IwlanEnabler;

.field private mIwlanNetworks:Landroid/preference/Preference;

.field mLguphoSettings:Lcom/lguplus/ho_client_impl/Settings;

.field private mManageNetworks:Landroid/preference/PreferenceScreen;

.field private mSelectedIwlanNetwork:Lcom/android/lgesettings/wifi/IwlanNetwork;

.field private mSetupWrizadr_True:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field public wifiLess:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 120
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->sValidRegulatoryChannelCounts:[I

    .line 131
    const-string v0, "wifi.lge.kt.cm"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->mLgeKtCm:Z

    .line 136
    const-string v0, "wlan.lge.skt.cm"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SKT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    sput-boolean v1, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->LGE_SKT_CM:Z

    return-void

    :cond_0
    move v0, v2

    .line 131
    goto :goto_0

    :cond_1
    move v1, v2

    .line 136
    goto :goto_1

    .line 120
    :array_0
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    .line 109
    const-string v0, "KT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->OPERATOR_KT:Z

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->mSetupWrizadr_True:Z

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->c:Ljava/lang/Class;

    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/wifi/AdvancedWifiSettings;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->mManageNetworks:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/wifi/AdvancedWifiSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/wifi/AdvancedWifiSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/lgesettings/wifi/AdvancedWifiSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private initPreferences()V
    .locals 22

    .prologue
    .line 349
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v19

    const-string v20, "VZW"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 350
    const-string v19, "notify_open_networks"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    .line 359
    .local v8, notifyOpenNetworks:Landroid/preference/CheckBoxPreference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "wifi_networks_available_notification_on"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    const/16 v19, 0x1

    :goto_0
    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 364
    .end local v8           #notifyOpenNetworks:Landroid/preference/CheckBoxPreference;
    :cond_0
    const-string v19, "wifi_poor_network_detection"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    .line 366
    .local v9, poorNetworkDetection:Landroid/preference/CheckBoxPreference;
    if-eqz v9, :cond_1

    .line 367
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_11

    .line 368
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 382
    :cond_1
    :goto_1
    const-string v19, "wifi_internet_unavailable"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    .line 383
    .local v7, internetUnavailable:Landroid/preference/CheckBoxPreference;
    if-eqz v7, :cond_2

    .line 384
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v19

    const-string v20, "ATT"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_14

    .line 385
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 392
    :cond_2
    :goto_2
    const-string v19, "wifi_poor_network_detection_att"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    .line 393
    .local v10, poorNetworkDetection_att:Landroid/preference/CheckBoxPreference;
    if-eqz v10, :cond_3

    .line 394
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v19

    const-string v20, "ATT"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_17

    .line 395
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "wifi_watchdog_poor_network_test_enabled"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_16

    const/16 v19, 0x1

    :goto_3
    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 401
    :cond_3
    :goto_4
    const-string v19, "wifi_internet_availability_detection"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    .line 402
    .local v6, internetAvailabilityDetection:Landroid/preference/CheckBoxPreference;
    if-eqz v6, :cond_4

    .line 403
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v19

    const-string v20, "ATT"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_19

    .line 404
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "wifi_internet_availability_check"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_18

    const/16 v19, 0x1

    :goto_5
    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 411
    :cond_4
    :goto_6
    const-string v19, "suspend_optimizations"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/CheckBoxPreference;

    .line 413
    .local v15, suspendOptimizations:Landroid/preference/CheckBoxPreference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "wifi_suspend_optimizations_enabled"

    const/16 v21, 0x1

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1a

    const/16 v19, 0x1

    :goto_7
    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 416
    const-string v19, "frequency_band"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    .line 418
    .local v4, frequencyPref:Landroid/preference/ListPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiManager;->isDualBandSupported()Z

    move-result v19

    if-eqz v19, :cond_1c

    .line 419
    if-eqz v4, :cond_5

    .line 420
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiManager;->getFrequencyBand()I

    move-result v16

    .line 422
    .local v16, value:I
    const/16 v19, -0x1

    move/from16 v0, v16

    move/from16 v1, v19

    if-eq v0, v1, :cond_1b

    .line 423
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 436
    .end local v16           #value:I
    :cond_5
    :goto_8
    const-string v19, "Dual_band_AP_connection"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    .line 437
    .local v3, dulebandPref:Landroid/preference/ListPreference;
    const-string v19, "SKT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1f

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiManager;->isDualBandSupported()Z

    move-result v19

    if-eqz v19, :cond_1e

    .line 440
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 441
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "wifi_skt_dualband_connection"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 442
    .restart local v16       #value:I
    const-string v19, "AdvancedWifiSettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Dual band local saved value : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const/16 v19, -0x1

    move/from16 v0, v16

    move/from16 v1, v19

    if-eq v0, v1, :cond_1d

    .line 444
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 462
    .end local v16           #value:I
    :cond_6
    :goto_9
    const-string v19, "sleep_policy"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/ListPreference;

    .line 463
    .local v13, sleepPolicyPref:Landroid/preference/ListPreference;
    if-eqz v13, :cond_8

    .line 464
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 465
    const v19, 0x7f09003f

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 467
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 468
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "wifi_sleep_policy"

    const/16 v21, 0x2

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 471
    .restart local v16       #value:I
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    .line 472
    .local v14, stringValue:Ljava/lang/String;
    invoke-virtual {v13, v14}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 473
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V

    .line 477
    .end local v14           #stringValue:Ljava/lang/String;
    .end local v16           #value:I
    :cond_8
    const-string v19, "mwlan_permission_allowed_2"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    .line 478
    .local v11, securityPref:Landroid/preference/CheckBoxPreference;
    if-eqz v11, :cond_9

    .line 479
    const-string v19, "LGU"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_9

    .line 480
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 486
    :cond_9
    const-string v19, "iwlan_enabled_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->mIwlanEnabledCategory:Landroid/preference/Preference;

    .line 487
    const-string v19, "iwlan_networks"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->mIwlanNetworks:Landroid/preference/Preference;

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->mIwlanEnabledCategory:Landroid/preference/Preference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->mIwlanNetworks:Landroid/preference/Preference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->mAddIwlanNetwork:Landroid/preference/Preference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_a

    .line 491
    const-string v19, "SKT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_a

    .line 493
    const-string v19, "AdvancedWifiSettings"

    const-string v20, " SKT IWLAN Erase "

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->mIwlanEnabledCategory:Landroid/preference/Preference;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 495
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->mIwlanNetworks:Landroid/preference/Preference;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 496
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->mAddIwlanNetwork:Landroid/preference/Preference;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 503
    :cond_a
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v19

    const-string v20, "VZW"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 504
    const-string v19, "AdvancedWifiSettings"

    const-string v20, "onActivityCreated VZW"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const-string v19, "manage_networks"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->mManageNetworks:Landroid/preference/PreferenceScreen;

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->mManageNetworks:Landroid/preference/PreferenceScreen;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 512
    :cond_b
    sget-boolean v19, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->mLgeKtCm:Z

    if-eqz v19, :cond_d

    .line 513
    const-string v19, "AdvancedWifiSettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "OPERATOR_KT"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->OPERATOR_KT:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    const-string v19, "wifi_advanced_wifi_rssi_less"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    .line 515
    .local v17, wifiLess:Landroid/preference/CheckBoxPreference;
    const-string v19, "wifi_advanced_wifi_rssi_less_setting"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    .line 518
    .local v18, wifiLessSetting:Landroid/preference/Preference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "wifi_rssi_polling_threshold_db"

    const/16 v21, -0x55

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    const/16 v20, -0x64

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_20

    .line 519
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 524
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "wifi_rssi_polling_threshold_db"

    const/16 v21, -0x55

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    const/16 v20, -0x64

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_c

    .line 525
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "wifi_rssi_polling_threshold_db"

    const/16 v21, -0x55

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    const/16 v20, -0x55

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_21

    .line 526
    const-string v19, "persist.sys.advanced.wifiless"

    const-string v20, "wifi_advanced_wifi_rssi_less_general"

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    :cond_c
    :goto_b
    const-string v19, "persist.sys.advanced.wifiless"

    const-string v20, "wifi_advanced_wifi_rssi_less_general"

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "wifi_advanced_wifi_rssi_less_general"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_23

    .line 535
    const v19, 0x7f08167f

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setSummary(I)V

    .line 546
    .end local v17           #wifiLess:Landroid/preference/CheckBoxPreference;
    .end local v18           #wifiLessSetting:Landroid/preference/Preference;
    :cond_d
    :goto_c
    const-string v19, "AdvancedWifiSettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "mLgeKtCm : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-boolean v21, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->mLgeKtCm:Z

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    const-string v19, "wifi_auth_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 548
    .local v2, authInfoPref:Landroid/preference/Preference;
    if-eqz v2, :cond_e

    .line 550
    sget-boolean v19, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->mLgeKtCm:Z

    if-eqz v19, :cond_26

    .line 552
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getLgeEapAuthInfo()Ljava/lang/String;

    move-result-object v5

    .line 553
    .local v5, info:Ljava/lang/String;
    if-nez v5, :cond_25

    .line 554
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 567
    .end local v5           #info:Ljava/lang/String;
    :cond_e
    :goto_d
    const-string v19, "skt_except_the_scan_list"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    .line 568
    .local v12, sktExceptScanList:Landroid/preference/Preference;
    if-eqz v12, :cond_f

    .line 570
    const-string v19, "SKT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_f

    .line 571
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 576
    :cond_f
    return-void

    .line 359
    .end local v2           #authInfoPref:Landroid/preference/Preference;
    .end local v3           #dulebandPref:Landroid/preference/ListPreference;
    .end local v4           #frequencyPref:Landroid/preference/ListPreference;
    .end local v6           #internetAvailabilityDetection:Landroid/preference/CheckBoxPreference;
    .end local v7           #internetUnavailable:Landroid/preference/CheckBoxPreference;
    .end local v9           #poorNetworkDetection:Landroid/preference/CheckBoxPreference;
    .end local v10           #poorNetworkDetection_att:Landroid/preference/CheckBoxPreference;
    .end local v11           #securityPref:Landroid/preference/CheckBoxPreference;
    .end local v12           #sktExceptScanList:Landroid/preference/Preference;
    .end local v13           #sleepPolicyPref:Landroid/preference/ListPreference;
    .end local v15           #suspendOptimizations:Landroid/preference/CheckBoxPreference;
    .restart local v8       #notifyOpenNetworks:Landroid/preference/CheckBoxPreference;
    :cond_10
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 370
    .end local v8           #notifyOpenNetworks:Landroid/preference/CheckBoxPreference;
    .restart local v9       #poorNetworkDetection:Landroid/preference/CheckBoxPreference;
    :cond_11
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v19

    const-string v20, "ATT"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_12

    .line 371
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 373
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "wifi_watchdog_poor_network_test_enabled"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_13

    const/16 v19, 0x1

    :goto_e
    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_1

    :cond_13
    const/16 v19, 0x0

    goto :goto_e

    .line 387
    .restart local v7       #internetUnavailable:Landroid/preference/CheckBoxPreference;
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "wifi_internet_unavailable"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_15

    const/16 v19, 0x1

    :goto_f
    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_2

    :cond_15
    const/16 v19, 0x0

    goto :goto_f

    .line 395
    .restart local v10       #poorNetworkDetection_att:Landroid/preference/CheckBoxPreference;
    :cond_16
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 397
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    .line 404
    .restart local v6       #internetAvailabilityDetection:Landroid/preference/CheckBoxPreference;
    :cond_18
    const/16 v19, 0x0

    goto/16 :goto_5

    .line 406
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_6

    .line 413
    .restart local v15       #suspendOptimizations:Landroid/preference/CheckBoxPreference;
    :cond_1a
    const/16 v19, 0x0

    goto/16 :goto_7

    .line 425
    .restart local v4       #frequencyPref:Landroid/preference/ListPreference;
    .restart local v16       #value:I
    :cond_1b
    const-string v19, "AdvancedWifiSettings"

    const-string v20, "Failed to fetch frequency band"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 429
    .end local v16           #value:I
    :cond_1c
    if-eqz v4, :cond_5

    .line 431
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_8

    .line 446
    .restart local v3       #dulebandPref:Landroid/preference/ListPreference;
    .restart local v16       #value:I
    :cond_1d
    const-string v19, "AdvancedWifiSettings"

    const-string v20, "Failed to fetch Dual band"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 449
    .end local v16           #value:I
    :cond_1e
    if-eqz v3, :cond_6

    .line 451
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_9

    .line 456
    :cond_1f
    if-eqz v3, :cond_6

    .line 457
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_9

    .line 521
    .restart local v11       #securityPref:Landroid/preference/CheckBoxPreference;
    .restart local v13       #sleepPolicyPref:Landroid/preference/ListPreference;
    .restart local v17       #wifiLess:Landroid/preference/CheckBoxPreference;
    .restart local v18       #wifiLessSetting:Landroid/preference/Preference;
    :cond_20
    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_a

    .line 527
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "wifi_rssi_polling_threshold_db"

    const/16 v21, -0x55

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    const/16 v20, -0x4b

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_22

    .line 528
    const-string v19, "persist.sys.advanced.wifiless"

    const-string v20, "wifi_advanced_wifi_rssi_less_city"

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 529
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "wifi_rssi_polling_threshold_db"

    const/16 v21, -0x55

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    const/16 v20, -0x5a

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 530
    const-string v19, "persist.sys.advanced.wifiless"

    const-string v20, "wifi_advanced_wifi_rssi_less_home"

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 537
    :cond_23
    const-string v19, "persist.sys.advanced.wifiless"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "wifi_advanced_wifi_rssi_less_city"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_24

    .line 538
    const v19, 0x7f081680

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_c

    .line 540
    :cond_24
    const-string v19, "persist.sys.advanced.wifiless"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "wifi_advanced_wifi_rssi_less_home"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 541
    const v19, 0x7f081681

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_c

    .line 556
    .end local v17           #wifiLess:Landroid/preference/CheckBoxPreference;
    .end local v18           #wifiLessSetting:Landroid/preference/Preference;
    .restart local v2       #authInfoPref:Landroid/preference/Preference;
    .restart local v5       #info:Ljava/lang/String;
    :cond_25
    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 561
    .end local v5           #info:Ljava/lang/String;
    :cond_26
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_d
.end method

.method private refreshWifiInfo()V
    .locals 10

    .prologue
    const v8, 0x7f08045a

    .line 780
    iget-object v7, p0, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 782
    .local v4, wifiInfo:Landroid/net/wifi/WifiInfo;
    const-string v7, "mac_address"

    invoke-virtual {p0, v7}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 783
    .local v6, wifiMacAddressPref:Landroid/preference/Preference;
    if-nez v4, :cond_2

    const/4 v3, 0x0

    .line 784
    .local v3, macAddress:Ljava/lang/String;
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .end local v3           #macAddress:Ljava/lang/String;
    :goto_1
    invoke-virtual {v6, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 787
    const-string v7, "current_ip_address"

    invoke-virtual {p0, v7}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 788
    .local v5, wifiIpAddressPref:Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/lgesettings/Utils;->getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 789
    .local v2, ipAddress:Ljava/lang/String;
    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .end local v2           #ipAddress:Ljava/lang/String;
    :cond_0
    invoke-virtual {v5, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 794
    const-string v7, "AdvancedWifiSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mLgeKtCm : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->mLgeKtCm:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    const-string v7, "wifi_auth_info"

    invoke-virtual {p0, v7}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 796
    .local v0, authInfoPref:Landroid/preference/Preference;
    if-eqz v0, :cond_1

    .line 798
    sget-boolean v7, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->mLgeKtCm:Z

    if-eqz v7, :cond_5

    .line 799
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getLgeEapAuthInfo()Ljava/lang/String;

    move-result-object v1

    .line 800
    .local v1, info:Ljava/lang/String;
    if-nez v1, :cond_4

    .line 801
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 811
    .end local v1           #info:Ljava/lang/String;
    :cond_1
    :goto_2
    return-void

    .line 783
    .end local v0           #authInfoPref:Landroid/preference/Preference;
    .end local v5           #wifiIpAddressPref:Landroid/preference/Preference;
    :cond_2
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 784
    .restart local v3       #macAddress:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 803
    .end local v3           #macAddress:Ljava/lang/String;
    .restart local v0       #authInfoPref:Landroid/preference/Preference;
    .restart local v1       #info:Ljava/lang/String;
    .restart local v5       #wifiIpAddressPref:Landroid/preference/Preference;
    :cond_4
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 806
    .end local v1           #info:Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2
.end method

.method private updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 7
    .parameter "sleepPolicyPref"
    .parameter "value"

    .prologue
    .line 579
    if-eqz p2, :cond_3

    .line 580
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090040

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 582
    .local v3, values:[Ljava/lang/String;
    const-string v4, "VDF"

    invoke-static {v4}, Lcom/android/lgesettings/Utils;->istargetOperator(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "persit.sys.country"

    const-string v5, "notFound"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "NL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 583
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090041

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 586
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    const v2, 0x7f09003f

    .line 588
    .local v2, summaryArrayResId:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 589
    .local v1, summaries:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_3

    .line 590
    aget-object v4, v3, v0

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 591
    array-length v4, v1

    if-ge v0, v4, :cond_2

    .line 592
    aget-object v4, v1, v0

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 601
    .end local v0           #i:I
    .end local v1           #summaries:[Ljava/lang/String;
    .end local v2           #summaryArrayResId:I
    .end local v3           #values:[Ljava/lang/String;
    :goto_2
    return-void

    .line 586
    .restart local v3       #values:[Ljava/lang/String;
    :cond_1
    const v2, 0x7f09003e

    goto :goto_0

    .line 589
    .restart local v0       #i:I
    .restart local v1       #summaries:[Ljava/lang/String;
    .restart local v2       #summaryArrayResId:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 599
    .end local v0           #i:I
    .end local v1           #summaries:[Ljava/lang/String;
    .end local v2           #summaryArrayResId:I
    .end local v3           #values:[Ljava/lang/String;
    :cond_3
    const-string v4, ""

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 600
    const-string v4, "AdvancedWifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid sleep policy value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public getLgeEapAuthInfo()Ljava/lang/String;
    .locals 9

    .prologue
    .line 887
    const-string v0, "/data/misc/wifi/lge_eap_info"

    .line 889
    .local v0, LGE_EAP_AUTH_INFO:Ljava/lang/String;
    const/4 v5, 0x0

    .line 890
    .local v5, temp:Ljava/lang/String;
    const/4 v4, 0x0

    .line 891
    .local v4, line:Ljava/lang/String;
    const/4 v1, 0x0

    .line 895
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 896
    .end local v1           #br:Ljava/io/BufferedReader;
    .local v2, br:Ljava/io/BufferedReader;
    :try_start_1
    const-string v5, ""

    .line 897
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 898
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v5

    goto :goto_0

    .line 905
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 910
    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :goto_1
    return-object v5

    .line 906
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    :catch_0
    move-exception v6

    move-object v1, v2

    .line 908
    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    goto :goto_1

    .line 901
    :catch_1
    move-exception v3

    .line 902
    .local v3, e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string v6, "AdvancedWifiSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSmomo - error"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 905
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 906
    :catch_2
    move-exception v6

    goto :goto_1

    .line 904
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 905
    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 907
    :goto_4
    throw v6

    .line 906
    :catch_3
    move-exception v7

    goto :goto_4

    .line 904
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    goto :goto_3

    .line 901
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    :catch_4
    move-exception v3

    move-object v1, v2

    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 244
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 245
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 255
    sget-boolean v2, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->mLgeKtCm:Z

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VZW"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 256
    const-string v2, "AdvancedWifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OPERATOR_KT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->OPERATOR_KT:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const-string v2, "wifi_advanced_wifi_rssi_less_setting"

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 258
    .local v1, wifiLessSetting:Landroid/preference/Preference;
    const-string v2, "wifi_advanced_wifi_rssi_less"

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 259
    .local v0, wifiLess:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 260
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 262
    .end local v0           #wifiLess:Landroid/preference/CheckBoxPreference;
    .end local v1           #wifiLessSetting:Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 169
    :try_start_0
    const-string v3, "com.android.lgesettings.wifi.ManageNetworksFragment"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->c:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 178
    :goto_0
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "VZW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->c:Ljava/lang/Class;

    if-eqz v3, :cond_3

    .line 179
    const v3, 0x7f06007a

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->addPreferencesFromResource(I)V

    .line 184
    :goto_1
    invoke-static {}, Lcom/android/lgesettings/wifi/WifiSettings;->isSupportNSWO()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 185
    new-instance v3, Lcom/lguplus/ho_client_impl/Settings;

    invoke-direct {v3, p0}, Lcom/lguplus/ho_client_impl/Settings;-><init>(Landroid/preference/PreferenceFragment;)V

    iput-object v3, p0, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->mLguphoSettings:Lcom/lguplus/ho_client_impl/Settings;

    .line 189
    :cond_0
    const-string v3, "LGU"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 191
    :try_start_1
    const-string v3, "mwlan_permission_allowed_2"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 193
    .local v2, pref:Landroid/preference/CheckBoxPreference;
    if-eqz v2, :cond_1

    .line 194
    new-instance v3, Lcom/android/lgesettings/wifi/AdvancedWifiSettings$1;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings$1;-><init>(Lcom/android/lgesettings/wifi/AdvancedWifiSettings;)V

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 220
    .end local v2           #pref:Landroid/preference/CheckBoxPreference;
    :cond_1
    :goto_2
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "VZW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 221
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    sput-object v3, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    .line 222
    sget-object v3, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    new-instance v3, Lcom/android/lgesettings/wifi/AdvancedWifiSettings$2;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings$2;-><init>(Lcom/android/lgesettings/wifi/AdvancedWifiSettings;)V

    sput-object v3, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 240
    :cond_2
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, e1:Ljava/lang/ClassNotFoundException;
    const-string v3, "AdvancedWifiSettings"

    const-string v4, "Not D1Lv"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->c:Ljava/lang/Class;

    goto :goto_0

    .line 173
    .end local v0           #e1:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 174
    .local v1, e4:Ljava/lang/Exception;
    const-string v3, "AdvancedWifiSettings"

    const-string v4, "Exception"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 181
    .end local v1           #e4:Ljava/lang/Exception;
    :cond_3
    const v3, 0x7f060079

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->addPreferencesFromResource(I)V

    goto :goto_1

    .line 216
    :catch_2
    move-exception v3

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 314
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onDestroy()V

    .line 315
    invoke-static {}, Lcom/android/lgesettings/wifi/WifiSettings;->isSupportNSWO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->mLguphoSettings:Lcom/lguplus/ho_client_impl/Settings;

    invoke-virtual {v0}, Lcom/lguplus/ho_client_impl/Settings;->destroy()V

    .line 318
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 303
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPause()V

    .line 304
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 307
    :cond_0
    invoke-static {}, Lcom/android/lgesettings/wifi/WifiSettings;->isSupportNSWO()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->mLguphoSettings:Lcom/lguplus/ho_client_impl/Settings;

    invoke-virtual {v0}, Lcom/lguplus/ho_client_impl/Settings;->pause()V

    .line 310
    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const v9, 0x7f0802f1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 739
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 741
    .local v2, key:Ljava/lang/String;
    const-string v4, "frequency_band"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 743
    :try_start_0
    iget-object v7, p0, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v8, 0x1

    invoke-virtual {v7, v4, v8}, Landroid/net/wifi/WifiManager;->setFrequencyBand(IZ)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 751
    :cond_0
    const-string v4, "Dual_band_AP_connection"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 753
    :try_start_1
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "wifi_skt_dualband_connection"

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 754
    const-string v7, "AdvancedWifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dual band select value : "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 763
    :cond_1
    const-string v4, "sleep_policy"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 765
    :try_start_2
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 766
    .local v3, stringValue:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "wifi_sleep_policy"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v4, v7, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 768
    invoke-direct {p0, p1, v3}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .end local v3           #stringValue:Ljava/lang/String;
    :cond_2
    move v4, v6

    .line 776
    :goto_0
    return v4

    .line 744
    :catch_0
    move-exception v1

    .line 745
    .local v1, e:Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v9, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 747
    goto :goto_0

    .line 755
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 756
    .restart local v1       #e:Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v9, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 758
    goto :goto_0

    .line 769
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v1

    .line 770
    .restart local v1       #e:Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v6, 0x7f080299

    invoke-static {v4, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 772
    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "screen"
    .parameter "preference"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 605
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 607
    .local v2, key:Ljava/lang/String;
    const-string v3, "notify_open_networks"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 608
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wifi_networks_available_notification_on"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 734
    :cond_0
    :goto_1
    return v4

    :cond_1
    move v3, v5

    .line 608
    goto :goto_0

    .line 611
    .restart local p2
    :cond_2
    const-string v3, "wifi_poor_network_detection"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 612
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "wifi_watchdog_poor_network_test_enabled"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_3

    move v5, v4

    :cond_3
    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 615
    .restart local p2
    :cond_4
    const-string v3, "wifi_internet_unavailable"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 616
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "wifi_internet_unavailable"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_5

    move v5, v4

    :cond_5
    invoke-static {v3, v6, v5}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 620
    .restart local p2
    :cond_6
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v6, "ATT"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "wifi_poor_network_detection_att"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 621
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "wifi_watchdog_poor_network_test_enabled"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_7

    move v5, v4

    :cond_7
    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 624
    .restart local p2
    :cond_8
    const-string v3, "wifi_internet_availability_detection"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 625
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "wifi_internet_availability_check"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_9

    move v5, v4

    :cond_9
    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 629
    .restart local p2
    :cond_a
    const-string v3, "suspend_optimizations"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 630
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "wifi_suspend_optimizations_enabled"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_b

    move v5, v4

    :cond_b
    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 634
    .restart local p2
    :cond_c
    const-string v3, "wifi_advanced_wifi_rssi_less"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 635
    const-string v3, "wifi_advanced_wifi_rssi_less"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->wifiLess:Landroid/preference/CheckBoxPreference;

    .line 636
    const-string v3, "AdvancedWifiSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wifiLess.isChecked() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->wifiLess:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v3, p0, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->wifiLess:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_d

    .line 638
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "wifi_rssi_polling_threshold_db"

    const/16 v7, -0x64

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 669
    :goto_2
    iget-object v3, p0, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->wifiLess:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 640
    :cond_d
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f08167c

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v6, 0x1010355

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v6, 0x7f081688

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v6, 0x7f080106

    new-instance v7, Lcom/android/lgesettings/wifi/AdvancedWifiSettings$4;

    invoke-direct {v7, p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings$4;-><init>(Lcom/android/lgesettings/wifi/AdvancedWifiSettings;)V

    invoke-virtual {v3, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v6, 0x104000a

    new-instance v7, Lcom/android/lgesettings/wifi/AdvancedWifiSettings$3;

    invoke-direct {v7, p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings$3;-><init>(Lcom/android/lgesettings/wifi/AdvancedWifiSettings;)V

    invoke-virtual {v3, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 666
    .local v0, KT_Wifiless_warning_dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_2

    .line 671
    .end local v0           #KT_Wifiless_warning_dialog:Landroid/app/AlertDialog;
    :cond_e
    const-string v3, "wifi_advanced_wifi_rssi_less_setting"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 672
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 673
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.android.lgesettings"

    const-string v5, "com.android.lgesettings.wifi.WifiRissLess"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 674
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 677
    .end local v1           #intent:Landroid/content/Intent;
    :cond_f
    const-string v3, "add_other_iwlan"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 678
    const-string v3, "AdvancedWifiSettings"

    const-string v6, "KEY_ADD_IWLAN_NETWORK"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    instance-of v3, p2, Lcom/android/lgesettings/wifi/IwlanNetwork;

    if-eqz v3, :cond_10

    .line 680
    check-cast p2, Lcom/android/lgesettings/wifi/IwlanNetwork;

    .end local p2
    iput-object p2, p0, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->mSelectedIwlanNetwork:Lcom/android/lgesettings/wifi/IwlanNetwork;

    .line 681
    iget-object v3, p0, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->mSelectedIwlanNetwork:Lcom/android/lgesettings/wifi/IwlanNetwork;

    invoke-virtual {p0, v3, v5}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->showIwlanDialog(Lcom/android/lgesettings/wifi/IwlanNetwork;Z)V

    goto/16 :goto_1

    .line 682
    .restart local p2
    :cond_10
    iget-object v3, p0, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->mAddIwlanNetwork:Landroid/preference/Preference;

    if-ne p2, v3, :cond_11

    .line 683
    iput-object v7, p0, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->mSelectedIwlanNetwork:Lcom/android/lgesettings/wifi/IwlanNetwork;

    .line 684
    invoke-virtual {p0, v7, v4}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->showIwlanDialog(Lcom/android/lgesettings/wifi/IwlanNetwork;Z)V

    goto/16 :goto_1

    .line 686
    :cond_11
    invoke-super {p0, p1, p2}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 692
    :cond_12
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v5, "VZW"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    const-string v3, "manage_networks"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->c:Ljava/lang/Class;

    if-eqz v3, :cond_13

    .line 693
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_0

    .line 694
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 695
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "com.android.lgesettings"

    const-string v5, "com.android.lgesettings.Settings$ManageNetworksActivity"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 696
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 715
    .end local v1           #intent:Landroid/content/Intent;
    :cond_13
    const-string v3, "skt_except_the_scan_list"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 727
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 728
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "com.android.lgesettings"

    const-string v5, "com.android.lgesettings.wifi.ExceptScanListActivity"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 729
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 732
    .end local v1           #intent:Landroid/content/Intent;
    :cond_14
    invoke-super {p0, p1, p2}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 266
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onResume()V

    .line 276
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0802ee

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setTitle(I)V

    .line 277
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->initPreferences()V

    .line 278
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->refreshWifiInfo()V

    .line 279
    invoke-static {}, Lcom/android/lgesettings/wifi/WifiSettings;->isSupportNSWO()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 280
    iget-object v2, p0, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->mLguphoSettings:Lcom/lguplus/ho_client_impl/Settings;

    invoke-virtual {v2}, Lcom/lguplus/ho_client_impl/Settings;->sync()V

    .line 284
    :cond_0
    const-string v2, "LGU"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 286
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.lguplus.common.wificm.mwlan"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    const-string v3, "mwlan"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "permission_allowed_2"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 289
    .local v1, isAllowed:Z
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 290
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    const-string v2, "mwlan_permission_allowed_2"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 291
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 292
    const-string v2, "mwlan_permission_allowed_2"

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    .end local v0           #e:Landroid/content/SharedPreferences$Editor;
    .end local v1           #isAllowed:Z
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VZW"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 297
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget-object v3, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 299
    :cond_2
    return-void

    .line 293
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 323
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onStart()V

    .line 324
    const-string v1, "AdvancedWifiSettings"

    const-string v2, "onStart"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const-string v1, "add_other_iwlan"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->mAddIwlanNetwork:Landroid/preference/Preference;

    .line 326
    const-string v1, "SKT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    :try_start_0
    new-instance v1, Lcom/android/lgesettings/wifi/IwlanEnabler;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/wifi/IwlanEnabler;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->mIwlanEnabler:Lcom/android/lgesettings/wifi/IwlanEnabler;

    .line 330
    iget-object v1, p0, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->mIwlanEnabler:Lcom/android/lgesettings/wifi/IwlanEnabler;

    invoke-virtual {v1}, Lcom/android/lgesettings/wifi/IwlanEnabler;->onStart()V

    .line 331
    const-string v1, "AdvancedWifiSettings"

    const-string v2, "onStart 11 "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "AdvancedWifiSettings"

    const-string v2, "onStart exception "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 340
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onStop()V

    .line 341
    const-string v0, "AdvancedWifiSettings"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const-string v0, "SKT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->mIwlanEnabler:Lcom/android/lgesettings/wifi/IwlanEnabler;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/IwlanEnabler;->onStop()V

    .line 345
    :cond_0
    return-void
.end method

.method public showIwlanDialog(Lcom/android/lgesettings/wifi/IwlanNetwork;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 916
    const-string v0, "AdvancedWifiSettings"

    const-string v1, "showIwlanDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    iget-object v0, p0, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->mIwlanDialog:Lcom/android/lgesettings/wifi/IwlanDialog;

    if-eqz v0, :cond_0

    .line 918
    iget-object v0, p0, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->mIwlanDialog:Lcom/android/lgesettings/wifi/IwlanDialog;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/IwlanDialog;->dismiss()V

    .line 920
    :cond_0
    new-instance v0, Lcom/android/lgesettings/wifi/IwlanDialog;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2}, Lcom/android/lgesettings/wifi/IwlanDialog;-><init>(Landroid/content/Context;Lcom/android/lgesettings/wifi/IwlanNetwork;Z)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->mIwlanDialog:Lcom/android/lgesettings/wifi/IwlanDialog;

    .line 921
    iget-object v0, p0, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->mIwlanDialog:Lcom/android/lgesettings/wifi/IwlanDialog;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/IwlanDialog;->show()V

    .line 922
    return-void
.end method
