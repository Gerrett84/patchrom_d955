.class public Lcom/android/lgesettings/lge/DeviceInfoLge;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "DeviceInfoLge.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/lge/DeviceInfoLge$RenameEditTextPreference;,
        Lcom/android/lgesettings/lge/DeviceInfoLge$Utf8ByteLengthFilter;
    }
.end annotation


# static fields
.field private static operator_code:Ljava/lang/String;


# instance fields
.field private mAboutPhonePreference:Landroid/preference/Preference;

.field private mDeviceNamePref:Landroid/preference/EditTextPreference;

.field private mHardwareInfo:Landroid/preference/Preference;

.field private mLegalInfo:Landroid/preference/Preference;

.field private mRenameDeviceNamePref:Lcom/android/lgesettings/lge/DeviceInfoLge$RenameEditTextPreference;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLge;->mToast:Landroid/widget/Toast;

    .line 158
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/lge/DeviceInfoLge;)Landroid/preference/EditTextPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLge;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/lge/DeviceInfoLge;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLge;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/lge/DeviceInfoLge;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLge;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/lge/DeviceInfoLge;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 490
    .local v0, pref:Landroid/preference/Preference;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLge;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 491
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLge;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 499
    :cond_0
    :goto_0
    return-void

    .line 493
    :cond_1
    if-eqz v0, :cond_0

    .line 496
    const-string v1, "aboutphone  # DeviceInfoLge"

    const-string v2, "removePreferenceFromScreen() getPreferenceScreen() == null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "preferenceGroup"
    .parameter "preference"
    .parameter "property"

    .prologue
    .line 476
    invoke-static {p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 478
    if-eqz p1, :cond_0

    .line 479
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/lgesettings/lge/DeviceInfoLge;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 481
    :catch_0
    move-exception v0

    .line 482
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "aboutphone  # DeviceInfoLge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' missing and no \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' preference"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    const v12, 0x7f0803fd

    const v11, 0x7f0803d1

    const v10, 0x7f0803cf

    const v9, 0x7f0803cb

    const/4 v8, 0x1

    .line 220
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v1

    .line 222
    .local v1, activePhoneType:I
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLge;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "com.lge.updatecenter"

    invoke-static {v5, v6}, Lcom/android/lgesettings/Utils;->IsVersionCheck(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 225
    .local v2, mUpdateCenter:Z
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 227
    const-string v5, "aboutphone  # DeviceInfoLge"

    const-string v6, "onCreate"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const v5, 0x7f060017

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/lge/DeviceInfoLge;->addPreferencesFromResource(I)V

    .line 230
    const-string v5, "hardwareinformation"

    invoke-direct {p0, v5}, Lcom/android/lgesettings/lge/DeviceInfoLge;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 233
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/lgesettings/lge/DeviceInfoLge;->operator_code:Ljava/lang/String;

    .line 235
    const-string v5, "my_phone_name"

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/lge/DeviceInfoLge;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/EditTextPreference;

    iput-object v5, p0, Lcom/android/lgesettings/lge/DeviceInfoLge;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    .line 237
    const-string v5, "status"

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/lge/DeviceInfoLge;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/lgesettings/lge/DeviceInfoLge;->mAboutPhonePreference:Landroid/preference/Preference;

    .line 247
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLge;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "safetylegal"

    const-string v7, "ro.url.safetylegal"

    invoke-direct {p0, v5, v6, v7}, Lcom/android/lgesettings/lge/DeviceInfoLge;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v5, "icongr"

    invoke-direct {p0, v5}, Lcom/android/lgesettings/lge/DeviceInfoLge;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 270
    const-string v5, "VZW"

    sget-object v6, Lcom/android/lgesettings/lge/DeviceInfoLge;->operator_code:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 271
    iget-object v5, p0, Lcom/android/lgesettings/lge/DeviceInfoLge;->mAboutPhonePreference:Landroid/preference/Preference;

    invoke-virtual {p0, v12}, Lcom/android/lgesettings/lge/DeviceInfoLge;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 280
    :goto_0
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLge;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/lgesettings/Utils;->isEmbededBattery(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_c

    const-string v5, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 281
    const-string v5, "battery"

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/lge/DeviceInfoLge;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    const v6, 0x7f080ac3

    invoke-virtual {p0, v6}, Lcom/android/lgesettings/lge/DeviceInfoLge;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 286
    :goto_1
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLge;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 287
    const-string v5, "status"

    invoke-direct {p0, v5}, Lcom/android/lgesettings/lge/DeviceInfoLge;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 288
    const-string v5, "network"

    invoke-direct {p0, v5}, Lcom/android/lgesettings/lge/DeviceInfoLge;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 289
    iget-object v5, p0, Lcom/android/lgesettings/lge/DeviceInfoLge;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    const v6, 0x7f0803fb

    invoke-virtual {p0, v6}, Lcom/android/lgesettings/lge/DeviceInfoLge;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/EditTextPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 294
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLge;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 297
    .local v0, act:Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLge;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 301
    .local v4, parentPreference:Landroid/preference/PreferenceGroup;
    const-string v5, "system_update_settings"

    invoke-static {v0, v4, v5, v8}, Lcom/android/lgesettings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 305
    const-string v5, "contributors"

    invoke-static {v0, v4, v5, v8}, Lcom/android/lgesettings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 307
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLge;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 308
    const-string v5, "phoneidentity"

    invoke-direct {p0, v5}, Lcom/android/lgesettings/lge/DeviceInfoLge;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 314
    :goto_2
    const-string v5, "ro.product.model"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "L-05E"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 315
    const-string v5, "update_center"

    invoke-direct {p0, v5}, Lcom/android/lgesettings/lge/DeviceInfoLge;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 316
    const-string v5, "system_update_settings"

    invoke-direct {p0, v5}, Lcom/android/lgesettings/lge/DeviceInfoLge;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 326
    :goto_3
    const-string v5, "aboutphone  # DeviceInfoLge"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Build.DEVICE :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const-string v5, "aboutphone  # DeviceInfoLge"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "country:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const-string v5, "hardwareinformation"

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/lge/DeviceInfoLge;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/lgesettings/lge/DeviceInfoLge;->mHardwareInfo:Landroid/preference/Preference;

    .line 331
    iget-object v5, p0, Lcom/android/lgesettings/lge/DeviceInfoLge;->mHardwareInfo:Landroid/preference/Preference;

    if-eqz v5, :cond_2

    .line 332
    const-string v5, "MPCS"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 334
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLge;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/lgesettings/Utils;->isEmbededBattery(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 335
    const-string v5, "ro.lge.hw.revision"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "ro.pcb_ver"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 336
    :cond_1
    iget-object v5, p0, Lcom/android/lgesettings/lge/DeviceInfoLge;->mHardwareInfo:Landroid/preference/Preference;

    invoke-virtual {p0, v9}, Lcom/android/lgesettings/lge/DeviceInfoLge;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 353
    :cond_2
    :goto_4
    const-string v5, "legalinformation"

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/lge/DeviceInfoLge;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/lgesettings/lge/DeviceInfoLge;->mLegalInfo:Landroid/preference/Preference;

    .line 354
    iget-object v5, p0, Lcom/android/lgesettings/lge/DeviceInfoLge;->mLegalInfo:Landroid/preference/Preference;

    if-eqz v5, :cond_4

    .line 355
    const-string v5, "SPR"

    sget-object v6, Lcom/android/lgesettings/lge/DeviceInfoLge;->operator_code:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "BM"

    sget-object v6, Lcom/android/lgesettings/lge/DeviceInfoLge;->operator_code:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "MPCS"

    sget-object v6, Lcom/android/lgesettings/lge/DeviceInfoLge;->operator_code:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 356
    :cond_3
    const-string v5, "ro.build.target_operator"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "TRF"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 357
    iget-object v5, p0, Lcom/android/lgesettings/lge/DeviceInfoLge;->mLegalInfo:Landroid/preference/Preference;

    invoke-virtual {p0, v10}, Lcom/android/lgesettings/lge/DeviceInfoLge;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 370
    :cond_4
    :goto_5
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLge;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/lgesettings/Utils;->isEmbededBattery(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_19

    .line 371
    const-string v5, "aboutphone  # DeviceInfoLge"

    const-string v6, "not support device_serial_info"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const-string v5, "device_serial_info"

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/lge/DeviceInfoLge;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 373
    const-string v5, "device_serial_info"

    invoke-direct {p0, v5}, Lcom/android/lgesettings/lge/DeviceInfoLge;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 388
    :cond_5
    :goto_6
    const-string v5, "US"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "ro.product.model"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "LGL25L"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 389
    :cond_6
    const-string v5, "patentinfo"

    invoke-direct {p0, v5}, Lcom/android/lgesettings/lge/DeviceInfoLge;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 413
    :cond_7
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLge;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "vzw_hidden_feature_otadm"

    invoke-static {v5, v6, v8}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 414
    .local v3, otadmSetting:I
    if-nez v3, :cond_8

    .line 415
    const-string v5, "system_update_settings"

    invoke-direct {p0, v5}, Lcom/android/lgesettings/lge/DeviceInfoLge;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 421
    :cond_8
    const-string v5, "ORG"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1e

    .line 422
    const-string v5, "development_settings"

    invoke-direct {p0, v5}, Lcom/android/lgesettings/lge/DeviceInfoLge;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 430
    :cond_9
    :goto_7
    iget-object v5, p0, Lcom/android/lgesettings/lge/DeviceInfoLge;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v5, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 432
    iget-object v5, p0, Lcom/android/lgesettings/lge/DeviceInfoLge;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v5

    new-array v6, v8, [Landroid/text/InputFilter;

    const/4 v7, 0x0

    new-instance v8, Lcom/android/lgesettings/lge/DeviceInfoLge$Utf8ByteLengthFilter;

    const/16 v9, 0x20

    invoke-direct {v8, p0, v9}, Lcom/android/lgesettings/lge/DeviceInfoLge$Utf8ByteLengthFilter;-><init>(Lcom/android/lgesettings/lge/DeviceInfoLge;I)V

    aput-object v8, v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 436
    new-instance v5, Lcom/android/lgesettings/lge/DeviceInfoLge$RenameEditTextPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLge;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, p0, v6, v7}, Lcom/android/lgesettings/lge/DeviceInfoLge$RenameEditTextPreference;-><init>(Lcom/android/lgesettings/lge/DeviceInfoLge;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v5, p0, Lcom/android/lgesettings/lge/DeviceInfoLge;->mRenameDeviceNamePref:Lcom/android/lgesettings/lge/DeviceInfoLge$RenameEditTextPreference;

    .line 437
    iget-object v5, p0, Lcom/android/lgesettings/lge/DeviceInfoLge;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLge;->read_db_device_name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 438
    iget-object v5, p0, Lcom/android/lgesettings/lge/DeviceInfoLge;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLge;->read_db_device_name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 439
    iget-object v5, p0, Lcom/android/lgesettings/lge/DeviceInfoLge;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v5

    iget-object v6, p0, Lcom/android/lgesettings/lge/DeviceInfoLge;->mRenameDeviceNamePref:Lcom/android/lgesettings/lge/DeviceInfoLge$RenameEditTextPreference;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 440
    return-void

    .line 273
    .end local v0           #act:Landroid/app/Activity;
    .end local v3           #otadmSetting:I
    .end local v4           #parentPreference:Landroid/preference/PreferenceGroup;
    :cond_a
    const/4 v5, 0x2

    if-eq v5, v1, :cond_b

    .line 274
    iget-object v5, p0, Lcom/android/lgesettings/lge/DeviceInfoLge;->mAboutPhonePreference:Landroid/preference/Preference;

    invoke-virtual {p0, v12}, Lcom/android/lgesettings/lge/DeviceInfoLge;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 276
    :cond_b
    iget-object v5, p0, Lcom/android/lgesettings/lge/DeviceInfoLge;->mAboutPhonePreference:Landroid/preference/Preference;

    const v6, 0x7f0803fc

    invoke-virtual {p0, v6}, Lcom/android/lgesettings/lge/DeviceInfoLge;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 283
    :cond_c
    const-string v5, "battery"

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/lge/DeviceInfoLge;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    const v6, 0x7f0803ca

    invoke-virtual {p0, v6}, Lcom/android/lgesettings/lge/DeviceInfoLge;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 310
    .restart local v0       #act:Landroid/app/Activity;
    .restart local v4       #parentPreference:Landroid/preference/PreferenceGroup;
    :cond_d
    const-string v5, "wifi"

    invoke-direct {p0, v5}, Lcom/android/lgesettings/lge/DeviceInfoLge;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 317
    :cond_e
    if-eqz v2, :cond_f

    .line 318
    const-string v5, "update_center_dcm"

    invoke-direct {p0, v5}, Lcom/android/lgesettings/lge/DeviceInfoLge;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 319
    const-string v5, "system_update_settings"

    invoke-direct {p0, v5}, Lcom/android/lgesettings/lge/DeviceInfoLge;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 321
    :cond_f
    const-string v5, "update_center_dcm"

    invoke-direct {p0, v5}, Lcom/android/lgesettings/lge/DeviceInfoLge;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 322
    const-string v5, "update_center"

    invoke-direct {p0, v5}, Lcom/android/lgesettings/lge/DeviceInfoLge;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 338
    :cond_10
    iget-object v5, p0, Lcom/android/lgesettings/lge/DeviceInfoLge;->mHardwareInfo:Landroid/preference/Preference;

    invoke-virtual {p0, v11}, Lcom/android/lgesettings/lge/DeviceInfoLge;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 340
    :cond_11
    const-string v5, "u0_cdma"

    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    const-string v5, "BM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 341
    const-string v5, "ro.lge.hw.revision"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    const-string v5, "ro.pcb_ver"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 342
    :cond_12
    iget-object v5, p0, Lcom/android/lgesettings/lge/DeviceInfoLge;->mHardwareInfo:Landroid/preference/Preference;

    invoke-virtual {p0, v9}, Lcom/android/lgesettings/lge/DeviceInfoLge;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 344
    :cond_13
    iget-object v5, p0, Lcom/android/lgesettings/lge/DeviceInfoLge;->mHardwareInfo:Landroid/preference/Preference;

    invoke-virtual {p0, v11}, Lcom/android/lgesettings/lge/DeviceInfoLge;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 347
    :cond_14
    iget-object v5, p0, Lcom/android/lgesettings/lge/DeviceInfoLge;->mHardwareInfo:Landroid/preference/Preference;

    invoke-virtual {p0, v9}, Lcom/android/lgesettings/lge/DeviceInfoLge;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 359
    :cond_15
    iget-object v5, p0, Lcom/android/lgesettings/lge/DeviceInfoLge;->mLegalInfo:Landroid/preference/Preference;

    const v6, 0x7f0803d0

    invoke-virtual {p0, v6}, Lcom/android/lgesettings/lge/DeviceInfoLge;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 361
    :cond_16
    const-string v5, "CMCC"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    const-string v5, "CN"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 362
    :cond_17
    const-string v5, "Deviceinfolge"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Config.getOperator() IN"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v5, p0, Lcom/android/lgesettings/lge/DeviceInfoLge;->mLegalInfo:Landroid/preference/Preference;

    const v6, 0x7f080522

    invoke-virtual {p0, v6}, Lcom/android/lgesettings/lge/DeviceInfoLge;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 365
    :cond_18
    iget-object v5, p0, Lcom/android/lgesettings/lge/DeviceInfoLge;->mLegalInfo:Landroid/preference/Preference;

    invoke-virtual {p0, v10}, Lcom/android/lgesettings/lge/DeviceInfoLge;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 376
    :cond_19
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLge;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1b

    const-string v5, "KR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 377
    const-string v5, "device_serial_info"

    invoke-direct {p0, v5}, Lcom/android/lgesettings/lge/DeviceInfoLge;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 383
    :cond_1a
    :goto_8
    const-string v5, "aboutphone  # DeviceInfoLge"

    const-string v6, "support device_serial_info"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 378
    :cond_1b
    const-string v5, "CN"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 379
    const-string v5, "device_serial_info"

    invoke-direct {p0, v5}, Lcom/android/lgesettings/lge/DeviceInfoLge;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_8

    .line 380
    :cond_1c
    const-string v5, "HK"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    const-string v5, "TW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 381
    :cond_1d
    const-string v5, "device_serial_info"

    invoke-direct {p0, v5}, Lcom/android/lgesettings/lge/DeviceInfoLge;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_8

    .line 424
    .restart local v3       #otadmSetting:I
    :cond_1e
    const-string v5, "LG-E975"

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 425
    const-string v5, "development_settings"

    invoke-direct {p0, v5}, Lcom/android/lgesettings/lge/DeviceInfoLge;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_7
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "pref"

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLge;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLge;->read_db_device_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLge;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 464
    iget-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLge;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 465
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 470
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onResume()V

    .line 472
    const-string v0, "aboutphone  # DeviceInfoLge"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    return-void
.end method

.method public read_db_device_name()Ljava/lang/String;
    .locals 4

    .prologue
    .line 443
    const/4 v0, 0x0

    .line 444
    .local v0, device_name:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLge;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 445
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLge;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lg_device_name"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 450
    :goto_0
    if-nez v0, :cond_1

    .line 451
    const-string v1, "aboutphone  # DeviceInfoLge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "read_db_device_name() : device_name : (on DB) , default ~~~ : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    const-string v0, "Optimus"

    .line 456
    :goto_1
    return-object v0

    .line 447
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DeviceInfoLge;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lg_device_name"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 454
    :cond_1
    const-string v1, "aboutphone  # DeviceInfoLge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "read_db_device_name() : device_name : (on DB) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
