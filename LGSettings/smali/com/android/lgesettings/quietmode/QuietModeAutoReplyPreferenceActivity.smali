.class public Lcom/android/lgesettings/quietmode/QuietModeAutoReplyPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "QuietModeAutoReplyPreferenceActivity.java"

# interfaces
.implements Lcom/android/lgesettings/quietmode/QuietModeRadioPreference$OnTreeClickListener;


# instance fields
.field private mMessage:Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;

.field private mNoreply:Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;

.field private mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

.field private mReplyMessage:Ljava/lang/String;

.field private mSummary:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private Log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 124
    const-string v0, "QuietModeAutoReplyPreferenceActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-void
.end method

.method private getAutoReplyOption()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 78
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "quietmode_auto_reply_option"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 81
    :goto_0
    return v1

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "quietmode_auto_reply_option"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private returnIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 90
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 91
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 92
    return-object v0
.end method

.method private setAutoReplyOption()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 86
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "quietmode_auto_reply_option"

    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyPreferenceActivity;->mNoreply:Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;

    invoke-virtual {v3}, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->isChecked()Z

    move-result v3

    if-ne v3, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 87
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 37
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v1, 0x7f060049

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyPreferenceActivity;->addPreferencesFromResource(I)V

    .line 41
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyPreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 42
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 44
    const v1, 0x7f0201fb

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 45
    const-string v1, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    const v1, 0x7f080e52

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 51
    :cond_0
    new-instance v1, Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyPreferenceActivity;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    .line 53
    const-string v1, "quiet_mode_auto_reply_guide_summary_description"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyPreferenceActivity;->mSummary:Landroid/preference/Preference;

    .line 54
    const-string v1, "no_reply"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;

    iput-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyPreferenceActivity;->mNoreply:Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;

    .line 55
    const-string v1, "message"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;

    iput-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyPreferenceActivity;->mMessage:Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;

    .line 57
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyPreferenceActivity;->mNoreply:Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;

    invoke-virtual {v1, p0}, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->setOnTreeClickListener(Lcom/android/lgesettings/quietmode/QuietModeRadioPreference$OnTreeClickListener;)V

    .line 58
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyPreferenceActivity;->mNoreply:Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;

    invoke-virtual {v1, v5}, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->setRemoveEditIcon(Z)V

    .line 60
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyPreferenceActivity;->mMessage:Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;

    invoke-virtual {v1, p0}, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->setOnTreeClickListener(Lcom/android/lgesettings/quietmode/QuietModeRadioPreference$OnTreeClickListener;)V

    .line 61
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyPreferenceActivity;->mMessage:Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyPreferenceActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyPreferenceActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".quietmode.QuietModeAutoReplyEditActivity"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyPreferenceActivity;->returnIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->setIntent(Landroid/content/Intent;)V

    .line 63
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyPreferenceActivity;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getReplyMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyPreferenceActivity;->mReplyMessage:Ljava/lang/String;

    .line 64
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyPreferenceActivity;->mMessage:Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyPreferenceActivity;->mReplyMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->setTitle(Ljava/lang/String;)V

    .line 66
    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyPreferenceActivity;->getAutoReplyOption()I

    move-result v1

    if-nez v1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyPreferenceActivity;->mNoreply:Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;

    invoke-virtual {v1, v5}, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->setChecked(Z)V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyPreferenceActivity;->mMessage:Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;

    invoke-virtual {v1, v5}, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 98
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 99
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 142
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    .line 143
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    .local v0, i:Landroid/content/Intent;
    const/high16 v1, 0x6400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 145
    const-string v1, "com.android.lgesettings"

    const-string v2, "com.android.lgesettings.quietmode.QuietModeAllowedCallSettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 147
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyPreferenceActivity;->finish()V

    .line 148
    const/4 v1, 0x1

    .line 150
    .end local v0           #i:Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 104
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 105
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 119
    const-string v0, "onPreferenceTreeClick"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyPreferenceActivity;->Log(Ljava/lang/String;)V

    .line 120
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 110
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 111
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyPreferenceActivity;->mMessage:Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyPreferenceActivity;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getReplyMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->setTitle(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public onTreeClick(Landroid/preference/Preference;)V
    .locals 2
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    .line 130
    const-string v0, "onTreeClick"

    invoke-direct {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyPreferenceActivity;->Log(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyPreferenceActivity;->mNoreply:Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyPreferenceActivity;->mMessage:Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->setChecked(Z)V

    .line 137
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyPreferenceActivity;->setAutoReplyOption()V

    .line 138
    return-void

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyPreferenceActivity;->mMessage:Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyPreferenceActivity;->mNoreply:Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->setChecked(Z)V

    goto :goto_0
.end method
