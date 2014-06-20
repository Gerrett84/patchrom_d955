.class public Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "DeviceInfoLgeBattery.java"


# instance fields
.field private mBatteryCondition:Landroid/preference/Preference;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:Landroid/preference/Preference;

.field private mBatteryStatus:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    .line 39
    new-instance v0, Lcom/android/lgesettings/lge/DeviceInfoLgeBattery$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeBattery$1;-><init>(Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;)V

    iput-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;->mBatteryLevel:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;->mBatteryStatus:Landroid/preference/Preference;

    return-object v0
.end method

.method private batteryCondition()V
    .locals 4

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "battery_condition"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 121
    .local v0, condition:I
    const-string v1, "battery_condition_dcm"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;->mBatteryCondition:Landroid/preference/Preference;

    .line 123
    packed-switch v0, :pswitch_data_0

    .line 140
    :goto_0
    return-void

    .line 126
    :pswitch_0
    iget-object v1, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;->mBatteryCondition:Landroid/preference/Preference;

    const v2, 0x7f0803ec

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 130
    :pswitch_1
    iget-object v1, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;->mBatteryCondition:Landroid/preference/Preference;

    const v2, 0x7f0803ed

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 134
    :pswitch_2
    iget-object v1, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;->mBatteryCondition:Landroid/preference/Preference;

    const v2, 0x7f0803ee

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 144
    .local v0, pref:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 147
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const v0, 0x7f06001e

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;->addPreferencesFromResource(I)V

    .line 75
    const-string v0, "battery_status"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;->mBatteryStatus:Landroid/preference/Preference;

    .line 76
    const-string v0, "battery_level"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;->mBatteryLevel:Landroid/preference/Preference;

    .line 78
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/Utils;->isEmbededBattery(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;->batteryCondition()V

    .line 80
    const-string v0, "battery_status"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 81
    const-string v0, "battery_level"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 82
    const-string v0, "battery_use"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    const-string v0, "battery_condition_dcm"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 91
    invoke-super {p0, p1, p2, p3}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 93
    .local v0, v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;->removeUnnecessaryPreference()V

    .line 94
    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 114
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPause()V

    .line 115
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 116
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 100
    invoke-super {p0, p1, p2}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 106
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onResume()V

    .line 107
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 109
    return-void
.end method

.method protected removeUnnecessaryPreference()V
    .locals 8

    .prologue
    .line 152
    const/16 v6, 0x30

    new-array v2, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "button_aboutphone_msim_status"

    aput-object v7, v2, v6

    const/4 v6, 0x1

    const-string v7, "number"

    aput-object v7, v2, v6

    const/4 v6, 0x2

    const-string v7, "min_number"

    aput-object v7, v2, v6

    const/4 v6, 0x3

    const-string v7, "prl_version"

    aput-object v7, v2, v6

    const/4 v6, 0x4

    const-string v7, "meid_number"

    aput-object v7, v2, v6

    const/4 v6, 0x5

    const-string v7, "imei"

    aput-object v7, v2, v6

    const/4 v6, 0x6

    const-string v7, "imei_sv"

    aput-object v7, v2, v6

    const/4 v6, 0x7

    const-string v7, "imei_svn"

    aput-object v7, v2, v6

    const/16 v6, 0x8

    const-string v7, "imei_svn_gsm"

    aput-object v7, v2, v6

    const/16 v6, 0x9

    const-string v7, "operator_name"

    aput-object v7, v2, v6

    const/16 v6, 0xa

    const-string v7, "signal_strength"

    aput-object v7, v2, v6

    const/16 v6, 0xb

    const-string v7, "network_type"

    aput-object v7, v2, v6

    const/16 v6, 0xc

    const-string v7, "service_state"

    aput-object v7, v2, v6

    const/16 v6, 0xd

    const-string v7, "roaming_state"

    aput-object v7, v2, v6

    const/16 v6, 0xe

    const-string v7, "data_state"

    aput-object v7, v2, v6

    const/16 v6, 0xf

    const-string v7, "wimax_mac_address"

    aput-object v7, v2, v6

    const/16 v6, 0x10

    const-string v7, "wifi_mac_address"

    aput-object v7, v2, v6

    const/16 v6, 0x11

    const-string v7, "bt_address"

    aput-object v7, v2, v6

    const/16 v6, 0x12

    const-string v7, "esn_number"

    aput-object v7, v2, v6

    const/16 v6, 0x13

    const-string v7, "wifi_ip_address"

    aput-object v7, v2, v6

    const/16 v6, 0x14

    const-string v7, "up_time"

    aput-object v7, v2, v6

    const/16 v6, 0x15

    const-string v7, "serial_number"

    aput-object v7, v2, v6

    const/16 v6, 0x16

    const-string v7, "icc_id"

    aput-object v7, v2, v6

    const/16 v6, 0x17

    const-string v7, "last_factory_date_reset"

    aput-object v7, v2, v6

    const/16 v6, 0x18

    const-string v7, "rooting_status"

    aput-object v7, v2, v6

    const/16 v6, 0x19

    const-string v7, "eri_version"

    aput-object v7, v2, v6

    const/16 v6, 0x1a

    const-string v7, "ims_registration_status"

    aput-object v7, v2, v6

    const/16 v6, 0x1b

    const-string v7, "life_time_call"

    aput-object v7, v2, v6

    const/16 v6, 0x1c

    const-string v7, "warranty_date_code"

    aput-object v7, v2, v6

    const/16 v6, 0x1d

    const-string v7, "network_type_strength"

    aput-object v7, v2, v6

    const/16 v6, 0x1e

    const-string v7, "meid_hexa"

    aput-object v7, v2, v6

    const/16 v6, 0x1f

    const-string v7, "meid_decimal"

    aput-object v7, v2, v6

    const/16 v6, 0x20

    const-string v7, "channel"

    aput-object v7, v2, v6

    const/16 v6, 0x21

    const-string v7, "sid"

    aput-object v7, v2, v6

    const/16 v6, 0x22

    const-string v7, "life_time_data"

    aput-object v7, v2, v6

    const/16 v6, 0x23

    const-string v7, "carrier_legal"

    aput-object v7, v2, v6

    const/16 v6, 0x24

    const-string v7, "rev_check"

    aput-object v7, v2, v6

    const/16 v6, 0x25

    const-string v7, "refubish_counter"

    aput-object v7, v2, v6

    const/16 v6, 0x26

    const-string v7, "mpcs_legal"

    aput-object v7, v2, v6

    const/16 v6, 0x27

    const-string v7, "manufacture_serial_number"

    aput-object v7, v2, v6

    const/16 v6, 0x28

    const-string v7, "manufacture_company_country"

    aput-object v7, v2, v6

    const/16 v6, 0x29

    const-string v7, "manufacture_serial_number_date"

    aput-object v7, v2, v6

    const/16 v6, 0x2a

    const-string v7, "support_technology"

    aput-object v7, v2, v6

    const/16 v6, 0x2b

    const-string v7, "device_model"

    aput-object v7, v2, v6

    const/16 v6, 0x2c

    const-string v7, "smsc"

    aput-object v7, v2, v6

    const/16 v6, 0x2d

    const-string v7, "imsi"

    aput-object v7, v2, v6

    const/16 v6, 0x2e

    const-string v7, "csn"

    aput-object v7, v2, v6

    const/16 v6, 0x2f

    const-string v7, "memory_size"

    aput-object v7, v2, v6

    .line 204
    .local v2, keyStrings:[Ljava/lang/String;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v5, v0, v1

    .line 205
    .local v5, string:Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 206
    .local v4, removablePref:Landroid/preference/Preference;
    if-eqz v4, :cond_0

    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 208
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 204
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    .end local v4           #removablePref:Landroid/preference/Preference;
    .end local v5           #string:Ljava/lang/String;
    :cond_1
    return-void
.end method
