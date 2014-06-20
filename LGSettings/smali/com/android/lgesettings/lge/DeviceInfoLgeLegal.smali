.class public Lcom/android/lgesettings/lge/DeviceInfoLgeLegal;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "DeviceInfoLgeLegal.java"


# static fields
.field private static operator_code:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/lge/DeviceInfoLgeLegal;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 109
    .local v0, pref:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeLegal;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeLegal;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 112
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x1

    .line 52
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v1

    .line 54
    .local v1, activePhoneType:I
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const-string v3, "aboutphone # DeviceInfoLgeLegal"

    const-string v4, "onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const v3, 0x7f060016

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/DeviceInfoLgeLegal;->addPreferencesFromResource(I)V

    .line 60
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/lgesettings/lge/DeviceInfoLgeLegal;->operator_code:Ljava/lang/String;

    .line 62
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeLegal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 65
    .local v0, act:Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLgeLegal;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 66
    .local v2, parentPreference:Landroid/preference/PreferenceGroup;
    const-string v3, "eula"

    invoke-static {v0, v2, v3, v5}, Lcom/android/lgesettings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 68
    const-string v3, "CN"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 69
    const-string v3, "aboutphone # DeviceInfoLgeLegal"

    const-string v4, "remove terms"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const-string v3, "terms"

    invoke-direct {p0, v3}, Lcom/android/lgesettings/lge/DeviceInfoLgeLegal;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 74
    :goto_0
    const-string v3, "license"

    invoke-static {v0, v2, v3, v5}, Lcom/android/lgesettings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 76
    const-string v3, "copyright"

    invoke-static {v0, v2, v3, v5}, Lcom/android/lgesettings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 78
    const-string v3, "team"

    invoke-static {v0, v2, v3, v5}, Lcom/android/lgesettings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 81
    const-string v3, "SPR"

    sget-object v4, Lcom/android/lgesettings/lge/DeviceInfoLgeLegal;->operator_code:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "BM"

    sget-object v4, Lcom/android/lgesettings/lge/DeviceInfoLgeLegal;->operator_code:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 82
    :cond_0
    const-string v3, "ro.build.target_operator"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "TRF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 83
    const-string v3, "carrier_legal"

    invoke-direct {p0, v3}, Lcom/android/lgesettings/lge/DeviceInfoLgeLegal;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 92
    :goto_1
    const-string v3, "MPCS"

    sget-object v4, Lcom/android/lgesettings/lge/DeviceInfoLgeLegal;->operator_code:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 93
    const-string v3, "mpcs_legal"

    invoke-static {v0, v2, v3, v5}, Lcom/android/lgesettings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 98
    :goto_2
    return-void

    .line 72
    :cond_1
    const-string v3, "terms"

    invoke-static {v0, v2, v3, v5}, Lcom/android/lgesettings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    goto :goto_0

    .line 85
    :cond_2
    const-string v3, "carrier_legal"

    invoke-static {v0, v2, v3, v5}, Lcom/android/lgesettings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    goto :goto_1

    .line 88
    :cond_3
    const-string v3, "aboutphone # DeviceInfoLgeLegal"

    const-string v4, "remove carrier_legal"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const-string v3, "carrier_legal"

    invoke-direct {p0, v3}, Lcom/android/lgesettings/lge/DeviceInfoLgeLegal;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_1

    .line 95
    :cond_4
    const-string v3, "aboutphone # DeviceInfoLgeLegal"

    const-string v4, "remove mpcs_legal"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const-string v3, "mpcs_legal"

    invoke-direct {p0, v3}, Lcom/android/lgesettings/lge/DeviceInfoLgeLegal;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_2
.end method
