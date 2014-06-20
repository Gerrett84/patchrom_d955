.class public Lcom/android/lgesettings/lge/ShareConnection;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "ShareConnection.java"


# instance fields
.field private mDataTransfer:Landroid/preference/PreferenceCategory;

.field private mFileNetwork:Landroid/preference/PreferenceCategory;

.field private final mLGMDMReceiver:Landroid/content/BroadcastReceiver;

.field private mMediaShare:Landroid/preference/PreferenceCategory;

.field private mMiracast:Lcom/android/lgesettings/MiracastSwitchPreference;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcEnabler:Lcom/android/lgesettings/nfc/LGNfcEnabler;

.field private mParentScreen:Landroid/preference/PreferenceScreen;

.field private mSmartBeam:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    .line 472
    new-instance v0, Lcom/android/lgesettings/lge/ShareConnection$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/lge/ShareConnection$1;-><init>(Lcom/android/lgesettings/lge/ShareConnection;)V

    iput-object v0, p0, Lcom/android/lgesettings/lge/ShareConnection;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public IsDLNAOptionMenu(Ljava/lang/String;)Z
    .locals 8
    .parameter "packageName"

    .prologue
    const/4 v4, 0x0

    .line 437
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ShareConnection;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 438
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 441
    .local v3, pmApplicationInfo:Landroid/content/pm/ApplicationInfo;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 447
    if-nez v3, :cond_0

    .line 448
    const-string v5, "ShareConnect"

    const-string v6, "pmApplicationInfo is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :goto_0
    return v4

    .line 442
    :catch_0
    move-exception v1

    .line 443
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "ShareConnect"

    const-string v6, "NameNotFoundException com.lge.smartshare"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 452
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 453
    .local v0, charSequence:Ljava/lang/CharSequence;
    const-string v5, "ShareConnect"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EnableApplication ->   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :try_start_1
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "DLNA"

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 460
    const-string v5, "ShareConnect"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EnableApplication ->   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 461
    const/4 v4, 0x1

    goto :goto_0

    .line 463
    :catch_1
    move-exception v1

    .line 464
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "ShareConnect"

    const-string v6, "Exception IsDLNAOptionMenu Disable"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 467
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    const-string v5, "ShareConnect"

    const-string v6, "IsDLNAOptionMenu Disable"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isInstalledWiFlus(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    .line 376
    const/4 v4, 0x0

    .line 378
    .local v4, result:Z
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 380
    .local v3, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    const-string v5, "itectokyo.wiflus.service"

    const-string v6, "itectokyo.wiflus.ui.wiflusapp.SettingActivity"

    invoke-direct {v1, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    .local v1, cn:Landroid/content/ComponentName;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v3, v1, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 383
    .local v0, a:Landroid/content/pm/ActivityInfo;
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_0

    .line 384
    const/4 v4, 0x1

    .line 391
    .end local v0           #a:Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_0
    return v4

    .line 386
    :catch_0
    move-exception v2

    .line 387
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "settings"

    const-string v6, "Exception SmartShareBeam NameNotFoundException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "icicle"

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ShareConnection;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 106
    .local v0, activity:Landroid/app/Activity;
    const-string v11, "ro.lge.mtk_dualsim"

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 108
    .local v5, mtk_dual:Z
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/android/lgesettings/lge/ShareConnection;->setHasOptionsMenu(Z)V

    .line 123
    const v11, 0x7f06005d

    invoke-virtual {p0, v11}, Lcom/android/lgesettings/lge/ShareConnection;->addPreferencesFromResource(I)V

    .line 125
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ShareConnection;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    iput-object v11, p0, Lcom/android/lgesettings/lge/ShareConnection;->mParentScreen:Landroid/preference/PreferenceScreen;

    .line 126
    iget-object v11, p0, Lcom/android/lgesettings/lge/ShareConnection;->mParentScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v11}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 127
    .local v3, curContext:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ShareConnection;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    const-string v12, "data_transfer"

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceCategory;

    iput-object v11, p0, Lcom/android/lgesettings/lge/ShareConnection;->mDataTransfer:Landroid/preference/PreferenceCategory;

    .line 128
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ShareConnection;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    const-string v12, "media_share"

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceCategory;

    iput-object v11, p0, Lcom/android/lgesettings/lge/ShareConnection;->mMediaShare:Landroid/preference/PreferenceCategory;

    .line 129
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ShareConnection;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    const-string v12, "file_network"

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceCategory;

    iput-object v11, p0, Lcom/android/lgesettings/lge/ShareConnection;->mFileNetwork:Landroid/preference/PreferenceCategory;

    .line 132
    iget-object v11, p0, Lcom/android/lgesettings/lge/ShareConnection;->mDataTransfer:Landroid/preference/PreferenceCategory;

    const-string v12, "toggle_nfc"

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 133
    .local v6, nfc:Landroid/preference/Preference;
    iget-object v11, p0, Lcom/android/lgesettings/lge/ShareConnection;->mDataTransfer:Landroid/preference/PreferenceCategory;

    const-string v12, "android_beam_settings"

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 134
    .local v1, androidBeam:Landroid/preference/Preference;
    iget-object v11, p0, Lcom/android/lgesettings/lge/ShareConnection;->mDataTransfer:Landroid/preference/PreferenceCategory;

    const-string v12, "nfc_settings"

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    .line 135
    .local v9, nfc_settings:Landroid/preference/Preference;
    iget-object v11, p0, Lcom/android/lgesettings/lge/ShareConnection;->mDataTransfer:Landroid/preference/PreferenceCategory;

    const-string v12, "sprint_manager"

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    .line 138
    .local v10, sprint_manager:Landroid/preference/Preference;
    const/4 v11, 0x1

    if-ne v5, v11, :cond_0

    .line 139
    const-string v11, "ShareConnection"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "jisu.kim MTK Dual: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const-string v11, "BR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "vee5ds"

    const-string v12, "ro.product.device"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 141
    const-string v11, "ShareConnection"

    const-string v12, "jisu.kim vee5ds"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ShareConnection;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 149
    :cond_0
    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v11

    iput-object v11, p0, Lcom/android/lgesettings/lge/ShareConnection;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 150
    iget-object v11, p0, Lcom/android/lgesettings/lge/ShareConnection;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v11, :cond_8

    .line 151
    const-string v11, "ShareConnection"

    const-string v12, "This device doesn\'t support NFC"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v11, p0, Lcom/android/lgesettings/lge/ShareConnection;->mDataTransfer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v11, v6}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 153
    iget-object v11, p0, Lcom/android/lgesettings/lge/ShareConnection;->mDataTransfer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v11, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 154
    iget-object v11, p0, Lcom/android/lgesettings/lge/ShareConnection;->mDataTransfer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v11, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 155
    iget-object v11, p0, Lcom/android/lgesettings/lge/ShareConnection;->mDataTransfer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v11, v10}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 156
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/lgesettings/lge/ShareConnection;->mNfcEnabler:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    .line 200
    .end local v1           #androidBeam:Landroid/preference/Preference;
    .end local v6           #nfc:Landroid/preference/Preference;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ShareConnection;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const-string v12, "com.lge.software.wfdService"

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_e

    .line 201
    iget-object v11, p0, Lcom/android/lgesettings/lge/ShareConnection;->mMediaShare:Landroid/preference/PreferenceCategory;

    const-string v12, "wifi_screen_settings"

    invoke-virtual {p0, v12}, Lcom/android/lgesettings/lge/ShareConnection;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 208
    :cond_2
    :goto_1
    const-string v11, "smart_share_beam"

    invoke-virtual {p0, v11}, Lcom/android/lgesettings/lge/ShareConnection;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceScreen;

    iput-object v11, p0, Lcom/android/lgesettings/lge/ShareConnection;->mSmartBeam:Landroid/preference/PreferenceScreen;

    .line 210
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ShareConnection;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/lgesettings/lge/ShareConnection;->isInstalledWiFlus(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 211
    iget-object v11, p0, Lcom/android/lgesettings/lge/ShareConnection;->mSmartBeam:Landroid/preference/PreferenceScreen;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 225
    :goto_2
    sget-boolean v11, Lcom/lge/config/ConfigBuildFlags;->CAPP_NFS:Z

    if-nez v11, :cond_3

    .line 226
    const-string v11, "network_storage_settings"

    invoke-virtual {p0, v11}, Lcom/android/lgesettings/lge/ShareConnection;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 227
    iget-object v11, p0, Lcom/android/lgesettings/lge/ShareConnection;->mFileNetwork:Landroid/preference/PreferenceCategory;

    const-string v12, "network_storage_settings"

    invoke-virtual {p0, v12}, Lcom/android/lgesettings/lge/ShareConnection;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 231
    :cond_3
    sget-boolean v11, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v11, :cond_4

    .line 232
    const-string v11, "network_storage_settings"

    invoke-virtual {p0, v11}, Lcom/android/lgesettings/lge/ShareConnection;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 233
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 234
    .local v4, filterLGMDM:Landroid/content/IntentFilter;
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v11

    invoke-virtual {v11, v4}, Lcom/android/lgesettings/MDMSettingsAdapter;->addWirelessSettingsPolicyChangeIntentFilter(Landroid/content/IntentFilter;)V

    .line 236
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ShareConnection;->getActivity()Landroid/app/Activity;

    move-result-object v11

    iget-object v12, p0, Lcom/android/lgesettings/lge/ShareConnection;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v11, v12, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 237
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v11

    const-string v12, "network_storage_settings"

    invoke-virtual {p0, v12}, Lcom/android/lgesettings/lge/ShareConnection;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/lgesettings/MDMSettingsAdapter;->setWirelessStorageMenu(Landroid/preference/Preference;)V

    .line 246
    .end local v4           #filterLGMDM:Landroid/content/IntentFilter;
    :cond_4
    iget-object v11, p0, Lcom/android/lgesettings/lge/ShareConnection;->mDataTransfer:Landroid/preference/PreferenceCategory;

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/android/lgesettings/lge/ShareConnection;->mDataTransfer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v11}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v11

    if-gtz v11, :cond_5

    .line 247
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ShareConnection;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/android/lgesettings/lge/ShareConnection;->mDataTransfer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 248
    :cond_5
    iget-object v11, p0, Lcom/android/lgesettings/lge/ShareConnection;->mMediaShare:Landroid/preference/PreferenceCategory;

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/android/lgesettings/lge/ShareConnection;->mMediaShare:Landroid/preference/PreferenceCategory;

    invoke-virtual {v11}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v11

    if-gtz v11, :cond_6

    .line 249
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ShareConnection;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/android/lgesettings/lge/ShareConnection;->mMediaShare:Landroid/preference/PreferenceCategory;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 250
    :cond_6
    iget-object v11, p0, Lcom/android/lgesettings/lge/ShareConnection;->mFileNetwork:Landroid/preference/PreferenceCategory;

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/android/lgesettings/lge/ShareConnection;->mFileNetwork:Landroid/preference/PreferenceCategory;

    invoke-virtual {v11}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v11

    if-gtz v11, :cond_7

    .line 251
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ShareConnection;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/android/lgesettings/lge/ShareConnection;->mFileNetwork:Landroid/preference/PreferenceCategory;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 256
    :cond_7
    return-void

    .line 158
    .restart local v1       #androidBeam:Landroid/preference/Preference;
    .restart local v6       #nfc:Landroid/preference/Preference;
    :cond_8
    invoke-static {}, Lcom/android/lgesettings/Utils;->hasFeatureNfcLock()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 159
    iget-object v11, p0, Lcom/android/lgesettings/lge/ShareConnection;->mDataTransfer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v11, v6}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 160
    iget-object v11, p0, Lcom/android/lgesettings/lge/ShareConnection;->mDataTransfer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v11, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 162
    const-string v11, "nfc_settings"

    invoke-virtual {p0, v11}, Lcom/android/lgesettings/lge/ShareConnection;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    .line 163
    .local v8, nfc_setting:Landroid/preference/PreferenceScreen;
    invoke-static {}, Lcom/android/lgesettings/Utils;->hasFeatureNfcLockForKDDI()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 164
    const v11, 0x7f08021d

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 169
    :goto_3
    new-instance v11, Lcom/android/lgesettings/nfc/LGNfcEnabler;

    invoke-direct {v11, v0, v8}, Lcom/android/lgesettings/nfc/LGNfcEnabler;-><init>(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    iput-object v11, p0, Lcom/android/lgesettings/lge/ShareConnection;->mNfcEnabler:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    .line 170
    const-string v11, "ShareConnection"

    const-string v12, "hasFeatureNfcLock"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .end local v1           #androidBeam:Landroid/preference/Preference;
    .end local v6           #nfc:Landroid/preference/Preference;
    .end local v8           #nfc_setting:Landroid/preference/PreferenceScreen;
    :goto_4
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ShareConnection;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/android/lgesettings/Utils;->hasSprintTouchV2(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 192
    const-string v11, "ShareConnection"

    const-string v12, "doesn\'t have sprint touch v2 or up version."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v11, p0, Lcom/android/lgesettings/lge/ShareConnection;->mDataTransfer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v11, v10}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 166
    .restart local v1       #androidBeam:Landroid/preference/Preference;
    .restart local v6       #nfc:Landroid/preference/Preference;
    .restart local v8       #nfc_setting:Landroid/preference/PreferenceScreen;
    :cond_9
    const v11, 0x7f080238

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 167
    const v11, 0x7f080239

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_3

    .line 172
    .end local v8           #nfc_setting:Landroid/preference/PreferenceScreen;
    :cond_a
    iget-object v11, p0, Lcom/android/lgesettings/lge/ShareConnection;->mDataTransfer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v11, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    move-object v7, v6

    .line 173
    check-cast v7, Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    .local v7, nfc_conv:Lcom/android/lgesettings/nfc/NfcSwitchPreference;
    move-object v2, v1

    .line 174
    check-cast v2, Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    .line 177
    .local v2, beam_conv:Lcom/android/lgesettings/nfc/NfcSwitchPreference;
    invoke-static {}, Lcom/android/lgesettings/Utils;->hasFeatureNfcInner()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 178
    iget-object v11, p0, Lcom/android/lgesettings/lge/ShareConnection;->mDataTransfer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v11, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 179
    new-instance v11, Lcom/android/lgesettings/nfc/LGNfcEnabler;

    check-cast v6, Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    .end local v6           #nfc:Landroid/preference/Preference;
    invoke-direct {v11, v0, v6}, Lcom/android/lgesettings/nfc/LGNfcEnabler;-><init>(Landroid/content/Context;Lcom/android/lgesettings/nfc/NfcSwitchPreference;)V

    iput-object v11, p0, Lcom/android/lgesettings/lge/ShareConnection;->mNfcEnabler:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    goto :goto_4

    .line 181
    .restart local v6       #nfc:Landroid/preference/Preference;
    :cond_b
    invoke-static {}, Lcom/android/lgesettings/Utils;->isORGFrench()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 182
    const v11, 0x7f0801ed

    invoke-virtual {v7, v11}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->setSummary(I)V

    .line 188
    :goto_5
    new-instance v11, Lcom/android/lgesettings/nfc/LGNfcEnabler;

    check-cast v6, Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    .end local v6           #nfc:Landroid/preference/Preference;
    check-cast v1, Lcom/android/lgesettings/nfc/NfcSwitchPreference;

    .end local v1           #androidBeam:Landroid/preference/Preference;
    invoke-direct {v11, v0, v6, v1}, Lcom/android/lgesettings/nfc/LGNfcEnabler;-><init>(Landroid/content/Context;Lcom/android/lgesettings/nfc/NfcSwitchPreference;Lcom/android/lgesettings/nfc/NfcSwitchPreference;)V

    iput-object v11, p0, Lcom/android/lgesettings/lge/ShareConnection;->mNfcEnabler:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    goto :goto_4

    .line 183
    .restart local v1       #androidBeam:Landroid/preference/Preference;
    .restart local v6       #nfc:Landroid/preference/Preference;
    :cond_c
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ShareConnection;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 184
    const v11, 0x7f080269

    invoke-virtual {v7, v11}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->setSummary(I)V

    goto :goto_5

    .line 186
    :cond_d
    const v11, 0x7f080268

    invoke-virtual {v7, v11}, Lcom/android/lgesettings/nfc/NfcSwitchPreference;->setSummary(I)V

    goto :goto_5

    .line 203
    .end local v1           #androidBeam:Landroid/preference/Preference;
    .end local v2           #beam_conv:Lcom/android/lgesettings/nfc/NfcSwitchPreference;
    .end local v6           #nfc:Landroid/preference/Preference;
    .end local v7           #nfc_conv:Lcom/android/lgesettings/nfc/NfcSwitchPreference;
    :cond_e
    iget-object v11, p0, Lcom/android/lgesettings/lge/ShareConnection;->mMediaShare:Landroid/preference/PreferenceCategory;

    if-eqz v11, :cond_2

    .line 204
    iget-object v11, p0, Lcom/android/lgesettings/lge/ShareConnection;->mMediaShare:Landroid/preference/PreferenceCategory;

    const-string v12, "wifi_screen_settings"

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Lcom/android/lgesettings/MiracastSwitchPreference;

    iput-object v11, p0, Lcom/android/lgesettings/lge/ShareConnection;->mMiracast:Lcom/android/lgesettings/MiracastSwitchPreference;

    goto/16 :goto_1

    .line 219
    :cond_f
    iget-object v11, p0, Lcom/android/lgesettings/lge/ShareConnection;->mSmartBeam:Landroid/preference/PreferenceScreen;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_2
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 490
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onDestroy()V

    .line 492
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v1, :cond_0

    .line 494
    :try_start_0
    const-string v1, "network_storage_settings"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/lge/ShareConnection;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 495
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ShareConnection;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/lge/ShareConnection;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 497
    :catch_0
    move-exception v0

    .line 498
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MDM"

    const-string v2, "mLGMDMReceiver unregisterReceiver "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/high16 v6, 0x1400

    const/4 v2, 0x1

    .line 345
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    const v4, 0x102002c

    if-ne v3, v4, :cond_0

    .line 346
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ShareConnection;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "settings_style"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 347
    .local v1, settingStyle:I
    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ShareConnection;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/lgesettings/Utils;->supportEasySettings(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 348
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 349
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "com.lge.settings.easy"

    const-string v4, "com.lge.settings.easy.EasySettings"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    const-string v3, "android.intent.extra.TEXT"

    const-string v4, "networks"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 352
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lge/ShareConnection;->startActivity(Landroid/content/Intent;)V

    .line 353
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ShareConnection;->finish()V

    .line 372
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #settingStyle:I
    :goto_0
    return v2

    .line 363
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    const/16 v4, 0x4321

    if-ne v3, v4, :cond_1

    .line 364
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 365
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v3, "com.lge.smartshare.dlna.action.launcher"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 367
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lge/ShareConnection;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 372
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/lgesettings/lge/ShareConnection;->mNfcEnabler:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/android/lgesettings/lge/ShareConnection;->mNfcEnabler:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    invoke-virtual {v0}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->pause()V

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/lge/ShareConnection;->mMiracast:Lcom/android/lgesettings/MiracastSwitchPreference;

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/android/lgesettings/lge/ShareConnection;->mMiracast:Lcom/android/lgesettings/MiracastSwitchPreference;

    invoke-virtual {v0}, Lcom/android/lgesettings/MiracastSwitchPreference;->pause()V

    .line 326
    :cond_1
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPause()V

    .line 327
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 261
    const-string v1, "smart_share_beam"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 262
    new-instance v0, Landroid/content/Intent;

    const-string v1, "wiflus.intent.action.SETTING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lge/ShareConnection;->startActivity(Landroid/content/Intent;)V

    .line 273
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    :goto_0
    return v1

    .line 264
    :cond_1
    const-string v1, "network_storage_settings"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    invoke-super {p0, p1, p2}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .parameter "menu"

    .prologue
    const/16 v2, 0x4321

    const/4 v1, 0x0

    .line 332
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 334
    const-string v0, "com.lge.smartshare"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lge/ShareConnection;->IsDLNAOptionMenu(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_0

    .line 336
    const v0, 0x7f080fba

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lge/ShareConnection;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 340
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 281
    iget-object v1, p0, Lcom/android/lgesettings/lge/ShareConnection;->mNfcEnabler:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    if-eqz v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/android/lgesettings/lge/ShareConnection;->mNfcEnabler:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    invoke-virtual {v1}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->resume()V

    .line 284
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/lge/ShareConnection;->mMiracast:Lcom/android/lgesettings/MiracastSwitchPreference;

    if-eqz v1, :cond_1

    .line 285
    iget-object v1, p0, Lcom/android/lgesettings/lge/ShareConnection;->mMiracast:Lcom/android/lgesettings/MiracastSwitchPreference;

    invoke-virtual {v1}, Lcom/android/lgesettings/MiracastSwitchPreference;->resume()V

    .line 288
    :cond_1
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v1, :cond_2

    .line 290
    const-string v1, "wifi_screen_settings"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/lge/ShareConnection;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 291
    .local v0, miracastPref:Landroid/preference/Preference;
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/lgesettings/MDMSettingsAdapter;->setMiracastPreference(Landroid/preference/Preference;)Z

    .line 295
    .end local v0           #miracastPref:Landroid/preference/Preference;
    :cond_2
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ShareConnection;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 299
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onResume()V

    .line 301
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ShareConnection;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/lge/ShareConnection;->isInstalledWiFlus(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 307
    iget-object v1, p0, Lcom/android/lgesettings/lge/ShareConnection;->mSmartBeam:Landroid/preference/PreferenceScreen;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 311
    :goto_0
    return-void

    .line 309
    :cond_3
    iget-object v1, p0, Lcom/android/lgesettings/lge/ShareConnection;->mSmartBeam:Landroid/preference/PreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0
.end method
