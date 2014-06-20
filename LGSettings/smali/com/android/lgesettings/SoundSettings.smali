.class public Lcom/android/lgesettings/SoundSettings;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "SoundSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final NEED_VOICE_CAPABILITY:[Ljava/lang/String;

.field private static final REMOVED_MENU_TABLET:[Ljava/lang/String;

.field private static final UISTATUS:[[Ljava/lang/String;


# instance fields
.field private activity:Landroid/app/Activity;

.field private category:Landroid/preference/PreferenceCategory;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mDockAudioMediaEnabled:Landroid/preference/CheckBoxPreference;

.field private mDockAudioSettings:Landroid/preference/Preference;

.field private mDockIntent:Landroid/content/Intent;

.field private mDockSounds:Landroid/preference/CheckBoxPreference;

.field private mDownloadRingtonesPreference:Landroid/preference/Preference;

.field private mGentleVibration:Landroid/preference/CheckBoxPreference;

.field private mHandler:Landroid/os/Handler;

.field private mHandsFreeMode:Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference;

.field private mHandsFreeModeInfo:Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;

.field private mIncomingVibration:Landroid/preference/Preference;

.field private mLGNotificationPreference:Landroid/preference/Preference;

.field private mLGRingtonePreference:Landroid/preference/Preference;

.field private mLockSoundPreference:Landroid/preference/CheckBoxPreference;

.field private mMusicFx:Landroid/preference/Preference;

.field private mNotificationPreference:Landroid/preference/Preference;

.field private mObserver:Landroid/database/ContentObserver;

.field private mQuietMode:Lcom/android/lgesettings/QuietModePreference;

.field private mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field mRingtoneInfo:Lcom/android/lgesettings/RingtonePickerInfo;

.field private mRingtoneLookupRunnable:Ljava/lang/Runnable;

.field private mRingtonePreference:Landroid/preference/Preference;

.field private mSmart_ringtone:Landroid/preference/CheckBoxPreference;

.field private mSoundProfilePreference:Landroid/preference/Preference;

.field private mSoundSettings:Landroid/preference/PreferenceGroup;

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mSubIncomingVibration:Landroid/preference/Preference;

.field private mSubNotificationPreference:Landroid/preference/Preference;

.field private mSubRingtonePreference:Landroid/preference/Preference;

.field private mThirdIncomingVibration:Landroid/preference/Preference;

.field private mThirdNotificationPreference:Landroid/preference/Preference;

.field private mThirdRingtonePreference:Landroid/preference/Preference;

.field private mTimedSilent:Lcom/android/lgesettings/QuietTimeSwitchPreference;

.field private mTouchFeedbackAndSystemPreference:Landroid/preference/Preference;

.field private mTouchSoundsPreference:Landroid/preference/CheckBoxPreference;

.field private mTouchSoundsRunnable:Ljava/lang/Runnable;

.field private mVCRingtonePreference:Landroid/preference/Preference;

.field private mVibrateOnTouchPreference:Landroid/preference/CheckBoxPreference;

.field private mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

.field private mVibrateTypePreference:Landroid/preference/Preference;

.field private mVibrateVolumePreference:Lcom/android/lgesettings/VibrateVolumePreference;

.field private mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

.field private mbIsSoundPoolLoaded:Z

.field private resolver:Landroid/content/ContentResolver;

.field private resultDialog:Landroid/app/AlertDialog;

.field private ringerMode:I

.field sound_profile_entry:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field sound_profile_value:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private temp_ringermode_value:I

.field private touchFeedback_system_category:Landroid/preference/PreferenceCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 180
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "ringtone"

    aput-object v1, v0, v4

    const-string v1, "category_calls_and_notification"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/lgesettings/SoundSettings;->NEED_VOICE_CAPABILITY:[Ljava/lang/String;

    .line 212
    const/16 v0, 0x11

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "0"

    aput-object v2, v1, v4

    const-string v2, "0"

    aput-object v2, v1, v5

    const-string v2, "1"

    aput-object v2, v1, v6

    const-string v2, "vt_ringtone"

    aput-object v2, v1, v7

    aput-object v1, v0, v4

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "0"

    aput-object v2, v1, v4

    const-string v2, "0"

    aput-object v2, v1, v5

    const-string v2, "1"

    aput-object v2, v1, v6

    const-string v2, "lg_ringtone"

    aput-object v2, v1, v7

    aput-object v1, v0, v5

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "0"

    aput-object v2, v1, v4

    const-string v2, "0"

    aput-object v2, v1, v5

    const-string v2, "1"

    aput-object v2, v1, v6

    const-string v2, "sub_ringtone"

    aput-object v2, v1, v7

    aput-object v1, v0, v6

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "0"

    aput-object v2, v1, v4

    const-string v2, "0"

    aput-object v2, v1, v5

    const-string v2, "1"

    aput-object v2, v1, v6

    const-string v2, "third_ringtone"

    aput-object v2, v1, v7

    aput-object v1, v0, v7

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "0"

    aput-object v2, v1, v4

    const-string v2, "0"

    aput-object v2, v1, v5

    const-string v2, "1"

    aput-object v2, v1, v6

    const-string v2, "lg_notification"

    aput-object v2, v1, v7

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v4

    const-string v3, "0"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    const-string v3, "sub_notification_sound"

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

    const-string v3, "third_notification_sound"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v4

    const-string v3, "1"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    const-string v3, "gentle_vibration"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v4

    const-string v3, "1"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    const-string v3, "vibrate_type"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v4

    const-string v3, "1"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    const-string v3, "vibrate_volume"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v4

    const-string v3, "1"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    const-string v3, "incoming_vibration"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v4

    const-string v3, "1"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    const-string v3, "sub_incoming_vibration"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v4

    const-string v3, "1"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    const-string v3, "third_incoming_vibration"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v4

    const-string v3, "0"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    const-string v3, "smart_ringtone_sound"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v4

    const-string v3, "1"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    const-string v3, "vibrate_when_ringing"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v4

    const-string v3, "0"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    const-string v3, "Eri_sounds"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v4

    const-string v3, "0"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    const-string v3, "hands_free_mode"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/lgesettings/SoundSettings;->UISTATUS:[[Ljava/lang/String;

    .line 232
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "vt_ringtone"

    aput-object v1, v0, v4

    const-string v1, "lg_ringtone"

    aput-object v1, v0, v5

    const-string v1, "sub_ringtone"

    aput-object v1, v0, v6

    const-string v1, "third_ringtone"

    aput-object v1, v0, v7

    const-string v1, "ringtone"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string v2, "sub_notification_sound"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "third_notification_sound"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "gentle_vibration"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "vibrate_type"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "incoming_vibration"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "sub_incoming_vibration"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "third_incoming_vibration"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "smart_ringtone_sound"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "vibrate_when_ringing"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "hands_free_mode"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "download_ringtones"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "quiet_mode"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "timed_silent"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "category_calls_and_notification"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "touch_feedback_and_system"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/lgesettings/SoundSettings;->REMOVED_MENU_TABLET:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    .line 298
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/lgesettings/SoundSettings;->mbIsSoundPoolLoaded:Z

    .line 306
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 315
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/lgesettings/SoundSettings;->temp_ringermode_value:I

    .line 325
    new-instance v0, Lcom/android/lgesettings/SoundSettings$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/SoundSettings$1;-><init>(Lcom/android/lgesettings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mHandler:Landroid/os/Handler;

    .line 349
    new-instance v0, Lcom/android/lgesettings/SoundSettings$2;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/SoundSettings$2;-><init>(Lcom/android/lgesettings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1028
    new-instance v0, Lcom/android/lgesettings/SoundSettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/lgesettings/SoundSettings$3;-><init>(Lcom/android/lgesettings/SoundSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mObserver:Landroid/database/ContentObserver;

    .line 1403
    new-instance v0, Lcom/android/lgesettings/SoundSettings$4;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/SoundSettings$4;-><init>(Lcom/android/lgesettings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method private declared-synchronized UpdateSoundEffect(Z)V
    .locals 7
    .parameter "isSoundEffect"

    .prologue
    .line 729
    monitor-enter p0

    const/4 v5, 0x1

    if-ne v5, p1, :cond_0

    .line 730
    :try_start_0
    iget-object v5, p0, Lcom/android/lgesettings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->loadSoundEffects()V

    .line 731
    const-string v5, "SoundSettings"

    const-string v6, "UpdateSoundEffect()load!!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 750
    :goto_0
    monitor-exit p0

    return-void

    .line 733
    :cond_0
    const-wide/16 v1, 0x7d0

    .line 734
    .local v1, kStandbyTime:J
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    add-long v3, v5, v1

    .line 735
    .local v3, mStandbyTime:J
    :goto_1
    iget-boolean v5, p0, Lcom/android/lgesettings/SoundSettings;->mbIsSoundPoolLoaded:Z

    if-nez v5, :cond_1

    .line 736
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-lez v5, :cond_2

    .line 737
    iget-object v5, p0, Lcom/android/lgesettings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->unloadSoundEffects()V

    .line 738
    const-string v5, "SoundSettings"

    const-string v6, "UpdateSoundEffect()unload!!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    :cond_1
    const-string v5, "SoundSettings"

    const-string v6, "UpdateSoundEffect()end"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 729
    .end local v1           #kStandbyTime:J
    .end local v3           #mStandbyTime:J
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 743
    .restart local v1       #kStandbyTime:J
    .restart local v3       #mStandbyTime:J
    :cond_2
    const-wide/16 v5, 0x32

    :try_start_2
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 744
    :catch_0
    move-exception v0

    .line 745
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/lgesettings/SoundSettings;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/lgesettings/SoundSettings;->do_handleMessage_Ringtone(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/lgesettings/SoundSettings;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->resultDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/lgesettings/SoundSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget v0, p0, Lcom/android/lgesettings/SoundSettings;->temp_ringermode_value:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/lgesettings/SoundSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput p1, p0, Lcom/android/lgesettings/SoundSettings;->temp_ringermode_value:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/lgesettings/SoundSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mTouchSoundsPreference:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/lgesettings/SoundSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/lgesettings/SoundSettings;->UpdateSoundEffect(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/lgesettings/SoundSettings;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/lgesettings/SoundSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/lgesettings/SoundSettings;->updateState(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/lgesettings/SoundSettings;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/lgesettings/SoundSettings;->handleDockChange(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/lgesettings/SoundSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/lgesettings/SoundSettings;->do_updateRingtoneName()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/lgesettings/SoundSettings;)Lcom/android/lgesettings/QuietModePreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mQuietMode:Lcom/android/lgesettings/QuietModePreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/lgesettings/SoundSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/lgesettings/SoundSettings;->showSoundProfileDialog()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/lgesettings/SoundSettings;)Lcom/android/lgesettings/QuietTimeSwitchPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mTimedSilent:Lcom/android/lgesettings/QuietTimeSwitchPreference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/lgesettings/SoundSettings;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkDRM(Ljava/lang/String;Landroid/content/Context;)I
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x4

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1955
    if-nez p1, :cond_1

    .line 1984
    :cond_0
    :goto_0
    return v4

    .line 1959
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    .line 1960
    add-int/lit8 v2, v7, -0x3

    const-string v3, ".dm"

    const/4 v5, 0x3

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_2

    add-int/lit8 v2, v7, -0x4

    const-string v3, ".dcf"

    move-object v0, p1

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_2

    add-int/lit8 v2, v7, -0x4

    const-string v3, ".odf"

    move-object v0, p1

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_2

    add-int/lit8 v2, v7, -0x4

    const-string v3, ".o4a"

    move-object v0, p1

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_2

    add-int/lit8 v2, v7, -0x4

    const-string v3, ".o4v"

    move-object v0, p1

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v1

    :goto_1
    if-eqz v0, :cond_0

    .line 1968
    invoke-static {p1}, Lcom/lge/lgdrm/DrmManager;->isDRM(Ljava/lang/String;)I

    move-result v0

    .line 1969
    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    const/16 v2, 0x3000

    if-gt v0, v2, :cond_0

    .line 1975
    :try_start_0
    invoke-static {p1, p2}, Lcom/lge/lgdrm/DrmManager;->createContentSession(Ljava/lang/String;Landroid/content/Context;)Lcom/lge/lgdrm/DrmContentSession;

    move-result-object v0

    .line 1976
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/lge/lgdrm/DrmContentSession;->isActionSupported(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_4

    move v4, v1

    .line 1977
    goto :goto_0

    :cond_3
    move v0, v4

    .line 1960
    goto :goto_1

    :cond_4
    move v4, v6

    .line 1980
    goto :goto_0

    .line 1981
    :catch_0
    move-exception v0

    move v4, v1

    .line 1984
    goto :goto_0
.end method

.method private checkDrmRingtoneAndNotificationSound()V
    .locals 6

    .prologue
    .line 1988
    const/4 v4, 0x7

    new-array v3, v4, [I

    fill-array-data v3, :array_0

    .line 1992
    .local v3, type_number:[I
    const/4 v2, 0x0

    .line 1993
    .local v2, ringtoneUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1994
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_1

    .line 2008
    :cond_0
    return-void

    .line 1999
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 2000
    aget v4, v3, v1

    invoke-static {v0, v4}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 2002
    if-eqz v2, :cond_2

    .line 2003
    invoke-direct {p0, v2}, Lcom/android/lgesettings/SoundSettings;->getFilepathFromContentUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v0}, Lcom/android/lgesettings/SoundSettings;->checkDRM(Ljava/lang/String;Landroid/content/Context;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 2004
    aget v4, v3, v1

    invoke-direct {p0, v0, v4}, Lcom/android/lgesettings/SoundSettings;->reSetRingtone(Landroid/content/Context;I)V

    .line 1999
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1988
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private createDialog(I)Landroid/app/AlertDialog;
    .locals 4
    .parameter

    .prologue
    .line 1769
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1770
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 1771
    const v1, 0x7f080e28

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080015

    new-instance v3, Lcom/android/lgesettings/SoundSettings$7;

    invoke-direct {v3, p0, p1}, Lcom/android/lgesettings/SoundSettings$7;-><init>(Lcom/android/lgesettings/SoundSettings;I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080106

    new-instance v3, Lcom/android/lgesettings/SoundSettings$6;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/SoundSettings$6;-><init>(Lcom/android/lgesettings/SoundSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1800
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1801
    const v1, 0x7f080bfa

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 1802
    return-object v0
.end method

.method private createUndockedMessage()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 830
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 831
    .local v0, ab:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f08037a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 832
    const v1, 0x7f08037b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 833
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 834
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private do_Init()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1860
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    .line 1861
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/SoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 1862
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 1864
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1865
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/lgesettings/Utils;->supportSplitView(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1866
    if-eqz v0, :cond_1

    .line 1867
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1875
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/SoundSettings;->activity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mContext:Landroid/content/Context;

    .line 1876
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/SoundSettings;->resolver:Landroid/content/ContentResolver;

    .line 1877
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->resolver:Landroid/content/ContentResolver;

    const-string v1, "content://settings/system"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/SoundSettings;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1879
    const v0, 0x7f06005f

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/SoundSettings;->addPreferencesFromResource(I)V

    .line 1880
    return-void

    .line 1870
    :cond_2
    if-eqz v0, :cond_1

    .line 1871
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1872
    const v1, 0x7f020353

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    goto :goto_0
.end method

.method private do_InitDefaultSetting()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1563
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1565
    new-instance v0, Lcom/android/lgesettings/RingtonePickerInfo;

    iget-object v4, p0, Lcom/android/lgesettings/SoundSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/android/lgesettings/RingtonePickerInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mRingtoneInfo:Lcom/android/lgesettings/RingtonePickerInfo;

    .line 1567
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/SoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 1568
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iput v0, p0, Lcom/android/lgesettings/SoundSettings;->ringerMode:I

    .line 1570
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/SoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 1571
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1572
    :cond_0
    const-string v0, "vibrate_when_ringing"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 1574
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1575
    const-string v0, "vibrate_when_ringing"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 1578
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 1579
    iget-object v4, p0, Lcom/android/lgesettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    const-string v0, "vibrate_when_ringing"

    invoke-static {v3, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1582
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mSmart_ringtone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 1583
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mSmart_ringtone:Landroid/preference/CheckBoxPreference;

    const-string v4, "smart_ringtone"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1585
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/SoundSettings;->sound_profile_entry:Ljava/util/ArrayList;

    .line 1586
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/SoundSettings;->sound_profile_value:Ljava/util/ArrayList;

    .line 1587
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->sound_profile_entry:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f09001a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1588
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->sound_profile_value:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f09001b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1589
    return-void

    :cond_3
    move v0, v2

    .line 1579
    goto :goto_0

    :cond_4
    move v1, v2

    .line 1583
    goto :goto_1
.end method

.method private do_InitFuctionalMenu()V
    .locals 5

    .prologue
    .line 1675
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    .line 1676
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    .line 1678
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1679
    const-string v0, "ring_volume"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 1682
    :cond_0
    const-string v0, "sound_settings"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    .line 1684
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    const-string v1, "musicfx"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mMusicFx:Landroid/preference/Preference;

    .line 1685
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1686
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1687
    const/16 v2, 0x200

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1688
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 1694
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mMusicFx:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1697
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1698
    sget-object v1, Lcom/android/lgesettings/SoundSettings;->NEED_VOICE_CAPABILITY:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    .line 1699
    invoke-virtual {p0, v3}, Lcom/android/lgesettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 1700
    if-eqz v3, :cond_2

    .line 1701
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1698
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1706
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1707
    invoke-static {}, Lcom/android/lgesettings/Utils;->isUpgradeModel()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1708
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mSmart_ringtone:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f08036b

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 1716
    :cond_4
    :goto_1
    return-void

    .line 1714
    :cond_5
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->category:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mSmart_ringtone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private do_InitModelDependancyMenu()V
    .locals 2

    .prologue
    .line 1591
    invoke-static {}, Lcom/android/lgesettings/Utils;->isUpgradeModel()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1592
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mIncomingVibration:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 1593
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mIncomingVibration:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1595
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mSubIncomingVibration:Landroid/preference/Preference;

    if-eqz v0, :cond_1

    .line 1596
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mSubIncomingVibration:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1598
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mThirdIncomingVibration:Landroid/preference/Preference;

    if-eqz v0, :cond_2

    .line 1599
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mThirdIncomingVibration:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1616
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/lgesettings/Utils;->isUpgradeModel()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/lgesettings/Utils;->isVeeModel()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "ro.build.product"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "l1e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1617
    :cond_3
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mGentleVibration:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1620
    :cond_4
    invoke-static {}, Lcom/android/lgesettings/Utils;->getVibrateTypeProperty()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/android/lgesettings/Utils;->getVibrateTypeProperty()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1621
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mGentleVibration:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_5

    .line 1622
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mGentleVibration:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1625
    :cond_5
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mVibrateVolumePreference:Lcom/android/lgesettings/VibrateVolumePreference;

    if-eqz v0, :cond_6

    .line 1626
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mVibrateVolumePreference:Lcom/android/lgesettings/VibrateVolumePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1630
    :cond_6
    invoke-static {}, Lcom/android/lgesettings/Utils;->isSPRModel()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1631
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mVibrateTypePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_7

    .line 1632
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->category:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mVibrateTypePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1633
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mVibrateTypePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1637
    :cond_7
    const/4 v0, 0x1

    const-string v1, "DCM"

    invoke-static {v1}, Lcom/android/lgesettings/Utils;->istargetOperator(Ljava/lang/String;)Z

    move-result v1

    if-ne v0, v1, :cond_d

    .line 1638
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mQuietMode:Lcom/android/lgesettings/QuietModePreference;

    if-eqz v0, :cond_8

    .line 1639
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mQuietMode:Lcom/android/lgesettings/QuietModePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1653
    :cond_8
    :goto_1
    invoke-static {}, Lcom/android/lgesettings/Utils;->isnotSupportHandsFreeMode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1654
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mHandsFreeMode:Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1656
    :cond_9
    return-void

    .line 1602
    :cond_a
    invoke-static {}, Lcom/android/lgesettings/Utils;->isUpgradeModel()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1603
    invoke-static {}, Lcom/android/lgesettings/Utils;->isSPRModel()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1604
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mIncomingVibration:Landroid/preference/Preference;

    if-eqz v0, :cond_b

    .line 1605
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mIncomingVibration:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1607
    :cond_b
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mSubIncomingVibration:Landroid/preference/Preference;

    if-eqz v0, :cond_c

    .line 1608
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mSubIncomingVibration:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1610
    :cond_c
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mThirdIncomingVibration:Landroid/preference/Preference;

    if-eqz v0, :cond_2

    .line 1611
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mThirdIncomingVibration:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 1642
    :cond_d
    invoke-static {}, Lcom/android/lgesettings/Utils;->isUpgradeModel()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0}, Lcom/android/lgesettings/SoundSettings;->isGKmodel()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Lcom/android/lgesettings/Utils;->isVeeModel()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1643
    :cond_e
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mQuietMode:Lcom/android/lgesettings/QuietModePreference;

    if-eqz v0, :cond_8

    .line 1644
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mQuietMode:Lcom/android/lgesettings/QuietModePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 1647
    :cond_f
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mTimedSilent:Lcom/android/lgesettings/QuietTimeSwitchPreference;

    if-eqz v0, :cond_8

    .line 1648
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mTimedSilent:Lcom/android/lgesettings/QuietTimeSwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private do_InitOperatorDependancyMenu()V
    .locals 7

    .prologue
    const v6, 0x7f08034a

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1352
    const-string v0, "ro.device.hapticfeedback"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1354
    const-string v1, "KT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1355
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/SoundSettings;->mVCRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1358
    :cond_0
    const-string v1, "SKT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "KT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "LGU"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/lgesettings/Utils;->isUpgradeModel()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "vee3ds"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "vee3e"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "vee7ds"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "vee7e"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "vee5ds"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "vee5e"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "vee5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "vee4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "vee5ss"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "vee5nfc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "u0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "u0_cdma"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ro.build.product"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "l1e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mVibrateVolumePreference:Lcom/android/lgesettings/VibrateVolumePreference;

    if-eqz v0, :cond_3

    .line 1369
    :cond_2
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mVibrateVolumePreference:Lcom/android/lgesettings/VibrateVolumePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1371
    :cond_3
    const-string v0, "TEL"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1372
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mDownloadRingtonesPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_4

    .line 1373
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->category:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mDownloadRingtonesPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1374
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mDownloadRingtonesPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1378
    :cond_4
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1379
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mSoundProfilePreference:Landroid/preference/Preference;

    const v1, 0x7f080340

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 1381
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->sound_profile_entry:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080b78

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 1382
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->sound_profile_entry:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 1383
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->sound_profile_entry:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080b77

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1385
    :cond_5
    const-string v0, "DCM"

    invoke-static {v0}, Lcom/android/lgesettings/Utils;->istargetOperator(Ljava/lang/String;)Z

    move-result v0

    if-ne v5, v0, :cond_6

    .line 1386
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->sound_profile_entry:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08033f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 1387
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mSoundProfilePreference:Landroid/preference/Preference;

    const v1, 0x7f080dec

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 1388
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v6}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 1389
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mQuietMode:Lcom/android/lgesettings/QuietModePreference;

    if-eqz v0, :cond_6

    .line 1390
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "quiet_mode"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1394
    :cond_6
    const-string v0, "ATT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1395
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mLGNotificationPreference:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080f6e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1398
    :cond_7
    const-string v0, "JP"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "KDDI"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1399
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mHandsFreeMode:Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference;

    const v1, 0x7f080e60

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference;->setSummary(I)V

    .line 1401
    :cond_8
    return-void
.end method

.method private do_InitPreferenceMenu()V
    .locals 3

    .prologue
    .line 1521
    const-string v0, "vibrate_when_ringing"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    .line 1523
    const-string v0, "ringtone"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;

    .line 1524
    const-string v0, "notification_sound"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mNotificationPreference:Landroid/preference/Preference;

    .line 1527
    const-string v0, "category_calls_and_notification"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/lgesettings/SoundSettings;->category:Landroid/preference/PreferenceCategory;

    .line 1528
    const-string v0, "category_feedback_and_vibrate"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/lgesettings/SoundSettings;->touchFeedback_system_category:Landroid/preference/PreferenceCategory;

    .line 1529
    const-string v0, "download_ringtones"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mDownloadRingtonesPreference:Landroid/preference/Preference;

    .line 1530
    const-string v0, "lg_ringtone"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mLGRingtonePreference:Landroid/preference/Preference;

    .line 1531
    const-string v0, "lg_notification"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mLGNotificationPreference:Landroid/preference/Preference;

    .line 1532
    const-string v0, "sub_ringtone"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mSubRingtonePreference:Landroid/preference/Preference;

    .line 1533
    const-string v0, "sub_notification_sound"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mSubNotificationPreference:Landroid/preference/Preference;

    .line 1534
    const-string v0, "third_ringtone"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mThirdRingtonePreference:Landroid/preference/Preference;

    .line 1535
    const-string v0, "third_notification_sound"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mThirdNotificationPreference:Landroid/preference/Preference;

    .line 1536
    const-string v0, "vt_ringtone"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mVCRingtonePreference:Landroid/preference/Preference;

    .line 1537
    const-string v0, "touch_feedback_and_system"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mTouchFeedbackAndSystemPreference:Landroid/preference/Preference;

    .line 1538
    new-instance v0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    .line 1539
    const-string v0, "gentle_vibration"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mGentleVibration:Landroid/preference/CheckBoxPreference;

    .line 1540
    const-string v0, "incoming_vibration"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mIncomingVibration:Landroid/preference/Preference;

    .line 1541
    const-string v0, "sub_incoming_vibration"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mSubIncomingVibration:Landroid/preference/Preference;

    .line 1542
    const-string v0, "third_incoming_vibration"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mThirdIncomingVibration:Landroid/preference/Preference;

    .line 1543
    const-string v0, "vibrate_type"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mVibrateTypePreference:Landroid/preference/Preference;

    .line 1545
    const-string v0, "vibrate_volume"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/VibrateVolumePreference;

    iput-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mVibrateVolumePreference:Lcom/android/lgesettings/VibrateVolumePreference;

    .line 1547
    const-string v0, "smart_ringtone_sound"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mSmart_ringtone:Landroid/preference/CheckBoxPreference;

    .line 1548
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mSmart_ringtone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1550
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "sound_profile"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mSoundProfilePreference:Landroid/preference/Preference;

    .line 1552
    new-instance v0, Lcom/android/lgesettings/QuietTimeInfo;

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/lgesettings/QuietTimeInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    .line 1553
    const-string v0, "timed_silent"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/QuietTimeSwitchPreference;

    iput-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mTimedSilent:Lcom/android/lgesettings/QuietTimeSwitchPreference;

    .line 1554
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mTimedSilent:Lcom/android/lgesettings/QuietTimeSwitchPreference;

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v1}, Lcom/android/lgesettings/QuietTimeInfo;->isQuietTimeState()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/QuietTimeSwitchPreference;->setChecked(Z)V

    .line 1556
    const-string v0, "quiet_mode"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/QuietModePreference;

    iput-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mQuietMode:Lcom/android/lgesettings/QuietModePreference;

    .line 1558
    new-instance v0, Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mHandsFreeModeInfo:Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;

    .line 1559
    const-string v0, "hands_free_mode"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference;

    iput-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mHandsFreeMode:Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference;

    .line 1560
    return-void
.end method

.method private do_InitRunnableMenu()V
    .locals 1

    .prologue
    .line 1760
    new-instance v0, Lcom/android/lgesettings/SoundSettings$5;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/SoundSettings$5;-><init>(Lcom/android/lgesettings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    .line 1765
    return-void
.end method

.method private do_InitRunnableMenu_touch()V
    .locals 1

    .prologue
    .line 1883
    new-instance v0, Lcom/android/lgesettings/SoundSettings$9;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/SoundSettings$9;-><init>(Lcom/android/lgesettings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mTouchSoundsRunnable:Ljava/lang/Runnable;

    .line 1892
    return-void
.end method

.method private do_InitSIMDependancyMenu()V
    .locals 2

    .prologue
    .line 905
    .line 921
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mSubRingtonePreference:Landroid/preference/Preference;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mSubNotificationPreference:Landroid/preference/Preference;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mThirdRingtonePreference:Landroid/preference/Preference;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mThirdNotificationPreference:Landroid/preference/Preference;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mSubIncomingVibration:Landroid/preference/Preference;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mThirdIncomingVibration:Landroid/preference/Preference;

    if-eqz v0, :cond_6

    .line 928
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mSubRingtonePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_1

    .line 929
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->category:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mSubRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 930
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mSubRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 932
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mSubNotificationPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_2

    .line 933
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->category:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mSubNotificationPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 934
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mSubNotificationPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 937
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mThirdRingtonePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_3

    .line 938
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->category:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mThirdRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 939
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mThirdRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 941
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mThirdNotificationPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_4

    .line 942
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->category:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mThirdNotificationPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 943
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mThirdNotificationPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 945
    :cond_4
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mSubIncomingVibration:Landroid/preference/Preference;

    if-eqz v0, :cond_5

    .line 946
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mSubIncomingVibration:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 948
    :cond_5
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mThirdIncomingVibration:Landroid/preference/Preference;

    if-eqz v0, :cond_6

    .line 949
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mThirdIncomingVibration:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 988
    :cond_6
    return-void
.end method

.method private do_ShowMenuCheck()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1837
    .line 1838
    sget-object v0, Lcom/android/lgesettings/SoundSettings;->UISTATUS:[[Ljava/lang/String;

    array-length v4, v0

    move v3, v2

    .line 1839
    :goto_0
    if-ge v3, v4, :cond_2

    .line 1840
    sget-object v0, Lcom/android/lgesettings/SoundSettings;->UISTATUS:[[Ljava/lang/String;

    aget-object v0, v0, v3

    aget-object v0, v0, v9

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1841
    sget-object v0, Lcom/android/lgesettings/SoundSettings;->UISTATUS:[[Ljava/lang/String;

    aget-object v0, v0, v3

    aget-object v0, v0, v9

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    const-string v0, "1"

    sget-object v6, Lcom/android/lgesettings/SoundSettings;->UISTATUS:[[Ljava/lang/String;

    aget-object v6, v6, v3

    iget v7, p0, Lcom/android/lgesettings/SoundSettings;->ringerMode:I

    aget-object v6, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1839
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1841
    goto :goto_1

    .line 1845
    :cond_2
    const-string v0, "DCM"

    invoke-static {v0}, Lcom/android/lgesettings/Utils;->istargetOperator(Ljava/lang/String;)Z

    move-result v0

    if-ne v1, v0, :cond_3

    iget v0, p0, Lcom/android/lgesettings/SoundSettings;->ringerMode:I

    if-ne v1, v0, :cond_3

    .line 1846
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1849
    :cond_3
    iget v0, p0, Lcom/android/lgesettings/SoundSettings;->ringerMode:I

    if-ne v8, v0, :cond_4

    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mVibrateTypePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_4

    .line 1851
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mVibrateTypePreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/lgesettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1854
    :cond_4
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mHandsFreeMode:Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference;

    if-eqz v0, :cond_5

    .line 1855
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mHandsFreeMode:Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference;

    iget v3, p0, Lcom/android/lgesettings/SoundSettings;->ringerMode:I

    if-ne v3, v8, :cond_6

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference;->setSwitchEnableStatus(Z)V

    .line 1857
    :cond_5
    return-void

    :cond_6
    move v1, v2

    .line 1855
    goto :goto_2
.end method

.method private do_handleMessage_Ringtone(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 991
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1026
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 993
    :pswitch_1
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_1

    .line 994
    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 996
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mLGRingtonePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 997
    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mLGRingtonePreference:Landroid/preference/Preference;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1001
    :pswitch_2
    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mSubRingtonePreference:Landroid/preference/Preference;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1004
    :pswitch_3
    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mThirdRingtonePreference:Landroid/preference/Preference;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1007
    :pswitch_4
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mNotificationPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_2

    .line 1008
    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mNotificationPreference:Landroid/preference/Preference;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1010
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mLGNotificationPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 1011
    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mLGNotificationPreference:Landroid/preference/Preference;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1015
    :pswitch_5
    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mSubNotificationPreference:Landroid/preference/Preference;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1018
    :pswitch_6
    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mThirdNotificationPreference:Landroid/preference/Preference;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1021
    :pswitch_7
    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mVCRingtonePreference:Landroid/preference/Preference;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 991
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method private do_onPreferenceTreeClick_Ringtone(Landroid/preference/Preference;)V
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 838
    iget-object v2, p0, Lcom/android/lgesettings/SoundSettings;->mLGRingtonePreference:Landroid/preference/Preference;

    if-ne p1, v2, :cond_1

    .line 839
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v5, "RINGTONE_PARENT"

    invoke-virtual {v2, v5, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 840
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 841
    const-string v2, "android.intent.extra.ringtone.TYPE"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 842
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 844
    const-string v2, "com.android.lgesettings.RingtonePicker"

    const v5, 0x7f080341

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/lgesettings/SoundSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 902
    :cond_0
    :goto_0
    return-void

    .line 846
    :cond_1
    iget-object v2, p0, Lcom/android/lgesettings/SoundSettings;->mLGNotificationPreference:Landroid/preference/Preference;

    if-ne p1, v2, :cond_2

    .line 847
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "RINGTONE_PARENT"

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 848
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 849
    const-string v1, "android.intent.extra.ringtone.TYPE"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 850
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 852
    const-string v2, "com.android.lgesettings.RingtonePicker"

    const v5, 0x7f080b06

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/lgesettings/SoundSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0

    .line 854
    :cond_2
    iget-object v2, p0, Lcom/android/lgesettings/SoundSettings;->mSubRingtonePreference:Landroid/preference/Preference;

    if-ne p1, v2, :cond_3

    .line 855
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "RINGTONE_PARENT"

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 856
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 857
    const-string v1, "android.intent.extra.ringtone.TYPE"

    const/16 v2, 0x8

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 858
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 860
    const-string v2, "com.android.lgesettings.RingtonePicker"

    const v5, 0x7f08036e

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/lgesettings/SoundSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0

    .line 862
    :cond_3
    iget-object v2, p0, Lcom/android/lgesettings/SoundSettings;->mSubNotificationPreference:Landroid/preference/Preference;

    if-ne p1, v2, :cond_4

    .line 863
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "RINGTONE_PARENT"

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 864
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 865
    const-string v1, "android.intent.extra.ringtone.TYPE"

    const/16 v2, 0x10

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 866
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 868
    const-string v2, "com.android.lgesettings.RingtonePicker"

    const v5, 0x7f080371

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/lgesettings/SoundSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0

    .line 870
    :cond_4
    iget-object v2, p0, Lcom/android/lgesettings/SoundSettings;->mThirdRingtonePreference:Landroid/preference/Preference;

    if-ne p1, v2, :cond_5

    .line 871
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "RINGTONE_PARENT"

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 872
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 873
    const-string v1, "android.intent.extra.ringtone.TYPE"

    const/16 v2, 0x40

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 874
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 876
    const-string v2, "com.android.lgesettings.RingtonePicker"

    const v5, 0x7f08036f

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/lgesettings/SoundSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto/16 :goto_0

    .line 878
    :cond_5
    iget-object v2, p0, Lcom/android/lgesettings/SoundSettings;->mThirdNotificationPreference:Landroid/preference/Preference;

    if-ne p1, v2, :cond_6

    .line 879
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "RINGTONE_PARENT"

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 880
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 881
    const-string v1, "android.intent.extra.ringtone.TYPE"

    const/16 v2, 0x80

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 882
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 884
    const-string v2, "com.android.lgesettings.RingtonePicker"

    const v5, 0x7f080372

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/lgesettings/SoundSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto/16 :goto_0

    .line 886
    :cond_6
    iget-object v2, p0, Lcom/android/lgesettings/SoundSettings;->mVCRingtonePreference:Landroid/preference/Preference;

    if-ne p1, v2, :cond_7

    .line 887
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "RINGTONE_PARENT"

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 888
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 889
    const-string v1, "android.intent.extra.ringtone.TYPE"

    const/16 v2, 0x20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 890
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 892
    const-string v2, "com.android.lgesettings.RingtonePicker"

    const v5, 0x7f080c5d

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/lgesettings/SoundSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto/16 :goto_0

    .line 893
    :cond_7
    iget-object v2, p0, Lcom/android/lgesettings/SoundSettings;->mDownloadRingtonesPreference:Landroid/preference/Preference;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 894
    const-string v0, "http://waprd.telstra.com/redirect?target=3glatesttones"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 895
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 896
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/SoundSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 897
    :cond_8
    iget-object v2, p0, Lcom/android/lgesettings/SoundSettings;->mSmart_ringtone:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_0

    .line 899
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "smart_ringtone"

    iget-object v4, p0, Lcom/android/lgesettings/SoundSettings;->mSmart_ringtone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_9

    :goto_1
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_9
    move v0, v1

    goto :goto_1
.end method

.method private do_onPreferenceTreeClick_Vibrate(Landroid/preference/Preference;)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1719
    iget-object v2, p0, Lcom/android/lgesettings/SoundSettings;->mVibrateTypePreference:Landroid/preference/Preference;

    if-ne p1, v2, :cond_2

    .line 1720
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1721
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1722
    const-string v3, "easysetting"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1723
    invoke-static {}, Lcom/android/lgesettings/Utils;->isUpgradeModel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1724
    const-string v1, "SoundSettings"

    const-string v3, "upgrade model"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    const-string v1, "com.android.lgesettings"

    const-string v3, "com.android.lgesettings.VibrateTypePreference"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1731
    :goto_0
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1732
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/SoundSettings;->startActivity(Landroid/content/Intent;)V

    .line 1757
    :cond_0
    :goto_1
    return-void

    .line 1727
    :cond_1
    const-string v1, "SoundSettings"

    const-string v3, "not upgrade model"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    const-string v1, "com.android.lgesettings"

    const-string v3, "com.android.lgesettings.vibratecreation.VibrationPreferenceActivity"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1734
    :cond_2
    iget-object v2, p0, Lcom/android/lgesettings/SoundSettings;->mIncomingVibration:Landroid/preference/Preference;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1735
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1736
    const-string v2, "com.android.lgesettings"

    const-string v3, "com.android.lgesettings.vibratecreation.VibratePicker"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1737
    const-string v2, "vibrate_parent_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1738
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/SoundSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 1741
    :cond_3
    iget-object v2, p0, Lcom/android/lgesettings/SoundSettings;->mSubIncomingVibration:Landroid/preference/Preference;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1742
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1743
    const-string v2, "com.android.lgesettings"

    const-string v3, "com.android.lgesettings.vibratecreation.VibratePicker"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1744
    const-string v2, "vibrate_parent_type"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1745
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/SoundSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 1747
    :cond_4
    iget-object v2, p0, Lcom/android/lgesettings/SoundSettings;->mThirdIncomingVibration:Landroid/preference/Preference;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1748
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1749
    const-string v1, "com.android.lgesettings"

    const-string v2, "com.android.lgesettings.vibratecreation.VibratePicker"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1750
    const-string v1, "vibrate_parent_type"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1751
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/SoundSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 1754
    :cond_5
    iget-object v2, p0, Lcom/android/lgesettings/SoundSettings;->mGentleVibration:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1755
    iget-object v2, p0, Lcom/android/lgesettings/SoundSettings;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gentle_vibration_status"

    iget-object v4, p0, Lcom/android/lgesettings/SoundSettings;->mGentleVibration:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_6

    :goto_2
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method private do_updateRingtoneName()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 518
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;

    invoke-direct {p0, v1, v0, v1}, Lcom/android/lgesettings/SoundSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mLGRingtonePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_1

    .line 524
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mLGRingtonePreference:Landroid/preference/Preference;

    invoke-direct {p0, v1, v0, v1}, Lcom/android/lgesettings/SoundSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V

    .line 528
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mNotificationPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_2

    .line 529
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mNotificationPreference:Landroid/preference/Preference;

    invoke-direct {p0, v2, v0, v2}, Lcom/android/lgesettings/SoundSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V

    .line 534
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mLGNotificationPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_3

    .line 535
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mLGNotificationPreference:Landroid/preference/Preference;

    invoke-direct {p0, v2, v0, v2}, Lcom/android/lgesettings/SoundSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V

    .line 539
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mSubRingtonePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_4

    .line 540
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mSubRingtonePreference:Landroid/preference/Preference;

    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, v2}, Lcom/android/lgesettings/SoundSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V

    .line 544
    :cond_4
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mSubNotificationPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_5

    .line 545
    const/16 v0, 0x10

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mSubNotificationPreference:Landroid/preference/Preference;

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2}, Lcom/android/lgesettings/SoundSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V

    .line 549
    :cond_5
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mThirdRingtonePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_6

    .line 550
    const/16 v0, 0x40

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mThirdRingtonePreference:Landroid/preference/Preference;

    const/16 v2, 0x9

    invoke-direct {p0, v0, v1, v2}, Lcom/android/lgesettings/SoundSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V

    .line 554
    :cond_6
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mThirdNotificationPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_7

    .line 555
    const/16 v0, 0x80

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mThirdNotificationPreference:Landroid/preference/Preference;

    const/16 v2, 0xa

    invoke-direct {p0, v0, v1, v2}, Lcom/android/lgesettings/SoundSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V

    .line 559
    :cond_7
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mVCRingtonePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_8

    .line 560
    const/16 v0, 0x20

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mVCRingtonePreference:Landroid/preference/Preference;

    const/4 v2, 0x6

    invoke-direct {p0, v0, v1, v2}, Lcom/android/lgesettings/SoundSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V

    .line 564
    :cond_8
    return-void
.end method

.method private do_updateStatePreference_Tablet_Only()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1504
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mTouchSoundsPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 1505
    iget-object v3, p0, Lcom/android/lgesettings/SoundSettings;->mTouchSoundsPreference:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->resolver:Landroid/content/ContentResolver;

    const-string v4, "sound_effects_enabled"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1509
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mLockSoundPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 1510
    iget-object v3, p0, Lcom/android/lgesettings/SoundSettings;->mLockSoundPreference:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->resolver:Landroid/content/ContentResolver;

    const-string v4, "lockscreen_sounds_enabled"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1514
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mVibrateOnTouchPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 1515
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mVibrateOnTouchPreference:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/lgesettings/SoundSettings;->resolver:Landroid/content/ContentResolver;

    const-string v4, "haptic_feedback_enabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_5

    :goto_2
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1518
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 1505
    goto :goto_0

    :cond_4
    move v0, v2

    .line 1510
    goto :goto_1

    :cond_5
    move v1, v2

    .line 1515
    goto :goto_2
.end method

.method private do_updateState_vibrate_summary()V
    .locals 5

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1419
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mIncomingVibration:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 1420
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getDBVibratePattern(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->checkedLGVibrateName(ILjava/lang/String;)V

    .line 1421
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mIncomingVibration:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getDBVibrateName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1424
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mSubIncomingVibration:Landroid/preference/Preference;

    if-eqz v0, :cond_1

    .line 1425
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    invoke-virtual {v1, v3}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getDBVibratePattern(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->checkedLGVibrateName(ILjava/lang/String;)V

    .line 1426
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mSubIncomingVibration:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    invoke-virtual {v1, v3}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getDBVibrateName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1428
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mThirdIncomingVibration:Landroid/preference/Preference;

    if-eqz v0, :cond_2

    .line 1429
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    invoke-virtual {v1, v4}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getDBVibratePattern(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->checkedLGVibrateName(ILjava/lang/String;)V

    .line 1430
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mThirdIncomingVibration:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    invoke-virtual {v1, v4}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getDBVibrateName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1432
    :cond_2
    invoke-static {}, Lcom/android/lgesettings/Utils;->getVibrateTypeProperty()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1433
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mVibrateVolumePreference:Lcom/android/lgesettings/VibrateVolumePreference;

    const v1, 0x7f080bcc

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/VibrateVolumePreference;->setSummary(I)V

    .line 1435
    :cond_3
    return-void
.end method

.method private getFilepathFromContentUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1912
    .line 1916
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1917
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1919
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 1920
    :goto_0
    if-eq v0, v8, :cond_2

    .line 1922
    if-nez v0, :cond_2

    .line 1936
    if-eqz v1, :cond_0

    .line 1937
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1946
    :cond_0
    :goto_1
    return-object v6

    :cond_1
    move v0, v7

    .line 1919
    goto :goto_0

    .line 1927
    :cond_2
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1928
    const-string v0, "_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1929
    if-ltz v0, :cond_4

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 1936
    :goto_2
    if-eqz v1, :cond_3

    .line 1937
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1941
    :cond_3
    :goto_3
    if-eqz v0, :cond_0

    .line 1945
    const-string v1, "SoundSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFilepathFromContentUri Media _data result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v0

    .line 1946
    goto :goto_1

    :cond_4
    move-object v0, v6

    .line 1929
    goto :goto_2

    .line 1932
    :catch_0
    move-exception v0

    move-object v1, v6

    .line 1933
    :goto_4
    :try_start_3
    const-string v2, "SoundSettings"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1936
    if-eqz v1, :cond_6

    .line 1937
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    goto :goto_3

    .line 1936
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_5
    if-eqz v1, :cond_5

    .line 1937
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 1936
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 1932
    :catch_1
    move-exception v0

    goto :goto_4

    :cond_6
    move-object v0, v6

    goto :goto_3
.end method

.method private static getTitle(Landroid/content/Context;Landroid/net/Uri;ZI)Ljava/lang/String;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v10, 0x10

    const/4 v9, 0x2

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v8, 0x1

    .line 1038
    .line 1039
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1042
    and-int/lit8 v2, p3, 0x1

    if-nez v2, :cond_0

    and-int/lit8 v2, p3, 0x8

    if-nez v2, :cond_0

    and-int/lit8 v2, p3, 0x40

    if-nez v2, :cond_0

    and-int/lit8 v2, p3, 0x20

    if-eqz v2, :cond_28

    .line 1043
    :cond_0
    const-string v3, "is_ringtone =? "

    .line 1046
    :goto_0
    and-int/lit8 v2, p3, 0x2

    if-nez v2, :cond_1

    and-int/lit8 v2, p3, 0x10

    if-nez v2, :cond_1

    and-int/lit16 v2, p3, 0x80

    if-eqz v2, :cond_2

    .line 1047
    :cond_1
    const-string v3, "is_notification =? "

    .line 1052
    :cond_2
    if-eqz p1, :cond_12

    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 1053
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 1054
    const-string v2, "SoundSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uri.getpath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    const-string v2, "settings"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1057
    if-eqz p2, :cond_27

    .line 1058
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v0

    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 1060
    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p3}, Lcom/android/lgesettings/SoundSettings;->getTitle(Landroid/content/Context;Landroid/net/Uri;ZI)Ljava/lang/String;

    move-result-object v0

    .line 1061
    const v1, 0x104042b

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1264
    :goto_1
    if-eqz v6, :cond_3

    .line 1265
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1270
    :cond_3
    :goto_2
    return-object v0

    .line 1065
    :cond_4
    :try_start_1
    const-string v2, "drm"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1066
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "title"

    aput-object v4, v2, v1

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "1"

    aput-object v5, v4, v1

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 1072
    :goto_3
    if-eqz v7, :cond_6

    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v8, :cond_6

    .line 1073
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1074
    const-string v0, "SoundSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file exist title = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 1264
    if-eqz v7, :cond_3

    .line 1265
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1067
    :cond_5
    :try_start_3
    const-string v2, "media"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1068
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "title"

    aput-object v4, v2, v1

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "1"

    aput-object v5, v4, v1

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v7

    goto :goto_3

    .line 1082
    :cond_6
    :try_start_4
    const-string v1, "SoundSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no ringtone/notification data  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    if-ne p3, v8, :cond_9

    .line 1086
    const-string v1, "ro.config.ringtone"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1087
    const-string v1, "is_ringtone"

    move-object v3, v1

    move-object v5, v2

    .line 1132
    :goto_4
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v9, "title"

    aput-object v9, v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_display_name =? AND "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " =? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v5, v4, v9

    const/4 v5, 0x1

    const-string v9, "1"

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v1

    .line 1139
    if-eqz v1, :cond_11

    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_11

    .line 1142
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1143
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v0

    .line 1149
    :goto_5
    if-eqz v1, :cond_25

    .line 1153
    :goto_6
    if-nez v0, :cond_7

    .line 1154
    const v0, 0x104042e

    :try_start_6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1156
    if-nez v0, :cond_7

    .line 1157
    const-string v0, ""

    .line 1160
    :cond_7
    const-string v1, "SoundSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTitle = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 1264
    :catchall_0
    move-exception v0

    :goto_7
    if-eqz v6, :cond_8

    .line 1265
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0

    .line 1089
    :cond_9
    if-ne p3, v9, :cond_a

    .line 1091
    :try_start_7
    const-string v1, "ro.config.notification_sound"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1092
    const-string v1, "is_notification"

    move-object v3, v1

    move-object v5, v2

    goto :goto_4

    .line 1094
    :cond_a
    const/4 v1, 0x4

    if-ne p3, v1, :cond_b

    .line 1096
    const-string v1, "ro.config.alarm_alert"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1097
    const-string v1, "is_alarm"

    move-object v3, v1

    move-object v5, v2

    goto/16 :goto_4

    .line 1100
    :cond_b
    const/16 v1, 0x8

    if-ne p3, v1, :cond_c

    .line 1102
    const-string v1, "ro.config.ringtone"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1103
    const-string v1, "is_ringtone"

    move-object v3, v1

    move-object v5, v2

    goto/16 :goto_4

    .line 1105
    :cond_c
    if-ne p3, v10, :cond_d

    .line 1107
    const-string v1, "ro.config.notification_sound"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1108
    const-string v1, "is_notification"

    move-object v3, v1

    move-object v5, v2

    goto/16 :goto_4

    .line 1110
    :cond_d
    const/16 v1, 0x40

    if-ne p3, v1, :cond_e

    .line 1112
    const-string v1, "ro.config.ringtone"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1113
    const-string v1, "is_ringtone"

    move-object v3, v1

    move-object v5, v2

    goto/16 :goto_4

    .line 1115
    :cond_e
    const/16 v1, 0x80

    if-ne p3, v1, :cond_f

    .line 1117
    const-string v1, "ro.config.notification_sound"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1118
    const-string v1, "is_notification"

    move-object v3, v1

    move-object v5, v2

    goto/16 :goto_4

    .line 1120
    :cond_f
    const/16 v1, 0x20

    if-ne p3, v1, :cond_10

    .line 1122
    const-string v1, "ro.config.ringtone"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1123
    const-string v1, "is_ringtone"

    move-object v3, v1

    move-object v5, v2

    goto/16 :goto_4

    .line 1128
    :cond_10
    const-string v1, "ro.config.notification_sound"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1129
    const-string v1, "is_notification"
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v3, v1

    move-object v5, v2

    goto/16 :goto_4

    .line 1145
    :cond_11
    :try_start_8
    const-string v0, "SoundSettings"

    const-string v2, "It has not default contents !! "

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object v0, v6

    .line 1146
    goto/16 :goto_5

    .line 1173
    :cond_12
    :try_start_9
    const-string v2, "ATT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    if-eq p3, v9, :cond_13

    if-eq p3, v10, :cond_13

    const/16 v2, 0x80

    if-ne p3, v2, :cond_15

    .line 1177
    :cond_13
    const-string v0, "SoundSettings"

    const-string v1, "att notification getTitle  uri = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    const v0, 0x7f080dc2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1260
    :cond_14
    :goto_8
    const-string v1, "SoundSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTitle  =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1182
    :cond_15
    if-ne p3, v8, :cond_18

    move v3, v8

    .line 1207
    :goto_9
    const-string v2, ""

    .line 1208
    const-string v1, ""

    .line 1210
    if-eq v3, v8, :cond_16

    const/16 v4, 0x8

    if-eq v3, v4, :cond_16

    const/16 v4, 0x40

    if-eq v3, v4, :cond_16

    const/16 v4, 0x20

    if-ne v3, v4, :cond_1f

    .line 1214
    :cond_16
    const-string v1, "ro.config.ringtone"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1215
    const-string v1, "is_ringtone"

    move-object v3, v1

    move-object v5, v2

    .line 1229
    :goto_a
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "title"

    aput-object v7, v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_display_name =? AND "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " =? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v5, v4, v7

    const/4 v5, 0x1

    const-string v7, "1"

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1236
    if-eqz v1, :cond_23

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_23

    .line 1239
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1240
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1246
    :goto_b
    if-eqz v1, :cond_17

    .line 1247
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1252
    :cond_17
    if-nez v0, :cond_14

    .line 1253
    const v0, 0x104042e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1255
    if-nez v0, :cond_14

    .line 1256
    const-string v0, ""

    goto/16 :goto_8

    .line 1185
    :cond_18
    if-ne p3, v9, :cond_19

    move v3, v9

    .line 1186
    goto :goto_9

    .line 1188
    :cond_19
    const/4 v2, 0x4

    if-ne p3, v2, :cond_1a

    .line 1189
    const/4 v1, 0x4

    move v3, v1

    goto :goto_9

    .line 1191
    :cond_1a
    const/16 v2, 0x8

    if-ne p3, v2, :cond_1b

    .line 1192
    const/16 v1, 0x8

    move v3, v1

    goto/16 :goto_9

    .line 1194
    :cond_1b
    if-ne p3, v10, :cond_1c

    move v3, v10

    .line 1195
    goto/16 :goto_9

    .line 1197
    :cond_1c
    const/16 v2, 0x40

    if-ne p3, v2, :cond_1d

    .line 1198
    const/16 v1, 0x40

    move v3, v1

    goto/16 :goto_9

    .line 1200
    :cond_1d
    const/16 v2, 0x80

    if-ne p3, v2, :cond_1e

    .line 1201
    const/16 v1, 0x80

    move v3, v1

    goto/16 :goto_9

    .line 1203
    :cond_1e
    const/16 v2, 0x20

    if-ne p3, v2, :cond_24

    .line 1204
    const/16 v1, 0x20

    move v3, v1

    goto/16 :goto_9

    .line 1218
    :cond_1f
    if-eq v3, v9, :cond_20

    if-eq v3, v10, :cond_20

    const/16 v4, 0x80

    if-ne v3, v4, :cond_21

    .line 1221
    :cond_20
    const-string v1, "ro.config.notification_sound"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1222
    const-string v1, "is_notification"

    move-object v3, v1

    move-object v5, v2

    goto/16 :goto_a

    .line 1225
    :cond_21
    const/4 v4, 0x4

    if-ne v3, v4, :cond_22

    :cond_22
    move-object v3, v1

    move-object v5, v2

    goto/16 :goto_a

    .line 1242
    :cond_23
    const-string v0, "SoundSettings"

    const-string v2, "It has not default contents !! "

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object v0, v6

    .line 1243
    goto :goto_b

    .line 1264
    :catchall_1
    move-exception v0

    move-object v6, v7

    goto/16 :goto_7

    :catchall_2
    move-exception v0

    move-object v6, v1

    goto/16 :goto_7

    :cond_24
    move v3, v1

    goto/16 :goto_9

    :cond_25
    move-object v6, v1

    goto/16 :goto_6

    :cond_26
    move-object v7, v6

    goto/16 :goto_3

    :cond_27
    move-object v0, v6

    goto/16 :goto_1

    :cond_28
    move-object v3, v6

    goto/16 :goto_0
.end method

.method private static getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 3
    .parameter "cursor"

    .prologue
    .line 1346
    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static getValidRingtoneUriFromCursorAndClose(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 1330
    if-eqz p0, :cond_1

    .line 1331
    const/4 v0, 0x0

    .line 1333
    .local v0, uri:Landroid/net/Uri;
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1334
    invoke-static {p0}, Lcom/android/lgesettings/SoundSettings;->getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v0

    .line 1336
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1340
    .end local v0           #uri:Landroid/net/Uri;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleDockChange(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 778
    iget-object v3, p0, Lcom/android/lgesettings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    if-eqz v3, :cond_0

    .line 779
    const-string v3, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 781
    .local v0, dockState:I
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    if-eqz v3, :cond_1

    move v1, v4

    .line 784
    .local v1, isBluetooth:Z
    :goto_0
    iput-object p1, p0, Lcom/android/lgesettings/SoundSettings;->mDockIntent:Landroid/content/Intent;

    .line 786
    if-eqz v0, :cond_6

    .line 789
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/lgesettings/SoundSettings;->removeDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 794
    :goto_1
    if-eqz v1, :cond_2

    .line 795
    iget-object v3, p0, Lcom/android/lgesettings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 819
    .end local v0           #dockState:I
    .end local v1           #isBluetooth:Z
    :cond_0
    :goto_2
    return-void

    .restart local v0       #dockState:I
    :cond_1
    move v1, v5

    .line 781
    goto :goto_0

    .line 797
    .restart local v1       #isBluetooth:Z
    :cond_2
    const/4 v3, 0x3

    if-ne v0, v3, :cond_5

    .line 798
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 799
    .local v2, resolver:Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/android/lgesettings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 800
    const-string v3, "dock_audio_media_enabled"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_3

    .line 802
    const-string v3, "dock_audio_media_enabled"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 805
    :cond_3
    const-string v3, "dock_audio_media_enabled"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/lgesettings/SoundSettings;->mDockAudioMediaEnabled:Landroid/preference/CheckBoxPreference;

    .line 807
    iget-object v3, p0, Lcom/android/lgesettings/SoundSettings;->mDockAudioMediaEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 808
    iget-object v3, p0, Lcom/android/lgesettings/SoundSettings;->mDockAudioMediaEnabled:Landroid/preference/CheckBoxPreference;

    const-string v6, "dock_audio_media_enabled"

    invoke-static {v2, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_4

    :goto_3
    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_2

    :cond_4
    move v4, v5

    goto :goto_3

    .line 812
    .end local v2           #resolver:Landroid/content/ContentResolver;
    :cond_5
    iget-object v3, p0, Lcom/android/lgesettings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 816
    :cond_6
    iget-object v3, p0, Lcom/android/lgesettings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 790
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private initDockSettings()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 762
    invoke-direct {p0}, Lcom/android/lgesettings/SoundSettings;->needsDockSettings()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 763
    const-string v0, "dock_sounds"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    .line 764
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 765
    iget-object v3, p0, Lcom/android/lgesettings/SoundSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->resolver:Landroid/content/ContentResolver;

    const-string v4, "dock_sounds_enabled"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 767
    const-string v0, "dock_audio"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    .line 768
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 775
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 765
    goto :goto_0

    .line 770
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "dock_category"

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 771
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "dock_audio"

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 772
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "dock_sounds"

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 773
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->resolver:Landroid/content/ContentResolver;

    const-string v2, "dock_audio_media_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method private initTimedSilentModeSummary()V
    .locals 2

    .prologue
    .line 1895
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mTimedSilent:Lcom/android/lgesettings/QuietTimeSwitchPreference;

    if-eqz v0, :cond_0

    .line 1896
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mTimedSilent:Lcom/android/lgesettings/QuietTimeSwitchPreference;

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v1}, Lcom/android/lgesettings/QuietTimeInfo;->isQuietTimeState()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/QuietTimeSwitchPreference;->setChecked(Z)V

    .line 1897
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mTimedSilent:Lcom/android/lgesettings/QuietTimeSwitchPreference;

    invoke-virtual {v0}, Lcom/android/lgesettings/QuietTimeSwitchPreference;->SetQuietTimeSummary()V

    .line 1899
    :cond_0
    return-void
.end method

.method private isGKmodel()Z
    .locals 2

    .prologue
    .line 1659
    const-string v0, "geefhd4g_lgu_kr"

    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "geefhd_skt_kr"

    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "geefhd_kt_kr"

    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "geevl04e"

    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "geevl04e"

    const-string v1, "ro.product.device"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "geefhd_open_hk"

    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "geefhd_att_us"

    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "geefhd_tcl_mx"

    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1667
    :cond_0
    const/4 v0, 0x1

    .line 1670
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private lookupRingtoneNames()V
    .locals 2

    .prologue
    .line 605
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 606
    return-void
.end method

.method private needsDockSettings()Z
    .locals 2

    .prologue
    .line 758
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private reSetRingtone(Landroid/content/Context;I)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 1274
    const-string v1, ""

    .line 1276
    const-string v0, ""

    .line 1280
    if-eq p2, v6, :cond_0

    const/16 v2, 0x8

    if-eq p2, v2, :cond_0

    const/16 v2, 0x40

    if-eq p2, v2, :cond_0

    const/16 v2, 0x20

    if-ne p2, v2, :cond_3

    .line 1284
    :cond_0
    const-string v0, "ro.config.ringtone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1285
    const-string v0, "is_ringtone"

    .line 1301
    :cond_1
    :goto_0
    const-string v2, "SoundSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Default Ringtone Name(stream:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    new-array v2, v7, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "title"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x3

    const-string v4, "title_key"

    aput-object v4, v2, v3

    .line 1309
    iget-object v3, p0, Lcom/android/lgesettings/SoundSettings;->mRingtoneInfo:Lcom/android/lgesettings/RingtonePickerInfo;

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_display_name = \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " AND "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v2, v0, v8, v8}, Lcom/android/lgesettings/RingtonePickerInfo;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1316
    invoke-static {v0}, Lcom/android/lgesettings/SoundSettings;->getValidRingtoneUriFromCursorAndClose(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v1

    .line 1318
    if-eqz v0, :cond_2

    .line 1319
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1321
    :cond_2
    invoke-direct {p0, p1, v1, p2}, Lcom/android/lgesettings/SoundSettings;->setDefaultRingtone(Landroid/content/Context;Landroid/net/Uri;I)V

    .line 1322
    return-void

    .line 1288
    :cond_3
    if-eq p2, v5, :cond_4

    const/16 v2, 0x10

    if-eq p2, v2, :cond_4

    const/16 v2, 0x80

    if-ne p2, v2, :cond_5

    .line 1291
    :cond_4
    const-string v0, "ro.config.notification_sound"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1292
    const-string v0, "is_notification"

    goto/16 :goto_0

    .line 1295
    :cond_5
    if-ne p2, v7, :cond_1

    goto/16 :goto_0
.end method

.method private setDefaultRingtone(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 1
    .parameter "context"
    .parameter "uri"
    .parameter "types"

    .prologue
    .line 1326
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mRingtoneInfo:Lcom/android/lgesettings/RingtonePickerInfo;

    invoke-virtual {v0, p2, p3}, Lcom/android/lgesettings/RingtonePickerInfo;->do_setURI(Landroid/net/Uri;I)V

    .line 1327
    return-void
.end method

.method private showSoundProfileDialog()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1805
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->sound_profile_value:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget v1, p0, Lcom/android/lgesettings/SoundSettings;->ringerMode:I

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/lgesettings/SoundSettings;->temp_ringermode_value:I

    .line 1806
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mSoundProfilePreference:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->sound_profile_entry:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    iget v2, p0, Lcom/android/lgesettings/SoundSettings;->temp_ringermode_value:I

    new-instance v3, Lcom/android/lgesettings/SoundSettings$8;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/SoundSettings$8;-><init>(Lcom/android/lgesettings/SoundSettings;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080106

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/SoundSettings;->resultDialog:Landroid/app/AlertDialog;

    .line 1832
    return-void
.end method

.method private updateAllPreferences()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1488
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iput v0, p0, Lcom/android/lgesettings/SoundSettings;->ringerMode:I

    .line 1490
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mSmart_ringtone:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 1491
    iget-object v3, p0, Lcom/android/lgesettings/SoundSettings;->mSmart_ringtone:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "smart_ringtone"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1493
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mGentleVibration:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 1494
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mGentleVibration:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/lgesettings/SoundSettings;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "gentle_vibration_status"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v2, v1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1497
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/lgesettings/Utils;->supportSplitView(Landroid/content/Context;)Z

    move-result v0

    if-ne v1, v0, :cond_3

    .line 1498
    invoke-direct {p0}, Lcom/android/lgesettings/SoundSettings;->do_updateStatePreference_Tablet_Only()V

    .line 1501
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 1491
    goto :goto_0
.end method

.method private updateRingtoneName(ILandroid/preference/Preference;I)V
    .locals 5
    .parameter "type"
    .parameter "preference"
    .parameter "msg"

    .prologue
    .line 567
    if-nez p2, :cond_1

    .line 602
    :cond_0
    :goto_0
    return-void

    .line 570
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 572
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 597
    invoke-static {v0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 599
    .local v1, ringtoneUri:Landroid/net/Uri;
    const/4 v2, 0x0

    .line 600
    .local v2, summary:Ljava/lang/CharSequence;
    const/4 v3, 0x1

    invoke-static {v0, v1, v3, p1}, Lcom/android/lgesettings/SoundSettings;->getTitle(Landroid/content/Context;Landroid/net/Uri;ZI)Ljava/lang/String;

    move-result-object v2

    .line 601
    iget-object v3, p0, Lcom/android/lgesettings/SoundSettings;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/lgesettings/SoundSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, p3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private updateState(Z)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1438
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1485
    :cond_0
    :goto_0
    return-void

    .line 1442
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iput v0, p0, Lcom/android/lgesettings/SoundSettings;->ringerMode:I

    .line 1443
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v0

    .line 1444
    const-string v3, "SoundSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateState] ##### ringerMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/lgesettings/SoundSettings;->ringerMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    const-string v3, "SoundSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateState] ##### vibrateMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->sound_profile_value:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget v3, p0, Lcom/android/lgesettings/SoundSettings;->ringerMode:I

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1449
    iget-object v4, p0, Lcom/android/lgesettings/SoundSettings;->mSoundProfilePreference:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->sound_profile_entry:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1451
    invoke-direct {p0}, Lcom/android/lgesettings/SoundSettings;->do_updateState_vibrate_summary()V

    .line 1453
    iget-object v3, p0, Lcom/android/lgesettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "vibrate_when_ringing"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1456
    invoke-direct {p0}, Lcom/android/lgesettings/SoundSettings;->do_ShowMenuCheck()V

    .line 1458
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v3, "timed_silent"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1459
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/QuietTimeInfo;->isNorepeatCase()Z

    move-result v0

    if-ne v1, v0, :cond_2

    .line 1460
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/QuietTimeInfo;->isNorepeatEndTimeCase()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/QuietTimeInfo;->isSaveTimeCurrentTime_Interval()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/QuietTimeInfo;->isNorepeatStartTimeCase()Z

    move-result v0

    if-ne v1, v0, :cond_6

    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/QuietTimeInfo;->isSilentTime()Z

    move-result v0

    if-ne v1, v0, :cond_6

    .line 1464
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/QuietTimeInfo;->setDBQuietTimeState(I)V

    .line 1470
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mTimedSilent:Lcom/android/lgesettings/QuietTimeSwitchPreference;

    if-eqz v0, :cond_3

    .line 1471
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mTimedSilent:Lcom/android/lgesettings/QuietTimeSwitchPreference;

    invoke-virtual {v0}, Lcom/android/lgesettings/QuietTimeSwitchPreference;->setCheckedUpdate()V

    .line 1475
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mQuietMode:Lcom/android/lgesettings/QuietModePreference;

    if-eqz v0, :cond_4

    .line 1476
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mQuietMode:Lcom/android/lgesettings/QuietModePreference;

    invoke-virtual {v0}, Lcom/android/lgesettings/QuietModePreference;->setCheckedUpdate()V

    .line 1479
    :cond_4
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mHandsFreeMode:Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference;

    if-eqz v0, :cond_0

    .line 1480
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mHandsFreeMode:Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference;

    invoke-virtual {v0}, Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference;->setCheckedUpdate()V

    .line 1481
    const-string v0, "JP"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KDDI"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1482
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mHandsFreeModeInfo:Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mHandsFreeModeInfo:Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;

    invoke-virtual {v1}, Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;->getDBHandsFreeModeState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;->setDBHandsFreeModeCall(I)V

    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 1453
    goto :goto_1

    .line 1466
    :cond_6
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/QuietTimeInfo;->isNorepeatEndTimeCase()Z

    move-result v0

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/QuietTimeInfo;->isNorepeatEndTimeCase()Z

    move-result v0

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/QuietTimeInfo;->isSilentTime()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1467
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/QuietTimeInfo;->setDBQuietTimeState(I)V

    goto :goto_2
.end method


# virtual methods
.method protected do_InitMenuForWifiModel()V
    .locals 4

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/lgesettings/Utils;->supportSplitView(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 426
    sget-object v2, Lcom/android/lgesettings/SoundSettings;->REMOVED_MENU_TABLET:[Ljava/lang/String;

    array-length v1, v2

    .line 427
    .local v1, preference_length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 428
    sget-object v2, Lcom/android/lgesettings/SoundSettings;->REMOVED_MENU_TABLET:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 429
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    sget-object v3, Lcom/android/lgesettings/SoundSettings;->REMOVED_MENU_TABLET:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 427
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 436
    :cond_1
    new-instance v2, Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/lgesettings/SoundSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/lgesettings/SoundSettings;->mTouchSoundsPreference:Landroid/preference/CheckBoxPreference;

    .line 437
    iget-object v2, p0, Lcom/android/lgesettings/SoundSettings;->mTouchSoundsPreference:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f080356

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 438
    iget-object v2, p0, Lcom/android/lgesettings/SoundSettings;->mTouchSoundsPreference:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f080dee

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 439
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/SoundSettings;->mTouchSoundsPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 442
    new-instance v2, Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/lgesettings/SoundSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/lgesettings/SoundSettings;->mLockSoundPreference:Landroid/preference/CheckBoxPreference;

    .line 443
    iget-object v2, p0, Lcom/android/lgesettings/SoundSettings;->mLockSoundPreference:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f080357

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 444
    iget-object v2, p0, Lcom/android/lgesettings/SoundSettings;->mLockSoundPreference:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f080def

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 445
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/SoundSettings;->mLockSoundPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 448
    new-instance v2, Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/lgesettings/SoundSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/lgesettings/SoundSettings;->mVibrateOnTouchPreference:Landroid/preference/CheckBoxPreference;

    .line 449
    iget-object v2, p0, Lcom/android/lgesettings/SoundSettings;->mVibrateOnTouchPreference:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f080358

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 450
    iget-object v2, p0, Lcom/android/lgesettings/SoundSettings;->mVibrateOnTouchPreference:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f080df0

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 451
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/SoundSettings;->mVibrateOnTouchPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 458
    .end local v0           #i:I
    .end local v1           #preference_length:I
    :cond_2
    :goto_1
    return-void

    .line 454
    :cond_3
    iget-object v2, p0, Lcom/android/lgesettings/SoundSettings;->mVibrateVolumePreference:Lcom/android/lgesettings/VibrateVolumePreference;

    if-eqz v2, :cond_2

    .line 455
    iget-object v2, p0, Lcom/android/lgesettings/SoundSettings;->mVibrateVolumePreference:Lcom/android/lgesettings/VibrateVolumePreference;

    const v3, 0x7f080bcb

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/VibrateVolumePreference;->setSummary(I)V

    goto :goto_1
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 754
    const v0, 0x7f080885

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1904
    invoke-super {p0, p1, p2, p3}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1905
    if-nez p2, :cond_0

    .line 1906
    invoke-direct {p0}, Lcom/android/lgesettings/SoundSettings;->initTimedSilentModeSummary()V

    .line 1908
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 404
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 407
    invoke-direct {p0}, Lcom/android/lgesettings/SoundSettings;->do_Init()V

    .line 408
    invoke-direct {p0}, Lcom/android/lgesettings/SoundSettings;->do_InitPreferenceMenu()V

    .line 409
    invoke-direct {p0}, Lcom/android/lgesettings/SoundSettings;->do_InitDefaultSetting()V

    .line 410
    invoke-direct {p0}, Lcom/android/lgesettings/SoundSettings;->do_InitSIMDependancyMenu()V

    .line 411
    invoke-direct {p0}, Lcom/android/lgesettings/SoundSettings;->do_InitOperatorDependancyMenu()V

    .line 412
    invoke-direct {p0}, Lcom/android/lgesettings/SoundSettings;->do_InitModelDependancyMenu()V

    .line 413
    invoke-direct {p0}, Lcom/android/lgesettings/SoundSettings;->do_InitFuctionalMenu()V

    .line 414
    invoke-direct {p0}, Lcom/android/lgesettings/SoundSettings;->do_InitRunnableMenu()V

    .line 415
    invoke-direct {p0}, Lcom/android/lgesettings/SoundSettings;->do_InitRunnableMenu_touch()V

    .line 417
    invoke-direct {p0}, Lcom/android/lgesettings/SoundSettings;->initDockSettings()V

    .line 418
    invoke-direct {p0}, Lcom/android/lgesettings/SoundSettings;->initTimedSilentModeSummary()V

    .line 420
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->do_InitMenuForWifiModel()V

    .line 422
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 823
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 824
    invoke-direct {p0}, Lcom/android/lgesettings/SoundSettings;->createUndockedMessage()Landroid/app/Dialog;

    move-result-object v0

    .line 826
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 509
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onDestroy()V

    .line 511
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/SoundSettings;->resolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 515
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 501
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPause()V

    .line 503
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 504
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 725
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 15
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 610
    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v1, :cond_2

    .line 611
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_when_ringing"

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 720
    :cond_0
    :goto_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/lgesettings/SoundSettings;->updateState(Z)V

    .line 721
    const/4 v1, 0x1

    :goto_2
    return v1

    .line 611
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 613
    :cond_2
    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mMusicFx:Landroid/preference/Preference;

    move-object/from16 v0, p2

    if-ne v0, v1, :cond_3

    .line 615
    const/4 v1, 0x0

    goto :goto_2

    .line 616
    :cond_3
    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mQuietMode:Lcom/android/lgesettings/QuietModePreference;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 617
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 618
    .local v10, i:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.lgesettings"

    const-string v3, "com.android.lgesettings.quietmode.QuietModeMainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 619
    invoke-virtual {p0, v10}, Lcom/android/lgesettings/SoundSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 620
    .end local v10           #i:Landroid/content/Intent;
    :cond_4
    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mHandsFreeMode:Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 621
    new-instance v10, Landroid/content/Intent;

    const-string v1, "com.lge.settings.HANDSFREE_MODE_SETTING"

    invoke-direct {v10, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 622
    .restart local v10       #i:Landroid/content/Intent;
    const/16 v1, 0x11

    invoke-virtual {p0, v10, v1}, Lcom/android/lgesettings/SoundSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 623
    .end local v10           #i:Landroid/content/Intent;
    :cond_5
    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    move-object/from16 v0, p2

    if-ne v0, v1, :cond_b

    .line 624
    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mDockIntent:Landroid/content/Intent;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mDockIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.DOCK_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 628
    .local v7, dockState:I
    :goto_3
    if-nez v7, :cond_7

    .line 629
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/SoundSettings;->showDialog(I)V

    goto :goto_1

    .line 624
    .end local v7           #dockState:I
    :cond_6
    const/4 v7, 0x0

    goto :goto_3

    .line 631
    .restart local v7       #dockState:I
    :cond_7
    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mDockIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 632
    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mDockIntent:Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_8

    const/4 v12, 0x1

    .line 634
    .local v12, isBluetooth:Z
    :goto_4
    if-eqz v12, :cond_9

    .line 635
    new-instance v10, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mDockIntent:Landroid/content/Intent;

    invoke-direct {v10, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 636
    .restart local v10       #i:Landroid/content/Intent;
    const-string v1, "com.android.lgesettings.bluetooth.action.DOCK_SHOW_UI"

    invoke-virtual {v10, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 637
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/lgesettings/bluetooth/DockEventReceiver;

    invoke-virtual {v10, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 638
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 632
    .end local v10           #i:Landroid/content/Intent;
    .end local v12           #isBluetooth:Z
    :cond_8
    const/4 v12, 0x0

    goto :goto_4

    .line 640
    .restart local v12       #isBluetooth:Z
    :cond_9
    iget-object v13, p0, Lcom/android/lgesettings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    check-cast v13, Landroid/preference/PreferenceScreen;

    .line 641
    .local v13, ps:Landroid/preference/PreferenceScreen;
    invoke-virtual {v13}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 642
    .local v9, extras:Landroid/os/Bundle;
    const-string v2, "checked"

    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "dock_audio_media_enabled"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_a

    const/4 v1, 0x1

    :goto_5
    invoke-virtual {v9, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 645
    invoke-super {p0, v13, v13}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 642
    :cond_a
    const/4 v1, 0x0

    goto :goto_5

    .line 649
    .end local v7           #dockState:I
    .end local v9           #extras:Landroid/os/Bundle;
    .end local v12           #isBluetooth:Z
    .end local v13           #ps:Landroid/preference/PreferenceScreen;
    :cond_b
    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v1, :cond_d

    .line 650
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dock_sounds_enabled"

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    :goto_6
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_c
    const/4 v1, 0x0

    goto :goto_6

    .line 652
    :cond_d
    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mDockAudioMediaEnabled:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v1, :cond_f

    .line 653
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dock_audio_media_enabled"

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mDockAudioMediaEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_7
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_e
    const/4 v1, 0x0

    goto :goto_7

    .line 655
    :cond_f
    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mTimedSilent:Lcom/android/lgesettings/QuietTimeSwitchPreference;

    move-object/from16 v0, p2

    if-ne v0, v1, :cond_10

    .line 656
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 657
    .restart local v10       #i:Landroid/content/Intent;
    const-string v1, "com.android.lgesettings"

    const-string v2, "com.android.lgesettings.TimedSilentSettings"

    invoke-virtual {v10, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 658
    const/4 v1, 0x0

    invoke-virtual {p0, v10, v1}, Lcom/android/lgesettings/SoundSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 659
    .end local v10           #i:Landroid/content/Intent;
    :cond_10
    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mSoundProfilePreference:Landroid/preference/Preference;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 661
    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->sound_profile_value:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iget v2, p0, Lcom/android/lgesettings/SoundSettings;->ringerMode:I

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 662
    .local v14, value:I
    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mQuietMode:Lcom/android/lgesettings/QuietModePreference;

    if-eqz v1, :cond_12

    .line 663
    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mQuietMode:Lcom/android/lgesettings/QuietModePreference;

    invoke-virtual {v1}, Lcom/android/lgesettings/QuietModePreference;->setCheckedUpdate()V

    .line 664
    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mQuietMode:Lcom/android/lgesettings/QuietModePreference;

    invoke-virtual {v1}, Lcom/android/lgesettings/QuietModePreference;->isQuietModeChecked()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 665
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 666
    .local v11, intent:Landroid/content/Intent;
    const-string v1, "com.lge.settings.QUIET_MODE_ASK_SOUNDPROFILE"

    invoke-virtual {v11, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 667
    const/high16 v1, 0x3000

    invoke-virtual {v11, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 669
    :try_start_0
    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v11}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 670
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setSelectSoundProfileFlag(Z)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 671
    :catch_0
    move-exception v8

    .line 672
    .local v8, e:Landroid/content/ActivityNotFoundException;
    const-string v1, "SoundSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QmodeAlertActivity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    invoke-direct {p0, v14}, Lcom/android/lgesettings/SoundSettings;->createDialog(I)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 674
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setSelectSoundProfileFlag(Z)V

    goto/16 :goto_1

    .line 678
    .end local v8           #e:Landroid/content/ActivityNotFoundException;
    .end local v11           #intent:Landroid/content/Intent;
    :cond_11
    invoke-direct {p0}, Lcom/android/lgesettings/SoundSettings;->showSoundProfileDialog()V

    goto/16 :goto_1

    .line 681
    :cond_12
    invoke-direct {p0}, Lcom/android/lgesettings/SoundSettings;->showSoundProfileDialog()V

    goto/16 :goto_1

    .line 683
    .end local v14           #value:I
    :cond_13
    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mTouchFeedbackAndSystemPreference:Landroid/preference/Preference;

    move-object/from16 v0, p2

    if-ne v0, v1, :cond_14

    .line 684
    const-string v3, "com.android.lgesettings.TouchFeedbackAndSystemPreference"

    const/4 v4, -0x1

    const/4 v5, 0x0

    const v6, 0x7f080b7b

    move-object v1, p0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/lgesettings/SoundSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto/16 :goto_1

    .line 685
    :cond_14
    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mLGRingtonePreference:Landroid/preference/Preference;

    move-object/from16 v0, p2

    if-eq v0, v1, :cond_15

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mLGNotificationPreference:Landroid/preference/Preference;

    move-object/from16 v0, p2

    if-eq v0, v1, :cond_15

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mSubRingtonePreference:Landroid/preference/Preference;

    move-object/from16 v0, p2

    if-eq v0, v1, :cond_15

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mSubNotificationPreference:Landroid/preference/Preference;

    move-object/from16 v0, p2

    if-eq v0, v1, :cond_15

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mThirdRingtonePreference:Landroid/preference/Preference;

    move-object/from16 v0, p2

    if-eq v0, v1, :cond_15

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mThirdNotificationPreference:Landroid/preference/Preference;

    move-object/from16 v0, p2

    if-eq v0, v1, :cond_15

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mVCRingtonePreference:Landroid/preference/Preference;

    move-object/from16 v0, p2

    if-eq v0, v1, :cond_15

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mDownloadRingtonesPreference:Landroid/preference/Preference;

    move-object/from16 v0, p2

    if-eq v0, v1, :cond_15

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mSmart_ringtone:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v1, :cond_16

    .line 694
    :cond_15
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/lgesettings/SoundSettings;->do_onPreferenceTreeClick_Ringtone(Landroid/preference/Preference;)V

    goto/16 :goto_1

    .line 695
    :cond_16
    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mVibrateTypePreference:Landroid/preference/Preference;

    move-object/from16 v0, p2

    if-eq v0, v1, :cond_17

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mIncomingVibration:Landroid/preference/Preference;

    move-object/from16 v0, p2

    if-eq v0, v1, :cond_17

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mSubIncomingVibration:Landroid/preference/Preference;

    move-object/from16 v0, p2

    if-eq v0, v1, :cond_17

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mThirdIncomingVibration:Landroid/preference/Preference;

    move-object/from16 v0, p2

    if-eq v0, v1, :cond_17

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mGentleVibration:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v1, :cond_18

    .line 700
    :cond_17
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/lgesettings/SoundSettings;->do_onPreferenceTreeClick_Vibrate(Landroid/preference/Preference;)V

    goto/16 :goto_1

    .line 701
    :cond_18
    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mTouchSoundsPreference:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v1, :cond_1b

    .line 702
    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mTouchSoundsPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 703
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/lgesettings/SoundSettings;->mbIsSoundPoolLoaded:Z

    .line 708
    :goto_8
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/android/lgesettings/SoundSettings;->mTouchSoundsRunnable:Ljava/lang/Runnable;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 709
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sound_effects_enabled"

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mTouchSoundsPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    :goto_9
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 705
    :cond_19
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/lgesettings/SoundSettings;->mbIsSoundPoolLoaded:Z

    goto :goto_8

    .line 709
    :cond_1a
    const/4 v1, 0x0

    goto :goto_9

    .line 711
    :cond_1b
    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mLockSoundPreference:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v1, :cond_1d

    .line 712
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_sounds_enabled"

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mLockSoundPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v1, 0x1

    :goto_a
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_1c
    const/4 v1, 0x0

    goto :goto_a

    .line 714
    :cond_1d
    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mVibrateOnTouchPreference:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v1, :cond_0

    .line 715
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_enabled"

    iget-object v1, p0, Lcom/android/lgesettings/SoundSettings;->mVibrateOnTouchPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v1, 0x1

    :goto_b
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_1e
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 462
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onResume()V

    .line 463
    new-instance v3, Landroid/content/IntentFilter;

    const-string v5, "lge.settings.QMODE_CHANGED"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 464
    .local v3, quietModefilter:Landroid/content/IntentFilter;
    const-string v5, "quiet_time_chanted_action"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v7, p0, Lcom/android/lgesettings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v7, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 467
    invoke-direct {p0}, Lcom/android/lgesettings/SoundSettings;->checkDrmRingtoneAndNotificationSound()V

    .line 469
    invoke-direct {p0, v6}, Lcom/android/lgesettings/SoundSettings;->updateState(Z)V

    .line 470
    invoke-direct {p0}, Lcom/android/lgesettings/SoundSettings;->lookupRingtoneNames()V

    .line 471
    invoke-direct {p0}, Lcom/android/lgesettings/SoundSettings;->updateAllPreferences()V

    .line 473
    new-instance v0, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.DOCK_EVENT"

    invoke-direct {v0, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 474
    .local v0, filter:Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v7, p0, Lcom/android/lgesettings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v7, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 475
    new-instance v1, Landroid/content/IntentFilter;

    const-string v5, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v1, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 477
    .local v1, filter1:Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v7, p0, Lcom/android/lgesettings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v7, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 479
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 480
    .local v2, filter2:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 481
    const-string v5, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 482
    const-string v5, "file"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v7, p0, Lcom/android/lgesettings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v7, v2, v8, v8}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 485
    const-string v5, "ring_volume"

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/lgesettings/RingerVolumePreference;

    .line 486
    .local v4, ringerVolumePref:Lcom/android/lgesettings/RingerVolumePreference;
    if-eqz v4, :cond_1

    .line 487
    iget-object v5, p0, Lcom/android/lgesettings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->isMasterMute()Z

    move-result v5

    if-nez v5, :cond_2

    move v5, v6

    :goto_0
    invoke-virtual {v4, v5}, Lcom/android/lgesettings/RingerVolumePreference;->setEnabled(Z)V

    .line 488
    invoke-virtual {v4}, Lcom/android/lgesettings/RingerVolumePreference;->updateUI()V

    .line 489
    invoke-virtual {p0}, Lcom/android/lgesettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 490
    const v5, 0x7f080345

    invoke-virtual {v4, v5}, Lcom/android/lgesettings/RingerVolumePreference;->setSummary(I)V

    .line 493
    :cond_0
    invoke-virtual {v4}, Lcom/android/lgesettings/RingerVolumePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/lgesettings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->isMasterMute()Z

    move-result v5

    if-ne v6, v5, :cond_1

    .line 494
    invoke-virtual {v4}, Lcom/android/lgesettings/RingerVolumePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 497
    :cond_1
    return-void

    .line 487
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method
