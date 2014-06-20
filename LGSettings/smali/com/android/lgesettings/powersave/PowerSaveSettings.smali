.class public Lcom/android/lgesettings/powersave/PowerSaveSettings;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "PowerSaveSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference$OnTreeClickListener;


# instance fields
.field private enable_handler:Landroid/os/Handler;

.field private handler:Landroid/os/Handler;

.field private mAutoScreenTone:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

.field private mBreadCrumb:Lcom/android/lgesettings/SettingsBreadCrumb;

.field private mBrightness:Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;

.field private mContext:Landroid/content/Context;

.field private mEcoMode:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

.field private mEmotionalLED:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

.field private mEnableObserver:Landroid/database/ContentObserver;

.field private mFrontLed:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

.field private mNotiLED:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

.field private mPowerSave:Lcom/android/lgesettings/powersave/PowerSave;

.field private mPowerSaveEnabler:Lcom/android/lgesettings/powersave/PowerSaveEnabler;

.field private mPowerSaveMode:Lcom/android/lgesettings/powersave/PowerSaveListPreference;

.field private mPowerSavingItemsCategory:Landroid/preference/PreferenceCategory;

.field private mScreenTimeout:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

.field private mStartObserver:Landroid/database/ContentObserver;

.field private mToggleAnimations:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

.field private mToggleBluetooth:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

.field private mToggleGps:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

.field private mToggleNfc:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

.field private mToggleSync:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

.field private mToggleTouch:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

.field private mToggleWifi:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    .line 147
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->handler:Landroid/os/Handler;

    .line 148
    new-instance v0, Lcom/android/lgesettings/powersave/PowerSaveSettings$1;

    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->handler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/lgesettings/powersave/PowerSaveSettings$1;-><init>(Lcom/android/lgesettings/powersave/PowerSaveSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mStartObserver:Landroid/database/ContentObserver;

    .line 158
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->enable_handler:Landroid/os/Handler;

    .line 159
    new-instance v0, Lcom/android/lgesettings/powersave/PowerSaveSettings$2;

    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->enable_handler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/lgesettings/powersave/PowerSaveSettings$2;-><init>(Lcom/android/lgesettings/powersave/PowerSaveSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mEnableObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private CheckIfNoItemChecked()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 562
    iget-object v3, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mToggleWifi:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v3}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mToggleBluetooth:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v3}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mToggleSync:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v3}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mToggleTouch:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v3}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mBrightness:Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;

    invoke-virtual {v3}, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;->isChecked()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mScreenTimeout:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v3}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mPowerSavingItemsCategory:Landroid/preference/PreferenceCategory;

    const-string v4, "power_save_front_led"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mFrontLed:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v3}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_5

    :cond_0
    move v0, v1

    .line 566
    .local v0, result:Z
    :goto_0
    invoke-static {}, Lcom/android/lgesettings/Utils;->supportQuadCore()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 567
    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mEcoMode:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v3}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_6

    move v0, v1

    .line 569
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v3, "KR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 570
    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mToggleNfc:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v3}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_7

    move v0, v1

    .line 574
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/lgesettings/Utils;->supportEmotionalLED(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 575
    iget-object v3, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/lgesettings/Utils;->supportHomeKey(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 576
    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mEmotionalLED:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v3}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_8

    move v0, v1

    .line 583
    :cond_3
    :goto_3
    iget-object v3, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/lgesettings/Utils;->isOLEDModel(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 584
    if-eqz v0, :cond_b

    iget-object v3, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mAutoScreenTone:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v3}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_b

    move v0, v1

    .line 587
    :cond_4
    :goto_4
    return v0

    .end local v0           #result:Z
    :cond_5
    move v0, v2

    .line 562
    goto :goto_0

    .restart local v0       #result:Z
    :cond_6
    move v0, v2

    .line 567
    goto :goto_1

    :cond_7
    move v0, v2

    .line 570
    goto :goto_2

    :cond_8
    move v0, v2

    .line 576
    goto :goto_3

    .line 578
    :cond_9
    if-eqz v0, :cond_a

    iget-object v3, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mNotiLED:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v3}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_a

    move v0, v1

    :goto_5
    goto :goto_3

    :cond_a
    move v0, v2

    goto :goto_5

    :cond_b
    move v0, v2

    .line 584
    goto :goto_4
