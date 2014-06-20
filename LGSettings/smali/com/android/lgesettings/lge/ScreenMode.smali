.class public Lcom/android/lgesettings/lge/ScreenMode;
.super Landroid/preference/PreferenceActivity;
.source "ScreenMode.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mNaturalScreenMode:Lcom/android/lgesettings/lge/RadioButtonPreference;

.field private mScreenModeImage:Lcom/android/lgesettings/ImagePreference;

.field private mStandardScreenMode:Lcom/android/lgesettings/lge/RadioButtonPreference;

.field private mVividScreenMode:Lcom/android/lgesettings/lge/RadioButtonPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private initToggles()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 110
    iget-object v0, p0, Lcom/android/lgesettings/lge/ScreenMode;->mStandardScreenMode:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 111
    iget-object v0, p0, Lcom/android/lgesettings/lge/ScreenMode;->mVividScreenMode:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 112
    iget-object v0, p0, Lcom/android/lgesettings/lge/ScreenMode;->mNaturalScreenMode:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 114
    return-void
.end method

.method private updateToggles()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 118
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ScreenMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_mode_set"

    invoke-static {v1, v2, v6}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 119
    .local v0, modeDbValue:I
    const-string v1, "ScreenMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Refresh: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ScreenMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_mode_set"

    invoke-static {v3, v4, v6}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    if-nez v0, :cond_1

    .line 122
    iget-object v1, p0, Lcom/android/lgesettings/lge/ScreenMode;->mStandardScreenMode:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v1, v5}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    if-ne v0, v5, :cond_2

    .line 124
    iget-object v1, p0, Lcom/android/lgesettings/lge/ScreenMode;->mVividScreenMode:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v1, v5}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 125
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/android/lgesettings/lge/ScreenMode;->mNaturalScreenMode:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v1, v5}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v2, 0x7f06004b

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/lge/ScreenMode;->addPreferencesFromResource(I)V

    .line 52
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ScreenMode;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 56
    .local v1, root:Landroid/preference/PreferenceScreen;
    const-string v2, "standard_screen_mode"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/lgesettings/lge/RadioButtonPreference;

    iput-object v2, p0, Lcom/android/lgesettings/lge/ScreenMode;->mStandardScreenMode:Lcom/android/lgesettings/lge/RadioButtonPreference;

    .line 58
    iget-object v2, p0, Lcom/android/lgesettings/lge/ScreenMode;->mStandardScreenMode:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v2, p0}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 59
    const-string v2, "vivid_screen_mode"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/lgesettings/lge/RadioButtonPreference;

    iput-object v2, p0, Lcom/android/lgesettings/lge/ScreenMode;->mVividScreenMode:Lcom/android/lgesettings/lge/RadioButtonPreference;

    .line 61
    iget-object v2, p0, Lcom/android/lgesettings/lge/ScreenMode;->mVividScreenMode:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v2, p0}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 62
    const-string v2, "natural_screen_mode"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/lgesettings/lge/RadioButtonPreference;

    iput-object v2, p0, Lcom/android/lgesettings/lge/ScreenMode;->mNaturalScreenMode:Lcom/android/lgesettings/lge/RadioButtonPreference;

    .line 64
    iget-object v2, p0, Lcom/android/lgesettings/lge/ScreenMode;->mNaturalScreenMode:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v2, p0}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 67
    const-string v2, "screen_mode_image"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/lgesettings/ImagePreference;

    iput-object v2, p0, Lcom/android/lgesettings/lge/ScreenMode;->mScreenModeImage:Lcom/android/lgesettings/ImagePreference;

    .line 68
    iget-object v2, p0, Lcom/android/lgesettings/lge/ScreenMode;->mScreenModeImage:Lcom/android/lgesettings/ImagePreference;

    const v3, 0x7f0202e6

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/ImagePreference;->setImage(I)V

    .line 69
    iget-object v2, p0, Lcom/android/lgesettings/lge/ScreenMode;->mScreenModeImage:Lcom/android/lgesettings/ImagePreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/ImagePreference;->setSelectable(Z)V

    .line 72
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ScreenMode;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 73
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 74
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 76
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 139
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 140
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ScreenMode;->finish()V

    .line 142
    const/4 v1, 0x1

    .line 144
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 80
    invoke-static {}, Lcom/android/lgesettings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    :goto_0
    return v4

    .line 83
    :cond_0
    invoke-direct {p0}, Lcom/android/lgesettings/lge/ScreenMode;->initToggles()V

    .line 87
    iget-object v0, p0, Lcom/android/lgesettings/lge/ScreenMode;->mStandardScreenMode:Lcom/android/lgesettings/lge/RadioButtonPreference;

    if-ne p1, v0, :cond_2

    .line 88
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ScreenMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_mode_set"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 90
    iget-object v0, p0, Lcom/android/lgesettings/lge/ScreenMode;->mStandardScreenMode:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v0, v4}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 101
    :cond_1
    :goto_1
    const-string v0, "ScreenMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ScreenMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_mode_set"

    invoke-static {v2, v3, v5}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/lge/ScreenMode;->mVividScreenMode:Lcom/android/lgesettings/lge/RadioButtonPreference;

    if-ne p1, v0, :cond_3

    .line 92
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ScreenMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_mode_set"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 94
    iget-object v0, p0, Lcom/android/lgesettings/lge/ScreenMode;->mVividScreenMode:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v0, v4}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    goto :goto_1

    .line 95
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/lge/ScreenMode;->mNaturalScreenMode:Lcom/android/lgesettings/lge/RadioButtonPreference;

    if-ne p1, v0, :cond_1

    .line 96
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ScreenMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_mode_set"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 98
    iget-object v0, p0, Lcom/android/lgesettings/lge/ScreenMode;->mNaturalScreenMode:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v0, v4}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 133
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 134
    invoke-direct {p0}, Lcom/android/lgesettings/lge/ScreenMode;->updateToggles()V

    .line 135
    return-void
.end method
