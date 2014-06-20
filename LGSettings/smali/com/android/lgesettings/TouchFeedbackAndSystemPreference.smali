.class public Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "TouchFeedbackAndSystemPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/TouchFeedbackAndSystemPreference$SettingsObserver;
    }
.end annotation


# static fields
.field private static final NEED_VOICE_CAPABILITY_TOUCH:[Ljava/lang/String;

.field private static final UISTATUS:[[Ljava/lang/String;


# instance fields
.field private emergencyTonePreference:Landroid/preference/ListPreference;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mDtmfTone:Landroid/preference/CheckBoxPreference;

.field private mHandler:Landroid/os/Handler;

.field private mHapticFeedback:Landroid/preference/CheckBoxPreference;

.field private mHapticSettingsObserver:Lcom/android/lgesettings/TouchFeedbackAndSystemPreference$SettingsObserver;

.field private mLockSounds:Landroid/preference/CheckBoxPreference;

.field private mMPCSPowerUpTonePreference:Landroid/preference/Preference;

.field private mObserver:Landroid/database/ContentObserver;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRoamingSound:Landroid/preference/CheckBoxPreference;

.field private mSoundEffects:Landroid/preference/CheckBoxPreference;

.field private mStandbyTime:J

.field private mTouchSoundsRunnable:Ljava/lang/Runnable;

.field private mbIsSoundPoolLoaded:Z

.field private ringerMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 72
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "dtmf_tone"

    aput-object v1, v0, v4

    const-string v1, "emergency_tone"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->NEED_VOICE_CAPABILITY_TOUCH:[Ljava/lang/String;

    .line 90
    const/4 v0, 0x7

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "0"

    aput-object v2, v1, v4

    const-string v2, "0"

    aput-object v2, v1, v5

    const-string v2, "1"

    aput-object v2, v1, v6

    const-string v2, "dtmf_tone"

    aput-object v2, v1, v7

    aput-object v1, v0, v4

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "0"

    aput-object v2, v1, v4

    const-string v2, "0"

    aput-object v2, v1, v5

    const-string v2, "1"

    aput-object v2, v1, v6

    const-string v2, "sound_effects"

    aput-object v2, v1, v7

    aput-object v1, v0, v5

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "0"

    aput-object v2, v1, v4

    const-string v2, "0"

    aput-object v2, v1, v5

    const-string v2, "1"

    aput-object v2, v1, v6

    const-string v2, "lock_sounds"

    aput-object v2, v1, v7

    aput-object v1, v0, v6

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "0"

    aput-object v2, v1, v4

    const-string v2, "1"

    aput-object v2, v1, v5

    const-string v2, "1"

    aput-object v2, v1, v6

    const-string v2, "Eri_sounds"

    aput-object v2, v1, v7

    aput-object v1, v0, v7

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "0"

    aput-object v2, v1, v4

    const-string v2, "0"

    aput-object v2, v1, v5

    const-string v2, "1"

    aput-object v2, v1, v6

    const-string v2, "emergency_tone"

    aput-object v2, v1, v7

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "1"

    aput-object v3, v2, v4

    const-string v3, "1"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    const-string v3, "haptic_feedback"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v4

    const-string v3, "0"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    const-string v3, "mpcs_power_up_tone"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->UISTATUS:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    .line 62
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mStandbyTime:J

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mbIsSoundPoolLoaded:Z

    .line 101
    new-instance v0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference$1;-><init>(Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;)V

    iput-object v0, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mHandler:Landroid/os/Handler;

    .line 115
    new-instance v0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference$2;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference$2;-><init>(Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;)V

    iput-object v0, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 375
    new-instance v0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference$4;-><init>(Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mObserver:Landroid/database/ContentObserver;

    .line 384
    return-void
.end method

.method private declared-synchronized UpdateSoundEffect(Z)V
    .locals 7
    .parameter "isSoundEffect"

    .prologue
    .line 241
    monitor-enter p0

    const/4 v3, 0x1

    if-ne v3, p1, :cond_0

    .line 242
    :try_start_0
    iget-object v3, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->loadSoundEffects()V

    .line 243
    const-string v3, "TouchFeedbackAndSystemPreference"

    const-string v4, "UpdateSoundEffect()load!!"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    :goto_0
    monitor-exit p0

    return-void

    .line 245
    :cond_0
    const-wide/16 v1, 0x7d0

    .line 246
    .local v1, kStandbyTime:J
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mStandbyTime:J

    .line 247
    :goto_1
    iget-boolean v3, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mbIsSoundPoolLoaded:Z

    if-nez v3, :cond_1

    .line 249
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mStandbyTime:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    .line 251
    iget-object v3, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->unloadSoundEffects()V

    .line 252
    const-string v3, "TouchFeedbackAndSystemPreference"

    const-string v4, "UpdateSoundEffect()unload!!"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_1
    const-string v3, "TouchFeedbackAndSystemPreference"

    const-string v4, "UpdateSoundEffect()end"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 241
    .end local v1           #kStandbyTime:J
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 257
    .restart local v1       #kStandbyTime:J
    :cond_2
    const-wide/16 v3, 0x32

    :try_start_2
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->getPowerToneSummary()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mMPCSPowerUpTonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->UpdateSoundEffect(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->updateAllPreferences()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->do_updateRingtoneName_touch()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private do_InitDefaultSetting_touch()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 346
    invoke-virtual {p0}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 347
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mAudioManager:Landroid/media/AudioManager;

    .line 348
    const-string v2, "vibrator"

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 350
    .local v1, vibrator:Landroid/os/Vibrator;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v2

    if-nez v2, :cond_1

    .line 351
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v5, "haptic_feedback"

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 354
    :cond_1
    iget-object v2, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 355
    iget-object v5, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    const-string v2, "dtmf_tone"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 358
    iget-object v2, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 359
    iget-object v5, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    const-string v2, "sound_effects_enabled"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 362
    iget-object v2, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 363
    iget-object v5, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    const-string v2, "haptic_feedback_enabled"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 366
    iget-object v2, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mLockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 367
    iget-object v5, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mLockSounds:Landroid/preference/CheckBoxPreference;

    const-string v2, "lockscreen_sounds_enabled"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    :goto_3
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 370
    iget-object v2, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mRoamingSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 371
    iget-object v2, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mRoamingSound:Landroid/preference/CheckBoxPreference;

    const-string v5, "lg_eri_set"

    invoke-static {v0, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_6

    :goto_4
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 372
    return-void

    :cond_2
    move v2, v4

    .line 355
    goto :goto_0

    :cond_3
    move v2, v4

    .line 359
    goto :goto_1

    :cond_4
    move v2, v4

    .line 363
    goto :goto_2

    :cond_5
    move v2, v4

    .line 367
    goto :goto_3

    :cond_6
    move v3, v4

    .line 371
    goto :goto_4
.end method

.method private do_InitFuctionalMenu_touch()V
    .locals 10

    .prologue
    .line 290
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 291
    .local v0, activePhoneType:I
    invoke-virtual {p0}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 293
    .local v6, resolver:Landroid/content/ContentResolver;
    const-string v7, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 294
    iget-object v7, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->emergencyTonePreference:Landroid/preference/ListPreference;

    const-string v8, "emergency_tone"

    const/4 v9, 0x0

    invoke-static {v6, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 297
    iget-object v7, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->emergencyTonePreference:Landroid/preference/ListPreference;

    invoke-virtual {v7, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 303
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/lgesettings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 304
    sget-object v1, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->NEED_VOICE_CAPABILITY_TOUCH:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_5

    aget-object v5, v1, v2

    .line 305
    .local v5, prefKey:Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 306
    .local v4, pref:Landroid/preference/Preference;
    if-eqz v4, :cond_1

    .line 307
    invoke-virtual {p0}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 304
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 299
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #pref:Landroid/preference/Preference;
    .end local v5           #prefKey:Ljava/lang/String;
    :cond_2
    const/4 v7, 0x2

    if-eq v7, v0, :cond_3

    iget-object v7, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->emergencyTonePreference:Landroid/preference/ListPreference;

    if-nez v7, :cond_4

    :cond_3
    const-string v7, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->emergencyTonePreference:Landroid/preference/ListPreference;

    if-eqz v7, :cond_0

    .line 300
    :cond_4
    invoke-virtual {p0}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->emergencyTonePreference:Landroid/preference/ListPreference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 311
    :cond_5
    return-void
.end method

.method private do_InitOperatorDependancyMenu_touch()V
    .locals 2

    .prologue
    .line 423
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mRoamingSound:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 424
    invoke-virtual {p0}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mRoamingSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 426
    :cond_0
    const-string v0, "MPCS"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mMPCSPowerUpTonePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_1

    .line 427
    invoke-virtual {p0}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mMPCSPowerUpTonePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 428
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mMPCSPowerUpTonePreference:Landroid/preference/Preference;

    .line 430
    :cond_1
    return-void
.end method

.method private do_InitPreferenceMenu_touch()V
    .locals 1

    .prologue
    .line 267
    const-string v0, "dtmf_tone"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    .line 268
    const-string v0, "sound_effects"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    .line 269
    const-string v0, "haptic_feedback"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    .line 270
    const-string v0, "lock_sounds"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mLockSounds:Landroid/preference/CheckBoxPreference;

    .line 271
    const-string v0, "Eri_sounds"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mRoamingSound:Landroid/preference/CheckBoxPreference;

    .line 272
    const-string v0, "mpcs_power_up_tone"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mMPCSPowerUpTonePreference:Landroid/preference/Preference;

    .line 273
    const-string v0, "emergency_tone"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->emergencyTonePreference:Landroid/preference/ListPreference;

    .line 274
    return-void
.end method

.method private do_InitRunnableMenu_touch()V
    .locals 1

    .prologue
    .line 277
    new-instance v0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference$3;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference$3;-><init>(Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;)V

    iput-object v0, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mTouchSoundsRunnable:Ljava/lang/Runnable;

    .line 287
    return-void
.end method

.method private do_Init_touch()V
    .locals 2

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mContext:Landroid/content/Context;

    .line 417
    const v0, 0x7f06006c

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->addPreferencesFromResource(I)V

    .line 419
    new-instance v0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference$SettingsObserver;-><init>(Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mHapticSettingsObserver:Lcom/android/lgesettings/TouchFeedbackAndSystemPreference$SettingsObserver;

    .line 420
    return-void
.end method

.method private do_ShowMenuCheck_touch()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    .line 440
    const/4 v0, 0x3

    .line 441
    .local v0, KEY:I
    sget-object v3, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->UISTATUS:[[Ljava/lang/String;

    array-length v2, v3

    .line 442
    .local v2, preference_length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 443
    sget-object v3, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->UISTATUS:[[Ljava/lang/String;

    aget-object v3, v3, v1

    aget-object v3, v3, v7

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 444
    sget-object v3, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->UISTATUS:[[Ljava/lang/String;

    aget-object v3, v3, v1

    aget-object v3, v3, v7

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    const-string v3, "1"

    sget-object v5, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->UISTATUS:[[Ljava/lang/String;

    aget-object v5, v5, v1

    iget v6, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->ringerMode:I

    aget-object v5, v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 442
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 444
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 447
    :cond_2
    return-void
.end method

.method private do_updateRingtoneName_touch()V
    .locals 4

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mMPCSPowerUpTonePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-direct {p0}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->getPowerToneSummary()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 436
    :cond_0
    return-void
.end method

.method private getPowerToneSummary()Ljava/lang/String;
    .locals 5

    .prologue
    const v4, 0x7f080dc2

    .line 451
    :try_start_0
    invoke-static {}, Lcom/android/lgesettings/Utils;->getPowerTonePosition()I

    move-result v1

    .line 452
    .local v1, numberPowertone:I
    packed-switch v1, :pswitch_data_0

    .line 462
    iget-object v2, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080dc2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 467
    .end local v1           #numberPowertone:I
    :goto_0
    return-object v2

    .line 454
    .restart local v1       #numberPowertone:I
    :pswitch_0
    iget-object v2, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080dc2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 456
    :pswitch_1
    iget-object v2, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080dc3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 458
    :pswitch_2
    iget-object v2, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080dc4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 460
    :pswitch_3
    iget-object v2, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080dc5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 464
    .end local v1           #numberPowertone:I
    :catch_0
    move-exception v0

    .line 465
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 467
    iget-object v2, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 452
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateAllPreferences()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 314
    iget-object v0, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 315
    iget-object v3, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "dtmf_tone"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 320
    iget-object v3, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "sound_effects_enabled"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 324
    iget-object v3, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "haptic_feedback_enabled"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 327
    :cond_2
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 328
    iget-object v3, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mLockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "lockscreen_sounds_enabled"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 335
    :goto_4
    iget-object v0, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mRoamingSound:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    .line 336
    iget-object v0, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mRoamingSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lg_eri_set"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_a

    :goto_5
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 339
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iput v0, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->ringerMode:I

    .line 341
    invoke-direct {p0}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->do_ShowMenuCheck_touch()V

    .line 342
    return-void

    :cond_4
    move v0, v2

    .line 315
    goto :goto_0

    :cond_5
    move v0, v2

    .line 320
    goto :goto_1

    :cond_6
    move v0, v2

    .line 324
    goto :goto_2

    :cond_7
    move v0, v2

    .line 328
    goto :goto_3

    .line 331
    :cond_8
    iget-object v3, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mLockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "lockscreen_sounds_enabled"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_6
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_4

    :cond_9
    move v0, v2

    goto :goto_6

    :cond_a
    move v1, v2

    .line 336
    goto :goto_5
.end method


# virtual methods
.method protected do_DeleteMenuForWifiModel()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mRoamingSound:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 153
    invoke-virtual {p0}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mRoamingSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mMPCSPowerUpTonePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_2

    .line 156
    invoke-virtual {p0}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mMPCSPowerUpTonePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 158
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->emergencyTonePreference:Landroid/preference/ListPreference;

    if-eqz v0, :cond_3

    .line 159
    invoke-virtual {p0}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->emergencyTonePreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 162
    :cond_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 130
    invoke-direct {p0}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->do_Init_touch()V

    .line 131
    invoke-direct {p0}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->do_InitPreferenceMenu_touch()V

    .line 132
    invoke-direct {p0}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->do_InitDefaultSetting_touch()V

    .line 133
    invoke-direct {p0}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->do_InitOperatorDependancyMenu_touch()V

    .line 134
    invoke-direct {p0}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->do_InitFuctionalMenu_touch()V

    .line 135
    invoke-direct {p0}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->do_InitRunnableMenu_touch()V

    .line 136
    invoke-virtual {p0}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/lgesettings/Utils;->supportSplitView(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    invoke-virtual {p0}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->do_DeleteMenuForWifiModel()V

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 140
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 141
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 142
    const v1, 0x7f080b7b

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 143
    const v1, 0x7f0203af

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 233
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->finish()V

    .line 235
    const/4 v0, 0x1

    .line 237
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 179
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPause()V

    .line 180
    iget-object v0, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mHapticSettingsObserver:Lcom/android/lgesettings/TouchFeedbackAndSystemPreference$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference$SettingsObserver;->pause()V

    .line 181
    invoke-virtual {p0}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 182
    invoke-virtual {p0}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 183
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 218
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, key:Ljava/lang/String;
    const-string v3, "emergency_tone"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 221
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 222
    .local v2, value:I
    invoke-virtual {p0}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "emergency_tone"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .end local v2           #value:I
    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v3, "TouchFeedbackAndSystemPreference"

    const-string v4, "could not persist emergency tone setting"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 189
    iget-object v3, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_2

    .line 190
    invoke-virtual {p0}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dtmf_tone"

    iget-object v5, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 213
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    :cond_1
    move v1, v2

    .line 190
    goto :goto_0

    .line 192
    :cond_2
    iget-object v3, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_5

    .line 193
    iget-object v3, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 194
    iput-boolean v1, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mbIsSoundPoolLoaded:Z

    .line 197
    :goto_2
    new-instance v3, Ljava/lang/Thread;

    iget-object v4, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mTouchSoundsRunnable:Ljava/lang/Runnable;

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 198
    invoke-virtual {p0}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sound_effects_enabled"

    iget-object v5, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_3
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 196
    :cond_3
    iput-boolean v2, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mbIsSoundPoolLoaded:Z

    goto :goto_2

    :cond_4
    move v1, v2

    .line 198
    goto :goto_3

    .line 200
    :cond_5
    iget-object v3, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mLockSounds:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_7

    .line 201
    invoke-virtual {p0}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lockscreen_sounds_enabled"

    iget-object v5, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mLockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_6

    :goto_4
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_6
    move v1, v2

    goto :goto_4

    .line 203
    :cond_7
    iget-object v3, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_9

    .line 204
    invoke-virtual {p0}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "haptic_feedback_enabled"

    iget-object v5, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_8

    :goto_5
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_8
    move v1, v2

    goto :goto_5

    .line 206
    :cond_9
    iget-object v3, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mRoamingSound:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_b

    .line 207
    invoke-virtual {p0}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lg_eri_set"

    iget-object v5, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mRoamingSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_a

    :goto_6
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_a
    move v1, v2

    goto :goto_6

    .line 208
    :cond_b
    iget-object v1, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mMPCSPowerUpTonePreference:Landroid/preference/Preference;

    if-ne p2, v1, :cond_0

    .line 209
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 210
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.lgesettings"

    const-string v3, "com.android.lgesettings.MPCSPowerTonePicker"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 211
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 167
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onResume()V

    .line 168
    invoke-virtual {p0}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://settings/system"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 169
    iget-object v1, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mHapticSettingsObserver:Lcom/android/lgesettings/TouchFeedbackAndSystemPreference$SettingsObserver;

    invoke-virtual {v1}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference$SettingsObserver;->observe()V

    .line 170
    invoke-direct {p0}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->updateAllPreferences()V

    .line 171
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 173
    .local v0, filter1:Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/TouchFeedbackAndSystemPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 174
    return-void
.end method
