.class public Lcom/android/lgesettings/lge/TetherSettingsHelp;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "TetherSettingsHelp.java"


# instance fields
.field private mBluetoothAvailable:Z

.field private mBluetoothRegexs:[Ljava/lang/String;

.field private mBtTethering:Landroid/preference/PreferenceScreen;

.field private mUsbAvailable:Z

.field private mUsbRegexs:[Ljava/lang/String;

.field private mUsbTethering:Landroid/preference/PreferenceScreen;

.field private mUsbTethering2:Landroid/preference/PreferenceScreen;

.field private mWifiAvailable:Z

.field private mWifiRegexs:[Ljava/lang/String;

.field private mWifiTethering:Landroid/preference/PreferenceScreen;

.field private mWifiTethering2:Landroid/preference/PreferenceScreen;

.field private mWifiTethering_spr:Landroid/preference/PreferenceScreen;

.field private mWifiTethering_vzw:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    .line 38
    iput-boolean v0, p0, Lcom/android/lgesettings/lge/TetherSettingsHelp;->mUsbAvailable:Z

    .line 39
    iput-boolean v0, p0, Lcom/android/lgesettings/lge/TetherSettingsHelp;->mWifiAvailable:Z

    .line 40
    iput-boolean v0, p0, Lcom/android/lgesettings/lge/TetherSettingsHelp;->mBluetoothAvailable:Z

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const v9, 0x7f020344

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 52
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const-string v5, "ro.build.target_operator_ext"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 55
    .local v4, strNewCo:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/TetherSettingsHelp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 58
    .local v0, activity:Landroid/app/Activity;
    const-string v5, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 59
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    const v8, 0x7f020339

    invoke-virtual {v5, v8}, Landroid/app/ActionBar;->setIcon(I)V

    .line 83
    :cond_0
    :goto_0
    const v5, 0x7f060067

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/lge/TetherSettingsHelp;->addPreferencesFromResource(I)V

    .line 85
    const-string v5, "ATT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/TetherSettingsHelp;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v8, "wifi_tethering"

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    const v8, 0x7f080ab4

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setTitle(I)V

    .line 91
    :cond_1
    const-string v5, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 92
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/TetherSettingsHelp;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v8, "wifi_tethering"

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    const v8, 0x7f0812f2

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setTitle(I)V

    .line 96
    :cond_2
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/lge/TetherSettingsHelp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 99
    .local v1, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/lgesettings/lge/TetherSettingsHelp;->mUsbRegexs:[Ljava/lang/String;

    .line 100
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/lgesettings/lge/TetherSettingsHelp;->mWifiRegexs:[Ljava/lang/String;

    .line 101
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/lgesettings/lge/TetherSettingsHelp;->mBluetoothRegexs:[Ljava/lang/String;

    .line 103
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v5

    const-string v8, "US"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    const-string v8, "TMO"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    const-string v8, "DCM"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    const-string v8, "VZW"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    const-string v8, "SPR"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    const-string v8, "BM"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 108
    :cond_4
    iget-object v5, p0, Lcom/android/lgesettings/lge/TetherSettingsHelp;->mUsbRegexs:[Ljava/lang/String;

    array-length v5, v5

    if-eqz v5, :cond_10

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Lcom/android/lgesettings/lge/TetherSettingsHelp;->mUsbAvailable:Z

    .line 110
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    const-string v8, "SPR"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    const-string v8, "BM"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    invoke-static {}, Lcom/android/lgesettings/Utils;->getChameleonUsbTetheringMenuEnabled()Z

    move-result v5

    if-nez v5, :cond_6

    .line 112
    iput-boolean v7, p0, Lcom/android/lgesettings/lge/TetherSettingsHelp;->mUsbAvailable:Z

    .line 116
    :cond_6
    iget-object v5, p0, Lcom/android/lgesettings/lge/TetherSettingsHelp;->mWifiRegexs:[Ljava/lang/String;

    array-length v5, v5

    if-eqz v5, :cond_11

    move v5, v6

    :goto_2
    iput-boolean v5, p0, Lcom/android/lgesettings/lge/TetherSettingsHelp;->mWifiAvailable:Z

    .line 118
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    const-string v8, "VZW"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 123
    :cond_7
    const-string v5, "bluetooth.pan"

    const-string v8, "false"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, ispan:Ljava/lang/String;
    const-string v5, "true"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 125
    iput-boolean v6, p0, Lcom/android/lgesettings/lge/TetherSettingsHelp;->mBluetoothAvailable:Z

    .line 129
    :cond_8
    const-string v5, "US"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "TMO"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 130
    iput-boolean v7, p0, Lcom/android/lgesettings/lge/TetherSettingsHelp;->mBluetoothAvailable:Z

    .line 134
    :cond_9
    const-string v5, "TetherSettingsHelp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mUsbAvailable : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/lgesettings/lge/TetherSettingsHelp;->mUsbAvailable:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const-string v5, "TetherSettingsHelp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mWifiAvailable : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/lgesettings/lge/TetherSettingsHelp;->mWifiAvailable:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const-string v5, "TetherSettingsHelp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mBluetoothAvailable : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/lgesettings/lge/TetherSettingsHelp;->mBluetoothAvailable:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/TetherSettingsHelp;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 140
    .local v3, parent:Landroid/preference/PreferenceScreen;
    const-string v5, "usb_tethering"

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/lgesettings/lge/TetherSettingsHelp;->mUsbTethering:Landroid/preference/PreferenceScreen;

    .line 141
    const-string v5, "wifi_tethering"

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/lgesettings/lge/TetherSettingsHelp;->mWifiTethering:Landroid/preference/PreferenceScreen;

    .line 142
    const-string v5, "wifi_tethering_spr"

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/lgesettings/lge/TetherSettingsHelp;->mWifiTethering_spr:Landroid/preference/PreferenceScreen;

    .line 143
    const-string v5, "wifi_tethering_vzw"

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/lgesettings/lge/TetherSettingsHelp;->mWifiTethering_vzw:Landroid/preference/PreferenceScreen;

    .line 144
    const-string v5, "bluetooth_tethering"

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/lgesettings/lge/TetherSettingsHelp;->mBtTethering:Landroid/preference/PreferenceScreen;

    .line 147
    const-string v5, "usb_tethering_u2_tmus"

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/lgesettings/lge/TetherSettingsHelp;->mUsbTethering2:Landroid/preference/PreferenceScreen;

    .line 148
    const-string v5, "wifi_tethering_u2_tmus"

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/lgesettings/lge/TetherSettingsHelp;->mWifiTethering2:Landroid/preference/PreferenceScreen;

    .line 150
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    const-string v6, "VZW"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 151
    iget-object v5, p0, Lcom/android/lgesettings/lge/TetherSettingsHelp;->mUsbTethering:Landroid/preference/PreferenceScreen;

    const v6, 0x7f080a4c

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 154
    :cond_a
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v5

    const-string v6, "US"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TMO"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v6, "u2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 156
    iget-object v5, p0, Lcom/android/lgesettings/lge/TetherSettingsHelp;->mUsbTethering:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 157
    iget-object v5, p0, Lcom/android/lgesettings/lge/TetherSettingsHelp;->mWifiTethering:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 158
    iget-object v5, p0, Lcom/android/lgesettings/lge/TetherSettingsHelp;->mWifiTethering_spr:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 159
    iget-object v5, p0, Lcom/android/lgesettings/lge/TetherSettingsHelp;->mBtTethering:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 196
    :cond_b
    :goto_3
    return-void

    .line 67
    .end local v1           #cm:Landroid/net/ConnectivityManager;
    .end local v2           #ispan:Ljava/lang/String;
    .end local v3           #parent:Landroid/preference/PreferenceScreen;
    :cond_c
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v5

    const-string v8, "US"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    const-string v8, "TMO"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 68
    const-string v5, "MPCS_TMO"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 69
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    const v8, 0x7f02033b

    invoke-virtual {v5, v8}, Landroid/app/ActionBar;->setIcon(I)V

    goto/16 :goto_0

    .line 71
    :cond_d
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/app/ActionBar;->setIcon(I)V

    goto/16 :goto_0

    .line 74
    :cond_e
    const-string v5, "ATT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 75
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/app/ActionBar;->setIcon(I)V

    goto/16 :goto_0

    .line 78
    :cond_f
    const-string v5, "SPR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 79
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/app/ActionBar;->setIcon(I)V

    goto/16 :goto_0

    .restart local v1       #cm:Landroid/net/ConnectivityManager;
    :cond_10
    move v5, v7

    .line 108
    goto/16 :goto_1

    :cond_11
    move v5, v7

    .line 116
    goto/16 :goto_2

    .line 162
    .restart local v2       #ispan:Ljava/lang/String;
    .restart local v3       #parent:Landroid/preference/PreferenceScreen;
    :cond_12
    iget-object v5, p0, Lcom/android/lgesettings/lge/TetherSettingsHelp;->mUsbTethering2:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 163
    iget-object v5, p0, Lcom/android/lgesettings/lge/TetherSettingsHelp;->mWifiTethering2:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 165
    iget-boolean v5, p0, Lcom/android/lgesettings/lge/TetherSettingsHelp;->mUsbAvailable:Z

    if-nez v5, :cond_13

    .line 166
    iget-object v5, p0, Lcom/android/lgesettings/lge/TetherSettingsHelp;->mUsbTethering:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 169
    :cond_13
    iget-boolean v5, p0, Lcom/android/lgesettings/lge/TetherSettingsHelp;->mWifiAvailable:Z

    if-nez v5, :cond_14

    .line 170
    iget-object v5, p0, Lcom/android/lgesettings/lge/TetherSettingsHelp;->mWifiTethering:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 171
    iget-object v5, p0, Lcom/android/lgesettings/lge/TetherSettingsHelp;->mWifiTethering_spr:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 172
    iget-object v5, p0, Lcom/android/lgesettings/lge/TetherSettingsHelp;->mWifiTethering_vzw:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 192
    :goto_4
    iget-boolean v5, p0, Lcom/android/lgesettings/lge/TetherSettingsHelp;->mBluetoothAvailable:Z

    if-nez v5, :cond_b

    .line 193
    iget-object v5, p0, Lcom/android/lgesettings/lge/TetherSettingsHelp;->mBtTethering:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 176
    :cond_14
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v5

    const-string v6, "US"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SPR"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    :cond_15
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TMO"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 178
    :cond_16
    iget-object v5, p0, Lcom/android/lgesettings/lge/TetherSettingsHelp;->mWifiTethering:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 179
    iget-object v5, p0, Lcom/android/lgesettings/lge/TetherSettingsHelp;->mWifiTethering_vzw:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_4

    .line 181
    :cond_17
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    const-string v6, "VZW"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 182
    iget-object v5, p0, Lcom/android/lgesettings/lge/TetherSettingsHelp;->mWifiTethering:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 183
    iget-object v5, p0, Lcom/android/lgesettings/lge/TetherSettingsHelp;->mWifiTethering_spr:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_4

    .line 186
    :cond_18
    iget-object v5, p0, Lcom/android/lgesettings/lge/TetherSettingsHelp;->mWifiTethering_spr:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 187
    iget-object v5, p0, Lcom/android/lgesettings/lge/TetherSettingsHelp;->mWifiTethering_vzw:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_4
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 201
    iget-object v1, p0, Lcom/android/lgesettings/lge/TetherSettingsHelp;->mUsbTethering2:Landroid/preference/PreferenceScreen;

    if-ne p2, v1, :cond_1

    .line 202
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 203
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "Tethering_Type"

    const-string v2, "USB"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    const-string v1, "com.android.lgesettings"

    const-string v2, "com.android.lgesettings.TetherHelpPopup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lge/TetherSettingsHelp;->startActivity(Landroid/content/Intent;)V

    .line 222
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .line 207
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/lge/TetherSettingsHelp;->mWifiTethering2:Landroid/preference/PreferenceScreen;

    if-ne p2, v1, :cond_2

    .line 208
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 209
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "Tethering_Type"

    const-string v2, "Wifi"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    const-string v1, "com.android.lgesettings"

    const-string v2, "com.android.lgesettings.TetherHelpPopup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lge/TetherSettingsHelp;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 212
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Lcom/android/lgesettings/lge/TetherSettingsHelp;->mUsbTethering:Landroid/preference/PreferenceScreen;

    if-ne p2, v1, :cond_0

    .line 213
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 214
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 215
    const-string v1, "com.android.lgesettings"

    const-string v2, "com.android.lgesettings.lge.TetherSettingsHelpUsbVZW"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lge/TetherSettingsHelp;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 217
    :cond_3
    const-string v1, "com.android.lgesettings"

    const-string v2, "com.android.lgesettings.lge.TetherSettingsHelpUsb"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method
