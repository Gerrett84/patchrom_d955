.class public Lcom/android/lgesettings/wifi/WifiRissLess;
.super Landroid/preference/PreferenceActivity;
.source "WifiRissLess.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private current:Ljava/lang/String;

.field private mCity:Lcom/android/lgesettings/lge/RadioButtonPreference;

.field private mGeneral:Lcom/android/lgesettings/lge/RadioButtonPreference;

.field private mHome:Lcom/android/lgesettings/lge/RadioButtonPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 2

    .prologue
    .line 33
    const v1, 0x7f06007b

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/wifi/WifiRissLess;->addPreferencesFromResource(I)V

    .line 35
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiRissLess;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 37
    .local v0, root:Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 38
    const-string v1, "wifi_advanced_wifi_rssi_less_general"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/lge/RadioButtonPreference;

    iput-object v1, p0, Lcom/android/lgesettings/wifi/WifiRissLess;->mGeneral:Lcom/android/lgesettings/lge/RadioButtonPreference;

    .line 39
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiRissLess;->mGeneral:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v1, p0}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 40
    const-string v1, "wifi_advanced_wifi_rssi_less_city"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/lge/RadioButtonPreference;

    iput-object v1, p0, Lcom/android/lgesettings/wifi/WifiRissLess;->mCity:Lcom/android/lgesettings/lge/RadioButtonPreference;

    .line 41
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiRissLess;->mCity:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v1, p0}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 42
    const-string v1, "wifi_advanced_wifi_rssi_less_home"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/lge/RadioButtonPreference;

    iput-object v1, p0, Lcom/android/lgesettings/wifi/WifiRissLess;->mHome:Lcom/android/lgesettings/lge/RadioButtonPreference;

    .line 43
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiRissLess;->mHome:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v1, p0}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 47
    .end local v0           #root:Landroid/preference/PreferenceScreen;
    :goto_0
    return-object v0

    .line 45
    .restart local v0       #root:Landroid/preference/PreferenceScreen;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateCurrentToggles()V
    .locals 4

    .prologue
    const/16 v3, -0x55

    .line 53
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiRissLess;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_rssi_polling_threshold_db"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 54
    .local v0, signalStrength:I
    if-ne v0, v3, :cond_1

    .line 55
    const-string v1, "wifi_advanced_wifi_rssi_less_general"

    iput-object v1, p0, Lcom/android/lgesettings/wifi/WifiRissLess;->current:Ljava/lang/String;

    .line 56
    const-string v1, "WifiRissLess"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current1 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiRissLess;->current:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiRissLess;->current:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/lgesettings/wifi/WifiRissLess;->updateToggles(Ljava/lang/String;)V

    .line 65
    return-void

    .line 57
    :cond_1
    const/16 v1, -0x4b

    if-ne v0, v1, :cond_2

    .line 58
    const-string v1, "wifi_advanced_wifi_rssi_less_city"

    iput-object v1, p0, Lcom/android/lgesettings/wifi/WifiRissLess;->current:Ljava/lang/String;

    .line 59
    const-string v1, "WifiRissLess"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current2 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiRissLess;->current:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 60
    :cond_2
    const/16 v1, -0x5a

    if-ne v0, v1, :cond_0

    .line 61
    const-string v1, "wifi_advanced_wifi_rssi_less_home"

    iput-object v1, p0, Lcom/android/lgesettings/wifi/WifiRissLess;->current:Ljava/lang/String;

    .line 62
    const-string v1, "WifiRissLess"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current3 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiRissLess;->current:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateToggles(Ljava/lang/String;)V
    .locals 3
    .parameter "function"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 69
    const-string v0, "wifi_advanced_wifi_rssi_less_general"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiRissLess;->mGeneral:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 72
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiRissLess;->mCity:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 73
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiRissLess;->mHome:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    const-string v0, "wifi_advanced_wifi_rssi_less_city"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiRissLess;->mGeneral:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 78
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiRissLess;->mCity:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 79
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiRissLess;->mHome:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 81
    :cond_2
    const-string v0, "wifi_advanced_wifi_rssi_less_home"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiRissLess;->mGeneral:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 84
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiRissLess;->mCity:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 85
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiRissLess;->mHome:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiRissLess;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 114
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 130
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 131
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 118
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 119
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, key:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/lgesettings/wifi/WifiRissLess;->updateToggles(Ljava/lang/String;)V

    .line 95
    const-string v1, "wifi_advanced_wifi_rssi_less_general"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    const-string v1, "persist.sys.advanced.wifiless"

    const-string v2, "wifi_advanced_wifi_rssi_less_general"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiRissLess;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_rssi_polling_threshold_db"

    const/16 v3, -0x55

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 106
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 98
    :cond_1
    const-string v1, "wifi_advanced_wifi_rssi_less_city"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 99
    const-string v1, "persist.sys.advanced.wifiless"

    const-string v2, "wifi_advanced_wifi_rssi_less_city"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiRissLess;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_rssi_polling_threshold_db"

    const/16 v3, -0x4b

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 101
    :cond_2
    const-string v1, "wifi_advanced_wifi_rssi_less_home"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    const-string v1, "persist.sys.advanced.wifiless"

    const-string v2, "wifi_advanced_wifi_rssi_less_home"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiRissLess;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_rssi_polling_threshold_db"

    const/16 v3, -0x5a

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 123
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 124
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiRissLess;->updateCurrentToggles()V

    .line 126
    return-void
.end method
