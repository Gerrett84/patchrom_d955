.class public Lcom/android/lgesettings/quietmode/QuietModeSettings;
.super Landroid/preference/PreferenceActivity;
.source "QuietModeSettings.java"


# instance fields
.field private isQuietModeChecked:Z

.field private mAddQuietModeCalendarEvent:Landroid/preference/Preference;

.field private mAutoReply:Landroid/preference/Preference;

.field private mContactsAlloed:Landroid/preference/Preference;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIncomingCallSettingCategory:Landroid/preference/PreferenceCategory;

.field private mQuietModeDayPreference:Lcom/android/lgesettings/quietmode/QuietModeDayPreference;

.field private mQuietModeDesc:Landroid/preference/Preference;

.field private mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

.field private mQuietModeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mQuietModeSwitch:Landroid/widget/Switch;

.field private mQuietModeTimePreference:Lcom/android/lgesettings/quietmode/QuietModeTimePreference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRepeatedCall:Landroid/preference/CheckBoxPreference;

.field private mSheduledTime:Landroid/preference/CheckBoxPreference;

.field private mTimeSettingCategory:Landroid/preference/PreferenceCategory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->isQuietModeChecked:Z

    .line 125
    new-instance v0, Lcom/android/lgesettings/quietmode/QuietModeSettings$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/quietmode/QuietModeSettings$1;-><init>(Lcom/android/lgesettings/quietmode/QuietModeSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mHandler:Landroid/os/Handler;

    .line 137
    new-instance v0, Lcom/android/lgesettings/quietmode/QuietModeSettings$2;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/quietmode/QuietModeSettings$2;-><init>(Lcom/android/lgesettings/quietmode/QuietModeSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 205
    new-instance v0, Lcom/android/lgesettings/quietmode/QuietModeSettings$4;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/quietmode/QuietModeSettings$4;-><init>(Lcom/android/lgesettings/quietmode/QuietModeSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mQuietModeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/quietmode/QuietModeSettings;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/lgesettings/quietmode/QuietModeSettings;->updateContactsAllowedSummary(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/lgesettings/quietmode/QuietModeSettings;)Lcom/android/lgesettings/quietmode/QuietModeInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/quietmode/QuietModeSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->isQuietModeChecked:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/lgesettings/quietmode/QuietModeSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->isQuietModeChecked:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/lgesettings/quietmode/QuietModeSettings;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mQuietModeSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/lgesettings/quietmode/QuietModeSettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private save()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 346
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mSheduledTime:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-ne v2, v0, :cond_0

    .line 347
    const-string v0, "QuietModeSettings"

    const-string v1, "save() - registerAlarm() start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->registerAlarmEx()V

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mQuietModeSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-ne v2, v0, :cond_1

    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getSoundProfile()I

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setSoundProfile(I)V

    .line 354
    :cond_1
    return-void
.end method

.method private updateContactsAllowed()V
    .locals 2

    .prologue
    .line 230
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/lgesettings/quietmode/QuietModeSettings$5;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/quietmode/QuietModeSettings$5;-><init>(Lcom/android/lgesettings/quietmode/QuietModeSettings;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 241
    return-void
.end method

.method private updateContactsAllowedSummary(Landroid/database/Cursor;)V
    .locals 9
    .parameter "cursor"

    .prologue
    const v8, 0x7f080e1c

    .line 244
    const/4 v2, 0x0

    .line 245
    .local v2, name:Ljava/lang/String;
    const/4 v0, -0x1

    .line 248
    .local v0, count:I
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 249
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 250
    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 252
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 254
    :cond_1
    if-nez v2, :cond_2

    .line 255
    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mContactsAlloed:Landroid/preference/Preference;

    const v4, 0x7f080e1c

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 268
    :goto_1
    return-void

    .line 258
    :cond_2
    if-nez v0, :cond_3

    .line 259
    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mContactsAlloed:Landroid/preference/Preference;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 264
    :catch_0
    move-exception v1

    .line 265
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v3, "QuietModeSettings"

    const-string v4, "updateContactsAllowedSummary() - NullPointerException!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mContactsAlloed:Landroid/preference/Preference;

    invoke-virtual {v3, v8}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 261
    .end local v1           #e:Ljava/lang/NullPointerException;
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mContactsAlloed:Landroid/preference/Preference;

    const v4, 0x7f080dfa

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/lgesettings/quietmode/QuietModeSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mQuietModeDayPreference:Lcom/android/lgesettings/quietmode/QuietModeDayPreference;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeDayPreference;->save()V

    .line 283
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 284
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 151
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 153
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 154
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 155
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 156
    const v3, 0x7f0201fb

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setIcon(I)V

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 160
    .local v2, resolver:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mContext:Landroid/content/Context;

    .line 161
    const v3, 0x7f060048

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/quietmode/QuietModeSettings;->addPreferencesFromResource(I)V

    .line 163
    const-string v3, "quite_mode_time_description"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/quietmode/QuietModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mQuietModeDesc:Landroid/preference/Preference;

    .line 165
    const-string v3, "category_quiet_mode_incoming_call_setting"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/quietmode/QuietModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mIncomingCallSettingCategory:Landroid/preference/PreferenceCategory;

    .line 166
    const-string v3, "quiet_mode_repeated_call"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/quietmode/QuietModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mRepeatedCall:Landroid/preference/CheckBoxPreference;

    .line 167
    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mRepeatedCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 168
    const-string v3, "quiet_mode_contacts_allowed"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/quietmode/QuietModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mContactsAlloed:Landroid/preference/Preference;

    .line 169
    const-string v3, "quiet_mode_auto_reply"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/quietmode/QuietModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mAutoReply:Landroid/preference/Preference;

    .line 171
    const-string v3, "category_quiet_mode_time_setting"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/quietmode/QuietModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mTimeSettingCategory:Landroid/preference/PreferenceCategory;

    .line 172
    const-string v3, "quiet_mode_scheduled_time"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/quietmode/QuietModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mSheduledTime:Landroid/preference/CheckBoxPreference;

    .line 173
    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mSheduledTime:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 174
    const-string v3, "quiet_mode_time"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/quietmode/QuietModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;

    iput-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mQuietModeTimePreference:Lcom/android/lgesettings/quietmode/QuietModeTimePreference;

    .line 175
    const-string v3, "quiet_mode_day"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/quietmode/QuietModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/lgesettings/quietmode/QuietModeDayPreference;

    iput-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mQuietModeDayPreference:Lcom/android/lgesettings/quietmode/QuietModeDayPreference;

    .line 176
    const-string v3, "quiet_mode_add_calendar_event"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/quietmode/QuietModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mAddQuietModeCalendarEvent:Landroid/preference/Preference;

    .line 178
    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mAddQuietModeCalendarEvent:Landroid/preference/Preference;

    if-eqz v3, :cond_1

    .line 179
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mAddQuietModeCalendarEvent:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 182
    :cond_1
    new-instance v3, Lcom/android/lgesettings/quietmode/QuietModeInfo;

    iget-object v4, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/lgesettings/quietmode/QuietModeInfo;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    .line 184
    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mRepeatedCall:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v4}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isRepeatedCallMode()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 185
    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mSheduledTime:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v4}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isScheduledTimeMode()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 187
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, p0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mQuietModeSwitch:Landroid/widget/Switch;

    .line 188
    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v3}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isQuietModeState()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->isQuietModeChecked:Z

    .line 191
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 192
    .local v1, padding:I
    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mQuietModeSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 193
    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mQuietModeSwitch:Landroid/widget/Switch;

    iget-boolean v4, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->isQuietModeChecked:Z

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 194
    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mQuietModeSwitch:Landroid/widget/Switch;

    iget-object v4, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mQuietModeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 195
    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mQuietModeSwitch:Landroid/widget/Switch;

    new-instance v4, Lcom/android/lgesettings/quietmode/QuietModeSettings$3;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/quietmode/QuietModeSettings$3;-><init>(Lcom/android/lgesettings/quietmode/QuietModeSettings;)V

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 358
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    .line 359
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 360
    .local v0, i:Landroid/content/Intent;
    const/high16 v1, 0x3000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 361
    const-string v1, "com.android.lgesettings"

    const-string v2, "com.android.lgesettings.SoundSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeSettings;->startActivity(Landroid/content/Intent;)V

    .line 364
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeSettings;->finish()V

    .line 365
    const/4 v1, 0x1

    .line 367
    .end local v0           #i:Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 287
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 288
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mQuietModeTimePreference:Lcom/android/lgesettings/quietmode/QuietModeTimePreference;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->onPause()V

    .line 289
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mQuietModeDayPreference:Lcom/android/lgesettings/quietmode/QuietModeDayPreference;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeDayPreference;->onPause()V

    .line 290
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 291
    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/QuietModeSettings;->save()V

    .line 292
    iget-boolean v0, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->isQuietModeChecked:Z

    if-ne v2, v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->doQuietModeService(Z)V

    .line 298
    :goto_0
    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->doQuietModeService(Z)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    .line 322
    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mSheduledTime:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 323
    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    iget-object v4, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mSheduledTime:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBScheduledTimeMode(Z)V

    .line 324
    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mQuietModeDayPreference:Lcom/android/lgesettings/quietmode/QuietModeDayPreference;

    invoke-virtual {v3}, Lcom/android/lgesettings/quietmode/QuietModeDayPreference;->save()V

    .line 342
    :goto_0
    return v2

    .line 327
    :cond_0
    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mRepeatedCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 328
    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    iget-object v4, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mRepeatedCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBRepeatedCallMode(Z)V

    goto :goto_0

    .line 331
    :cond_1
    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mAddQuietModeCalendarEvent:Landroid/preference/Preference;

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 332
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 333
    .local v0, calendarIntent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 334
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.calendar"

    const-string v5, "com.android.calendar.EditEventActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 336
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 337
    :catch_0
    move-exception v1

    .line 338
    .local v1, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080e1a

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 342
    .end local v0           #calendarIntent:Landroid/content/Intent;
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 216
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mQuietModeSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isQuietModeState()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 217
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeSettings;->updateAutoReply()V

    .line 218
    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/QuietModeSettings;->updateContactsAllowed()V

    .line 219
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mRepeatedCall:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isRepeatedCallMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 220
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mSheduledTime:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isScheduledTimeMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 221
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mQuietModeTimePreference:Lcom/android/lgesettings/quietmode/QuietModeTimePreference;

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->onResume(Lcom/android/lgesettings/quietmode/QuietModeInfo;)V

    .line 222
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mQuietModeDayPreference:Lcom/android/lgesettings/quietmode/QuietModeDayPreference;

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/quietmode/QuietModeDayPreference;->onResume(Lcom/android/lgesettings/quietmode/QuietModeInfo;)V

    .line 224
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "lge.settings.QMODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 225
    .local v0, quietModefilter:Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 226
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 227
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/16 v1, 0x10

    const/4 v4, -0x2

    .line 303
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 304
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 306
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mQuietModeSwitch:Landroid/widget/Switch;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/16 v3, 0x15

    invoke-direct {v2, v4, v4, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 310
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 315
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 316
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 317
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 318
    return-void
.end method

.method public updateAutoReply()V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getAutoReplyOption()I

    move-result v0

    if-nez v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mAutoReply:Landroid/preference/Preference;

    const v1, 0x7f080e06

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 278
    :goto_0
    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mAutoReply:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getReplyMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
