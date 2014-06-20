.class public Lcom/android/lgesettings/quietmode/QuietModeMainActivity;
.super Landroid/preference/PreferenceActivity;
.source "QuietModeMainActivity.java"


# instance fields
.field private isQuietModeChecked:Z

.field private mAddQuietModeCalendarEvent:Landroid/preference/Preference;

.field private mAllowedCallSet:Landroid/preference/Preference;

.field private mContext:Landroid/content/Context;

.field private mMainSumm:Landroid/preference/Preference;

.field private mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

.field private mQuietModeSettings:Landroid/preference/PreferenceCategory;

.field private mQuietModeSwitchPreferenceForActivationNow:Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mScheduleSwitchPreference:Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->isQuietModeChecked:Z

    .line 118
    new-instance v0, Lcom/android/lgesettings/quietmode/QuietModeMainActivity$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/quietmode/QuietModeMainActivity$1;-><init>(Lcom/android/lgesettings/quietmode/QuietModeMainActivity;)V

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/quietmode/QuietModeMainActivity;)Lcom/android/lgesettings/quietmode/QuietModeInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/quietmode/QuietModeMainActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->isQuietModeChecked:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/lgesettings/quietmode/QuietModeMainActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->isQuietModeChecked:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/lgesettings/quietmode/QuietModeMainActivity;)Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->mQuietModeSwitchPreferenceForActivationNow:Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/lgesettings/quietmode/QuietModeMainActivity;)Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->mScheduleSwitchPreference:Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;

    return-object v0
.end method


