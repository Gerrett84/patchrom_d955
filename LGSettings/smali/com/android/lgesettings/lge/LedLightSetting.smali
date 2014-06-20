.class public Lcom/android/lgesettings/lge/LedLightSetting;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "LedLightSetting.java"


# instance fields
.field private ck_front_key_alarm:Landroid/preference/CheckBoxPreference;

.field private ck_front_key_all:Landroid/preference/CheckBoxPreference;

.field private ck_front_key_calendar_reminder:Landroid/preference/CheckBoxPreference;

.field private ck_front_key_email:Landroid/preference/CheckBoxPreference;

.field private ck_front_key_felica:Landroid/preference/CheckBoxPreference;

.field private ck_front_key_gps:Landroid/preference/CheckBoxPreference;

.field private ck_front_key_messaging:Landroid/preference/CheckBoxPreference;

.field private ck_front_key_missed:Landroid/preference/CheckBoxPreference;

.field private ck_front_key_social_event:Landroid/preference/CheckBoxPreference;

.field private ck_front_key_voice_mail:Landroid/preference/CheckBoxPreference;

.field private pf_key_area_mail:Landroid/preference/Preference;

.field private pf_key_cell_broad:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "arg0"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 58
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v3, 0x7f06002d

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/LedLightSetting;->addPreferencesFromResource(I)V

    .line 60
    const-string v3, "front_key_screen"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/LedLightSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    .line 62
    .local v1, parent:Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/LedLightSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 64
    .local v2, resolver:Landroid/content/ContentResolver;
    const-string v3, "front_key_area_mail"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/LedLightSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/lge/LedLightSetting;->pf_key_area_mail:Landroid/preference/Preference;

    .line 65
    const-string v3, "front_key_cell_broad"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/LedLightSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/lge/LedLightSetting;->pf_key_cell_broad:Landroid/preference/Preference;

    .line 67
    const-string v3, "front_key_all"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/LedLightSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_all:Landroid/preference/CheckBoxPreference;

    .line 68
    const-string v3, "checkbox_front_key_missed_call"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/LedLightSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_missed:Landroid/preference/CheckBoxPreference;

    .line 69
    const-string v3, "checkbox_front_key_messaging"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/LedLightSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_messaging:Landroid/preference/CheckBoxPreference;

    .line 70
    const-string v3, "checkbox_front_key_voice_mail"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/LedLightSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_voice_mail:Landroid/preference/CheckBoxPreference;

    .line 71
    const-string v3, "checkbox_front_key_gps"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/LedLightSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_gps:Landroid/preference/CheckBoxPreference;

    .line 72
    const-string v3, "checkbox_front_key_felica"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/LedLightSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_felica:Landroid/preference/CheckBoxPreference;

    .line 73
    const-string v3, "checkbox_front_key_alarm"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/LedLightSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_alarm:Landroid/preference/CheckBoxPreference;

    .line 74
    const-string v3, "checkbox_front_key_calandar_reminder"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/LedLightSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_calendar_reminder:Landroid/preference/CheckBoxPreference;

    .line 75
    const-string v3, "checkbox_front_key_social_event"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/LedLightSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_social_event:Landroid/preference/CheckBoxPreference;

    .line 76
    const-string v3, "checkbox_front_key_email"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/lge/LedLightSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_email:Landroid/preference/CheckBoxPreference;

    .line 80
    iget-object v6, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_all:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/LedLightSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "front_key_all"

    invoke-static {v3, v7, v5}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 82
    iget-object v6, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_missed:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/LedLightSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "front_key_missed_call"

    invoke-static {v3, v7, v5}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 84
    iget-object v6, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_messaging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/LedLightSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "front_key_messaging"

    invoke-static {v3, v7, v5}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_5

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 86
    iget-object v6, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_voice_mail:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/LedLightSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "front_key_voice_mail"

    invoke-static {v3, v7, v5}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    :goto_3
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 88
    iget-object v6, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_gps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/LedLightSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "front_key_gps"

    invoke-static {v3, v7, v5}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_7

    move v3, v4

    :goto_4
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 90
    iget-object v6, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_felica:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/LedLightSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "front_key_felica"

    invoke-static {v3, v7, v5}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_8

    move v3, v4

    :goto_5
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 92
    iget-object v6, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_alarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/LedLightSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "front_key_alarm"

    invoke-static {v3, v7, v5}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_9

    move v3, v4

    :goto_6
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 94
    iget-object v6, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_calendar_reminder:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/LedLightSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "front_key_calendar_reminder"

    invoke-static {v3, v7, v5}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_a

    move v3, v4

    :goto_7
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 96
    iget-object v6, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_social_event:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/LedLightSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "front_key_social_event"

    invoke-static {v3, v7, v5}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_b

    move v3, v4

    :goto_8
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 98
    iget-object v3, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_email:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/LedLightSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "front_key_email"

    invoke-static {v6, v7, v5}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    move v5, v4

    :cond_0
    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 102
    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v5, "l_dcm"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 104
    iget-object v3, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_messaging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 105
    iget-object v3, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_voice_mail:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 106
    iget-object v3, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_social_event:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 155
    :cond_1
    :goto_9
    iget-object v3, p0, Lcom/android/lgesettings/lge/LedLightSetting;->pf_key_cell_broad:Landroid/preference/Preference;

    invoke-virtual {v3}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "com.android.cellbroadcastreceiver"

    invoke-static {v3, v5}, Lcom/android/lgesettings/Utils;->checkPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 160
    :goto_a
    iget-object v3, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_social_event:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "com.android.SNS"

    invoke-static {v3, v5}, Lcom/android/lgesettings/Utils;->checkPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 168
    :goto_b
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/LedLightSetting;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 169
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_2

    .line 170
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 172
    :cond_2
    return-void

    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_3
    move v3, v5

    .line 80
    goto/16 :goto_0

    :cond_4
    move v3, v5

    .line 82
    goto/16 :goto_1

    :cond_5
    move v3, v5

    .line 84
    goto/16 :goto_2

    :cond_6
    move v3, v5

    .line 86
    goto/16 :goto_3

    :cond_7
    move v3, v5

    .line 88
    goto/16 :goto_4

    :cond_8
    move v3, v5

    .line 90
    goto/16 :goto_5

    :cond_9
    move v3, v5

    .line 92
    goto/16 :goto_6

    :cond_a
    move v3, v5

    .line 94
    goto :goto_7

    :cond_b
    move v3, v5

    .line 96
    goto :goto_8

    .line 109
    :cond_c
    const-string v3, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 111
    iget-object v3, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_voice_mail:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 112
    iget-object v3, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_social_event:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_9

    .line 114
    :cond_d
    const-string v3, "KDDI"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 116
    iget-object v3, p0, Lcom/android/lgesettings/lge/LedLightSetting;->pf_key_area_mail:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 117
    iget-object v3, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_gps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 118
    iget-object v3, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_felica:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 119
    iget-object v3, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_messaging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 120
    iget-object v3, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_voice_mail:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 121
    iget-object v3, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_email:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 122
    iget-object v3, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_social_event:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_9

    .line 124
    :cond_e
    const-string v3, "ATT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 126
    iget-object v3, p0, Lcom/android/lgesettings/lge/LedLightSetting;->pf_key_area_mail:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 127
    iget-object v3, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_gps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 128
    iget-object v3, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_felica:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 129
    iget-object v3, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_social_event:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 130
    iget-object v3, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_alarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_9

    .line 133
    :cond_f
    const-string v3, "KR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 135
    iget-object v3, p0, Lcom/android/lgesettings/lge/LedLightSetting;->pf_key_area_mail:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 136
    iget-object v3, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_gps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 137
    iget-object v3, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_felica:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 138
    iget-object v3, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_voice_mail:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 139
    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v5, "geefhd4g"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 140
    iget-object v3, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_social_event:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_9

    .line 145
    :cond_10
    iget-object v3, p0, Lcom/android/lgesettings/lge/LedLightSetting;->pf_key_area_mail:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 146
    iget-object v3, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_gps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 147
    iget-object v3, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_felica:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 148
    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v5, "d1lv"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v5, "l1v"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "SCA"

    const-string v5, "ro.build.target_region"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "BELL"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "SHB"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 151
    :cond_11
    iget-object v3, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_social_event:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_9

    .line 158
    :cond_12
    iget-object v3, p0, Lcom/android/lgesettings/lge/LedLightSetting;->pf_key_cell_broad:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_a

    .line 164
    :cond_13
    iget-object v3, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_social_event:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_b
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 310
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 311
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 312
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/LedLightSetting;->finish()V

    .line 313
    const/4 v1, 0x1

    .line 315
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 178
    iget-object v1, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_missed:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_2

    .line 180
    iget-object v1, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_missed:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/LedLightSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "front_key_missed_call"

    invoke-static {v1, v2, v4}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 186
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.intent.action.NOTIFICATION_FLASH_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 187
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "name"

    const-string v2, "front_key_missed_call"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/LedLightSetting;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 304
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .line 184
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/LedLightSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "front_key_missed_call"

    invoke-static {v1, v2, v3}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 192
    :cond_2
    iget-object v1, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_all:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_4

    .line 194
    iget-object v1, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_all:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 195
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/LedLightSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "front_key_all"

    invoke-static {v1, v2, v4}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 199
    :goto_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.intent.action.NOTIFICATION_FLASH_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "name"

    const-string v2, "front_key_all"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/LedLightSetting;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 197
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/LedLightSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "front_key_all"

    invoke-static {v1, v2, v3}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 204
    :cond_4
    iget-object v1, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_messaging:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_6

    .line 206
    iget-object v1, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_messaging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 207
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/LedLightSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "front_key_messaging"

    invoke-static {v1, v2, v4}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 211
    :goto_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.intent.action.NOTIFICATION_FLASH_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 212
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "name"

    const-string v2, "front_key_messaging"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/LedLightSetting;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 209
    .end local v0           #intent:Landroid/content/Intent;
    :cond_5
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/LedLightSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "front_key_messaging"

    invoke-static {v1, v2, v3}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    .line 216
    :cond_6
    iget-object v1, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_voice_mail:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_8

    .line 218
    iget-object v1, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_voice_mail:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 219
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/LedLightSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "front_key_voice_mail"

    invoke-static {v1, v2, v4}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 223
    :goto_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.intent.action.NOTIFICATION_FLASH_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 224
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "name"

    const-string v2, "front_key_voice_mail"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/LedLightSetting;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 221
    .end local v0           #intent:Landroid/content/Intent;
    :cond_7
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/LedLightSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "front_key_voice_mail"

    invoke-static {v1, v2, v3}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_4

    .line 228
    :cond_8
    iget-object v1, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_gps:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_a

    .line 230
    iget-object v1, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_gps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 231
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/LedLightSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "front_key_gps"

    invoke-static {v1, v2, v4}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 235
    :goto_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.intent.action.NOTIFICATION_FLASH_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 236
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "name"

    const-string v2, "front_key_gps"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/LedLightSetting;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 233
    .end local v0           #intent:Landroid/content/Intent;
    :cond_9
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/LedLightSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "front_key_gps"

    invoke-static {v1, v2, v3}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_5

    .line 240
    :cond_a
    iget-object v1, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_felica:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_c

    .line 242
    iget-object v1, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_felica:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 243
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/LedLightSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "front_key_felica"

    invoke-static {v1, v2, v4}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 247
    :goto_6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.intent.action.NOTIFICATION_FLASH_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 248
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "name"

    const-string v2, "front_key_felica"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/LedLightSetting;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 245
    .end local v0           #intent:Landroid/content/Intent;
    :cond_b
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/LedLightSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "front_key_felica"

    invoke-static {v1, v2, v3}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_6

    .line 252
    :cond_c
    iget-object v1, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_alarm:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_e

    .line 254
    iget-object v1, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_alarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 255
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/LedLightSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "front_key_alarm"

    invoke-static {v1, v2, v4}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 259
    :goto_7
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.intent.action.NOTIFICATION_FLASH_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 260
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "name"

    const-string v2, "front_key_alarm"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/LedLightSetting;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 257
    .end local v0           #intent:Landroid/content/Intent;
    :cond_d
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/LedLightSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "front_key_alarm"

    invoke-static {v1, v2, v3}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_7

    .line 264
    :cond_e
    iget-object v1, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_calendar_reminder:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_10

    .line 266
    iget-object v1, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_calendar_reminder:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 267
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/LedLightSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "front_key_calendar_reminder"

    invoke-static {v1, v2, v4}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 271
    :goto_8
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.intent.action.NOTIFICATION_FLASH_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 272
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "name"

    const-string v2, "front_key_calendar_reminder"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/LedLightSetting;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 269
    .end local v0           #intent:Landroid/content/Intent;
    :cond_f
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/LedLightSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "front_key_calendar_reminder"

    invoke-static {v1, v2, v3}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_8

    .line 277
    :cond_10
    iget-object v1, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_social_event:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_12

    .line 279
    iget-object v1, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_social_event:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 280
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/LedLightSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "front_key_social_event"

    invoke-static {v1, v2, v4}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 284
    :goto_9
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.intent.action.NOTIFICATION_FLASH_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 285
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "name"

    const-string v2, "front_key_social_event"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/LedLightSetting;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 282
    .end local v0           #intent:Landroid/content/Intent;
    :cond_11
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/LedLightSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "front_key_social_event"

    invoke-static {v1, v2, v3}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_9

    .line 289
    :cond_12
    iget-object v1, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_email:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_0

    .line 291
    iget-object v1, p0, Lcom/android/lgesettings/lge/LedLightSetting;->ck_front_key_email:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 292
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/LedLightSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "front_key_email"

    invoke-static {v1, v2, v4}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 296
    :goto_a
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.intent.action.NOTIFICATION_FLASH_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 297
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "name"

    const-string v2, "front_key_email"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/LedLightSetting;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 294
    .end local v0           #intent:Landroid/content/Intent;
    :cond_13
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/LedLightSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "front_key_email"

    invoke-static {v1, v2, v3}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_a
.end method
