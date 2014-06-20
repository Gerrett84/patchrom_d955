.class public Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "VibrationPreferenceActivity.java"


# instance fields
.field private mAlarmVibration:Landroid/preference/Preference;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCalendarVibration:Landroid/preference/Preference;

.field private mEmailVibration:Landroid/preference/Preference;

.field private mGentleVibration:Landroid/preference/CheckBoxPreference;

.field private mIncomingVibration:Landroid/preference/Preference;

.field private mMessageVibration:Landroid/preference/Preference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSubIncomingVibration:Landroid/preference/Preference;

.field private mThirdIncomingVibration:Landroid/preference/Preference;

.field private mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

.field private mVibrateVolumePreference:Lcom/android/lgesettings/VibrateVolumePreference;

.field private ringerMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 58
    new-instance v0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity$1;-><init>(Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->ringerMode:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->ringerMode:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->updateState(I)V

    return-void
.end method

.method private setGentleVibration(I)V
    .locals 2
    .parameter "check"

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gentle_vibration_status"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 387
    return-void
.end method

.method private updateState(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 70
    iget v0, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->ringerMode:I

    if-nez v0, :cond_0

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->updateUIStatus(Z)V

    .line 76
    :goto_0
    return-void

    .line 73
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->updateUIStatus(Z)V

    goto :goto_0
.end method

.method private updateUI()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 265
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mIncomingVibration:Landroid/preference/Preference;

    if-eqz v2, :cond_0

    .line 266
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    iget-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    invoke-virtual {v3, v1}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getDBVibratePattern(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->checkedLGVibrateName(ILjava/lang/String;)V

    .line 267
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mIncomingVibration:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    invoke-virtual {v3, v1}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getDBVibrateName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 270
    :cond_0
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mSubIncomingVibration:Landroid/preference/Preference;

    if-eqz v2, :cond_1

    .line 271
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    iget-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    invoke-virtual {v3, v0}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getDBVibratePattern(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->checkedLGVibrateName(ILjava/lang/String;)V

    .line 272
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mSubIncomingVibration:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    invoke-virtual {v3, v0}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getDBVibrateName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 274
    :cond_1
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mThirdIncomingVibration:Landroid/preference/Preference;

    if-eqz v2, :cond_2

    .line 275
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getDBVibratePattern(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->checkedLGVibrateName(ILjava/lang/String;)V

    .line 276
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mThirdIncomingVibration:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getDBVibrateName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 279
    :cond_2
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mGentleVibration:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_3

    .line 280
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mGentleVibration:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_3

    .line 281
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mGentleVibration:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "gentle_vibration_status"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_8

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 285
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mMessageVibration:Landroid/preference/Preference;

    if-eqz v0, :cond_4

    .line 286
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    invoke-virtual {v1, v6}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getDBVibratePattern(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->checkedLGVibrateName(ILjava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mMessageVibration:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    invoke-virtual {v1, v6}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getDBVibrateName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 289
    :cond_4
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mEmailVibration:Landroid/preference/Preference;

    if-eqz v0, :cond_5

    .line 290
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    invoke-virtual {v1, v7}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getDBVibratePattern(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->checkedLGVibrateName(ILjava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mEmailVibration:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    invoke-virtual {v1, v7}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getDBVibrateName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 293
    :cond_5
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mAlarmVibration:Landroid/preference/Preference;

    if-eqz v0, :cond_6

    .line 294
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    invoke-virtual {v1, v8}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getDBVibratePattern(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->checkedLGVibrateName(ILjava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mAlarmVibration:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    invoke-virtual {v1, v8}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getDBVibrateName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 297
    :cond_6
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mCalendarVibration:Landroid/preference/Preference;

    if-eqz v0, :cond_7

    .line 298
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getDBVibratePattern(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->checkedLGVibrateName(ILjava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mCalendarVibration:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getDBVibrateName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 301
    :cond_7
    return-void

    :cond_8
    move v0, v1

    .line 281
    goto :goto_0
.end method

.method private updateUIStatus(Z)V
    .locals 1
    .parameter "status"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mGentleVibration:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mGentleVibration:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mVibrateVolumePreference:Lcom/android/lgesettings/VibrateVolumePreference;

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mVibrateVolumePreference:Lcom/android/lgesettings/VibrateVolumePreference;

    invoke-virtual {v0, p1}, Lcom/android/lgesettings/VibrateVolumePreference;->setEnabled(Z)V

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mIncomingVibration:Landroid/preference/Preference;

    if-eqz v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mIncomingVibration:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mSubIncomingVibration:Landroid/preference/Preference;

    if-eqz v0, :cond_3

    .line 89
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mSubIncomingVibration:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 92
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mThirdIncomingVibration:Landroid/preference/Preference;

    if-eqz v0, :cond_4

    .line 93
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mThirdIncomingVibration:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 95
    :cond_4
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mMessageVibration:Landroid/preference/Preference;

    if-eqz v0, :cond_5

    .line 96
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mMessageVibration:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 99
    :cond_5
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mEmailVibration:Landroid/preference/Preference;

    if-eqz v0, :cond_6

    .line 100
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mEmailVibration:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 102
    :cond_6
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mAlarmVibration:Landroid/preference/Preference;

    if-eqz v0, :cond_7

    .line 103
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mAlarmVibration:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 105
    :cond_7
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mCalendarVibration:Landroid/preference/Preference;

    if-eqz v0, :cond_8

    .line 106
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mCalendarVibration:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 108
    :cond_8
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x1

    const v9, 0x7f020356

    .line 113
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    const v6, 0x7f04018b

    invoke-virtual {p0, v6}, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->addPreferencesFromResource(I)V

    .line 115
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 116
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0, v10}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 118
    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setIcon(I)V

    .line 120
    :cond_0
    new-instance v6, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    .line 121
    const-string v6, "incoming_vibration"

    invoke-virtual {p0, v6}, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mIncomingVibration:Landroid/preference/Preference;

    .line 122
    const-string v6, "sub_incoming_vibration"

    invoke-virtual {p0, v6}, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mSubIncomingVibration:Landroid/preference/Preference;

    .line 123
    const-string v6, "third_incoming_vibration"

    invoke-virtual {p0, v6}, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mThirdIncomingVibration:Landroid/preference/Preference;

    .line 124
    const-string v6, "message_vibration"

    invoke-virtual {p0, v6}, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mMessageVibration:Landroid/preference/Preference;

    .line 125
    const-string v6, "email_vibration"

    invoke-virtual {p0, v6}, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mEmailVibration:Landroid/preference/Preference;

    .line 126
    const-string v6, "alarm_vibration"

    invoke-virtual {p0, v6}, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mAlarmVibration:Landroid/preference/Preference;

    .line 127
    const-string v6, "calendar_vibration"

    invoke-virtual {p0, v6}, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mCalendarVibration:Landroid/preference/Preference;

    .line 128
    const-string v6, "audio"

    invoke-virtual {p0, v6}, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    iput-object v6, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 131
    invoke-static {}, Lcom/android/lgesettings/Utils;->isSPRModel()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 153
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/lgesettings/Utils;->isMultiSimEnabled()Z

    move-result v4

    .line 154
    .local v4, isDualSim:Z
    invoke-static {}, Lcom/android/lgesettings/Utils;->isTripleSimEnabled()Z

    move-result v5

    .line 155
    .local v5, isTripleSim:Z
    if-eqz v5, :cond_19

    .line 173
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 174
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 176
    .local v1, bun:Landroid/os/Bundle;
    const-string v6, "easysetting"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-ne v6, v10, :cond_1e

    .line 178
    invoke-static {}, Lcom/android/lgesettings/Utils;->isUpgradeModel()Z

    move-result v6

    if-nez v6, :cond_3

    .line 179
    invoke-static {}, Lcom/android/lgesettings/Utils;->isSPRModel()Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 187
    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    .line 188
    const v6, 0x7f080ddf

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setTitle(I)V

    .line 190
    :cond_4
    iget-object v6, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mGentleVibration:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_5

    .line 191
    iget-object v6, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mGentleVibration:Landroid/preference/CheckBoxPreference;

    const v7, 0x7f02019b

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setIcon(I)V

    .line 193
    :cond_5
    iget-object v6, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mVibrateVolumePreference:Lcom/android/lgesettings/VibrateVolumePreference;

    if-eqz v6, :cond_6

    .line 194
    iget-object v6, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mVibrateVolumePreference:Lcom/android/lgesettings/VibrateVolumePreference;

    const v7, 0x7f020244

    invoke-virtual {v6, v7}, Lcom/android/lgesettings/VibrateVolumePreference;->setIcon(I)V

    .line 196
    :cond_6
    iget-object v6, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mIncomingVibration:Landroid/preference/Preference;

    if-eqz v6, :cond_7

    .line 197
    iget-object v6, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mIncomingVibration:Landroid/preference/Preference;

    invoke-virtual {v6, v9}, Landroid/preference/Preference;->setIcon(I)V

    .line 199
    :cond_7
    if-eqz v4, :cond_8

    .line 200
    iget-object v6, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mSubIncomingVibration:Landroid/preference/Preference;

    if-eqz v6, :cond_8

    .line 201
    iget-object v6, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mSubIncomingVibration:Landroid/preference/Preference;

    invoke-virtual {v6, v9}, Landroid/preference/Preference;->setIcon(I)V

    .line 203
    :cond_8
    if-eqz v5, :cond_a

    .line 204
    iget-object v6, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mSubIncomingVibration:Landroid/preference/Preference;

    if-eqz v6, :cond_9

    .line 205
    iget-object v6, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mSubIncomingVibration:Landroid/preference/Preference;

    invoke-virtual {v6, v9}, Landroid/preference/Preference;->setIcon(I)V

    .line 207
    :cond_9
    iget-object v6, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mThirdIncomingVibration:Landroid/preference/Preference;

    if-eqz v6, :cond_a

    .line 208
    iget-object v6, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mThirdIncomingVibration:Landroid/preference/Preference;

    invoke-virtual {v6, v9}, Landroid/preference/Preference;->setIcon(I)V

    .line 211
    :cond_a
    iget-object v6, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mMessageVibration:Landroid/preference/Preference;

    if-eqz v6, :cond_b

    .line 212
    iget-object v6, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mMessageVibration:Landroid/preference/Preference;

    invoke-virtual {v6, v9}, Landroid/preference/Preference;->setIcon(I)V

    .line 214
    :cond_b
    iget-object v6, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mEmailVibration:Landroid/preference/Preference;

    if-eqz v6, :cond_c

    .line 215
    iget-object v6, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mEmailVibration:Landroid/preference/Preference;

    invoke-virtual {v6, v9}, Landroid/preference/Preference;->setIcon(I)V

    .line 217
    :cond_c
    iget-object v6, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mAlarmVibration:Landroid/preference/Preference;

    if-eqz v6, :cond_d

    .line 218
    iget-object v6, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mAlarmVibration:Landroid/preference/Preference;

    invoke-virtual {v6, v9}, Landroid/preference/Preference;->setIcon(I)V

    .line 220
    :cond_d
    iget-object v6, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mCalendarVibration:Landroid/preference/Preference;

    if-eqz v6, :cond_e

    .line 221
    iget-object v6, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mCalendarVibration:Landroid/preference/Preference;

    invoke-virtual {v6, v9}, Landroid/preference/Preference;->setIcon(I)V

    .line 224
    :cond_e
    invoke-static {}, Lcom/android/lgesettings/Utils;->getVibrateTypeProperty()Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    invoke-static {}, Lcom/android/lgesettings/Utils;->getVibrateTypeProperty()Ljava/lang/String;

    move-result-object v6

    const-string v7, "2"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 225
    iget-object v6, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mGentleVibration:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_f

    .line 226
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mGentleVibration:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 228
    :cond_f
    iget-object v6, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mVibrateVolumePreference:Lcom/android/lgesettings/VibrateVolumePreference;

    if-eqz v6, :cond_10

    .line 229
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mVibrateVolumePreference:Lcom/android/lgesettings/VibrateVolumePreference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 249
    :cond_10
    :goto_3
    invoke-static {}, Lcom/android/lgesettings/Utils;->isUpgradeModel()Z

    move-result v6

    if-nez v6, :cond_11

    invoke-static {}, Lcom/android/lgesettings/Utils;->isVeeModel()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 250
    :cond_11
    iget-object v6, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mGentleVibration:Landroid/preference/CheckBoxPreference;

    if-nez v6, :cond_12

    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    if-eqz v6, :cond_13

    .line 251
    :cond_12
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mGentleVibration:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 256
    :cond_13
    const-string v6, "ro.device.hapticfeedback"

    const-string v7, "1"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 257
    .local v2, hapticfeedback:Ljava/lang/String;
    const-string v6, "0"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 258
    iget-object v6, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mVibrateVolumePreference:Lcom/android/lgesettings/VibrateVolumePreference;

    if-eqz v6, :cond_14

    .line 259
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mVibrateVolumePreference:Lcom/android/lgesettings/VibrateVolumePreference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 262
    :cond_14
    return-void

    .line 139
    .end local v1           #bun:Landroid/os/Bundle;
    .end local v2           #hapticfeedback:Ljava/lang/String;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #isDualSim:Z
    .end local v5           #isTripleSim:Z
    :cond_15
    iget-object v6, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mEmailVibration:Landroid/preference/Preference;

    if-eqz v6, :cond_16

    .line 140
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mEmailVibration:Landroid/preference/Preference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 142
    :cond_16
    iget-object v6, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mMessageVibration:Landroid/preference/Preference;

    if-eqz v6, :cond_17

    .line 143
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mMessageVibration:Landroid/preference/Preference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 145
    :cond_17
    iget-object v6, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mAlarmVibration:Landroid/preference/Preference;

    if-eqz v6, :cond_18

    .line 146
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mAlarmVibration:Landroid/preference/Preference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 148
    :cond_18
    iget-object v6, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mCalendarVibration:Landroid/preference/Preference;

    if-eqz v6, :cond_1

    .line 149
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mCalendarVibration:Landroid/preference/Preference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 157
    .restart local v4       #isDualSim:Z
    .restart local v5       #isTripleSim:Z
    :cond_19
    if-nez v4, :cond_1b

    .line 158
    iget-object v6, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mSubIncomingVibration:Landroid/preference/Preference;

    if-eqz v6, :cond_1a

    .line 159
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mSubIncomingVibration:Landroid/preference/Preference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 161
    :cond_1a
    iget-object v6, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mThirdIncomingVibration:Landroid/preference/Preference;

    if-eqz v6, :cond_2

    .line 162
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mThirdIncomingVibration:Landroid/preference/Preference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 166
    :cond_1b
    iget-object v6, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mIncomingVibration:Landroid/preference/Preference;

    if-eqz v6, :cond_1c

    .line 167
    iget-object v6, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mIncomingVibration:Landroid/preference/Preference;

    const v7, 0x7f080cc7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setTitle(I)V

    .line 169
    :cond_1c
    iget-object v6, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mThirdIncomingVibration:Landroid/preference/Preference;

    if-eqz v6, :cond_2

    .line 170
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mThirdIncomingVibration:Landroid/preference/Preference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 182
    .restart local v1       #bun:Landroid/os/Bundle;
    .restart local v3       #intent:Landroid/content/Intent;
    :cond_1d
    iget-object v6, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mIncomingVibration:Landroid/preference/Preference;

    if-eqz v6, :cond_3

    .line 183
    iget-object v6, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mIncomingVibration:Landroid/preference/Preference;

    const v7, 0x7f080dc7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_2

    .line 233
    :cond_1e
    iget-object v6, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mGentleVibration:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_1f

    .line 234
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mGentleVibration:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 236
    :cond_1f
    iget-object v6, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mVibrateVolumePreference:Lcom/android/lgesettings/VibrateVolumePreference;

    if-eqz v6, :cond_10

    .line 237
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mVibrateVolumePreference:Lcom/android/lgesettings/VibrateVolumePreference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 323
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 324
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 391
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 392
    invoke-virtual {p0}, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->finish()V

    .line 393
    const/4 v0, 0x1

    .line 395
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 316
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 317
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 318
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 331
    iget-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mGentleVibration:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 332
    iget-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mGentleVibration:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-ne v3, v2, :cond_0

    move v1, v2

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->setGentleVibration(I)V

    .line 374
    :goto_0
    return v2

    .line 335
    :cond_1
    iget-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mIncomingVibration:Landroid/preference/Preference;

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 336
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 337
    .local v0, i:Landroid/content/Intent;
    const-string v2, "com.android.lgesettings"

    const-string v3, "com.android.lgesettings.vibratecreation.VibratePicker"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    const-string v2, "vibrate_parent_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 339
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 374
    .end local v0           #i:Landroid/content/Intent;
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0

    .line 341
    :cond_3
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mSubIncomingVibration:Landroid/preference/Preference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 342
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 343
    .restart local v0       #i:Landroid/content/Intent;
    const-string v1, "com.android.lgesettings"

    const-string v3, "com.android.lgesettings.vibratecreation.VibratePicker"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    const-string v1, "vibrate_parent_type"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 345
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 346
    .end local v0           #i:Landroid/content/Intent;
    :cond_4
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mThirdIncomingVibration:Landroid/preference/Preference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 347
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 348
    .restart local v0       #i:Landroid/content/Intent;
    const-string v1, "com.android.lgesettings"

    const-string v2, "com.android.lgesettings.vibratecreation.VibratePicker"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    const-string v1, "vibrate_parent_type"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 350
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 351
    .end local v0           #i:Landroid/content/Intent;
    :cond_5
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mMessageVibration:Landroid/preference/Preference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 352
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 353
    .restart local v0       #i:Landroid/content/Intent;
    const-string v1, "com.android.lgesettings"

    const-string v2, "com.android.lgesettings.vibratecreation.VibratePicker"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    const-string v1, "vibrate_parent_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 355
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 357
    .end local v0           #i:Landroid/content/Intent;
    :cond_6
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mEmailVibration:Landroid/preference/Preference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 358
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 359
    .restart local v0       #i:Landroid/content/Intent;
    const-string v1, "com.android.lgesettings"

    const-string v2, "com.android.lgesettings.vibratecreation.VibratePicker"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    const-string v1, "vibrate_parent_type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 361
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 362
    .end local v0           #i:Landroid/content/Intent;
    :cond_7
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mAlarmVibration:Landroid/preference/Preference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 363
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 364
    .restart local v0       #i:Landroid/content/Intent;
    const-string v1, "com.android.lgesettings"

    const-string v2, "com.android.lgesettings.vibratecreation.VibratePicker"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    const-string v1, "vibrate_parent_type"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 366
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 368
    .end local v0           #i:Landroid/content/Intent;
    :cond_8
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mCalendarVibration:Landroid/preference/Preference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 369
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 370
    .restart local v0       #i:Landroid/content/Intent;
    const-string v1, "com.android.lgesettings"

    const-string v2, "com.android.lgesettings.vibratecreation.VibratePicker"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 371
    const-string v1, "vibrate_parent_type"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 372
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 306
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 308
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 309
    invoke-direct {p0}, Lcom/android/lgesettings/vibratecreation/VibrationPreferenceActivity;->updateUI()V

    .line 310
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 311
    return-void
.end method
