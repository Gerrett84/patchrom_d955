.class public Lcom/android/lgesettings/SecuritySettings;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static mCheckFullMediaException:I


# instance fields
.field private final mAlwaysAsk:I

.field private final mDisable:I

.field private final mEnable:I

.field private mIccLockPreferences:Landroid/preference/PreferenceScreen;

.field private mIsDataEncrypt:Z

.field private mIsPrimary:Z

.field private mIsSdcardEncrypt:Z

.field private final mLGMDMReceiver:Landroid/content/BroadcastReceiver;

.field private mListToggleAppInstallation:Lcom/android/lgesettings/DoubleTitleListPreference;

.field private mResetCredentials:Landroid/preference/Preference;

.field private mShowPassword:Landroid/preference/CheckBoxPreference;

.field private final mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field private mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

.field private mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

.field private mWarnInstallApps:Landroid/content/DialogInterface;

.field private unknownCheck:Ljava/lang/String;

.field private unkownlist:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/lgesettings/SecuritySettings;->mDisable:I

    .line 97
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/lgesettings/SecuritySettings;->mEnable:I

    .line 98
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/lgesettings/SecuritySettings;->mAlwaysAsk:I

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/SecuritySettings;->mIccLockPreferences:Landroid/preference/PreferenceScreen;

    .line 158
    new-instance v0, Lcom/android/lgesettings/SecuritySettings$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/SecuritySettings$1;-><init>(Lcom/android/lgesettings/SecuritySettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/SecuritySettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    .line 765
    new-instance v0, Lcom/android/lgesettings/SecuritySettings$2;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/SecuritySettings$2;-><init>(Lcom/android/lgesettings/SecuritySettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/SecuritySettings;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static CheckFullMediaExceptionService()I
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 467
    sput v5, Lcom/android/lgesettings/SecuritySettings;->mCheckFullMediaException:I

    .line 468
    const-string v2, "ro.lge.capp_sdencryption_full"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 469
    .local v0, mFull_enable:Ljava/lang/Boolean;
    const-string v2, "ro.lge.capp_sdencryption_media"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 470
    .local v1, mMedia_enable:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v2, v3, :cond_0

    .line 471
    sput v4, Lcom/android/lgesettings/SecuritySettings;->mCheckFullMediaException:I

    .line 480
    :goto_0
    const-string v2, "SecuritySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CheckFullMediaExceptionService"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/lgesettings/SecuritySettings;->mCheckFullMediaException:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    sget v2, Lcom/android/lgesettings/SecuritySettings;->mCheckFullMediaException:I

    return v2

    .line 472
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v2, v3, :cond_1

    .line 473
    sput v3, Lcom/android/lgesettings/SecuritySettings;->mCheckFullMediaException:I

    goto :goto_0

    .line 474
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v2, v3, :cond_2

    .line 475
    const/4 v2, 0x2

    sput v2, Lcom/android/lgesettings/SecuritySettings;->mCheckFullMediaException:I

    goto :goto_0

    .line 477
    :cond_2
    sput v5, Lcom/android/lgesettings/SecuritySettings;->mCheckFullMediaException:I

    goto :goto_0
.end method

.method public static SDEncryption_checkEnableProperty()Z
    .locals 3

    .prologue
    .line 488
    const/4 v0, 0x0

    .line 489
    .local v0, status:Z
    const-string v1, "persist.sdcrypto.enabled"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 490
    const/4 v0, 0x1

    .line 493
    :cond_0
    return v0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 20

    .prologue
    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    .line 186
    .local v16, root:Landroid/preference/PreferenceScreen;
    if-eqz v16, :cond_0

    .line 187
    invoke-virtual/range {v16 .. v16}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 189
    :cond_0
    const v1, 0x7f06004d

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    .line 195
    const-string v1, "device_policy"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/admin/DevicePolicyManager;

    .line 198
    .local v8, dpm:Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-nez v1, :cond_f

    const/4 v1, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/lgesettings/SecuritySettings;->mIsPrimary:Z

    .line 200
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/lgesettings/SecuritySettings;->mIsPrimary:Z

    if-nez v1, :cond_1

    .line 202
    const-string v1, "owner_info_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    .line 203
    .local v13, ownerInfoPref:Landroid/preference/Preference;
    if-eqz v13, :cond_1

    .line 204
    const v1, 0x7f08013e

    invoke-virtual {v13, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 208
    .end local v13           #ownerInfoPref:Landroid/preference/Preference;
    :cond_1
    new-instance v17, Lcom/android/lgesettings/SDEncryption;

    invoke-direct/range {v17 .. v17}, Lcom/android/lgesettings/SDEncryption;-><init>()V

    .line 209
    .local v17, sdencryption:Lcom/android/lgesettings/SDEncryption;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/lgesettings/SecuritySettings;->mIsPrimary:Z

    if-eqz v1, :cond_3

    .line 211
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-nez v1, :cond_2

    .line 212
    invoke-virtual {v8}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 272
    :cond_2
    :goto_1
    :pswitch_0
    invoke-static {}, Lcom/android/lgesettings/SecuritySettings;->CheckFullMediaExceptionService()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/lgesettings/SecuritySettings;->mIsSdcardEncrypt:Z

    if-eqz v1, :cond_3

    .line 273
    const/4 v11, 0x0

    .line 274
    .local v11, info:Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/SecuritySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 275
    .local v14, pm:Landroid/content/pm/PackageManager;
    invoke-static {}, Lcom/android/lgesettings/SecuritySettings;->SDEncryption_checkEnableProperty()Z

    move-result v1

    if-nez v1, :cond_14

    .line 276
    const-string v1, "sd_card_encryption"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const-string v2, "com.android.lgesettings.SDEncryptionHelp_Extension"

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 277
    const-string v1, "SecuritySettings"

    const-string v2, "SDEncryptionHelp_Extension"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    .end local v11           #info:Landroid/content/pm/ApplicationInfo;
    .end local v14           #pm:Landroid/content/pm/PackageManager;
    :cond_3
    :goto_2
    invoke-static {}, Lcom/android/lgesettings/Utils;->isMultiSimEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/android/lgesettings/Utils;->isTripleSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 291
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/SecuritySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/lgesettings/SecuritySettings;->mIccLockPreferences:Landroid/preference/PreferenceScreen;

    .line 293
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/SecuritySettings;->mIccLockPreferences:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0803b0

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 294
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 295
    .local v12, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v12, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.SelSubSecuritySettings"

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    const-string v1, "PACKAGE"

    const-string v2, "com.android.phone"

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    const-string v1, "TARGET_CLASS"

    const-string v2, "com.android.phone.IccLockSettings"

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/SecuritySettings;->mIccLockPreferences:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v12}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 300
    new-instance v10, Landroid/preference/PreferenceCategory;

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v10, v1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 301
    .local v10, iccLockCat:Landroid/preference/PreferenceCategory;
    const v1, 0x7f0803b1

    invoke-virtual {v10, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 302
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 303
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/SecuritySettings;->mIccLockPreferences:Landroid/preference/PreferenceScreen;

    invoke-virtual {v10, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 310
    .end local v10           #iccLockCat:Landroid/preference/PreferenceCategory;
    .end local v12           #intent:Landroid/content/Intent;
    :cond_5
    const v1, 0x7f060054

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 312
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    .line 315
    .local v15, prefSet:Landroid/preference/PreferenceScreen;
    invoke-static {}, Lcom/android/lgesettings/Utils;->isMultiSimEnabled()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/android/lgesettings/Utils;->isTripleSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 316
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/SecuritySettings;->updateSimLockEnable()V

    .line 319
    :cond_7
    invoke-static {}, Lcom/android/lgesettings/Utils;->isMultiSimEnabled()Z

    move-result v1

    if-nez v1, :cond_17

    invoke-static {}, Lcom/android/lgesettings/Utils;->isTripleSimEnabled()Z

    move-result v1

    if-nez v1, :cond_17

    .line 321
    const-string v1, "LGU"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "KT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "SKT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 323
    :cond_8
    const-string v1, "sim_lock"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0808aa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 325
    const-string v1, "sim_lock_menu"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0808a9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 331
    :cond_9
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v18

    .line 332
    .local v18, tm:Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/lgesettings/SecuritySettings;->mIsPrimary:Z

    if-eqz v1, :cond_a

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v1

    if-nez v1, :cond_15

    .line 347
    :cond_a
    :goto_3
    const-string v1, "MPCS"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "SPR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "BM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "CRK"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "USC"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "US"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    :cond_b
    const-string v1, "TRF"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "ACG"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "US"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 356
    :cond_d
    const-string v1, "sim_lock"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 364
    .end local v18           #tm:Landroid/telephony/TelephonyManager;
    :cond_e
    :goto_4
    const-string v1, "show_password"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/lgesettings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    .line 366
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "show_password"

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    :goto_5
    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 370
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/lgesettings/SecuritySettings;->mIsPrimary:Z

    if-eqz v1, :cond_19

    .line 371
    const-string v1, "reset_credentials"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/lgesettings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    .line 377
    :goto_6
    const-string v1, "toggle_install_applications"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/lgesettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    .line 378
    const-string v1, "list_toggle_install_applications"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/DoubleTitleListPreference;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/lgesettings/SecuritySettings;->mListToggleAppInstallation:Lcom/android/lgesettings/DoubleTitleListPreference;

    .line 380
    const-string v1, "KR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 382
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/SecuritySettings;->mListToggleAppInstallation:Lcom/android/lgesettings/DoubleTitleListPreference;

    const v2, 0x7f080560

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/DoubleTitleListPreference;->setMainTitle(Ljava/lang/String;)V

    .line 383
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/SecuritySettings;->mListToggleAppInstallation:Lcom/android/lgesettings/DoubleTitleListPreference;

    const v2, 0x7f080d27

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/DoubleTitleListPreference;->setSubTitle(Ljava/lang/String;)V

    .line 385
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/SecuritySettings;->mListToggleAppInstallation:Lcom/android/lgesettings/DoubleTitleListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/android/lgesettings/DoubleTitleListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 387
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v19

    .line 388
    .local v19, unkownvalue:[Ljava/lang/String;
    move-object/from16 v0, v19

    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/lgesettings/SecuritySettings;->unkownlist:[Ljava/lang/String;

    .line 390
    const/4 v9, 0x0

    .local v9, i:I
    :goto_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/SecuritySettings;->unkownlist:[Ljava/lang/String;

    array-length v1, v1

    if-ge v9, v1, :cond_1a

    .line 391
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/SecuritySettings;->unkownlist:[Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08012a

    add-int/2addr v3, v9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    .line 393
    const-string v1, "SecuritySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mListToggleAppInstallation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/lgesettings/SecuritySettings;->unkownlist:[Ljava/lang/String;

    aget-object v3, v3, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 198
    .end local v9           #i:I
    .end local v15           #prefSet:Landroid/preference/PreferenceScreen;
    .end local v17           #sdencryption:Lcom/android/lgesettings/SDEncryption;
    .end local v19           #unkownvalue:[Ljava/lang/String;
    :cond_f
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 215
    .restart local v17       #sdencryption:Lcom/android/lgesettings/SDEncryption;
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/lgesettings/SecuritySettings;->mIsDataEncrypt:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 217
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/lgesettings/SecuritySettings;->mIsSdcardEncrypt:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    .line 218
    invoke-virtual/range {v17 .. v17}, Lcom/android/lgesettings/SDEncryption;->getSDcardEncryptedMenuId()I

    move-result v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 219
    const-string v1, "sd_card_encryption"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 221
    const-string v1, "persist.sdcrypto.enabled"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 222
    const-string v1, "sd_card_encryption"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const v2, 0x7f080148

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 231
    :goto_8
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v1, :cond_2

    .line 232
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/lgesettings/SecuritySettings;->mIsSdcardEncrypt:Z

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "security_encryption"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/lgesettings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    const-string v6, "sd_card_encryption"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/lgesettings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/lgesettings/MDMSettingsAdapter;->setEncryptionSummary(ZILandroid/content/Context;Landroid/preference/Preference;Landroid/preference/Preference;)V

    goto/16 :goto_1

    .line 224
    :cond_10
    const-string v1, "sd_card_encryption"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const v2, 0x7f080d8a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 227
    :cond_11
    const v1, 0x7f060052

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SecuritySettings;->addPreferencesFromResource(I)V

    goto :goto_8

    .line 244
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/lgesettings/SecuritySettings;->mIsDataEncrypt:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 246
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/lgesettings/SecuritySettings;->mIsSdcardEncrypt:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    .line 247
    invoke-virtual/range {v17 .. v17}, Lcom/android/lgesettings/SDEncryption;->getSDcardUnencryptedMenuId()I

    move-result v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 248
    const-string v1, "sd_card_encryption"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 249
    const-string v1, "persist.sdcrypto.enabled"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 250
    const-string v1, "sd_card_encryption"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const v2, 0x7f080148

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 258
    :goto_9
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v1, :cond_2

    .line 259
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/lgesettings/SecuritySettings;->mIsSdcardEncrypt:Z

    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "security_encryption"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/lgesettings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    const-string v6, "sd_card_encryption"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/lgesettings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/lgesettings/MDMSettingsAdapter;->setEncryptionSummary(ZILandroid/content/Context;Landroid/preference/Preference;Landroid/preference/Preference;)V

    goto/16 :goto_1

    .line 252
    :cond_12
    const-string v1, "sd_card_encryption"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const v2, 0x7f080d8a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 255
    :cond_13
    const v1, 0x7f06005a

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SecuritySettings;->addPreferencesFromResource(I)V

    goto :goto_9

    .line 279
    .restart local v11       #info:Landroid/content/pm/ApplicationInfo;
    .restart local v14       #pm:Landroid/content/pm/PackageManager;
    :cond_14
    const-string v1, "sd_card_encryption"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const-string v2, "com.android.lgesettings.SDEncryptionSettings_Extension"

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 280
    const-string v1, "SecuritySettings"

    const-string v2, "SDEncryptionSettings_Extension"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 340
    .end local v11           #info:Landroid/content/pm/ApplicationInfo;
    .end local v14           #pm:Landroid/content/pm/PackageManager;
    .restart local v15       #prefSet:Landroid/preference/PreferenceScreen;
    .restart local v18       #tm:Landroid/telephony/TelephonyManager;
    :cond_15
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_16

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-nez v1, :cond_a

    .line 344
    :cond_16
    const-string v1, "sim_lock"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_3

    .line 360
    .end local v18           #tm:Landroid/telephony/TelephonyManager;
    :cond_17
    const-string v1, "sim_lock"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    .line 366
    :cond_18
    const/4 v1, 0x0

    goto/16 :goto_5

    .line 373
    :cond_19
    const-string v1, "credentials_management"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SecuritySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 396
    .restart local v9       #i:I
    .restart local v19       #unkownvalue:[Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/SecuritySettings;->mListToggleAppInstallation:Lcom/android/lgesettings/DoubleTitleListPreference;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/SecuritySettings;->unkownlist:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/DoubleTitleListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 398
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/SecuritySettings;->mListToggleAppInstallation:Lcom/android/lgesettings/DoubleTitleListPreference;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/SecuritySettings;->unkownlist:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/DoubleTitleListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 400
    const/4 v1, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/android/lgesettings/SecuritySettings;->isNonMarketAppsAllowedValue()I

    move-result v2

    if-ne v1, v2, :cond_1d

    .line 401
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/SecuritySettings;->mListToggleAppInstallation:Lcom/android/lgesettings/DoubleTitleListPreference;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/DoubleTitleListPreference;->setValueIndex(I)V

    .line 402
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/SecuritySettings;->mListToggleAppInstallation:Lcom/android/lgesettings/DoubleTitleListPreference;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/SecuritySettings;->unkownlist:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/DoubleTitleListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 412
    :goto_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/SecuritySettings;->unkownlist:[Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lcom/android/lgesettings/SecuritySettings;->isNonMarketAppsAllowedValue()I

    move-result v2

    aget-object v1, v1, v2

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/lgesettings/SecuritySettings;->unknownCheck:Ljava/lang/String;

    .line 414
    const-string v1, "toggle_install_applications"

    invoke-virtual {v15, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 416
    const-string v1, "SecuritySettings"

    const-string v2, "List "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    .end local v9           #i:I
    .end local v19           #unkownvalue:[Ljava/lang/String;
    :goto_b
    const-string v1, "toggle_verify_applications"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/lgesettings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    .line 431
    invoke-direct/range {p0 .. p0}, Lcom/android/lgesettings/SecuritySettings;->showVerifierSetting()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 432
    invoke-direct/range {p0 .. p0}, Lcom/android/lgesettings/SecuritySettings;->isVerifierInstalled()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 433
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    invoke-direct/range {p0 .. p0}, Lcom/android/lgesettings/SecuritySettings;->isVerifyAppsEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 447
    :goto_c
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v1, :cond_1b

    .line 448
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/MDMSettingsAdapter;->setUnknownSourceEnableMenu(Landroid/preference/CheckBoxPreference;)V

    .line 449
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/MDMSettingsAdapter;->setPasswordTypingVisibleMenu(Landroid/preference/CheckBoxPreference;)V

    .line 450
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/SecuritySettings;->mListToggleAppInstallation:Lcom/android/lgesettings/DoubleTitleListPreference;

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/MDMSettingsAdapter;->setUnknownSourceEnableMenu(Lcom/android/lgesettings/DoubleTitleListPreference;)V

    .line 455
    :cond_1b
    const-string v1, "CMCC"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1c

    .line 456
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f080c50

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 457
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f080c50

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    .line 458
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f080c50

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    .line 462
    :cond_1c
    return-object v16

    .line 404
    .restart local v9       #i:I
    .restart local v19       #unkownvalue:[Ljava/lang/String;
    :cond_1d
    const/4 v1, 0x2

    invoke-direct/range {p0 .. p0}, Lcom/android/lgesettings/SecuritySettings;->isNonMarketAppsAllowedValue()I

    move-result v2

    if-ne v1, v2, :cond_1e

    .line 405
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/SecuritySettings;->mListToggleAppInstallation:Lcom/android/lgesettings/DoubleTitleListPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/DoubleTitleListPreference;->setValueIndex(I)V

    .line 406
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/SecuritySettings;->mListToggleAppInstallation:Lcom/android/lgesettings/DoubleTitleListPreference;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/SecuritySettings;->unkownlist:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/DoubleTitleListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 408
    :cond_1e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/SecuritySettings;->mListToggleAppInstallation:Lcom/android/lgesettings/DoubleTitleListPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/DoubleTitleListPreference;->setValueIndex(I)V

    .line 409
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/SecuritySettings;->mListToggleAppInstallation:Lcom/android/lgesettings/DoubleTitleListPreference;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/SecuritySettings;->unkownlist:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/DoubleTitleListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 420
    .end local v9           #i:I
    .end local v19           #unkownvalue:[Ljava/lang/String;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-direct/range {p0 .. p0}, Lcom/android/lgesettings/SecuritySettings;->isNonMarketAppsAllowed()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 422
    const-string v1, "SecuritySettings"

    const-string v2, "checkbox "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const-string v1, "list_toggle_install_applications"

    invoke-virtual {v15, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_b

    .line 435
    :cond_20
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 436
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_c

    .line 439
    :cond_21
    const-string v1, "device_admin_category"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceGroup;

    .line 440
    .local v7, deviceAdminCategory:Landroid/preference/PreferenceGroup;
    if-eqz v7, :cond_22

    .line 441
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_c

    .line 443
    :cond_22
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/lgesettings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_c

    .line 212
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isNonMarketAppsAllowed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 500
    invoke-virtual {p0}, Lcom/android/lgesettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "install_non_market_apps"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isNonMarketAppsAllowedValue()I
    .locals 5

    .prologue
    .line 509
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "install_non_market_apps"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 514
    .local v1, value:I
    :goto_0
    const-string v2, "SecuritySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isNonMarketAppsAllowedList value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    return v1

    .line 510
    .end local v1           #value:I
    :catch_0
    move-exception v0

    .line 511
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const/4 v1, 0x0

    .restart local v1       #value:I
    goto :goto_0
.end method

.method private isVerifierInstalled()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 534
    invoke-virtual {p0}, Lcom/android/lgesettings/SecuritySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 535
    .local v0, pm:Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 536
    .local v2, verification:Landroid/content/Intent;
    const-string v5, "application/vnd.android.package-archive"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 537
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 538
    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 539
    .local v1, receivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method private isVerifyAppsEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 529
    invoke-virtual {p0}, Lcom/android/lgesettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "package_verifier_enable"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setNonMarketAppsAllowed(I)V
    .locals 2
    .parameter "allowed"

    .prologue
    .line 526
    invoke-virtual {p0}, Lcom/android/lgesettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "install_non_market_apps"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 527
    return-void
.end method

.method private setNonMarketAppsAllowed(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 521
    invoke-virtual {p0}, Lcom/android/lgesettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "install_non_market_apps"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 523
    return-void

    .line 521
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showVerifierSetting()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 543
    invoke-virtual {p0}, Lcom/android/lgesettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "verifier_setting_visible"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private warnAppInstallation()V
    .locals 6

    .prologue
    const v5, 0x7f080c53

    const v4, 0x7f080bfa

    const v3, 0x7f08059d

    const v2, 0x1010355

    .line 550
    const-string v0, "KR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/lgesettings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/lgesettings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/lgesettings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    .line 568
    :goto_0
    return-void

    .line 560
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/lgesettings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/lgesettings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/lgesettings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/lgesettings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080106

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 734
    invoke-super {p0, p1, p2, p3}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 735
    invoke-direct {p0}, Lcom/android/lgesettings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 736
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const v5, 0x7f08012c

    const/4 v4, 0x2

    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 571
    const-string v0, "KR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 572
    iget-object v0, p0, Lcom/android/lgesettings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-ne p1, v0, :cond_0

    .line 573
    if-ne p2, v3, :cond_0

    .line 574
    iget-object v0, p0, Lcom/android/lgesettings/SecuritySettings;->mListToggleAppInstallation:Lcom/android/lgesettings/DoubleTitleListPreference;

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/android/lgesettings/SecuritySettings;->unknownCheck:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v2, v0, :cond_1

    .line 576
    iget-object v0, p0, Lcom/android/lgesettings/SecuritySettings;->mListToggleAppInstallation:Lcom/android/lgesettings/DoubleTitleListPreference;

    invoke-virtual {v0, v4}, Lcom/android/lgesettings/DoubleTitleListPreference;->setValueIndex(I)V

    .line 577
    invoke-direct {p0, v2}, Lcom/android/lgesettings/SecuritySettings;->setNonMarketAppsAllowed(I)V

    .line 578
    iget-object v0, p0, Lcom/android/lgesettings/SecuritySettings;->mListToggleAppInstallation:Lcom/android/lgesettings/DoubleTitleListPreference;

    invoke-virtual {v0, v5}, Lcom/android/lgesettings/DoubleTitleListPreference;->setSummary(I)V

    .line 598
    :cond_0
    :goto_0
    return-void

    .line 580
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/SecuritySettings;->mListToggleAppInstallation:Lcom/android/lgesettings/DoubleTitleListPreference;

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/DoubleTitleListPreference;->setValueIndex(I)V

    .line 581
    invoke-direct {p0, v4}, Lcom/android/lgesettings/SecuritySettings;->setNonMarketAppsAllowed(I)V

    .line 582
    iget-object v0, p0, Lcom/android/lgesettings/SecuritySettings;->mListToggleAppInstallation:Lcom/android/lgesettings/DoubleTitleListPreference;

    const v1, 0x7f08012b

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/DoubleTitleListPreference;->setSummary(I)V

    goto :goto_0

    .line 590
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-ne p1, v0, :cond_0

    if-ne p2, v3, :cond_0

    .line 591
    invoke-direct {p0, v2}, Lcom/android/lgesettings/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    .line 593
    iget-object v0, p0, Lcom/android/lgesettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/android/lgesettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 173
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 176
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v1, :cond_0

    .line 177
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 178
    .local v0, filterLGMDM:Landroid/content/IntentFilter;
    invoke-static {}, Lcom/android/lgesettings/MDMSettingsAdapter;->getInstance()Lcom/android/lgesettings/MDMSettingsAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/lgesettings/MDMSettingsAdapter;->addSecuritySettingChangeIntentFilter(Landroid/content/IntentFilter;)V

    .line 179
    invoke-virtual {p0}, Lcom/android/lgesettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/SecuritySettings;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 182
    .end local v0           #filterLGMDM:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 602
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onDestroy()V

    .line 603
    iget-object v1, p0, Lcom/android/lgesettings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-eqz v1, :cond_0

    .line 604
    iget-object v1, p0, Lcom/android/lgesettings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    invoke-interface {v1}, Landroid/content/DialogInterface;->dismiss()V

    .line 608
    :cond_0
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v1, :cond_1

    .line 610
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/SecuritySettings;->mLGMDMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    :cond_1
    :goto_0
    return-void

    .line 611
    :catch_0
    move-exception v0

    .line 612
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MDM"

    const-string v2, "mLGMDMReceiver unregisterReceiver "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 725
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPause()V

    .line 726
    invoke-virtual {p0}, Lcom/android/lgesettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/SecuritySettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 727
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const v8, 0x7f08012c

    const v7, 0x7f08012a

    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 661
    const-string v1, "SecuritySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceChange = newValue"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 665
    .local v0, newState:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/lgesettings/SecuritySettings;->mListToggleAppInstallation:Lcom/android/lgesettings/DoubleTitleListPreference;

    if-ne p1, v1, :cond_2

    move-object v1, p2

    .line 666
    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/lgesettings/SecuritySettings;->unknownCheck:Ljava/lang/String;

    .line 669
    invoke-virtual {p0, v7}, Lcom/android/lgesettings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v2, v1, :cond_0

    .line 670
    invoke-direct {p0, v3}, Lcom/android/lgesettings/SecuritySettings;->setNonMarketAppsAllowed(I)V

    .line 671
    iget-object v1, p0, Lcom/android/lgesettings/SecuritySettings;->mListToggleAppInstallation:Lcom/android/lgesettings/DoubleTitleListPreference;

    invoke-virtual {v1, v3}, Lcom/android/lgesettings/DoubleTitleListPreference;->setValueIndex(I)V

    .line 672
    iget-object v1, p0, Lcom/android/lgesettings/SecuritySettings;->mListToggleAppInstallation:Lcom/android/lgesettings/DoubleTitleListPreference;

    invoke-virtual {v1, v7}, Lcom/android/lgesettings/DoubleTitleListPreference;->setSummary(I)V

    :goto_0
    move v1, v2

    .line 690
    :goto_1
    return v1

    .line 674
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/SecuritySettings;->unknownCheck:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/android/lgesettings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v2, v1, :cond_1

    .line 675
    iget-object v1, p0, Lcom/android/lgesettings/SecuritySettings;->mListToggleAppInstallation:Lcom/android/lgesettings/DoubleTitleListPreference;

    invoke-virtual {v1, v6}, Lcom/android/lgesettings/DoubleTitleListPreference;->setValueIndex(I)V

    .line 676
    invoke-direct {p0, v2}, Lcom/android/lgesettings/SecuritySettings;->setNonMarketAppsAllowed(I)V

    .line 677
    iget-object v1, p0, Lcom/android/lgesettings/SecuritySettings;->mListToggleAppInstallation:Lcom/android/lgesettings/DoubleTitleListPreference;

    invoke-virtual {v1, v8}, Lcom/android/lgesettings/DoubleTitleListPreference;->setSummary(I)V

    .line 683
    :goto_2
    invoke-direct {p0}, Lcom/android/lgesettings/SecuritySettings;->warnAppInstallation()V

    goto :goto_0

    .line 679
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/SecuritySettings;->mListToggleAppInstallation:Lcom/android/lgesettings/DoubleTitleListPreference;

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/DoubleTitleListPreference;->setValueIndex(I)V

    .line 680
    invoke-direct {p0, v6}, Lcom/android/lgesettings/SecuritySettings;->setNonMarketAppsAllowed(I)V

    .line 681
    iget-object v1, p0, Lcom/android/lgesettings/SecuritySettings;->mListToggleAppInstallation:Lcom/android/lgesettings/DoubleTitleListPreference;

    const v3, 0x7f08012b

    invoke-virtual {v1, v3}, Lcom/android/lgesettings/DoubleTitleListPreference;->setSummary(I)V

    goto :goto_2

    :cond_2
    move v1, v3

    .line 690
    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 696
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 697
    .local v0, key:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/lgesettings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_2

    .line 698
    invoke-virtual {p0}, Lcom/android/lgesettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "show_password"

    iget-object v5, p0, Lcom/android/lgesettings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 720
    :cond_1
    :goto_0
    return v2

    .line 700
    :cond_2
    iget-object v3, p0, Lcom/android/lgesettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_4

    .line 701
    iget-object v3, p0, Lcom/android/lgesettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 702
    iget-object v3, p0, Lcom/android/lgesettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 703
    invoke-direct {p0}, Lcom/android/lgesettings/SecuritySettings;->warnAppInstallation()V

    goto :goto_0

    .line 705
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/lgesettings/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    goto :goto_0

    .line 707
    :cond_4
    const-string v3, "toggle_verify_applications"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 708
    invoke-virtual {p0}, Lcom/android/lgesettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "package_verifier_enable"

    iget-object v5, p0, Lcom/android/lgesettings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_5

    move v1, v2

    :cond_5
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 712
    :cond_6
    iget-object v1, p0, Lcom/android/lgesettings/SecuritySettings;->mListToggleAppInstallation:Lcom/android/lgesettings/DoubleTitleListPreference;

    if-eq p2, v1, :cond_1

    .line 717
    invoke-super {p0, p1, p2}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 636
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onResume()V

    .line 641
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 642
    .local v0, filter:Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/lgesettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/SecuritySettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 645
    invoke-virtual {p0}, Lcom/android/lgesettings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x2070030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/lgesettings/SecuritySettings;->mIsDataEncrypt:Z

    .line 646
    invoke-virtual {p0}, Lcom/android/lgesettings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x2070031

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/lgesettings/SecuritySettings;->mIsSdcardEncrypt:Z

    .line 648
    const-string v2, "SecuritySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume data_encrypt ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/lgesettings/SecuritySettings;->mIsDataEncrypt:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  sd_encrypt = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/lgesettings/SecuritySettings;->mIsSdcardEncrypt:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    invoke-direct {p0}, Lcom/android/lgesettings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 653
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v1

    .line 654
    .local v1, state:Landroid/security/KeyStore$State;
    iget-object v2, p0, Lcom/android/lgesettings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    if-eqz v2, :cond_0

    .line 655
    iget-object v3, p0, Lcom/android/lgesettings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    sget-object v2, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    if-eq v1, v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 657
    :cond_0
    return-void

    .line 655
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public updateSimLockEnable()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 740
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 741
    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    .line 742
    const-string v1, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 743
    const-string v0, "PERM_DISABLED"

    const-string v1, "gsm.sim.state"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 744
    const-string v0, "hong"

    const-string v1, "PERM_ENABLED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    const-string v0, "sim_lock"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 761
    :goto_0
    return-void

    .line 747
    :cond_0
    const-string v0, "hong"

    const-string v1, "PERM_DISABLED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    const-string v0, "sim_lock"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 751
    :cond_1
    const-string v1, "sim_lock"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 752
    const-string v1, "SecuritySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentSimStatus : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    const-string v0, "SecuritySettings"

    const-string v1, "TelephonyManager.SIM_STATE_READY : 5"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    const-string v0, "SecuritySettings"

    const-string v1, "KEY_SIM_LOCK : false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 758
    :cond_2
    const-string v0, "sim_lock"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 759
    const-string v0, "SecuritySettings"

    const-string v1, "KEY_SIM_LOCK : true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
