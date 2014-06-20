.class public Lcom/android/lgesettings/lge/DeviceInfoLgeStatus;
.super Lcom/android/lgesettings/deviceinfo/Status;
.source "DeviceInfoLgeStatus.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/lgesettings/deviceinfo/Status;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/android/lgesettings/deviceinfo/Status;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v1, 0x7f080439

    invoke-super {p0, v1}, Lcom/android/lgesettings/deviceinfo/Status;->setTitle(I)V

    .line 49
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeStatus;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 50
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 51
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeStatus;->removeUnnecessaryPreference()V

    .line 54
    const-string v1, "aboutphone #DeviceinfolgePhoneidentity"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 85
    const-string v0, "aboutphone #DeviceinfolgePhoneidentity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-super {p0}, Lcom/android/lgesettings/deviceinfo/Status;->onDestroy()V

    .line 87
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 59
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 60
    .local v0, itemId:I
    const-string v1, "starmotor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "itemId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeStatus;->finish()V

    .line 63
    const/4 v1, 0x1

    .line 65
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/lgesettings/deviceinfo/Status;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 78
    invoke-super {p0}, Lcom/android/lgesettings/deviceinfo/Status;->onPause()V

    .line 79
    const-string v0, "aboutphone #DeviceinfolgePhoneidentity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 71
    invoke-super {p0}, Lcom/android/lgesettings/deviceinfo/Status;->onResume()V

    .line 72
    const-string v0, "aboutphone #DeviceinfolgePhoneidentity"

    const-string v1, "Resume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void
.end method

.method protected removeUnnecessaryPreference()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 93
    const/16 v6, 0x21

    new-array v2, v6, [Ljava/lang/String;

    const-string v6, "button_aboutphone_msim_status"

    aput-object v6, v2, v8

    const/4 v6, 0x1

    const-string v7, "battery_status"

    aput-object v7, v2, v6

    const/4 v6, 0x2

    const-string v7, "battery_level"

    aput-object v7, v2, v6

    const/4 v6, 0x3

    const-string v7, "operator_name"

    aput-object v7, v2, v6

    const/4 v6, 0x4

    const-string v7, "signal_strength"

    aput-object v7, v2, v6

    const/4 v6, 0x5

    const-string v7, "network_type"

    aput-object v7, v2, v6

    const/4 v6, 0x6

    const-string v7, "network_type_strength"

    aput-object v7, v2, v6

    const/4 v6, 0x7

    const-string v7, "service_state"

    aput-object v7, v2, v6

    const/16 v6, 0x8

    const-string v7, "roaming_state"

    aput-object v7, v2, v6

    const/16 v6, 0x9

    const-string v7, "data_state"

    aput-object v7, v2, v6

    const/16 v6, 0xa

    const-string v7, "channel"

    aput-object v7, v2, v6

    const/16 v6, 0xb

    const-string v7, "sid"

    aput-object v7, v2, v6

    const/16 v6, 0xc

    const-string v7, "wifi_ip_address"

    aput-object v7, v2, v6

    const/16 v6, 0xd

    const-string v7, "wifi_mac_address"

    aput-object v7, v2, v6

    const/16 v6, 0xe

    const-string v7, "bt_address"

    aput-object v7, v2, v6

    const/16 v6, 0xf

    const-string v7, "serial_number"

    aput-object v7, v2, v6

    const/16 v6, 0x10

    const-string v7, "wimax_mac_address"

    aput-object v7, v2, v6

    const/16 v6, 0x11

    const-string v7, "up_time"

    aput-object v7, v2, v6

    const/16 v6, 0x12

    const-string v7, "ims_registration_status"

    aput-object v7, v2, v6

    const/16 v6, 0x13

    const-string v7, "life_time_call"

    aput-object v7, v2, v6

    const/16 v6, 0x14

    const-string v7, "warranty_date_code"

    aput-object v7, v2, v6

    const/16 v6, 0x15

    const-string v7, "life_time_data"

    aput-object v7, v2, v6

    const/16 v6, 0x16

    const-string v7, "battery_use"

    aput-object v7, v2, v6

    const/16 v6, 0x17

    const-string v7, "rev_check"

    aput-object v7, v2, v6

    const/16 v6, 0x18

    const-string v7, "battery_condition_dcm"

    aput-object v7, v2, v6

    const/16 v6, 0x19

    const-string v7, "support_technology"

    aput-object v7, v2, v6

    const/16 v6, 0x1a

    const-string v7, "manufacture_serial_number"

    aput-object v7, v2, v6

    const/16 v6, 0x1b

    const-string v7, "manufacture_company_country"

    aput-object v7, v2, v6

    const/16 v6, 0x1c

    const-string v7, "manufacture_serial_number_date"

    aput-object v7, v2, v6

    const/16 v6, 0x1d

    const-string v7, "device_model"

    aput-object v7, v2, v6

    const/16 v6, 0x1e

    const-string v7, "smsc"

    aput-object v7, v2, v6

    const/16 v6, 0x1f

    const-string v7, "csn"

    aput-object v7, v2, v6

    const/16 v6, 0x20

    const-string v7, "memory_size"

    aput-object v7, v2, v6

    .line 141
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

    .line 142
    .local v5, string:Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/android/lgesettings/lge/DeviceInfoLgeStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 143
    .local v4, removablePref:Landroid/preference/Preference;
    if-eqz v4, :cond_0

    invoke-super {p0}, Lcom/android/lgesettings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 144
    invoke-super {p0}, Lcom/android/lgesettings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 141
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    .end local v4           #removablePref:Landroid/preference/Preference;
    .end local v5           #string:Ljava/lang/String;
    :cond_1
    const-string v6, "persist.sys.cust.rmprefimeisv"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 149
    const-string v6, "imei_sv"

    invoke-virtual {p0, v6}, Lcom/android/lgesettings/lge/DeviceInfoLgeStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 150
    .restart local v4       #removablePref:Landroid/preference/Preference;
    if-eqz v4, :cond_2

    invoke-super {p0}, Lcom/android/lgesettings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 151
    invoke-super {p0}, Lcom/android/lgesettings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 154
    .end local v4           #removablePref:Landroid/preference/Preference;
    :cond_2
    return-void
.end method
