.class public Lcom/android/lgesettings/lge/DeviceInfoLgeSoftwareInformation;
.super Lcom/android/lgesettings/DeviceInfoSettings;
.source "DeviceInfoLgeSoftwareInformation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/android/lgesettings/DeviceInfoSettings;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "icicle"

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/android/lgesettings/DeviceInfoSettings;->onCreate(Landroid/os/Bundle;)V

    .line 19
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeSoftwareInformation;->removeUnnecessaryPreference()V

    .line 20
    return-void
.end method

.method protected removeUnnecessaryPreference()V
    .locals 8

    .prologue
    .line 42
    const/16 v6, 0xf

    new-array v2, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "system_update_settings"

    aput-object v7, v2, v6

    const/4 v6, 0x1

    const-string v7, "additional_system_update_settings"

    aput-object v7, v2, v6

    const/4 v6, 0x2

    const-string v7, "status_info"

    aput-object v7, v2, v6

    const/4 v6, 0x3

    const-string v7, "power_usage"

    aput-object v7, v2, v6

    const/4 v6, 0x4

    const-string v7, "container"

    aput-object v7, v2, v6

    const/4 v6, 0x5

    const-string v7, "safetylegal"

    aput-object v7, v2, v6

    const/4 v6, 0x6

    const-string v7, "device_model"

    aput-object v7, v2, v6

    const/4 v6, 0x7

    const-string v7, "phone_serial"

    aput-object v7, v2, v6

    const/16 v6, 0x8

    const-string v7, "carrier_legal"

    aput-object v7, v2, v6

    const/16 v6, 0x9

    const-string v7, "software_update_settings_for_dcm"

    aput-object v7, v2, v6

    const/16 v6, 0xa

    const-string v7, "rev_check"

    aput-object v7, v2, v6

    const/16 v6, 0xb

    const-string v7, "mpcs_legal"

    aput-object v7, v2, v6

    const/16 v6, 0xc

    const-string v7, "manufacture_serial_number"

    aput-object v7, v2, v6

    const/16 v6, 0xd

    const-string v7, "manufacture_company_country"

    aput-object v7, v2, v6

    const/16 v6, 0xe

    const-string v7, "manufacture_serial_number_date"

    aput-object v7, v2, v6

    .line 60
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

    .line 62
    .local v5, string:Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/android/lgesettings/lge/DeviceInfoLgeSoftwareInformation;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 63
    .local v4, removablePref:Landroid/preference/Preference;
    if-eqz v4, :cond_0

    invoke-super {p0}, Lcom/android/lgesettings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 65
    invoke-super {p0}, Lcom/android/lgesettings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 60
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    .end local v4           #removablePref:Landroid/preference/Preference;
    .end local v5           #string:Ljava/lang/String;
    :cond_1
    return-void
.end method
