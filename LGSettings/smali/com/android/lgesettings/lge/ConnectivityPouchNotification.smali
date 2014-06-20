.class public Lcom/android/lgesettings/lge/ConnectivityPouchNotification;
.super Landroid/preference/PreferenceActivity;
.source "ConnectivityPouchNotification.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mPouchCalendarEvents:Landroid/preference/CheckBoxPreference;

.field private mPouchEmail:Landroid/preference/CheckBoxPreference;

.field private mPouchMessage:Landroid/preference/CheckBoxPreference;

.field private mPouchMissedCall:Landroid/preference/CheckBoxPreference;

.field private mPouchVoiceMessage:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "arg0"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 34
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ConnectivityPouchNotification;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 38
    .local v2, resolver:Landroid/content/ContentResolver;
    const v3, 0x7f04003d

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/ConnectivityPouchNotification;->addPreferencesFromResource(I)V

    .line 40
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ConnectivityPouchNotification;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v6, 0x7f060010

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 41
    .local v1, header:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ConnectivityPouchNotification;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v1, v7, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 42
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ConnectivityPouchNotification;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    .line 44
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ConnectivityPouchNotification;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 45
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 50
    :cond_0
    const-string v3, "pouch_missed_call"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/ConnectivityPouchNotification;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/lgesettings/lge/ConnectivityPouchNotification;->mPouchMissedCall:Landroid/preference/CheckBoxPreference;

    .line 51
    const-string v3, "pouch_message"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/ConnectivityPouchNotification;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/lgesettings/lge/ConnectivityPouchNotification;->mPouchMessage:Landroid/preference/CheckBoxPreference;

    .line 52
    const-string v3, "pouch_voice_message"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/ConnectivityPouchNotification;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/lgesettings/lge/ConnectivityPouchNotification;->mPouchVoiceMessage:Landroid/preference/CheckBoxPreference;

    .line 53
    const-string v3, "pouch_calendar_events"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/ConnectivityPouchNotification;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/lgesettings/lge/ConnectivityPouchNotification;->mPouchCalendarEvents:Landroid/preference/CheckBoxPreference;

    .line 54
    const-string v3, "pouch_email"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/ConnectivityPouchNotification;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/lgesettings/lge/ConnectivityPouchNotification;->mPouchEmail:Landroid/preference/CheckBoxPreference;

    .line 58
    iget-object v6, p0, Lcom/android/lgesettings/lge/ConnectivityPouchNotification;->mPouchMissedCall:Landroid/preference/CheckBoxPreference;

    const-string v3, "pouch_mode_auto_launch_missed_call"

    invoke-static {v2, v3, v5}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 60
    iget-object v6, p0, Lcom/android/lgesettings/lge/ConnectivityPouchNotification;->mPouchMessage:Landroid/preference/CheckBoxPreference;

    const-string v3, "pouch_mode_auto_launch_message"

    invoke-static {v2, v3, v5}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 62
    iget-object v6, p0, Lcom/android/lgesettings/lge/ConnectivityPouchNotification;->mPouchEmail:Landroid/preference/CheckBoxPreference;

    const-string v3, "pouch_mode_auto_launch_email"

    invoke-static {v2, v3, v5}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 64
    iget-object v6, p0, Lcom/android/lgesettings/lge/ConnectivityPouchNotification;->mPouchVoiceMessage:Landroid/preference/CheckBoxPreference;

    const-string v3, "pouch_mode_auto_launch_voice_message"

    invoke-static {v2, v3, v5}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4

    move v3, v4

    :goto_3
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 66
    iget-object v3, p0, Lcom/android/lgesettings/lge/ConnectivityPouchNotification;->mPouchCalendarEvents:Landroid/preference/CheckBoxPreference;

    const-string v6, "pouch_mode_auto_launch_calendar_events"

    invoke-static {v2, v6, v5}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_5

    :goto_4
    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 68
    return-void

    :cond_1
    move v3, v5

    .line 58
    goto :goto_0

    :cond_2
    move v3, v5

    .line 60
    goto :goto_1

    :cond_3
    move v3, v5

    .line 62
    goto :goto_2

    :cond_4
    move v3, v5

    .line 64
    goto :goto_3

    :cond_5
    move v4, v5

    .line 66
    goto :goto_4
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 132
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 133
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ConnectivityPouchNotification;->onBackPressed()V

    .line 136
    const/4 v1, 0x1

    .line 139
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityPouchNotification;->mPouchMissedCall:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityPouchNotification;->mPouchMissedCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ConnectivityPouchNotification;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pouch_mode_auto_launch_missed_call"

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 122
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 81
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ConnectivityPouchNotification;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pouch_mode_auto_launch_missed_call"

    invoke-static {v0, v1, v3}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityPouchNotification;->mPouchMessage:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_4

    .line 85
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityPouchNotification;->mPouchMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_3

    .line 87
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ConnectivityPouchNotification;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pouch_mode_auto_launch_message"

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 90
    :cond_3
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ConnectivityPouchNotification;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pouch_mode_auto_launch_message"

    invoke-static {v0, v1, v3}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 92
    :cond_4
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityPouchNotification;->mPouchVoiceMessage:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_6

    .line 94
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityPouchNotification;->mPouchVoiceMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_5

    .line 96
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ConnectivityPouchNotification;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pouch_mode_auto_launch_voice_message"

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 99
    :cond_5
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ConnectivityPouchNotification;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pouch_mode_auto_launch_voice_message"

    invoke-static {v0, v1, v3}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 101
    :cond_6
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityPouchNotification;->mPouchCalendarEvents:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_8

    .line 103
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityPouchNotification;->mPouchCalendarEvents:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_7

    .line 105
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ConnectivityPouchNotification;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pouch_mode_auto_launch_calendar_events"

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 108
    :cond_7
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ConnectivityPouchNotification;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pouch_mode_auto_launch_calendar_events"

    invoke-static {v0, v1, v3}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 110
    :cond_8
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityPouchNotification;->mPouchEmail:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/lgesettings/lge/ConnectivityPouchNotification;->mPouchEmail:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_9

    .line 114
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ConnectivityPouchNotification;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pouch_mode_auto_launch_email"

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 117
    :cond_9
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ConnectivityPouchNotification;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pouch_mode_auto_launch_email"

    invoke-static {v0, v1, v3}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method
