.class public Lcom/android/lgesettings/GestureSettings;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "GestureSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static final DB_TABLE_GESTURESETTING:[Ljava/lang/String;


# instance fields
.field private hasFacing_SENSOR:Z

.field private hasOrient_SENSOR:Z

.field private hasTAB_SENSOR:Z

.field private isLGE_VIDEO_PLYAER:Z

.field private mAlarmPreferences:Landroid/preference/CheckBoxPreference;

.field private mAnswermeCategory:Landroid/preference/PreferenceCategory;

.field private mAnswertheincomingcallPreferences:Landroid/preference/CheckBoxPreference;

.field private mCallPreferences:Landroid/preference/CheckBoxPreference;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mFadeoutRingtonePreferences:Landroid/preference/CheckBoxPreference;

.field private mHelpPreferences:Landroid/preference/Preference;

.field private mHideDisplayPreferences:Landroid/preference/CheckBoxPreference;

.field private mHomePreferences:Landroid/preference/CheckBoxPreference;

.field private mKnockOnCategory:Landroid/preference/PreferenceCategory;

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mMotionSensorCalibration:Landroid/preference/Preference;

.field private mOthersCategory:Landroid/preference/PreferenceCategory;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSlideAsidePreferences:Landroid/preference/CheckBoxPreference;

.field private mTakeScreenshotPreferences:Landroid/preference/CheckBoxPreference;

.field private mTurnScreenOnPreferences:Landroid/preference/CheckBoxPreference;

.field private mTurnoOnOffSpeakerphonePreferences:Landroid/preference/CheckBoxPreference;

.field private mVideoPreferences:Landroid/preference/CheckBoxPreference;

.field private parent:Landroid/preference/PreferenceScreen;

.field private test_use_default:Z

.field private test_value:I

.field private testing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "gesture_home_rearrange"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "gesture_voice_call"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "gesture_alarm"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "gesture_video_player"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "gesture_answering"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "gesture_fadeout_ringtone"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "gesture_turn_onoff_speakerphone"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "take_screenshot"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "hide_display"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "gesture_trun_screen_on"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "multitasking_slide_aside"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/lgesettings/GestureSettings;->DB_TABLE_GESTURESETTING:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    .line 100
    iput-boolean v0, p0, Lcom/android/lgesettings/GestureSettings;->isLGE_VIDEO_PLYAER:Z

    .line 101
    iput-boolean v0, p0, Lcom/android/lgesettings/GestureSettings;->hasTAB_SENSOR:Z

    .line 102
    iput-boolean v0, p0, Lcom/android/lgesettings/GestureSettings;->hasFacing_SENSOR:Z

    .line 103
    iput-boolean v0, p0, Lcom/android/lgesettings/GestureSettings;->hasOrient_SENSOR:Z

    .line 104
    iput-boolean v0, p0, Lcom/android/lgesettings/GestureSettings;->testing:Z

    .line 105
    iput v0, p0, Lcom/android/lgesettings/GestureSettings;->test_value:I

    .line 106
    iput-boolean v0, p0, Lcom/android/lgesettings/GestureSettings;->test_use_default:Z

    return-void
.end method

