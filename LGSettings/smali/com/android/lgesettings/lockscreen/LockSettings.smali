.class public Lcom/android/lgesettings/lockscreen/LockSettings;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "LockSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/lockscreen/LockSettings$LockSettingsUiupdateReceiver;
    }
.end annotation


# instance fields
.field private mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

.field private mChooseLockSettingsHelper:Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;

.field mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mHiddenPattern:Landroid/preference/CheckBoxPreference;

.field private mLockAfter:Landroid/preference/ListPreference;

.field private mLockEffect:Landroid/preference/ListPreference;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockSettingsUiReceiver:Lcom/android/lgesettings/lockscreen/LockSettings$LockSettingsUiupdateReceiver;

.field private mOwnerInfo:Lcom/android/lgesettings/lockscreen/ScreenCheckersPreference;

.field private mPatternEffect:Landroid/preference/ListPreference;

.field private mPortraitView:Landroid/preference/CheckBoxPreference;

.field private mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

.field private mRandomPin:Landroid/preference/CheckBoxPreference;

.field private mVisiblePattern:Landroid/preference/CheckBoxPreference;

.field private mWeatherAnimState:I

.field private mWeatherAnimation:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    .line 116
    new-instance v0, Lcom/android/lgesettings/lockscreen/LockSettings$LockSettingsUiupdateReceiver;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/lockscreen/LockSettings$LockSettingsUiupdateReceiver;-><init>(Lcom/android/lgesettings/lockscreen/LockSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mLockSettingsUiReceiver:Lcom/android/lgesettings/lockscreen/LockSettings$LockSettingsUiupdateReceiver;

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mWeatherAnimState:I

    .line 934
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/lockscreen/LockSettings;)Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mChooseLockSettingsHelper:Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/lockscreen/LockSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/lockscreen/LockSettings;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mLockAfter:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/lgesettings/lockscreen/LockSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mWeatherAnimState:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/lgesettings/lockscreen/LockSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->launchAddCityActivity()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/lgesettings/lockscreen/LockSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->launchWeatherSettingsActivity()V

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 9

    .prologue
    const v8, 0x7f080bd2

    const v2, 0x7f06004e

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 145
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 146
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 148
    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 153
    :cond_0
    const v0, 0x7f060027

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lockscreen/LockSettings;->addPreferencesFromResource(I)V

    .line 157
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 161
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-nez v0, :cond_18

    .line 163
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lockscreen/LockSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 164
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 165
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_14

    move v0, v1

    .line 167
    :goto_0
    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 168
    const v0, 0x7f060053

    :goto_1
    move v1, v0

    .line 201
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/lockscreen/LockSettings;->addPreferencesFromResource(I)V

    .line 203
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/lockscreen/LockUtil;->isGuestMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    const-string v0, "display_category"

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 205
    const-string v6, "unlock_set_or_change"

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 206
    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 210
    :cond_1
    if-eqz v5, :cond_2

    .line 211
    const-string v0, "hidden_pattern"

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mHiddenPattern:Landroid/preference/CheckBoxPreference;

    .line 212
    const-string v0, "random_pin"

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mRandomPin:Landroid/preference/CheckBoxPreference;

    .line 215
    const-string v0, "lock_after_timeout"

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mLockAfter:Landroid/preference/ListPreference;

    .line 219
    const-string v0, "biometric_weak_liveliness"

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    .line 224
    const-string v0, "lock_screen_effect"

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mLockEffect:Landroid/preference/ListPreference;

    .line 226
    const-string v0, "weather_animation"

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mWeatherAnimation:Landroid/preference/CheckBoxPreference;

    .line 227
    const-string v0, "portrait_view"

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mPortraitView:Landroid/preference/CheckBoxPreference;

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mLockEffect:Landroid/preference/ListPreference;

    if-eqz v0, :cond_3

    .line 230
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->setupLockEffectPreference()V

    .line 231
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->updateLockEffectPreferenceSummary()V

    .line 235
    :cond_3
    const-string v0, "lock_screen_pattern_effect"

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mPatternEffect:Landroid/preference/ListPreference;

    .line 236
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mPatternEffect:Landroid/preference/ListPreference;

    if-eqz v0, :cond_4

    .line 237
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->setupPatternEffectPreference()V

    .line 238
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->updatePatternEffectPreferenceSummary()V

    .line 241
    :cond_4
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mLockAfter:Landroid/preference/ListPreference;

    if-eqz v0, :cond_6

    .line 243
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 244
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {p0, v8}, Lcom/android/lgesettings/lockscreen/LockSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {p0, v8}, Lcom/android/lgesettings/lockscreen/LockSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 248
    :cond_5
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->setupLockAfterPreference()V

    .line 249
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->updateLockAfterPreferenceSummary()V

    .line 253
    :cond_6
    const-string v0, "visiblepattern"

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    .line 257
    const-string v0, "power_button_instantly_locks"

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    .line 260
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 261
    const-string v0, "power_button_instantly_locks"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lockscreen/LockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 264
    :cond_7
    if-eqz v5, :cond_9

    .line 265
    const-string v0, "display_category"

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 267
    if-eqz v0, :cond_9

    const-string v3, "config_feature_weather_animation"

    invoke-static {v4, v3}, Lcom/android/lgesettings/lockscreen/LockSettingsFeatureConfig;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "com.lge.sizechangable.weather"

    invoke-direct {p0, v3}, Lcom/android/lgesettings/lockscreen/LockSettings;->isLgWeatherSupportsLockScreenWeather(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 270
    :cond_8
    const-string v3, "weather_animation"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 271
    if-eqz v3, :cond_9

    .line 272
    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 273
    iput-object v7, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mWeatherAnimation:Landroid/preference/CheckBoxPreference;

    .line 278
    :cond_9
    if-eqz v5, :cond_a

    .line 279
    const-string v0, "display_category"

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 281
    if-eqz v0, :cond_a

    const-string v3, "config_feature_portrait_view"

    invoke-static {v4, v3}, Lcom/android/lgesettings/lockscreen/LockSettingsFeatureConfig;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 284
    const-string v3, "portrait_view"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 285
    if-eqz v3, :cond_a

    .line 286
    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 287
    iput-object v7, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mPortraitView:Landroid/preference/CheckBoxPreference;

    .line 293
    :cond_a
    if-ne v1, v2, :cond_b

    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v0

    const/high16 v1, 0x1

    if-eq v0, v1, :cond_b

    .line 302
    if-eqz v5, :cond_b

    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_b

    .line 303
    const-string v0, "feedback_category"

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 304
    if-eqz v0, :cond_b

    .line 305
    const-string v1, "visiblepattern"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/lockscreen/LockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 313
    :cond_b
    if-eqz v5, :cond_c

    .line 315
    const-string v0, "feedback_category"

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 316
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v1

    if-gtz v1, :cond_c

    .line 317
    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 324
    :cond_c
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 325
    const-class v0, Lcom/android/lgesettings/Settings$OwnerInfoSettingsActivity;

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 326
    const-string v0, "owner_info_settings"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lockscreen/LockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/lockscreen/ScreenCheckersPreference;

    iput-object v0, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mOwnerInfo:Lcom/android/lgesettings/lockscreen/ScreenCheckersPreference;

    .line 328
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mOwnerInfo:Lcom/android/lgesettings/lockscreen/ScreenCheckersPreference;

    if-eqz v0, :cond_d

    if-eqz v5, :cond_d

    .line 341
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/Utils;->supportSplitView(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 342
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mOwnerInfo:Lcom/android/lgesettings/lockscreen/ScreenCheckersPreference;

    const-string v1, "com.android.lgesettings.lockscreen.OwnerInfoSettings"

    invoke-virtual {v0, p0, v1}, Lcom/android/lgesettings/lockscreen/ScreenCheckersPreference;->setFragmentToLaunch(Lcom/android/lgesettings/SettingsPreferenceFragment;Ljava/lang/String;)V

    .line 347
    :goto_3
    const-string v0, "SKT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 348
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mOwnerInfo:Lcom/android/lgesettings/lockscreen/ScreenCheckersPreference;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080b03

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lockscreen/ScreenCheckersPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mOwnerInfo:Lcom/android/lgesettings/lockscreen/ScreenCheckersPreference;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080beb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lockscreen/ScreenCheckersPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 394
    :cond_d
    if-eqz v5, :cond_e

    .line 395
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-nez v0, :cond_e

    .line 396
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v0

    if-nez v0, :cond_e

    .line 397
    const-string v0, "display_category"

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 398
    if-eqz v0, :cond_e

    const-string v1, "config_feature_effect_menu"

    invoke-static {v4, v1}, Lcom/android/lgesettings/lockscreen/LockSettingsFeatureConfig;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 401
    const-string v1, "lock_screen_effect"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 402
    if-eqz v1, :cond_e

    .line 403
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 410
    :cond_e
    if-eqz v5, :cond_10

    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mHiddenPattern:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_10

    .line 411
    const-string v0, "display_category"

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 412
    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 413
    if-eqz v0, :cond_10

    const-string v1, "config_feature_hidden_pattern"

    invoke-static {v4, v1}, Lcom/android/lgesettings/lockscreen/LockSettingsFeatureConfig;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v1

    if-nez v1, :cond_10

    .line 415
    :cond_f
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mHiddenPattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 416
    iput-object v7, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mHiddenPattern:Landroid/preference/CheckBoxPreference;

    .line 419
    :cond_10
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 420
    const-string v0, "display_category"

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 422
    if-eqz v0, :cond_11

    const-string v1, "config_feature_secure_shortcuts_menu"

    invoke-static {v4, v1}, Lcom/android/lgesettings/lockscreen/LockSettingsFeatureConfig;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 424
    const-string v1, "screen_theme"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 429
    :cond_11
    if-eqz v5, :cond_12

    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mPatternEffect:Landroid/preference/ListPreference;

    if-eqz v0, :cond_12

    .line 430
    const-string v0, "display_category"

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 431
    if-eqz v0, :cond_12

    const-string v1, "config_feature_pattern_effect"

    invoke-static {v4, v1}, Lcom/android/lgesettings/lockscreen/LockSettingsFeatureConfig;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 433
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mPatternEffect:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 434
    iput-object v7, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mPatternEffect:Landroid/preference/ListPreference;

    .line 438
    :cond_12
    if-eqz v5, :cond_13

    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mRandomPin:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_13

    .line 439
    const-string v0, "display_category"

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 440
    if-eqz v0, :cond_13

    const-string v1, "config_feature_random_pin"

    invoke-static {v4, v1}, Lcom/android/lgesettings/lockscreen/LockSettingsFeatureConfig;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 441
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mRandomPin:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 442
    iput-object v7, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mRandomPin:Landroid/preference/CheckBoxPreference;

    .line 446
    :cond_13
    return-object v5

    :cond_14
    move v0, v3

    .line 165
    goto/16 :goto_0

    .line 170
    :cond_15
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "lockscreen_type_password_unspecified"

    invoke-static {v0, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 172
    const-string v6, "config_feature_easy_ui"

    invoke-static {v4, v6}, Lcom/android/lgesettings/lockscreen/LockSettingsFeatureConfig;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    if-ne v0, v1, :cond_16

    .line 174
    const v0, 0x7f060050

    goto/16 :goto_1

    .line 176
    :cond_16
    const-string v1, "config_feature_touch_lock"

    invoke-static {v4, v1}, Lcom/android/lgesettings/lockscreen/LockSettingsFeatureConfig;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x2

    if-ne v0, v1, :cond_17

    .line 178
    const v0, 0x7f060051

    goto/16 :goto_1

    .line 180
    :cond_17
    const v0, 0x7f06004f

    goto/16 :goto_1

    .line 183
    :cond_18
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v0

    if-eqz v0, :cond_19

    move v1, v2

    .line 185
    goto/16 :goto_2

    .line 187
    :cond_19
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    move v1, v3

    goto/16 :goto_2

    .line 189
    :sswitch_0
    const v0, 0x7f060056

    move v1, v0

    .line 190
    goto/16 :goto_2

    .line 192
    :sswitch_1
    const v0, 0x7f060059

    move v1, v0

    .line 193
    goto/16 :goto_2

    .line 197
    :sswitch_2
    const v0, 0x7f060055

    move v1, v0

    goto/16 :goto_2

    .line 345
    :cond_1a
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mOwnerInfo:Lcom/android/lgesettings/lockscreen/ScreenCheckersPreference;

    invoke-virtual {v0, p0, v1}, Lcom/android/lgesettings/lockscreen/ScreenCheckersPreference;->setFragmentIntent(Lcom/android/lgesettings/SettingsPreferenceFragment;Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 187
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
    .end sparse-switch
.end method

.method private disableUnusableTimeouts(J)V
    .locals 24
    .parameter "maxTimeout"

    .prologue
    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lockscreen/LockSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v8

    .line 556
    .local v8, entries:[Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lockscreen/LockSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v15

    .line 557
    .local v15, values:[Ljava/lang/CharSequence;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 558
    .local v10, revisedEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 559
    .local v11, revisedValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lockscreen/LockSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lockscreen/LockSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v3

    .line 560
    .local v3, adminTimeout:J
    :goto_0
    const/16 v16, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "screen_off_timeout"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v16

    move/from16 v0, v16

    int-to-long v6, v0

    .line 563
    .local v6, displayTimeout:J
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    array-length v0, v15

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v9, v0, :cond_2

    .line 564
    aget-object v16, v15, v9

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 565
    .local v12, timeout:J
    cmp-long v16, v12, p1

    if-gez v16, :cond_1

    .line 566
    aget-object v16, v8, v9

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    aget-object v16, v15, v9

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 559
    .end local v3           #adminTimeout:J
    .end local v6           #displayTimeout:J
    .end local v9           #i:I
    .end local v12           #timeout:J
    :cond_0
    const-wide/16 v3, 0x0

    goto :goto_0

    .line 569
    .restart local v3       #adminTimeout:J
    .restart local v6       #displayTimeout:J
    .restart local v9       #i:I
    .restart local v12       #timeout:J
    :cond_1
    cmp-long v16, v3, v6

    if-nez v16, :cond_7

    .line 570
    aget-object v16, v8, v9

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    :goto_2
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    .end local v12           #timeout:J
    :cond_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v16

    array-length v0, v8

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_3

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v16

    array-length v0, v15

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_6

    .line 583
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lockscreen/LockSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Ljava/lang/CharSequence;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lockscreen/LockSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Ljava/lang/CharSequence;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lockscreen/LockSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 588
    .local v14, userPreference:I
    int-to-long v0, v14

    move-wide/from16 v16, v0

    cmp-long v16, v16, p1

    if-gtz v16, :cond_4

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lockscreen/LockSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v16, v0

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 596
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "lock_screen_lock_after_timeout_eas"

    const-wide/16 v18, 0x0

    invoke-static/range {v16 .. v19}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-nez v16, :cond_6

    .line 598
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "lock_screen_lock_after_timeout"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 600
    .local v5, currentTimeout:I
    int-to-long v0, v5

    move-wide/from16 v16, v0

    cmp-long v16, v16, p1

    if-gtz v16, :cond_5

    const-string v16, "ATT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 601
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lockscreen/LockSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v16, v0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 602
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "lock_screen_lock_after_timeout"

    move-wide/from16 v0, p1

    long-to-int v0, v0

    move/from16 v18, v0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 608
    .end local v5           #currentTimeout:I
    .end local v14           #userPreference:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lockscreen/LockSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_9

    const/16 v16, 0x1

    :goto_3
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 609
    return-void

    .line 571
    .restart local v12       #timeout:J
    :cond_7
    const-wide/32 v16, 0xea60

    rem-long v16, p1, v16

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-lez v16, :cond_8

    .line 572
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const v17, 0x7f080c6d

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-wide/32 v20, 0xea60

    div-long v20, p1, v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/lockscreen/LockSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const v17, 0x7f080c6e

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-wide/32 v20, 0xea60

    rem-long v20, p1, v20

    const-wide/16 v22, 0x3e8

    div-long v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/lockscreen/LockSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 575
    :cond_8
    const v16, 0x7f080c6c

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-wide/32 v19, 0xea60

    div-long v19, p1, v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/lockscreen/LockSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 608
    .end local v12           #timeout:J
    :cond_9
    const/16 v16, 0x0

    goto/16 :goto_3
.end method

.method private getWeatherAnimationState()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 977
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_settings_weather_animation"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 979
    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 980
    :cond_0
    return v0
.end method

.method private getWeatherCityCount(Landroid/content/Context;)I
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1067
    .line 1069
    :try_start_0
    const-string v1, "com.lge.sizechangable.weather"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 1070
    const-string v2, "com.lge.sizechangable.weather_preferences"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1073
    const-string v2, "cityCount"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1077
    :goto_0
    return v0

    .line 1074
    :catch_0
    move-exception v1

    .line 1075
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private getWeatherUpdateState(Landroid/content/Context;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1044
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    .line 1045
    if-nez v1, :cond_0

    .line 1063
    :goto_0
    return v0

    .line 1051
    :cond_0
    :try_start_0
    const-string v1, "com.lge.sizechangable.weather"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 1052
    const-string v2, "com.lge.sizechangable.weather_preferences"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1055
    const-string v2, "ATT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1056
    const-string v2, "AutoSync"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    .line 1058
    :cond_1
    const-string v2, "AutoSync"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1060
    :catch_0
    move-exception v1

    .line 1061
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private isLgWeatherSupportsLockScreenWeather(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 961
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 964
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 965
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v3, v3

    if-lez v3, :cond_0

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 966
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v3, "4.1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 973
    :goto_0
    return v0

    .line 970
    :catch_0
    move-exception v0

    move v0, v1

    .line 971
    goto :goto_0

    :cond_0
    move v0, v1

    .line 973
    goto :goto_0
.end method

.method private isToggled(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "pref"

    .prologue
    .line 784
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    return v0
.end method

.method private isWeatherAnimationStateSet()Z
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 984
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_settings_weather_animation"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 986
    if-ne v0, v2, :cond_0

    .line 987
    const/4 v0, 0x0

    .line 989
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private launchAddCityActivity()V
    .locals 3

    .prologue
    .line 1081
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1082
    const-string v1, "com.lge.sizechangable.weather"

    const-string v2, "com.lge.sizechangable.weather.activity.WeatherActivity_FindCity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1084
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lockscreen/LockSettings;->startActivity(Landroid/content/Intent;)V

    .line 1085
    return-void
.end method

.method private launchWeatherSettingsActivity()V
    .locals 3

    .prologue
    .line 1088
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1089
    const-string v1, "com.lge.sizechangable.weather"

    const-string v2, "com.lge.sizechangable.weather.activity.WeatherActivity_Settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1091
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lockscreen/LockSettings;->startActivity(Landroid/content/Intent;)V

    .line 1092
    return-void
.end method

.method private setWeatherAnimationState(ZZ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 993
    .line 994
    if-eqz p2, :cond_1

    .line 995
    if-ne p1, v1, :cond_0

    .line 999
    :goto_0
    const-string v1, "LockSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "weather animation state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " toggle = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " curState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_settings_weather_animation"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1003
    return-void

    :cond_0
    move v0, v1

    .line 995
    goto :goto_0

    .line 997
    :cond_1
    if-ne p1, v1, :cond_2

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1
.end method

.method private setupLockAfterPreference()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const-wide/16 v6, 0x0

    .line 458
    const-wide/16 v2, 0x0

    .line 460
    .local v2, currentTimeout:J
    const-string v8, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "ATT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "USC"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 462
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_lock_after_timeout"

    invoke-static {v8, v9, v6, v7}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 469
    :goto_0
    iget-object v8, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 470
    iget-object v8, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 471
    iget-object v8, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 472
    .local v0, adminTimeout:J
    :goto_1
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "screen_off_timeout"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-long v4, v8

    .line 474
    .local v4, displayTimeout:J
    cmp-long v8, v0, v6

    if-lez v8, :cond_1

    .line 478
    sub-long v8, v0, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/android/lgesettings/lockscreen/LockSettings;->disableUnusableTimeouts(J)V

    .line 480
    :cond_1
    return-void

    .line 465
    .end local v0           #adminTimeout:J
    .end local v4           #displayTimeout:J
    :cond_2
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_lock_after_timeout"

    const-wide/16 v10, 0x1388

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    goto :goto_0

    :cond_3
    move-wide v0, v6

    .line 471
    goto :goto_1
.end method

.method private setupLockEffectPreference()V
    .locals 4

    .prologue
    .line 881
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 882
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_lock_effect"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 885
    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mLockEffect:Landroid/preference/ListPreference;

    const-string v3, "effect_names"

    invoke-static {v0, v3}, Lcom/android/lgesettings/lockscreen/LockSettingsFeatureConfig;->getStringArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 886
    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mLockEffect:Landroid/preference/ListPreference;

    const-string v3, "effect_values"

    invoke-static {v0, v3}, Lcom/android/lgesettings/lockscreen/LockSettingsFeatureConfig;->getStringArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 887
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mLockEffect:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 888
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mLockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 889
    return-void
.end method

.method private setupPatternEffectPreference()V
    .locals 4

    .prologue
    .line 907
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 908
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_pattern_effect"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 911
    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mPatternEffect:Landroid/preference/ListPreference;

    const-string v3, "pattern_effect_names"

    invoke-static {v0, v3}, Lcom/android/lgesettings/lockscreen/LockSettingsFeatureConfig;->getStringArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 913
    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mPatternEffect:Landroid/preference/ListPreference;

    const-string v3, "pattern_effect_values"

    invoke-static {v0, v3}, Lcom/android/lgesettings/lockscreen/LockSettingsFeatureConfig;->getStringArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 915
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mPatternEffect:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 916
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mPatternEffect:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 917
    return-void
.end method

.method private updateLockAfterPreferenceSummary()V
    .locals 17

    .prologue
    .line 485
    const-wide/16 v3, 0x0

    .line 487
    .local v3, currentTimeout:J
    const-string v12, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "ATT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "USC"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 489
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "lock_screen_lock_after_timeout"

    const-wide/16 v14, 0x0

    invoke-static {v12, v13, v14, v15}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    .line 496
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/lgesettings/lockscreen/LockSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v12}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    .line 497
    .local v5, entries:[Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/lgesettings/lockscreen/LockSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v12}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v11

    .line 498
    .local v11, values:[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 499
    .local v1, best:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    array-length v12, v11

    if-ge v6, v12, :cond_3

    .line 500
    aget-object v12, v11, v6

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 501
    .local v9, timeout:J
    cmp-long v12, v3, v9

    if-ltz v12, :cond_1

    .line 502
    move v1, v6

    .line 499
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 492
    .end local v1           #best:I
    .end local v5           #entries:[Ljava/lang/CharSequence;
    .end local v6           #i:I
    .end local v9           #timeout:J
    .end local v11           #values:[Ljava/lang/CharSequence;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "lock_screen_lock_after_timeout"

    const-wide/16 v14, 0x1388

    invoke-static {v12, v13, v14, v15}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    goto :goto_0

    .line 505
    .restart local v1       #best:I
    .restart local v5       #entries:[Ljava/lang/CharSequence;
    .restart local v6       #i:I
    .restart local v11       #values:[Ljava/lang/CharSequence;
    :cond_3
    const-string v12, "LockAfterTimeOut"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "currentTimeout = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "best: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " values[best] = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, v11, v1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " entries[best] = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, v5, v1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "lock_screen_lock_after_timeout"

    aget-object v14, v11, v1

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 531
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/lgesettings/lockscreen/LockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const-string v13, "config_feature_secure_shortcuts_menu"

    invoke-static {v12, v13}, Lcom/android/lgesettings/lockscreen/LockSettingsFeatureConfig;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 533
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    .line 534
    .local v8, root:Landroid/preference/PreferenceScreen;
    const-string v12, "display_category"

    invoke-virtual {v8, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 536
    .local v2, category:Landroid/preference/PreferenceCategory;
    if-eqz v2, :cond_4

    .line 537
    const-string v12, "screen_theme"

    invoke-virtual {v2, v12}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 538
    .local v7, prefkeytheme:Landroid/preference/Preference;
    if-eqz v7, :cond_4

    .line 539
    const-wide/16 v12, 0x0

    cmp-long v12, v3, v12

    if-nez v12, :cond_5

    .line 540
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 547
    .end local v2           #category:Landroid/preference/PreferenceCategory;
    .end local v7           #prefkeytheme:Landroid/preference/Preference;
    .end local v8           #root:Landroid/preference/PreferenceScreen;
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/lgesettings/lockscreen/LockSettings;->mLockAfter:Landroid/preference/ListPreference;

    aget-object v13, v11, v1

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 548
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/lgesettings/lockscreen/LockSettings;->mLockAfter:Landroid/preference/ListPreference;

    const v13, 0x7f080c07

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aget-object v16, v5, v1

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/lgesettings/lockscreen/LockSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 552
    return-void

    .line 542
    .restart local v2       #category:Landroid/preference/PreferenceCategory;
    .restart local v7       #prefkeytheme:Landroid/preference/Preference;
    .restart local v8       #root:Landroid/preference/PreferenceScreen;
    :cond_5
    const/4 v12, 0x1

    invoke-virtual {v7, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_2
.end method

.method private updateLockEffectPreferenceSummary()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 892
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_lock_effect"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 894
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mLockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 895
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mLockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v5

    move v1, v2

    .line 897
    :goto_0
    array-length v0, v4

    if-ge v1, v0, :cond_0

    .line 898
    aget-object v0, v5, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v3, v0, :cond_1

    .line 899
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mLockEffect:Landroid/preference/ListPreference;

    const v3, 0x7f080d17

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aget-object v1, v4, v1

    aput-object v1, v5, v2

    invoke-virtual {p0, v3, v5}, Lcom/android/lgesettings/lockscreen/LockSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 904
    :cond_0
    return-void

    .line 897
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private updatePatternEffectPreferenceSummary()V
    .locals 7

    .prologue
    .line 920
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_screen_pattern_effect"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 922
    .local v0, current_value:I
    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mPatternEffect:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 923
    .local v1, entries:[Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mPatternEffect:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 925
    .local v3, values:[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 926
    aget-object v4, v3, v2

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v0, v4, :cond_1

    .line 927
    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mPatternEffect:Landroid/preference/ListPreference;

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 931
    :cond_0
    return-void

    .line 925
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private updateWeatherPreference()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1006
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/lockscreen/LockSettings;->getWeatherCityCount(Landroid/content/Context;)I

    move-result v0

    .line 1007
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/lgesettings/lockscreen/LockSettings;->getWeatherUpdateState(Landroid/content/Context;)Z

    move-result v1

    .line 1008
    const-string v2, "LockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume cityCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " updateKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " flag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mWeatherAnimState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->isWeatherAnimationStateSet()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1012
    if-lt v0, v6, :cond_0

    if-nez v1, :cond_1

    .line 1013
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mWeatherAnimation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1041
    :goto_0
    return-void

    .line 1015
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mWeatherAnimation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 1020
    :cond_2
    iget v2, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mWeatherAnimState:I

    if-lez v2, :cond_6

    .line 1021
    iget v2, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mWeatherAnimState:I

    if-ne v2, v6, :cond_4

    if-lez v0, :cond_4

    .line 1022
    if-nez v1, :cond_3

    .line 1023
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->warnWeatherData()V

    .line 1024
    iput v5, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mWeatherAnimState:I

    goto :goto_0

    .line 1027
    :cond_3
    invoke-direct {p0, v6, v5}, Lcom/android/lgesettings/lockscreen/LockSettings;->setWeatherAnimationState(ZZ)V

    .line 1030
    :cond_4
    iget v2, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mWeatherAnimState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 1031
    invoke-direct {p0, v6, v5}, Lcom/android/lgesettings/lockscreen/LockSettings;->setWeatherAnimationState(ZZ)V

    .line 1033
    :cond_5
    iput v5, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mWeatherAnimState:I

    .line 1036
    :cond_6
    if-lt v0, v6, :cond_7

    if-nez v1, :cond_8

    .line 1037
    :cond_7
    invoke-direct {p0, v5, v5}, Lcom/android/lgesettings/lockscreen/LockSettings;->setWeatherAnimationState(ZZ)V

    .line 1039
    :cond_8
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->getWeatherAnimationState()Z

    move-result v0

    .line 1040
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mWeatherAnimation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private warnAddCity()V
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 1095
    new-instance v9, Lcom/android/lgesettings/lockscreen/LockSettings$1;

    invoke-direct {v9, p0}, Lcom/android/lgesettings/lockscreen/LockSettings$1;-><init>(Lcom/android/lgesettings/lockscreen/LockSettings;)V

    .line 1103
    new-instance v0, Lcom/android/lgesettings/lockscreen/DialogPopup;

    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x1010355

    const/4 v3, 0x1

    const v4, 0x7f081082

    const v5, 0x7f081083

    const v6, 0x7f080016

    const v7, 0x7f080015

    move-object v10, v8

    move-object v11, v8

    invoke-direct/range {v0 .. v11}, Lcom/android/lgesettings/lockscreen/DialogPopup;-><init>(Landroid/app/Activity;IZIIIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1106
    invoke-virtual {v0}, Lcom/android/lgesettings/lockscreen/DialogPopup;->show()V

    .line 1107
    return-void
.end method

.method private warnWeatherData()V
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 1110
    new-instance v9, Lcom/android/lgesettings/lockscreen/LockSettings$2;

    invoke-direct {v9, p0}, Lcom/android/lgesettings/lockscreen/LockSettings$2;-><init>(Lcom/android/lgesettings/lockscreen/LockSettings;)V

    .line 1118
    new-instance v0, Lcom/android/lgesettings/lockscreen/DialogPopup;

    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x1010355

    const/4 v3, 0x1

    const v4, 0x7f081084

    const v5, 0x7f081085

    const v6, 0x7f080016

    const v7, 0x7f080015

    move-object v10, v8

    move-object v11, v8

    invoke-direct/range {v0 .. v11}, Lcom/android/lgesettings/lockscreen/DialogPopup;-><init>(Landroid/app/Activity;IZIIIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1121
    invoke-virtual {v0}, Lcom/android/lgesettings/lockscreen/DialogPopup;->show()V

    .line 1122
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 792
    invoke-super {p0, p1, p2, p3}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 793
    const/16 v1, 0x7c

    if-ne p1, v1, :cond_0

    if-ne p2, v2, :cond_0

    .line 795
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->startBiometricWeakImprove()V

    .line 807
    :goto_0
    return-void

    .line 797
    :cond_0
    const/16 v1, 0x7d

    if-ne p1, v1, :cond_1

    if-ne p2, v2, :cond_1

    .line 800
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mChooseLockSettingsHelper:Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .line 801
    .local v0, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    .line 802
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 806
    .end local v0           #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    :cond_1
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 134
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 136
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lockscreen/LockSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 138
    new-instance v0, Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mChooseLockSettingsHelper:Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;

    .line 139
    if-eqz p1, :cond_0

    .line 140
    const-string v0, "weather_animation"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mWeatherAnimState:I

    .line 142
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 451
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onDestroy()V

    .line 452
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 671
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPause()V

    .line 672
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mLockSettingsUiReceiver:Lcom/android/lgesettings/lockscreen/LockSettings$LockSettingsUiupdateReceiver;

    if-eqz v0, :cond_0

    .line 673
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mLockSettingsUiReceiver:Lcom/android/lgesettings/lockscreen/LockSettings$LockSettingsUiupdateReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 675
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .parameter "preference"
    .parameter "value"

    .prologue
    const v9, 0x7f080d18

    const/4 v8, 0x1

    .line 810
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 811
    .local v1, key:Ljava/lang/String;
    const-string v5, "lock_after_timeout"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, p2

    .line 812
    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 814
    .local v4, timeout:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_screen_lock_after_timeout"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 816
    iget-object v5, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 823
    :goto_0
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_screen_lock_after_timeout_eas"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 827
    const-string v5, "LockAfterTimeOut"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "timeout: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->updateLockAfterPreferenceSummary()V

    .line 864
    .end local v4           #timeout:I
    :cond_0
    :goto_1
    return v8

    .line 817
    .restart local v4       #timeout:I
    :catch_0
    move-exception v0

    .line 818
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v5, "SecuritySettings"

    const-string v6, "could not persist lockAfter timeout setting"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 829
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v4           #timeout:I
    :cond_1
    const-string v5, "lock_screen_effect"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 830
    const-string v5, "hong"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lock_screen_lock_effect"

    move-object v5, p2

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 834
    iget-object v5, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mLockEffect:Landroid/preference/ListPreference;

    if-eqz v5, :cond_0

    .line 835
    iget-object v5, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mLockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 836
    .local v2, oldValue:Ljava/lang/String;
    if-eq v2, p2, :cond_2

    .line 837
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v9, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 839
    :cond_2
    iget-object v5, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mLockEffect:Landroid/preference/ListPreference;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 840
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->updateLockEffectPreferenceSummary()V

    goto :goto_1

    .line 847
    .end local v2           #oldValue:Ljava/lang/String;
    :cond_3
    const-string v5, "lock_screen_pattern_effect"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 849
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lock_screen_pattern_effect"

    move-object v5, p2

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 851
    iget-object v5, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mPatternEffect:Landroid/preference/ListPreference;

    if-eqz v5, :cond_0

    .line 852
    iget-object v5, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mPatternEffect:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 853
    .local v3, prevEffect:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mPatternEffect:Landroid/preference/ListPreference;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 854
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->updatePatternEffectPreferenceSummary()V

    .line 856
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 857
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v9, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 12
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 678
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 680
    .local v4, key:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mChooseLockSettingsHelper:Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;

    invoke-virtual {v9}, Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    .line 681
    .local v5, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    const-string v9, "unlock_set_or_change"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 682
    const-string v7, "com.android.lgesettings.lockscreen.ChooseLockGeneric$ChooseLockGenericFragment"

    const/16 v9, 0x7b

    invoke-virtual {p0, p0, v7, v9, v10}, Lcom/android/lgesettings/lockscreen/LockSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 778
    :cond_0
    :goto_0
    return v8

    .line 684
    :cond_1
    const-string v9, "biometric_weak_improve_matching"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 685
    new-instance v3, Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v3, v7, p0}, Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 687
    .local v3, helper:Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;
    const/16 v7, 0x7c

    invoke-virtual {v3, v7, v10, v10}, Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 689
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->startBiometricWeakImprove()V

    goto :goto_0

    .line 691
    .end local v3           #helper:Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;
    :cond_2
    const-string v9, "biometric_weak_liveliness"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 693
    invoke-direct {p0, p2}, Lcom/android/lgesettings/lockscreen/LockSettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 694
    invoke-virtual {v5, v8}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    goto :goto_0

    .line 699
    :cond_3
    iget-object v9, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 700
    new-instance v3, Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v3, v9, p0}, Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 702
    .restart local v3       #helper:Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;
    const/16 v9, 0x7d

    invoke-virtual {v3, v9, v10, v10}, Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 708
    invoke-virtual {v5, v7}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    .line 709
    iget-object v9, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 713
    .end local v3           #helper:Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;
    :cond_4
    const-string v9, "lockenabled"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 714
    invoke-direct {p0, p2}, Lcom/android/lgesettings/lockscreen/LockSettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    goto :goto_0

    .line 715
    :cond_5
    const-string v9, "visiblepattern"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 716
    invoke-direct {p0, p2}, Lcom/android/lgesettings/lockscreen/LockSettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    goto :goto_0

    .line 717
    :cond_6
    const-string v9, "power_button_instantly_locks"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 719
    invoke-direct {p0, p2}, Lcom/android/lgesettings/lockscreen/LockSettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/internal/widget/LockPatternUtils;->setPowerButtonInstantlyLocks(Z)V

    goto :goto_0

    .line 721
    :cond_7
    const-string v9, "hidden_pattern"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 722
    iget-object v7, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mHiddenPattern:Landroid/preference/CheckBoxPreference;

    if-eqz v7, :cond_0

    .line 723
    const/4 v0, 0x0

    .line 724
    .local v0, checkState:I
    iget-object v7, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mHiddenPattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 725
    const/4 v0, 0x1

    .line 727
    :cond_8
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "hidden_pattern"

    invoke-static {v7, v9, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 730
    .end local v0           #checkState:I
    :cond_9
    const-string v9, "random_pin"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 731
    iget-object v7, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mRandomPin:Landroid/preference/CheckBoxPreference;

    if-eqz v7, :cond_0

    .line 732
    const/4 v0, 0x0

    .line 733
    .restart local v0       #checkState:I
    iget-object v7, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mRandomPin:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 734
    const/4 v0, 0x1

    .line 736
    :cond_a
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "random_pin"

    invoke-static {v7, v9, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 739
    .end local v0           #checkState:I
    :cond_b
    const-string v9, "weather_animation"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 740
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/lgesettings/lockscreen/LockSettings;->getWeatherUpdateState(Landroid/content/Context;)Z

    move-result v6

    .line 741
    .local v6, updateKey:Z
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/lgesettings/lockscreen/LockSettings;->getWeatherCityCount(Landroid/content/Context;)I

    move-result v1

    .line 742
    .local v1, cityCount:I
    const-string v9, "LockSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Treeclick cityCount = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " updateKey = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->isWeatherAnimationStateSet()Z

    move-result v9

    if-nez v9, :cond_d

    .line 745
    if-lt v1, v8, :cond_c

    if-nez v6, :cond_e

    .line 746
    :cond_c
    invoke-direct {p0, v7, v7}, Lcom/android/lgesettings/lockscreen/LockSettings;->setWeatherAnimationState(ZZ)V

    .line 751
    :cond_d
    :goto_1
    if-ge v1, v8, :cond_f

    .line 752
    iget-object v9, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mWeatherAnimation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 753
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->warnAddCity()V

    goto/16 :goto_0

    .line 748
    :cond_e
    invoke-direct {p0, v8, v7}, Lcom/android/lgesettings/lockscreen/LockSettings;->setWeatherAnimationState(ZZ)V

    goto :goto_1

    .line 755
    :cond_f
    if-nez v6, :cond_10

    .line 756
    iget-object v9, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mWeatherAnimation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 757
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->warnWeatherData()V

    goto/16 :goto_0

    .line 760
    :cond_10
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->getWeatherAnimationState()Z

    move-result v2

    .line 761
    .local v2, curState:Z
    invoke-direct {p0, v2, v8}, Lcom/android/lgesettings/lockscreen/LockSettings;->setWeatherAnimationState(ZZ)V

    .line 762
    iget-object v9, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mWeatherAnimation:Landroid/preference/CheckBoxPreference;

    if-nez v2, :cond_11

    move v7, v8

    :cond_11
    invoke-virtual {v9, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 763
    .end local v1           #cityCount:I
    .end local v2           #curState:Z
    .end local v6           #updateKey:Z
    :cond_12
    const-string v7, "portrait_view"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 764
    iget-object v7, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mPortraitView:Landroid/preference/CheckBoxPreference;

    if-eqz v7, :cond_0

    .line 765
    const/4 v0, 0x0

    .line 766
    .restart local v0       #checkState:I
    iget-object v7, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mPortraitView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_13

    .line 767
    const/4 v0, 0x1

    .line 770
    :cond_13
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "portrait_view"

    invoke-static {v7, v9, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 775
    .end local v0           #checkState:I
    :cond_14
    invoke-super {p0, p1, p2}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v8

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 614
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onResume()V

    .line 618
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 620
    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mChooseLockSettingsHelper:Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;

    invoke-virtual {v4}, Lcom/android/lgesettings/lockscreen/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    .line 621
    .local v1, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_0

    .line 622
    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v7

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 626
    :cond_0
    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_1

    .line 627
    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks()Z

    move-result v7

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 628
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/lgesettings/lockscreen/LockUtil;->isGuestMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 629
    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 630
    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 638
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mHiddenPattern:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_2

    .line 639
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "hidden_pattern"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 641
    .local v3, selection:I
    iget-object v7, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mHiddenPattern:Landroid/preference/CheckBoxPreference;

    if-ne v3, v5, :cond_9

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 643
    .end local v3           #selection:I
    :cond_2
    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mRandomPin:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_3

    .line 644
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "random_pin"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 646
    .local v2, pinselection:I
    iget-object v7, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mRandomPin:Landroid/preference/CheckBoxPreference;

    if-ne v2, v5, :cond_a

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 649
    .end local v2           #pinselection:I
    :cond_3
    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mOwnerInfo:Lcom/android/lgesettings/lockscreen/ScreenCheckersPreference;

    if-eqz v4, :cond_4

    .line 650
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "lock_screen_owner_info_enabled"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 652
    .local v0, enabled:I
    iget-object v7, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mOwnerInfo:Lcom/android/lgesettings/lockscreen/ScreenCheckersPreference;

    if-ne v0, v5, :cond_b

    move v4, v5

    :goto_3
    invoke-virtual {v7, v4}, Lcom/android/lgesettings/lockscreen/ScreenCheckersPreference;->setChecked(Z)V

    .line 655
    .end local v0           #enabled:I
    :cond_4
    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mPortraitView:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_5

    .line 656
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "portrait_view"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 658
    .restart local v3       #selection:I
    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mPortraitView:Landroid/preference/CheckBoxPreference;

    if-ne v3, v5, :cond_c

    :goto_4
    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 660
    .end local v3           #selection:I
    :cond_5
    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mLockSettingsUiReceiver:Lcom/android/lgesettings/lockscreen/LockSettings$LockSettingsUiupdateReceiver;

    if-eqz v4, :cond_6

    .line 661
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mLockSettingsUiReceiver:Lcom/android/lgesettings/lockscreen/LockSettings$LockSettingsUiupdateReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "com.lge.intent.action.UPDATE_POWER_BUTTON_INSTANT_LOCK"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 664
    :cond_6
    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mWeatherAnimation:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_7

    .line 665
    invoke-direct {p0}, Lcom/android/lgesettings/lockscreen/LockSettings;->updateWeatherPreference()V

    .line 667
    :cond_7
    return-void

    .line 632
    :cond_8
    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 633
    iget-object v4, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .restart local v3       #selection:I
    :cond_9
    move v4, v6

    .line 641
    goto :goto_1

    .end local v3           #selection:I
    .restart local v2       #pinselection:I
    :cond_a
    move v4, v6

    .line 646
    goto :goto_2

    .end local v2           #pinselection:I
    .restart local v0       #enabled:I
    :cond_b
    move v4, v6

    .line 652
    goto :goto_3

    .end local v0           #enabled:I
    .restart local v3       #selection:I
    :cond_c
    move v5, v6

    .line 658
    goto :goto_4
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 956
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 957
    const-string v0, "weather_animation"

    iget v1, p0, Lcom/android/lgesettings/lockscreen/LockSettings;->mWeatherAnimState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 958
    return-void
.end method

.method public startBiometricWeakImprove()V
    .locals 3

    .prologue
    .line 869
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 870
    const-string v1, "com.android.facelock"

    const-string v2, "com.android.facelock.AddToSetup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 871
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lockscreen/LockSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 878
    :goto_0
    return-void

    .line 872
    :catch_0
    move-exception v0

    .line 873
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v2, "package:com.android.facelock"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 875
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lockscreen/LockSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
