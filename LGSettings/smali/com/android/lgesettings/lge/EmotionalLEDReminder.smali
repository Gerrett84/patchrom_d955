.class public Lcom/android/lgesettings/lge/EmotionalLEDReminder;
.super Landroid/preference/PreferenceActivity;
.source "EmotionalLEDReminder.java"


# instance fields
.field private reminder_cell_broad:Landroid/preference/CheckBoxPreference;

.field private reminder_desc:Landroid/preference/Preference;

.field private reminder_email:Landroid/preference/CheckBoxPreference;

.field private reminder_missed_call:Landroid/preference/CheckBoxPreference;

.field private reminder_msg:Landroid/preference/CheckBoxPreference;

.field private reminder_voicemail:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private loadsettings()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 132
    iget-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDReminder;->reminder_missed_call:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDReminder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "emotional_led_reminder_missed_call"

    invoke-static {v0, v4, v1}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 135
    iget-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDReminder;->reminder_msg:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDReminder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "emotional_led_reminder_msg"

    invoke-static {v0, v4, v1}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 138
    iget-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDReminder;->reminder_voicemail:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDReminder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "emotional_led_reminder_voicemail"

    invoke-static {v0, v4, v1}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 141
    iget-object v3, p0, Lcom/android/lgesettings/lge/EmotionalLEDReminder;->reminder_email:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDReminder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "emotional_led_reminder_email"

    invoke-static {v0, v4, v1}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 144
    iget-object v0, p0, Lcom/android/lgesettings/lge/EmotionalLEDReminder;->reminder_cell_broad:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDReminder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "emotional_led_reminder_cell_broad"

    invoke-static {v3, v4, v1}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_4

    :goto_4
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 149
    return-void

    :cond_0
    move v0, v2

    .line 132
    goto :goto_0

    :cond_1
    move v0, v2

    .line 135
    goto :goto_1

    :cond_2
    move v0, v2

    .line 138
    goto :goto_2

    :cond_3
    move v0, v2

    .line 141
    goto :goto_3

    :cond_4
    move v1, v2

    .line 144
    goto :goto_4
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v1, 0x7f060022

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/lge/EmotionalLEDReminder;->addPreferencesFromResource(I)V

    .line 45
    const-string v1, "emotional_led_reminder_missed_desc"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/lge/EmotionalLEDReminder;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/lge/EmotionalLEDReminder;->reminder_desc:Landroid/preference/Preference;

    .line 46
    const-string v1, "emotional_led_reminder_missed_call"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/lge/EmotionalLEDReminder;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/lgesettings/lge/EmotionalLEDReminder;->reminder_missed_call:Landroid/preference/CheckBoxPreference;

    .line 47
    const-string v1, "emotional_led_reminder_msg"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/lge/EmotionalLEDReminder;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/lgesettings/lge/EmotionalLEDReminder;->reminder_msg:Landroid/preference/CheckBoxPreference;

    .line 48
    const-string v1, "emotional_led_reminder_voicemail"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/lge/EmotionalLEDReminder;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/lgesettings/lge/EmotionalLEDReminder;->reminder_voicemail:Landroid/preference/CheckBoxPreference;

    .line 49
    const-string v1, "emotional_led_reminder_email"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/lge/EmotionalLEDReminder;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/lgesettings/lge/EmotionalLEDReminder;->reminder_email:Landroid/preference/CheckBoxPreference;

    .line 50
    const-string v1, "emotional_led_reminder_cell_broad"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/lge/EmotionalLEDReminder;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/lgesettings/lge/EmotionalLEDReminder;->reminder_cell_broad:Landroid/preference/CheckBoxPreference;

    .line 52
    invoke-static {}, Lcom/android/lgesettings/Utils;->supportHomeKey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDReminder;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0200b4

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setIcon(I)V

    .line 56
    :cond_0
    const-string v1, "ATT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "USC"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 58
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDReminder;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 59
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDReminder;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/lge/EmotionalLEDReminder;->reminder_voicemail:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 63
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/lge/EmotionalLEDReminder;->reminder_cell_broad:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.cellbroadcastreceiver"

    invoke-static {v1, v2}, Lcom/android/lgesettings/Utils;->checkPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 65
    const-string v1, "EmotionalLEDReminder"

    const-string v2, "Cell Broadcasting : Include menu"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :goto_0
    const-string v1, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 75
    const-string v1, "EmotionalLEDReminder"

    const-string v2, "Felica : Include menu"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v1, p0, Lcom/android/lgesettings/lge/EmotionalLEDReminder;->reminder_desc:Landroid/preference/Preference;

    const v2, 0x7f080db6

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 83
    :goto_1
    const-string v1, "KR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDReminder;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 85
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDReminder;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/lge/EmotionalLEDReminder;->reminder_cell_broad:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 88
    :cond_2
    invoke-direct {p0}, Lcom/android/lgesettings/lge/EmotionalLEDReminder;->loadsettings()V

    .line 91
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDReminder;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 92
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_3

    .line 93
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 95
    :cond_3
    return-void

    .line 67
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_4
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDReminder;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 68
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDReminder;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/lge/EmotionalLEDReminder;->reminder_cell_broad:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 70
    :cond_5
    const-string v1, "EmotionalLEDReminder"

    const-string v2, "Cell Broadcasting : Remove menu"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 81
    :cond_6
    const-string v1, "EmotionalLEDReminder"

    const-string v2, "Felica : Remove menu"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 154
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 155
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDReminder;->finish()V

    .line 157
    const/4 v1, 0x1

    .line 159
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 99
    const/4 v1, 0x0

    .line 102
    .local v1, mValue:Z
    iget-object v4, p0, Lcom/android/lgesettings/lge/EmotionalLEDReminder;->reminder_missed_call:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_2

    .line 103
    iget-object v4, p0, Lcom/android/lgesettings/lge/EmotionalLEDReminder;->reminder_missed_call:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 104
    const-string v0, "emotional_led_reminder_missed_call"

    .line 124
    .local v0, mClickItem:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/EmotionalLEDReminder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    if-ne v1, v3, :cond_0

    move v2, v3

    :cond_0
    invoke-static {v4, v0, v2}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 125
    invoke-direct {p0}, Lcom/android/lgesettings/lge/EmotionalLEDReminder;->loadsettings()V

    move v2, v3

    .line 127
    .end local v0           #mClickItem:Ljava/lang/String;
    :cond_1
    return v2

    .line 105
    :cond_2
    iget-object v4, p0, Lcom/android/lgesettings/lge/EmotionalLEDReminder;->reminder_msg:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_3

    .line 106
    iget-object v4, p0, Lcom/android/lgesettings/lge/EmotionalLEDReminder;->reminder_msg:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 107
    const-string v0, "emotional_led_reminder_msg"

    .restart local v0       #mClickItem:Ljava/lang/String;
    goto :goto_0

    .line 108
    .end local v0           #mClickItem:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/lgesettings/lge/EmotionalLEDReminder;->reminder_voicemail:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_4

    .line 109
    iget-object v4, p0, Lcom/android/lgesettings/lge/EmotionalLEDReminder;->reminder_voicemail:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 110
    const-string v0, "emotional_led_reminder_voicemail"

    .restart local v0       #mClickItem:Ljava/lang/String;
    goto :goto_0

    .line 111
    .end local v0           #mClickItem:Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/android/lgesettings/lge/EmotionalLEDReminder;->reminder_email:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_5

    .line 112
    iget-object v4, p0, Lcom/android/lgesettings/lge/EmotionalLEDReminder;->reminder_email:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 113
    const-string v0, "emotional_led_reminder_email"

    .restart local v0       #mClickItem:Ljava/lang/String;
    goto :goto_0

    .line 114
    .end local v0           #mClickItem:Ljava/lang/String;
    :cond_5
    iget-object v4, p0, Lcom/android/lgesettings/lge/EmotionalLEDReminder;->reminder_cell_broad:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_1

    .line 115
    iget-object v4, p0, Lcom/android/lgesettings/lge/EmotionalLEDReminder;->reminder_cell_broad:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 116
    const-string v0, "emotional_led_reminder_cell_broad"

    .restart local v0       #mClickItem:Ljava/lang/String;
    goto :goto_0
.end method