.method private checkMenuList()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 207
    invoke-virtual {p0}, Lcom/android/lgesettings/GestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 210
    .local v4, resolver:Landroid/content/ContentResolver;
    const-string v5, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 211
    iget-object v5, p0, Lcom/android/lgesettings/GestureSettings;->mVideoPreferences:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v5}, Lcom/android/lgesettings/GestureSettings;->removePreference(Landroid/preference/Preference;)V

    .line 221
    :cond_0
    iget-object v5, p0, Lcom/android/lgesettings/GestureSettings;->mTakeScreenshotPreferences:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v5}, Lcom/android/lgesettings/GestureSettings;->removePreference(Landroid/preference/Preference;)V

    .line 224
    const-string v5, "GestureSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SystemProperties.getBoolean(ro.lge.capp_touch_palm_swipe, false) == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ro.lge.capp_touch_palm_swipe"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const-string v5, "ro.lge.capp_privatemode"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_1

    .line 231
    iget-object v5, p0, Lcom/android/lgesettings/GestureSettings;->mHideDisplayPreferences:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v5}, Lcom/android/lgesettings/GestureSettings;->removePreference(Landroid/preference/Preference;)V

    .line 235
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/GestureSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 236
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 238
    .local v1, info:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    const-string v5, "com.lge.gestureanswering"

    const/16 v6, 0x80

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 249
    :goto_0
    iget-object v5, p0, Lcom/android/lgesettings/GestureSettings;->mTurnoOnOffSpeakerphonePreferences:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v5}, Lcom/android/lgesettings/GestureSettings;->removePreference(Landroid/preference/Preference;)V

    .line 252
    :try_start_1
    const-string v5, "com.lge.doubletap"

    const/16 v6, 0x80

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 255
    const-string v5, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 257
    iget-object v5, p0, Lcom/android/lgesettings/GestureSettings;->mKnockOnCategory:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, v5}, Lcom/android/lgesettings/GestureSettings;->removePreference(Landroid/preference/Preference;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 266
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/lgesettings/GestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    .line 268
    .local v2, mcontext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 269
    iget-object v5, p0, Lcom/android/lgesettings/GestureSettings;->mCallPreferences:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v5}, Lcom/android/lgesettings/GestureSettings;->removePreference(Landroid/preference/Preference;)V

    .line 272
    :cond_3
    const-string v5, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "ro.lge.capp_slideAside"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_5

    .line 273
    :cond_4
    iget-object v5, p0, Lcom/android/lgesettings/GestureSettings;->mSlideAsidePreferences:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v5}, Lcom/android/lgesettings/GestureSettings;->removePreference(Landroid/preference/Preference;)V

    .line 275
    :cond_5
    const-string v5, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 277
    iget-object v5, p0, Lcom/android/lgesettings/GestureSettings;->mAnswermeCategory:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, v5}, Lcom/android/lgesettings/GestureSettings;->removePreference(Landroid/preference/Preference;)V

    .line 278
    iget-object v5, p0, Lcom/android/lgesettings/GestureSettings;->mMotionSensorCalibration:Landroid/preference/Preference;

    invoke-direct {p0, v5}, Lcom/android/lgesettings/GestureSettings;->removePreference(Landroid/preference/Preference;)V

    .line 283
    :cond_6
    return-void

    .line 241
    .end local v2           #mcontext:Landroid/content/Context;
    :catch_0
    move-exception v0

    .line 243
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v5, p0, Lcom/android/lgesettings/GestureSettings;->mAnswertheincomingcallPreferences:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v5}, Lcom/android/lgesettings/GestureSettings;->removePreference(Landroid/preference/Preference;)V

    .line 244
    iget-object v5, p0, Lcom/android/lgesettings/GestureSettings;->mFadeoutRingtonePreferences:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v5}, Lcom/android/lgesettings/GestureSettings;->removePreference(Landroid/preference/Preference;)V

    goto :goto_0

    .line 260
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 262
    .restart local v0       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v5, p0, Lcom/android/lgesettings/GestureSettings;->mTurnScreenOnPreferences:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v5}, Lcom/android/lgesettings/GestureSettings;->removePreference(Landroid/preference/Preference;)V

    .line 263
    iget-object v5, p0, Lcom/android/lgesettings/GestureSettings;->mKnockOnCategory:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, v5}, Lcom/android/lgesettings/GestureSettings;->removePreference(Landroid/preference/Preference;)V

    goto :goto_1
.end method