# virtual methods
.method public doQuietModeNotiService()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 315
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isQuietModeState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->isQuietModeChecked:Z

    .line 316
    iget-boolean v0, p0, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->isQuietModeChecked:Z

    if-ne v1, v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->doQuietModeService(Z)V

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    iget-boolean v0, p0, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->isQuietModeChecked:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isScheduledTimeMode()Z

    move-result v0

    if-eq v1, v0, :cond_0

    .line 320
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->doQuietModeService(Z)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 195
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 196
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 146
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 147
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 148
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 149
    const v2, 0x7f0201fb

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setIcon(I)V

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 153
    .local v1, resolver:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->mContext:Landroid/content/Context;

    .line 154
    const v2, 0x7f060046

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->addPreferencesFromResource(I)V

    .line 156
    const-string v2, "quiet_mode_summary_description"

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->mMainSumm:Landroid/preference/Preference;

    .line 158
    const-string v2, "quiet_mode_activation_now"

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;

    iput-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->mQuietModeSwitchPreferenceForActivationNow:Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;

    .line 159
    new-instance v2, Lcom/android/lgesettings/quietmode/QuietModeInfo;

    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/lgesettings/quietmode/QuietModeInfo;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    .line 160
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isQuietModeState()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->isQuietModeChecked:Z

    .line 161
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->mQuietModeSwitchPreferenceForActivationNow:Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;

    iget-boolean v3, p0, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->isQuietModeChecked:Z

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;->setChecked(Z)V

    .line 163
    const-string v2, "quiet_mode_add_calendar_event"

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->mAddQuietModeCalendarEvent:Landroid/preference/Preference;

    .line 164
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->mAddQuietModeCalendarEvent:Landroid/preference/Preference;

    if-eqz v2, :cond_1

    .line 165
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->mAddQuietModeCalendarEvent:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 168
    :cond_1
    const-string v2, "quiet_mode_settings_category"

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->mQuietModeSettings:Landroid/preference/PreferenceCategory;

    .line 170
    const-string v2, "quiet_mode_schedule_settings"

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;

    iput-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->mScheduleSwitchPreference:Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;

    .line 172
    const-string v2, "quiet_mode_allowed_call_settings"

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->mAllowedCallSet:Landroid/preference/Preference;

    .line 173
    const-string v2, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 174
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->mAllowedCallSet:Landroid/preference/Preference;

    const v3, 0x7f080e47

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 177
    :cond_2
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 179
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .parameter "item"

    .prologue
    const/high16 v11, 0x2400

    const/4 v10, 0x0

    const/4 v8, 0x1

    .line 269
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    const v9, 0x102002c

    if-ne v7, v9, :cond_4

    .line 271
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "settings_style"

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 272
    .local v5, settingStyle:I
    const-string v7, "activity"

    invoke-virtual {p0, v7}, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 273
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    .line 275
    .local v4, info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v7, 0x0

    :try_start_0
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v7, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 276
    .local v6, topActivity:Landroid/content/ComponentName;
    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    .end local v6           #topActivity:Landroid/content/ComponentName;
    :goto_0
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, baseActivityClassName:Ljava/lang/String;
    if-ne v5, v8, :cond_2

    invoke-static {p0}, Lcom/android/lgesettings/Utils;->supportEasySettings(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 285
    const-string v7, "com.lge.settings.easy.EasySettings"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "com.android.lgesettings.Settings"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 287
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->onBackPressed()V

    move v7, v8

    .line 311
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v1           #baseActivityClassName:Ljava/lang/String;
    .end local v4           #info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v5           #settingStyle:I
    :goto_1
    return v7

    .line 277
    .restart local v0       #am:Landroid/app/ActivityManager;
    .restart local v4       #info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v5       #settingStyle:I
    :catch_0
    move-exception v2

    .line 278
    .local v2, e:Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 290
    .end local v2           #e:Ljava/lang/NullPointerException;
    .restart local v1       #baseActivityClassName:Ljava/lang/String;
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 291
    .local v3, i:Landroid/content/Intent;
    invoke-virtual {v3, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 292
    const-string v7, "com.android.lgesettings.SOUND_SETTINGS"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    invoke-virtual {p0, v3}, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 294
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->finish()V

    move v7, v8

    .line 295
    goto :goto_1

    .line 298
    .end local v3           #i:Landroid/content/Intent;
    :cond_2
    const-string v7, "com.android.lgesettings.Settings"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 299
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->onBackPressed()V

    move v7, v8

    .line 300
    goto :goto_1

    .line 303
    :cond_3
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 304
    .restart local v3       #i:Landroid/content/Intent;
    invoke-virtual {v3, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 305
    const-string v7, "com.android.lgesettings.SOUND_SETTINGS"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    invoke-virtual {p0, v3}, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 307
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->finish()V

    move v7, v8

    .line 308
    goto :goto_1

    .line 311
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v1           #baseActivityClassName:Ljava/lang/String;
    .end local v3           #i:Landroid/content/Intent;
    .end local v4           #info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v5           #settingStyle:I
    :cond_4
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v7

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 200
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 201
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 202
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->doQuietModeNotiService()V

    .line 203
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x1

    .line 227
    iget-object v4, p0, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->mAllowedCallSet:Landroid/preference/Preference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 229
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 231
    .local v2, intent:Landroid/content/Intent;
    :try_start_0
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.android.lgesettings"

    const-string v6, "com.android.lgesettings.quietmode.QuietModeAllowedCallSettingsActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 232
    invoke-virtual {p0, v2}, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 258
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return v3

    .line 237
    :cond_0
    iget-object v4, p0, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->mScheduleSwitchPreference:Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 239
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 241
    .restart local v2       #intent:Landroid/content/Intent;
    :try_start_1
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.android.lgesettings"

    const-string v6, "com.android.lgesettings.quietmode.QuietModeScheduleSettingsActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 242
    invoke-virtual {p0, v2}, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 243
    :catch_0
    move-exception v4

    goto :goto_0

    .line 247
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v4, p0, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->mAddQuietModeCalendarEvent:Landroid/preference/Preference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 248
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 249
    .local v0, calendarIntent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 250
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.android.calendar"

    const-string v6, "com.android.calendar.EditEventActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 252
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 253
    :catch_1
    move-exception v1

    .line 254
    .local v1, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080e1a

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 258
    .end local v0           #calendarIntent:Landroid/content/Intent;
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    goto :goto_0

    .line 233
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_2
    move-exception v4

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 183
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->mScheduleSwitchPreference:Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isScheduledTimeMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->setChecked(Z)V

    .line 184
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "lge.settings.QMODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 185
    .local v0, quietModefilter:Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 186
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->mScheduleSwitchPreference:Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;

    invoke-virtual {v1}, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->setCheckedUpdate()V

    .line 187
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->mQuietModeSwitchPreferenceForActivationNow:Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;

    invoke-virtual {v1}, Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;->setCheckedUpdate()V

    .line 188
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->doQuietModeNotiService()V

    .line 189
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 190
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 208
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 209
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 215
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 220
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 221
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 222
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeMainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 223
    return-void
.end method