.end method

.method private ShowToast(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 591
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 592
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/powersave/PowerSaveSettings;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/powersave/PowerSaveSettings;)Lcom/android/lgesettings/powersave/PowerSaveEnabler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mPowerSaveEnabler:Lcom/android/lgesettings/powersave/PowerSaveEnabler;

    return-object v0
.end method

.method private checkPreference()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 399
    iget-object v3, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mToggleWifi:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "power_save_wifi"

    invoke-static {v0, v4, v1}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->setChecked(Z)V

    .line 401
    iget-object v3, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mToggleSync:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "power_save_sync"

    invoke-static {v0, v4, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->setChecked(Z)V

    .line 403
    iget-object v3, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mToggleBluetooth:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "power_save_bt"

    invoke-static {v0, v4, v1}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->setChecked(Z)V

    .line 407
    iget-object v3, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mToggleNfc:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "power_save_nfc"

    invoke-static {v0, v4, v1}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->setChecked(Z)V

    .line 409
    iget-object v3, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mToggleTouch:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "power_save_touch"

    invoke-static {v0, v4, v1}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->setChecked(Z)V

    .line 417
    iget-object v3, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mEcoMode:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "power_save_cpu_adjust"

    invoke-static {v0, v4, v1}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->setChecked(Z)V

    .line 422
    iget-object v3, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mBrightness:Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "power_save_brightness_adjust"

    invoke-static {v0, v4, v1}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    invoke-virtual {v3, v0}, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;->setChecked(Z)V

    .line 424
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mBrightness:Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "power_save_brightness"

    const/16 v5, 0x14

    invoke-static {v3, v4, v5}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;->setValue(Ljava/lang/String;)V

    .line 427
    iget-object v3, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mScreenTimeout:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "power_save_screen_timeout_adjust"

    invoke-static {v0, v4, v1}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    invoke-virtual {v3, v0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->setChecked(Z)V

    .line 429
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mScreenTimeout:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "power_save_screen_timeout"

    const/16 v5, 0x3a98

    invoke-static {v3, v4, v5}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->setValue(Ljava/lang/String;)V

    .line 432
    iget-object v3, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mFrontLed:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "power_save_front_led_adjust"

    invoke-static {v0, v4, v1}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_8
    invoke-virtual {v3, v0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->setChecked(Z)V

    .line 434
    const-string v0, "ATT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 435
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mFrontLed:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "power_save_front_led"

    const/16 v5, 0xbb8

    invoke-static {v3, v4, v5}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->setValue(Ljava/lang/String;)V

    .line 443
    :goto_9
    iget-object v3, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mNotiLED:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "power_save_emotional_led"

    invoke-static {v0, v4, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    :goto_a
    invoke-virtual {v3, v0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->setChecked(Z)V

    .line 448
    iget-object v3, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mEmotionalLED:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "power_save_emotional_led"

    invoke-static {v0, v4, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    :goto_b
    invoke-virtual {v3, v0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->setChecked(Z)V

    .line 452
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mAutoScreenTone:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "power_save_auto_screen_tone"

    invoke-static {v3, v4, v1}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_c

    :goto_c
    invoke-virtual {v0, v1}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->setChecked(Z)V

    .line 455
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mBrightness:Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->updateSummary(Landroid/preference/Preference;)V

    .line 457
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mScreenTimeout:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->updateSummary(Landroid/preference/Preference;)V

    .line 458
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mFrontLed:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->updateSummary(Landroid/preference/Preference;)V

    .line 459
    return-void

    :cond_0
    move v0, v2

    .line 399
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 401
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 403
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 407
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 409
    goto/16 :goto_4

    :cond_5
    move v0, v2

    .line 417
    goto/16 :goto_5

    :cond_6
    move v0, v2

    .line 422
    goto/16 :goto_6

    :cond_7
    move v0, v2

    .line 427
    goto/16 :goto_7

    :cond_8
    move v0, v2

    .line 432
    goto/16 :goto_8

    .line 438
    :cond_9
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mFrontLed:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "power_save_front_led"

    const/16 v5, 0x5dc

    invoke-static {v3, v4, v5}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->setValue(Ljava/lang/String;)V

    goto :goto_9

    :cond_a
    move v0, v2

    .line 443
    goto :goto_a

    :cond_b
    move v0, v2

    .line 448
    goto :goto_b

    :cond_c
    move v1, v2

    .line 452
    goto :goto_c
.end method

.method private initPreference()V
    .locals 3

    .prologue
    .line 299
    const v1, 0x7f060038

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->addPreferencesFromResource(I)V

    .line 301
    const-string v1, "power_save_mode"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/powersave/PowerSaveListPreference;

    iput-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mPowerSaveMode:Lcom/android/lgesettings/powersave/PowerSaveListPreference;

    .line 302
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mPowerSaveMode:Lcom/android/lgesettings/powersave/PowerSaveListPreference;

    invoke-virtual {v1, p0}, Lcom/android/lgesettings/powersave/PowerSaveListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 304
    const-string v1, "power_saving_items_category"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mPowerSavingItemsCategory:Landroid/preference/PreferenceCategory;

    .line 305
    const-string v1, "toggle_power_save_wifi"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    iput-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mToggleWifi:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    .line 306
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mToggleWifi:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v1, p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->setOnTreeClickListener(Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference$OnTreeClickListener;)V

    .line 307
    const-string v1, "toggle_power_save_sync"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    iput-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mToggleSync:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    .line 308
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mToggleSync:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v1, p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->setOnTreeClickListener(Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference$OnTreeClickListener;)V

    .line 309
    const-string v1, "toggle_power_save_bluetooth"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    iput-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mToggleBluetooth:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    .line 310
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mToggleBluetooth:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v1, p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->setOnTreeClickListener(Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference$OnTreeClickListener;)V

    .line 313
    const-string v1, "toggle_power_save_nfc"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    iput-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mToggleNfc:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    .line 314
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mToggleNfc:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v1, p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->setOnTreeClickListener(Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference$OnTreeClickListener;)V

    .line 323
    const-string v1, "power_save_ecomode"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    iput-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mEcoMode:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    .line 326
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mPowerSavingItemsCategory:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mEcoMode:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 333
    const-string v1, "power_save_brightness"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;

    iput-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mBrightness:Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;

    .line 334
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mBrightness:Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;

    invoke-virtual {v1, p0}, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 335
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mBrightness:Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;

    invoke-virtual {v1, p0}, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;->setOnTreeClickListener(Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference$OnTreeClickListener;)V

    .line 337
    const-string v1, "power_save_screen_timeout"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    iput-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mScreenTimeout:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    .line 338
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mScreenTimeout:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v1, p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 339
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mScreenTimeout:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v1, p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->setOnTreeClickListener(Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference$OnTreeClickListener;)V

    .line 341
    const-string v1, "power_save_front_led"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    iput-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mFrontLed:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    .line 342
    invoke-static {}, Lcom/android/lgesettings/Utils;->supportFrontTouchKeyLight()Z

    move-result v1

    if-nez v1, :cond_2

    .line 343
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mPowerSavingItemsCategory:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mFrontLed:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 349
    :goto_0
    const-string v1, "toggle_power_save_touch"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    iput-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mToggleTouch:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    .line 350
    const-string v1, "ro.device.hapticfeedback"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, hapticfeedback:Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 352
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mPowerSavingItemsCategory:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mToggleTouch:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 360
    :goto_1
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "KR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 361
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mPowerSavingItemsCategory:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mToggleNfc:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 366
    :cond_1
    const-string v1, "toggle_power_save_notification_led"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    iput-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mNotiLED:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    .line 367
    const-string v1, "toggle_power_save_emotional_led"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    iput-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mEmotionalLED:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    .line 369
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/lgesettings/Utils;->supportEmotionalLED(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 370
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mPowerSavingItemsCategory:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mNotiLED:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 371
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mPowerSavingItemsCategory:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mEmotionalLED:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 385
    :goto_2
    const-string v1, "toggle_power_save_oled"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    iput-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mAutoScreenTone:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    .line 386
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/lgesettings/Utils;->isOLEDModel(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 387
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mPowerSavingItemsCategory:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mAutoScreenTone:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 396
    :goto_3
    return-void

    .line 345
    .end local v0           #hapticfeedback:Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mFrontLed:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v1, p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 346
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mFrontLed:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v1, p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->setOnTreeClickListener(Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference$OnTreeClickListener;)V

    goto/16 :goto_0

    .line 355
    .restart local v0       #hapticfeedback:Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mToggleTouch:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v1, p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 356
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mToggleTouch:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v1, p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->setOnTreeClickListener(Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference$OnTreeClickListener;)V

    goto :goto_1

    .line 373
    :cond_4
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/lgesettings/Utils;->supportHomeKey(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 374
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mPowerSavingItemsCategory:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mNotiLED:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 375
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mEmotionalLED:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v1, p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 376
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mEmotionalLED:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v1, p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->setOnTreeClickListener(Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference$OnTreeClickListener;)V

    goto :goto_2

    .line 378
    :cond_5
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mPowerSavingItemsCategory:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mEmotionalLED:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 379
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mNotiLED:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v1, p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 380
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mNotiLED:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v1, p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->setOnTreeClickListener(Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference$OnTreeClickListener;)V

    goto :goto_2

    .line 389
    :cond_6
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mAutoScreenTone:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v1, p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 390
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mAutoScreenTone:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v1, p0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->setOnTreeClickListener(Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference$OnTreeClickListener;)V

    goto :goto_3
.end method

.method private setPowerSaveListValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "name"
    .parameter "objValue"

    .prologue
    .line 740
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 742
    .local v0, value:I
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 743
    return-void
.end method

.method private setPowerSaveModeAllowed(Ljava/lang/Object;)V
    .locals 7
    .parameter "objValue"

    .prologue
    .line 727
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 728
    .local v3, value:I
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "power_save_mode"

    const/16 v6, 0x1e

    invoke-static {v4, v5, v6}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 729
    .local v2, preState:I
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "power_save_mode"

    invoke-static {v4, v5, v3}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 731
    iget-object v4, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "power_save_enabled"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 732
    .local v0, enabled:I
    if-lez v0, :cond_0

    .line 733
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.lgesettings.powersave.action.MODE_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 734
    .local v1, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 736
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private updatePowerSaverModeSummary(Ljava/lang/Object;)V
    .locals 13
    .parameter "value"

    .prologue
    .line 688
    :try_start_0
    const-string v3, "-1"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 689
    iget-object v3, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mPowerSaveMode:Lcom/android/lgesettings/powersave/PowerSaveListPreference;

    const v4, 0x7f081205

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/lgesettings/powersave/PowerSaveListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 713
    :goto_0
    return-void

    .line 691
    :cond_0
    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 692
    .local v2, immediatly_value:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 693
    iget-object v3, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mPowerSaveMode:Lcom/android/lgesettings/powersave/PowerSaveListPreference;

    invoke-virtual {v3, v2}, Lcom/android/lgesettings/powersave/PowerSaveListPreference;->setValue(Ljava/lang/String;)V

    .line 694
    iget-object v3, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mPowerSaveMode:Lcom/android/lgesettings/powersave/PowerSaveListPreference;

    invoke-virtual {v3}, Lcom/android/lgesettings/powersave/PowerSaveListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mPowerSaveMode:Lcom/android/lgesettings/powersave/PowerSaveListPreference;

    invoke-virtual {v3}, Lcom/android/lgesettings/powersave/PowerSaveListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 695
    .local v1, entry:Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mPowerSaveMode:Lcom/android/lgesettings/powersave/PowerSaveListPreference;

    invoke-virtual {v3, v1}, Lcom/android/lgesettings/powersave/PowerSaveListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 710
    .end local v1           #entry:Ljava/lang/String;
    .end local v2           #immediatly_value:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 711
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v3, "PowerSaveSettings"

    const-string v4, "could not persist Auto power save mode"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 694
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local v2       #immediatly_value:Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v1, ""

    goto :goto_1

    .line 697
    :cond_2
    invoke-static {}, Lcom/android/lgesettings/Utils;->isRTLLanguage()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 698
    iget-object v3, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mPowerSaveMode:Lcom/android/lgesettings/powersave/PowerSaveListPreference;

    const v4, 0x7f081230

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    const-string v9, "%d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/lgesettings/powersave/PowerSaveListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 704
    :cond_3
    iget-object v3, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mPowerSaveMode:Lcom/android/lgesettings/powersave/PowerSaveListPreference;

    const v4, 0x7f081230

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u200e"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/lgesettings/powersave/PowerSaveListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private updateState()V
    .locals 5

    .prologue
    .line 464
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_save_mode"

    const/16 v4, 0x1e

    invoke-static {v2, v3, v4}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 467
    .local v1, mode:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_save_started"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    .line 468
    .local v0, isChecked:Z
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->setItemMenuEnabled(Z)V

    .line 470
    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mPowerSaveMode:Lcom/android/lgesettings/powersave/PowerSaveListPreference;

    invoke-virtual {v2, v1}, Lcom/android/lgesettings/powersave/PowerSaveListPreference;->setValue(Ljava/lang/String;)V

    .line 471
    invoke-direct {p0, v1}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->updatePowerSaverModeSummary(Ljava/lang/Object;)V

    .line 472
    return-void

    .line 467
    .end local v0           #isChecked:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateSummary(Landroid/preference/Preference;)V
    .locals 1
    .parameter "preference"

    .prologue
    .line 748
    instance-of v0, p1, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 749
    check-cast v0, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 750
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 751
    const-string v0, "%s"

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 765
    :cond_0
    :goto_0
    return-void

    .line 754
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mBrightness:Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;

    if-ne p1, v0, :cond_2

    .line 755
    const v0, 0x7f081214

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 757
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mScreenTimeout:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    if-ne p1, v0, :cond_3

    .line 758
    const v0, 0x7f08123a

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 760
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mFrontLed:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    if-ne p1, v0, :cond_0

    .line 761
    const v0, 0x7f08123c

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0x10

    const/4 v7, -0x2

    const/4 v2, 0x0

    .line 203
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 204
    .local v1, activity:Landroid/app/Activity;
    new-instance v0, Landroid/widget/Switch;

    invoke-direct {v0, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 205
    .local v0, actionBarSwitch:Landroid/widget/Switch;
    new-instance v4, Lcom/android/lgesettings/powersave/PowerSaveSettings$3;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/powersave/PowerSaveSettings$3;-><init>(Lcom/android/lgesettings/powersave/PowerSaveSettings;)V

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 216
    .local v3, padding:I
    invoke-virtual {v0, v2, v2, v3, v2}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 217
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/lgesettings/SettingsBreadCrumb;->isAttached(Landroid/app/Activity;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 218
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 220
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const v6, 0x800015

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v0, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 228
    :cond_0
    new-instance v4, Lcom/android/lgesettings/powersave/PowerSaveEnabler;

    invoke-direct {v4, v1, v0, p0}, Lcom/android/lgesettings/powersave/PowerSaveEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;Landroid/app/Fragment;)V

    iput-object v4, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mPowerSaveEnabler:Lcom/android/lgesettings/powersave/PowerSaveEnabler;

    .line 229
    iget-object v4, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "power_save_enabled"

    invoke-static {v4, v5, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_1

    const/4 v2, 0x1

    .line 230
    .local v2, isEnabled:Z
    :cond_1
    iget-object v4, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mPowerSaveEnabler:Lcom/android/lgesettings/powersave/PowerSaveEnabler;

    invoke-virtual {v4, v2}, Lcom/android/lgesettings/powersave/PowerSaveEnabler;->setSwitchChecked(Z)V

    .line 231
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 232
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 174
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 176
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mContext:Landroid/content/Context;

    .line 178
    invoke-direct {p0}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->initPreference()V

    .line 179
    invoke-direct {p0}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->checkPreference()V

    .line 181
    new-instance v0, Lcom/android/lgesettings/powersave/PowerSave;

    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/lgesettings/powersave/PowerSave;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mPowerSave:Lcom/android/lgesettings/powersave/PowerSave;

    .line 187
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "power_save_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mPowerSave:Lcom/android/lgesettings/powersave/PowerSave;

    invoke-virtual {v0}, Lcom/android/lgesettings/powersave/PowerSave;->isRunningPowerSaveService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    const-string v0, "PowerSaveSettings"

    const-string v1, "Re-start PowerSaveService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/lgesettings/powersave/PowerSaveService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 192
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 198
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 638
    invoke-super {p0, p1, p2}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 639
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 289
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onDestroy()V

    .line 290
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 295
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onDestroyView()V

    .line 296
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 643
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 682
    :goto_0
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 645
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.lgesettings.powersave.POWERSAVE_GO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 646
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 643
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 262
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPause()V

    .line 263
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mStartObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 264
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 267
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mPowerSaveEnabler:Lcom/android/lgesettings/powersave/PowerSaveEnabler;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mPowerSaveEnabler:Lcom/android/lgesettings/powersave/PowerSaveEnabler;

    invoke-virtual {v0}, Lcom/android/lgesettings/powersave/PowerSaveEnabler;->pause()V

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mBrightness:Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mBrightness:Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;

    invoke-virtual {v0}, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;->restorePreview()V

    .line 275
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/SettingsBreadCrumb;->isAttached(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 276
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mBreadCrumb:Lcom/android/lgesettings/SettingsBreadCrumb;

    if-eqz v0, :cond_2

    .line 277
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mBreadCrumb:Lcom/android/lgesettings/SettingsBreadCrumb;

    invoke-virtual {v0}, Lcom/android/lgesettings/SettingsBreadCrumb;->removeSwitch()V

    .line 280
    :cond_2
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 596
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mPowerSaveMode:Lcom/android/lgesettings/powersave/PowerSaveListPreference;

    if-ne p1, v0, :cond_1

    .line 597
    invoke-direct {p0, p2}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->setPowerSaveModeAllowed(Ljava/lang/Object;)V

    .line 598
    invoke-direct {p0, p2}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->updatePowerSaverModeSummary(Ljava/lang/Object;)V

    .line 629
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 599
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mBrightness:Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;

    if-ne p1, v0, :cond_2

    .line 600
    instance-of v0, p2, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 603
    const-string v0, "power_save_brightness"

    invoke-direct {p0, v0, p2}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->setPowerSaveListValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 604
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mBrightness:Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->updateSummary(Landroid/preference/Preference;)V

    goto :goto_0

    .line 606
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mEcoMode:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    if-ne p1, v0, :cond_3

    .line 607
    instance-of v0, p2, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 610
    const-string v0, "power_save_cpu"

    invoke-direct {p0, v0, p2}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->setPowerSaveListValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 611
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mEcoMode:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->updateSummary(Landroid/preference/Preference;)V

    goto :goto_0

    .line 613
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mScreenTimeout:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    if-ne p1, v0, :cond_4

    .line 614
    instance-of v0, p2, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 617
    const-string v0, "power_save_screen_timeout"

    invoke-direct {p0, v0, p2}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->setPowerSaveListValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 618
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mScreenTimeout:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->updateSummary(Landroid/preference/Preference;)V

    goto :goto_0

    .line 621
    :cond_4
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mFrontLed:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    if-ne p1, v0, :cond_0

    .line 622
    instance-of v0, p2, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 625
    const-string v0, "power_save_front_led"

    invoke-direct {p0, v0, p2}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->setPowerSaveListValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 626
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mFrontLed:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->updateSummary(Landroid/preference/Preference;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mPowerSaveMode:Lcom/android/lgesettings/powersave/PowerSaveListPreference;

    if-ne p2, v0, :cond_0

    .line 481
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 236
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onResume()V

    .line 237
    const-string v1, "power_save_started"

    invoke-static {v1}, Lcom/lge/provider/SettingsEx$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 238
    .local v0, uri:Landroid/net/Uri;
    const-string v1, "PowerSaveSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register observer uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mStartObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 241
    const-string v1, "power_save_enabled"

    invoke-static {v1}, Lcom/lge/provider/SettingsEx$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 242
    const-string v1, "PowerSaveSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register observer uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 246
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mPowerSaveEnabler:Lcom/android/lgesettings/powersave/PowerSaveEnabler;

    if-eqz v1, :cond_0

    .line 247
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mPowerSaveEnabler:Lcom/android/lgesettings/powersave/PowerSaveEnabler;

    invoke-virtual {v1}, Lcom/android/lgesettings/powersave/PowerSaveEnabler;->resume()V

    .line 249
    :cond_0
    invoke-direct {p0}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->updateState()V

    .line 251
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/lgesettings/SettingsBreadCrumb;->isAttached(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 252
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/lgesettings/SettingsBreadCrumb;->get(Landroid/app/Activity;)Lcom/android/lgesettings/SettingsBreadCrumb;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mBreadCrumb:Lcom/android/lgesettings/SettingsBreadCrumb;

    .line 253
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mBreadCrumb:Lcom/android/lgesettings/SettingsBreadCrumb;

    if-eqz v1, :cond_1

    .line 254
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mBreadCrumb:Lcom/android/lgesettings/SettingsBreadCrumb;

    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mPowerSaveEnabler:Lcom/android/lgesettings/powersave/PowerSaveEnabler;

    invoke-virtual {v2}, Lcom/android/lgesettings/powersave/PowerSaveEnabler;->getSwitch()Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/SettingsBreadCrumb;->addSwitch(Landroid/widget/Switch;)V

    .line 258
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 284
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onStop()V

    .line 285
    return-void
.end method

.method public onSwitchCheckedChanged(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 770
    return-void
.end method

.method public onTreeClick(Landroid/preference/Preference;)V
    .locals 5
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 488
    invoke-direct {p0}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->CheckIfNoItemChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 489
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f08124d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->ShowToast(Ljava/lang/String;)V

    .line 490
    instance-of v1, p1, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    if-eqz v1, :cond_0

    .line 491
    check-cast p1, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    .end local p1
    invoke-virtual {p1, v0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->setChecked(Z)V

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 497
    .restart local p1
    :cond_1
    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mToggleWifi:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    if-ne p1, v2, :cond_3

    .line 498
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_save_wifi"

    iget-object v4, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mToggleWifi:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v4}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    invoke-static {v2, v3, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 501
    :cond_3
    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mToggleSync:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    if-ne p1, v2, :cond_5

    .line 502
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_save_sync"

    iget-object v4, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mToggleSync:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v4}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_2
    invoke-static {v2, v3, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2

    .line 505
    :cond_5
    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mToggleBluetooth:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    if-ne p1, v2, :cond_7

    .line 506
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_save_bt"

    iget-object v4, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mToggleBluetooth:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v4}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_6

    :goto_3
    invoke-static {v2, v3, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_3

    .line 509
    :cond_7
    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mToggleGps:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    if-ne p1, v2, :cond_9

    .line 510
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_save_gps"

    iget-object v4, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mToggleGps:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v4}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_8

    :goto_4
    invoke-static {v2, v3, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_8
    move v0, v1

    goto :goto_4

    .line 513
    :cond_9
    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mToggleNfc:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    if-ne p1, v2, :cond_b

    .line 514
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_save_nfc"

    iget-object v4, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mToggleNfc:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v4}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_a

    :goto_5
    invoke-static {v2, v3, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_a
    move v0, v1

    goto :goto_5

    .line 517
    :cond_b
    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mToggleAnimations:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    if-ne p1, v2, :cond_d

    .line 518
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_save_animations"

    iget-object v4, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mToggleAnimations:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v4}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_c

    :goto_6
    invoke-static {v2, v3, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_c
    move v0, v1

    goto :goto_6

    .line 521
    :cond_d
    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mEcoMode:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    if-ne p1, v2, :cond_f

    .line 522
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_save_cpu_adjust"

    iget-object v4, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mEcoMode:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v4}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_e

    :goto_7
    invoke-static {v2, v3, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_e
    move v0, v1

    goto :goto_7

    .line 527
    :cond_f
    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mBrightness:Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;

    if-ne p1, v2, :cond_11

    .line 528
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_save_brightness_adjust"

    iget-object v4, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mBrightness:Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;

    invoke-virtual {v4}, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_10

    :goto_8
    invoke-static {v2, v3, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 530
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mBrightness:Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->updateSummary(Landroid/preference/Preference;)V

    goto/16 :goto_0

    :cond_10
    move v0, v1

    .line 528
    goto :goto_8

    .line 532
    :cond_11
    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mScreenTimeout:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    if-ne p1, v2, :cond_13

    .line 533
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_save_screen_timeout_adjust"

    iget-object v4, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mScreenTimeout:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v4}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_12

    :goto_9
    invoke-static {v2, v3, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 535
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mScreenTimeout:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->updateSummary(Landroid/preference/Preference;)V

    goto/16 :goto_0

    :cond_12
    move v0, v1

    .line 533
    goto :goto_9

    .line 537
    :cond_13
    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mFrontLed:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    if-ne p1, v2, :cond_15

    .line 538
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_save_front_led_adjust"

    iget-object v4, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mFrontLed:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v4}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_14

    :goto_a
    invoke-static {v2, v3, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 540
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mFrontLed:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-direct {p0, v0}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->updateSummary(Landroid/preference/Preference;)V

    goto/16 :goto_0

    :cond_14
    move v0, v1

    .line 538
    goto :goto_a

    .line 542
    :cond_15
    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mToggleTouch:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    if-ne p1, v2, :cond_17

    .line 543
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_save_touch"

    iget-object v4, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mToggleTouch:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v4}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_16

    :goto_b
    invoke-static {v2, v3, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_16
    move v0, v1

    goto :goto_b

    .line 546
    :cond_17
    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mNotiLED:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    if-ne p1, v2, :cond_19

    .line 547
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_save_emotional_led"

    iget-object v4, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mNotiLED:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v4}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_18

    :goto_c
    invoke-static {v2, v3, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_18
    move v0, v1

    goto :goto_c

    .line 550
    :cond_19
    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mEmotionalLED:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    if-ne p1, v2, :cond_1b

    .line 551
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_save_emotional_led"

    iget-object v4, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mEmotionalLED:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v4}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1a

    :goto_d
    invoke-static {v2, v3, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_1a
    move v0, v1

    goto :goto_d

    .line 554
    :cond_1b
    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mAutoScreenTone:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    if-ne p1, v2, :cond_0

    .line 555
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_save_auto_screen_tone"

    iget-object v4, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mAutoScreenTone:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v4}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1c

    :goto_e
    invoke-static {v2, v3, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_1c
    move v0, v1

    goto :goto_e
.end method

.method public setItemMenuEnabled(Z)V
    .locals 4
    .parameter "checked"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 773
    iget-object v3, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mPowerSaveMode:Lcom/android/lgesettings/powersave/PowerSaveListPreference;

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/lgesettings/powersave/PowerSaveListPreference;->setEnabled(Z)V

    .line 774
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveSettings;->mPowerSavingItemsCategory:Landroid/preference/PreferenceCategory;

    if-nez p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 775
    return-void

    :cond_0
    move v0, v2

    .line 773
    goto :goto_0

    :cond_1
    move v1, v2

    .line 774
    goto :goto_1
.end method
