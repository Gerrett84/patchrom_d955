.class public Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareInformation;
.super Lcom/android/lgesettings/deviceinfo/Status;
.source "DeviceInfoLgeHardwareInformation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/lgesettings/deviceinfo/Status;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/android/lgesettings/deviceinfo/Status;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v1, 0x7f0803d5

    invoke-super {p0, v1}, Lcom/android/lgesettings/deviceinfo/Status;->setTitle(I)V

    .line 24
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareInformation;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 25
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 26
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 28
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 32
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 33
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

    .line 34
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareInformation;->finish()V

    .line 36
    const/4 v1, 0x1

    .line 38
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/lgesettings/deviceinfo/Status;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0}, Lcom/android/lgesettings/deviceinfo/Status;->onPause()V

    .line 54
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 45
    invoke-super {p0}, Lcom/android/lgesettings/deviceinfo/Status;->onResume()V

    .line 46
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareInformation;->removeUnnecessaryPreference()V

    .line 47
    return-void
.end method

.method protected removeUnnecessaryPreference()V
    .locals 8

    .prologue
    .line 60
    const/16 v6, 0x2a

    new-array v2, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "button_aboutphone_msim_status"

    aput-object v7, v2, v6

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

    const-string v7, "number"

    aput-object v7, v2, v6

    const/16 v6, 0xb

    const-string v7, "min_number"

    aput-object v7, v2, v6

    const/16 v6, 0xc

    const-string v7, "prl_version"

    aput-object v7, v2, v6

    const/16 v6, 0xd

    const-string v7, "eri_version"

    aput-object v7, v2, v6

    const/16 v6, 0xe

    const-string v7, "esn_number"

    aput-object v7, v2, v6

    const/16 v6, 0xf

    const-string v7, "meid_number"

    aput-object v7, v2, v6

    const/16 v6, 0x10

    const-string v7, "meid_hexa"

    aput-object v7, v2, v6

    const/16 v6, 0x11

    const-string v7, "meid_decimal"

    aput-object v7, v2, v6

    const/16 v6, 0x12

    const-string v7, "imei"

    aput-object v7, v2, v6

    const/16 v6, 0x13

    const-string v7, "imei_sv"

    aput-object v7, v2, v6

    const/16 v6, 0x14

    const-string v7, "icc_id"

    aput-object v7, v2, v6

    const/16 v6, 0x15

    const-string v7, "last_factory_date_reset"

    aput-object v7, v2, v6

    const/16 v6, 0x16

    const-string v7, "rooting_status"

    aput-object v7, v2, v6

    const/16 v6, 0x17

    const-string v7, "wifi_ip_address"

    aput-object v7, v2, v6

    const/16 v6, 0x18

    const-string v7, "serial_number"

    aput-object v7, v2, v6

    const/16 v6, 0x19

    const-string v7, "wimax_mac_address"

    aput-object v7, v2, v6

    const/16 v6, 0x1a

    const-string v7, "up_time"

    aput-object v7, v2, v6

    const/16 v6, 0x1b

    const-string v7, "battery_use"

    aput-object v7, v2, v6

    const/16 v6, 0x1c

    const-string v7, "imei_svn"

    aput-object v7, v2, v6

    const/16 v6, 0x1d

    const-string v7, "ims_registration_status"

    aput-object v7, v2, v6

    const/16 v6, 0x1e

    const-string v7, "life_time_call"

    aput-object v7, v2, v6

    const/16 v6, 0x1f

    const-string v7, "warranty_date_code"

    aput-object v7, v2, v6

    const/16 v6, 0x20

    const-string v7, "life_time_data"

    aput-object v7, v2, v6

    const/16 v6, 0x21

    const-string v7, "imei_svn_gsm"

    aput-object v7, v2, v6

    const/16 v6, 0x22

    const-string v7, "channel"

    aput-object v7, v2, v6

    const/16 v6, 0x23

    const-string v7, "sid"

    aput-object v7, v2, v6

    const/16 v6, 0x24

    const-string v7, "manufacture_serial_number"

    aput-object v7, v2, v6

    const/16 v6, 0x25

    const-string v7, "manufacture_company_country"

    aput-object v7, v2, v6

    const/16 v6, 0x26

    const-string v7, "manufacture_serial_number_date"

    aput-object v7, v2, v6

    const/16 v6, 0x27

    const-string v7, "battery_condition_dcm"

    aput-object v7, v2, v6

    const/16 v6, 0x28

    const-string v7, "support_technology"

    aput-object v7, v2, v6

    const/16 v6, 0x29

    const-string v7, "csn"

    aput-object v7, v2, v6

    .line 105
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

    .line 107
    .local v5, string:Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareInformation;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 108
    .local v4, removablePref:Landroid/preference/Preference;
    if-eqz v4, :cond_0

    .line 110
    invoke-super {p0}, Lcom/android/lgesettings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 112
    invoke-super {p0}, Lcom/android/lgesettings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 105
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    .end local v4           #removablePref:Landroid/preference/Preference;
    .end local v5           #string:Ljava/lang/String;
    :cond_1
    return-void
.end method