.method private init_UI()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 144
    invoke-virtual {p0}, Lcom/android/lgesettings/GestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 146
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/lgesettings/GestureSettings;->DB_TABLE_GESTURESETTING:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 147
    iget-object v1, p0, Lcom/android/lgesettings/GestureSettings;->mHomePreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 154
    :goto_0
    sget-object v1, Lcom/android/lgesettings/GestureSettings;->DB_TABLE_GESTURESETTING:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 155
    iget-object v1, p0, Lcom/android/lgesettings/GestureSettings;->mCallPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 159
    :goto_1
    sget-object v1, Lcom/android/lgesettings/GestureSettings;->DB_TABLE_GESTURESETTING:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 160
    iget-object v1, p0, Lcom/android/lgesettings/GestureSettings;->mAlarmPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 164
    :goto_2
    sget-object v1, Lcom/android/lgesettings/GestureSettings;->DB_TABLE_GESTURESETTING:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 165
    iget-object v1, p0, Lcom/android/lgesettings/GestureSettings;->mVideoPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 168
    :goto_3
    sget-object v1, Lcom/android/lgesettings/GestureSettings;->DB_TABLE_GESTURESETTING:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 169
    iget-object v1, p0, Lcom/android/lgesettings/GestureSettings;->mAnswertheincomingcallPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 173
    :goto_4
    sget-object v1, Lcom/android/lgesettings/GestureSettings;->DB_TABLE_GESTURESETTING:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_5

    .line 174
    iget-object v1, p0, Lcom/android/lgesettings/GestureSettings;->mFadeoutRingtonePreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 178
    :goto_5
    sget-object v1, Lcom/android/lgesettings/GestureSettings;->DB_TABLE_GESTURESETTING:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_6

    .line 179
    iget-object v1, p0, Lcom/android/lgesettings/GestureSettings;->mTurnoOnOffSpeakerphonePreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 183
    :goto_6
    sget-object v1, Lcom/android/lgesettings/GestureSettings;->DB_TABLE_GESTURESETTING:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_7

    .line 184
    iget-object v1, p0, Lcom/android/lgesettings/GestureSettings;->mTakeScreenshotPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 188
    :goto_7
    sget-object v1, Lcom/android/lgesettings/GestureSettings;->DB_TABLE_GESTURESETTING:[Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_8

    .line 189
    iget-object v1, p0, Lcom/android/lgesettings/GestureSettings;->mHideDisplayPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 193
    :goto_8
    sget-object v1, Lcom/android/lgesettings/GestureSettings;->DB_TABLE_GESTURESETTING:[Ljava/lang/String;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_9

    .line 194
    iget-object v1, p0, Lcom/android/lgesettings/GestureSettings;->mTurnScreenOnPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 198
    :goto_9
    sget-object v1, Lcom/android/lgesettings/GestureSettings;->DB_TABLE_GESTURESETTING:[Ljava/lang/String;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_a

    .line 199
    iget-object v1, p0, Lcom/android/lgesettings/GestureSettings;->mSlideAsidePreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 204
    :goto_a
    return-void

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/GestureSettings;->mHomePreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 157
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/GestureSettings;->mCallPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 162
    :cond_2
    iget-object v1, p0, Lcom/android/lgesettings/GestureSettings;->mAlarmPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_2

    .line 167
    :cond_3
    iget-object v1, p0, Lcom/android/lgesettings/GestureSettings;->mVideoPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_3

    .line 171
    :cond_4
    iget-object v1, p0, Lcom/android/lgesettings/GestureSettings;->mAnswertheincomingcallPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_4

    .line 176
    :cond_5
    iget-object v1, p0, Lcom/android/lgesettings/GestureSettings;->mFadeoutRingtonePreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_5

    .line 181
    :cond_6
    iget-object v1, p0, Lcom/android/lgesettings/GestureSettings;->mTurnoOnOffSpeakerphonePreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_6

    .line 186
    :cond_7
    iget-object v1, p0, Lcom/android/lgesettings/GestureSettings;->mTakeScreenshotPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_7

    .line 191
    :cond_8
    iget-object v1, p0, Lcom/android/lgesettings/GestureSettings;->mHideDisplayPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_8

    .line 196
    :cond_9
    iget-object v1, p0, Lcom/android/lgesettings/GestureSettings;->mTurnScreenOnPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_9

    .line 201
    :cond_a
    iget-object v1, p0, Lcom/android/lgesettings/GestureSettings;->mSlideAsidePreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_a
.end method

.method private removePreference(Landroid/preference/Preference;)V
    .locals 1
    .parameter "preference"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/lgesettings/GestureSettings;->parent:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/lgesettings/GestureSettings;->parent:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 141
    :cond_0
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 472
    invoke-virtual {p0}, Lcom/android/lgesettings/GestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 473
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/lgesettings/GestureSettings;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    .line 474
    iget-object v1, p0, Lcom/android/lgesettings/GestureSettings;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 475
    iget-object v1, p0, Lcom/android/lgesettings/GestureSettings;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 476
    iget-object v1, p0, Lcom/android/lgesettings/GestureSettings;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 483
    :goto_0
    return-void

    .line 480
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/GestureSettings;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 481
    iget-object v1, p0, Lcom/android/lgesettings/GestureSettings;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 384
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 385
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 111
    const v0, 0x7f060024

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/GestureSettings;->addPreferencesFromResource(I)V

    .line 113
    const-string v0, "gesture_settings"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/GestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/lgesettings/GestureSettings;->parent:Landroid/preference/PreferenceScreen;

    .line 114
    const-string v0, "gesture_homescreen"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/GestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/lgesettings/GestureSettings;->mHomePreferences:Landroid/preference/CheckBoxPreference;

    .line 116
    const-string v0, "gesture_calls"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/GestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/lgesettings/GestureSettings;->mCallPreferences:Landroid/preference/CheckBoxPreference;

    .line 117
    const-string v0, "gesture_alarm"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/GestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/lgesettings/GestureSettings;->mAlarmPreferences:Landroid/preference/CheckBoxPreference;

    .line 118
    const-string v0, "gesture_video"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/GestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/lgesettings/GestureSettings;->mVideoPreferences:Landroid/preference/CheckBoxPreference;

    .line 119
    const-string v0, "gesture_answer_the_incoming_call_new"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/GestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/lgesettings/GestureSettings;->mAnswertheincomingcallPreferences:Landroid/preference/CheckBoxPreference;

    .line 120
    const-string v0, "gesture_fadeout_ringtone_new"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/GestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/lgesettings/GestureSettings;->mFadeoutRingtonePreferences:Landroid/preference/CheckBoxPreference;

    .line 121
    const-string v0, "gesture_turn_onoff_speakerphone_new"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/GestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/lgesettings/GestureSettings;->mTurnoOnOffSpeakerphonePreferences:Landroid/preference/CheckBoxPreference;

    .line 122
    const-string v0, "gesture_take_screenshot"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/GestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/lgesettings/GestureSettings;->mTakeScreenshotPreferences:Landroid/preference/CheckBoxPreference;

    .line 123
    const-string v0, "gesture_hide_display"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/GestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/lgesettings/GestureSettings;->mHideDisplayPreferences:Landroid/preference/CheckBoxPreference;

    .line 124
    const-string v0, "gesture_turn_screen_on"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/GestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/lgesettings/GestureSettings;->mTurnScreenOnPreferences:Landroid/preference/CheckBoxPreference;

    .line 125
    const-string v0, "gesture_slide_aside"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/GestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/lgesettings/GestureSettings;->mSlideAsidePreferences:Landroid/preference/CheckBoxPreference;

    .line 126
    const-string v0, "gesture_help"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/GestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/GestureSettings;->mHelpPreferences:Landroid/preference/Preference;

    .line 128
    const-string v0, "knockon_category"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/GestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/lgesettings/GestureSettings;->mKnockOnCategory:Landroid/preference/PreferenceCategory;

    .line 129
    const-string v0, "answering_category"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/GestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/lgesettings/GestureSettings;->mAnswermeCategory:Landroid/preference/PreferenceCategory;

    .line 130
    const-string v0, "other_category"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/GestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/lgesettings/GestureSettings;->mOthersCategory:Landroid/preference/PreferenceCategory;

    .line 131
    const-string v0, "motion_sensor_calibration"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/GestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/GestureSettings;->mMotionSensorCalibration:Landroid/preference/Preference;

    .line 132
    invoke-direct {p0}, Lcom/android/lgesettings/GestureSettings;->init_UI()V

    .line 133
    invoke-direct {p0}, Lcom/android/lgesettings/GestureSettings;->checkMenuList()V

    .line 136
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 388
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 335
    invoke-virtual {p0}, Lcom/android/lgesettings/GestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 337
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/android/lgesettings/GestureSettings;->mHomePreferences:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_2

    .line 338
    sget-object v3, Lcom/android/lgesettings/GestureSettings;->DB_TABLE_GESTURESETTING:[Ljava/lang/String;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/android/lgesettings/GestureSettings;->mHomePreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 378
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    :cond_1
    move v1, v2

    .line 338
    goto :goto_0

    .line 340
    :cond_2
    iget-object v3, p0, Lcom/android/lgesettings/GestureSettings;->mCallPreferences:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_4

    .line 341
    sget-object v3, Lcom/android/lgesettings/GestureSettings;->DB_TABLE_GESTURESETTING:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/android/lgesettings/GestureSettings;->mCallPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_2
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    .line 343
    :cond_4
    iget-object v3, p0, Lcom/android/lgesettings/GestureSettings;->mAlarmPreferences:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_6

    .line 344
    sget-object v3, Lcom/android/lgesettings/GestureSettings;->DB_TABLE_GESTURESETTING:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/android/lgesettings/GestureSettings;->mAlarmPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_5

    :goto_3
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_3

    .line 346
    :cond_6
    iget-object v3, p0, Lcom/android/lgesettings/GestureSettings;->mVideoPreferences:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_8

    .line 347
    sget-object v3, Lcom/android/lgesettings/GestureSettings;->DB_TABLE_GESTURESETTING:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/android/lgesettings/GestureSettings;->mVideoPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_4
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_7
    move v1, v2

    goto :goto_4

    .line 349
    :cond_8
    iget-object v3, p0, Lcom/android/lgesettings/GestureSettings;->mHelpPreferences:Landroid/preference/Preference;

    if-eq p2, v3, :cond_0

    .line 354
    iget-object v3, p0, Lcom/android/lgesettings/GestureSettings;->mAnswertheincomingcallPreferences:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_a

    .line 355
    sget-object v3, Lcom/android/lgesettings/GestureSettings;->DB_TABLE_GESTURESETTING:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/android/lgesettings/GestureSettings;->mAnswertheincomingcallPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_9

    :goto_5
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_9
    move v1, v2

    goto :goto_5

    .line 357
    :cond_a
    iget-object v3, p0, Lcom/android/lgesettings/GestureSettings;->mFadeoutRingtonePreferences:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_c

    .line 358
    sget-object v3, Lcom/android/lgesettings/GestureSettings;->DB_TABLE_GESTURESETTING:[Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/android/lgesettings/GestureSettings;->mFadeoutRingtonePreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_b

    :goto_6
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_b
    move v1, v2

    goto :goto_6

    .line 360
    :cond_c
    iget-object v3, p0, Lcom/android/lgesettings/GestureSettings;->mTurnoOnOffSpeakerphonePreferences:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_e

    .line 361
    sget-object v3, Lcom/android/lgesettings/GestureSettings;->DB_TABLE_GESTURESETTING:[Ljava/lang/String;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/android/lgesettings/GestureSettings;->mTurnoOnOffSpeakerphonePreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_d

    :goto_7
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_d
    move v1, v2

    goto :goto_7

    .line 363
    :cond_e
    iget-object v3, p0, Lcom/android/lgesettings/GestureSettings;->mTakeScreenshotPreferences:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_10

    .line 364
    sget-object v3, Lcom/android/lgesettings/GestureSettings;->DB_TABLE_GESTURESETTING:[Ljava/lang/String;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/android/lgesettings/GestureSettings;->mTakeScreenshotPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_f

    :goto_8
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_f
    move v1, v2

    goto :goto_8

    .line 366
    :cond_10
    iget-object v3, p0, Lcom/android/lgesettings/GestureSettings;->mHideDisplayPreferences:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_12

    .line 367
    sget-object v3, Lcom/android/lgesettings/GestureSettings;->DB_TABLE_GESTURESETTING:[Ljava/lang/String;

    const/16 v4, 0x8

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/android/lgesettings/GestureSettings;->mHideDisplayPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_11

    :goto_9
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_11
    move v1, v2

    goto :goto_9

    .line 369
    :cond_12
    iget-object v3, p0, Lcom/android/lgesettings/GestureSettings;->mTurnScreenOnPreferences:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_14

    .line 370
    sget-object v3, Lcom/android/lgesettings/GestureSettings;->DB_TABLE_GESTURESETTING:[Ljava/lang/String;

    const/16 v4, 0x9

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/android/lgesettings/GestureSettings;->mTurnScreenOnPreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_13

    :goto_a
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_13
    move v1, v2

    goto :goto_a

    .line 372
    :cond_14
    iget-object v3, p0, Lcom/android/lgesettings/GestureSettings;->mSlideAsidePreferences:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_0

    .line 373
    sget-object v3, Lcom/android/lgesettings/GestureSettings;->DB_TABLE_GESTURESETTING:[Ljava/lang/String;

    const/16 v4, 0xa

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/android/lgesettings/GestureSettings;->mSlideAsidePreferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_15

    :goto_b
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_15
    move v1, v2

    goto :goto_b
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 488
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 325
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onResume()V

    .line 326
    iget-boolean v0, p0, Lcom/android/lgesettings/GestureSettings;->testing:Z

    if-eqz v0, :cond_0

    .line 328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/GestureSettings;->testing:Z

    .line 331
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 493
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 499
    return-void
.end method
