.class public Lcom/android/lgesettings/lge/AutoLaunchSettings;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "AutoLaunchSettings.java"


# instance fields
.field private mCarHome:Landroid/preference/CheckBoxPreference;

.field private mDeskHome:Landroid/preference/CheckBoxPreference;

.field private mMediaHome:Landroid/preference/CheckBoxPreference;

.field private mPouchMode:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private initAutoLaunch()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 40
    const-string v1, "car_home"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/lge/AutoLaunchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/lgesettings/lge/AutoLaunchSettings;->mCarHome:Landroid/preference/CheckBoxPreference;

    .line 41
    iget-object v4, p0, Lcom/android/lgesettings/lge/AutoLaunchSettings;->mCarHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/AutoLaunchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "car_home_auto_launch"

    invoke-static {v1, v5, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 43
    const-string v1, "desk_home"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/lge/AutoLaunchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/lgesettings/lge/AutoLaunchSettings;->mDeskHome:Landroid/preference/CheckBoxPreference;

    .line 44
    iget-object v4, p0, Lcom/android/lgesettings/lge/AutoLaunchSettings;->mDeskHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/AutoLaunchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "desk_home_auto_launch"

    invoke-static {v1, v5, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 46
    const-string v1, "media_home"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/lge/AutoLaunchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/lgesettings/lge/AutoLaunchSettings;->mMediaHome:Landroid/preference/CheckBoxPreference;

    .line 47
    iget-object v4, p0, Lcom/android/lgesettings/lge/AutoLaunchSettings;->mMediaHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/AutoLaunchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "media_home_auto_launch"

    invoke-static {v1, v5, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 49
    const-string v1, "pouch_mode"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/lge/AutoLaunchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/lgesettings/lge/AutoLaunchSettings;->mPouchMode:Landroid/preference/CheckBoxPreference;

    .line 50
    iget-object v1, p0, Lcom/android/lgesettings/lge/AutoLaunchSettings;->mPouchMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/AutoLaunchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "pouch_mode_auto_launch"

    invoke-static {v4, v5, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    :goto_3
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 52
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/AutoLaunchSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 53
    .local v0, parent:Landroid/preference/PreferenceScreen;
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "d1lv"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 54
    iget-object v1, p0, Lcom/android/lgesettings/lge/AutoLaunchSettings;->mDeskHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 84
    :cond_0
    :goto_4
    return-void

    .end local v0           #parent:Landroid/preference/PreferenceScreen;
    :cond_1
    move v1, v3

    .line 41
    goto :goto_0

    :cond_2
    move v1, v3

    .line 44
    goto :goto_1

    :cond_3
    move v1, v3

    .line 47
    goto :goto_2

    :cond_4
    move v2, v3

    .line 50
    goto :goto_3

    .line 58
    .restart local v0       #parent:Landroid/preference/PreferenceScreen;
    :cond_5
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "i_vzw"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 59
    iget-object v1, p0, Lcom/android/lgesettings/lge/AutoLaunchSettings;->mDeskHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 60
    iget-object v1, p0, Lcom/android/lgesettings/lge/AutoLaunchSettings;->mMediaHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_4

    .line 62
    :cond_6
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "batman_vzw"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 63
    iget-object v1, p0, Lcom/android/lgesettings/lge/AutoLaunchSettings;->mCarHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 64
    iget-object v1, p0, Lcom/android/lgesettings/lge/AutoLaunchSettings;->mDeskHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 65
    iget-object v1, p0, Lcom/android/lgesettings/lge/AutoLaunchSettings;->mPouchMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 66
    const-string v1, "pouch_notification"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/lge/AutoLaunchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_4

    .line 68
    :cond_7
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "cayman"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 69
    iget-object v1, p0, Lcom/android/lgesettings/lge/AutoLaunchSettings;->mMediaHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 70
    iget-object v1, p0, Lcom/android/lgesettings/lge/AutoLaunchSettings;->mPouchMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 71
    const-string v1, "pouch_notification"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/lge/AutoLaunchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_4

    .line 73
    :cond_8
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "geeb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 74
    iget-object v1, p0, Lcom/android/lgesettings/lge/AutoLaunchSettings;->mCarHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 75
    iget-object v1, p0, Lcom/android/lgesettings/lge/AutoLaunchSettings;->mDeskHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 76
    iget-object v1, p0, Lcom/android/lgesettings/lge/AutoLaunchSettings;->mPouchMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 77
    const-string v1, "pouch_notification"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/lge/AutoLaunchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    .line 79
    :cond_9
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "l1v"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/android/lgesettings/lge/AutoLaunchSettings;->mDeskHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 81
    iget-object v1, p0, Lcom/android/lgesettings/lge/AutoLaunchSettings;->mPouchMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 82
    const-string v1, "pouch_notification"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/lge/AutoLaunchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v0, 0x7f060009

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lge/AutoLaunchSettings;->addPreferencesFromResource(I)V

    .line 36
    invoke-direct {p0}, Lcom/android/lgesettings/lge/AutoLaunchSettings;->initAutoLaunch()V

    .line 37
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 89
    iget-object v3, p0, Lcom/android/lgesettings/lge/AutoLaunchSettings;->mCarHome:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_2

    .line 90
    iget-object v3, p0, Lcom/android/lgesettings/lge/AutoLaunchSettings;->mCarHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 91
    .local v0, value:Z
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/AutoLaunchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "car_home_auto_launch"

    if-eqz v0, :cond_1

    :goto_0
    invoke-static {v3, v4, v1}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 110
    .end local v0           #value:Z
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .restart local v0       #value:Z
    :cond_1
    move v1, v2

    .line 91
    goto :goto_0

    .line 94
    .end local v0           #value:Z
    :cond_2
    iget-object v3, p0, Lcom/android/lgesettings/lge/AutoLaunchSettings;->mDeskHome:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_4

    .line 95
    iget-object v3, p0, Lcom/android/lgesettings/lge/AutoLaunchSettings;->mDeskHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 96
    .restart local v0       #value:Z
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/AutoLaunchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "desk_home_auto_launch"

    if-eqz v0, :cond_3

    :goto_2
    invoke-static {v3, v4, v1}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    .line 99
    .end local v0           #value:Z
    :cond_4
    iget-object v3, p0, Lcom/android/lgesettings/lge/AutoLaunchSettings;->mMediaHome:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_6

    .line 100
    iget-object v3, p0, Lcom/android/lgesettings/lge/AutoLaunchSettings;->mMediaHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 101
    .restart local v0       #value:Z
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/AutoLaunchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "media_home_auto_launch"

    if-eqz v0, :cond_5

    :goto_3
    invoke-static {v3, v4, v1}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_3

    .line 104
    .end local v0           #value:Z
    :cond_6
    iget-object v3, p0, Lcom/android/lgesettings/lge/AutoLaunchSettings;->mPouchMode:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_0

    .line 105
    iget-object v3, p0, Lcom/android/lgesettings/lge/AutoLaunchSettings;->mPouchMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 106
    .restart local v0       #value:Z
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/AutoLaunchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pouch_mode_auto_launch"

    if-eqz v0, :cond_7

    :goto_4
    invoke-static {v3, v4, v1}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_7
    move v1, v2

    goto :goto_4
.end method
