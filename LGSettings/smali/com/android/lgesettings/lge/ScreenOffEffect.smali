.class public Lcom/android/lgesettings/lge/ScreenOffEffect;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "ScreenOffEffect.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mFirstScreenOffEffect:Lcom/android/lgesettings/lge/RadioButtonPreference;

.field private mSecondScreenOffEffect:Lcom/android/lgesettings/lge/RadioButtonPreference;

.field private mThirdScreenOffEffect:Lcom/android/lgesettings/lge/RadioButtonPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private initToggles()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 138
    iget-object v0, p0, Lcom/android/lgesettings/lge/ScreenOffEffect;->mFirstScreenOffEffect:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 139
    iget-object v0, p0, Lcom/android/lgesettings/lge/ScreenOffEffect;->mSecondScreenOffEffect:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 140
    iget-object v0, p0, Lcom/android/lgesettings/lge/ScreenOffEffect;->mThirdScreenOffEffect:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 142
    return-void
.end method

.method private updateToggles()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 146
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ScreenOffEffect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_effect_set"

    invoke-static {v1, v2, v5}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 147
    .local v0, modeDbValue:I
    const-string v1, "ScreenOffEffect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Refresh: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ScreenOffEffect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_off_effect_set"

    invoke-static {v3, v4, v5}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    if-nez v0, :cond_1

    .line 150
    iget-object v1, p0, Lcom/android/lgesettings/lge/ScreenOffEffect;->mFirstScreenOffEffect:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v1, v5}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    if-ne v0, v5, :cond_2

    .line 152
    iget-object v1, p0, Lcom/android/lgesettings/lge/ScreenOffEffect;->mSecondScreenOffEffect:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v1, v5}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 153
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/android/lgesettings/lge/ScreenOffEffect;->mThirdScreenOffEffect:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v1, v5}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v2, 0x7f06004c

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/lge/ScreenOffEffect;->addPreferencesFromResource(I)V

    .line 64
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ScreenOffEffect;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 65
    .local v1, root:Landroid/preference/PreferenceScreen;
    const-string v2, "no_effect"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/lgesettings/lge/RadioButtonPreference;

    iput-object v2, p0, Lcom/android/lgesettings/lge/ScreenOffEffect;->mFirstScreenOffEffect:Lcom/android/lgesettings/lge/RadioButtonPreference;

    .line 66
    iget-object v2, p0, Lcom/android/lgesettings/lge/ScreenOffEffect;->mFirstScreenOffEffect:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v2, p0}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 68
    const-string v2, "circle_effect"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/lgesettings/lge/RadioButtonPreference;

    iput-object v2, p0, Lcom/android/lgesettings/lge/ScreenOffEffect;->mSecondScreenOffEffect:Lcom/android/lgesettings/lge/RadioButtonPreference;

    .line 69
    iget-object v2, p0, Lcom/android/lgesettings/lge/ScreenOffEffect;->mSecondScreenOffEffect:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v2, p0}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 71
    const-string v2, "android_style_effect"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/lgesettings/lge/RadioButtonPreference;

    iput-object v2, p0, Lcom/android/lgesettings/lge/ScreenOffEffect;->mThirdScreenOffEffect:Lcom/android/lgesettings/lge/RadioButtonPreference;

    .line 72
    iget-object v2, p0, Lcom/android/lgesettings/lge/ScreenOffEffect;->mThirdScreenOffEffect:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v2, p0}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ScreenOffEffect;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 81
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ScreenOffEffect;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/lgesettings/Utils;->supportSplitView(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 95
    const v2, 0x7f040130

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 96
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0a00f3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 97
    .local v0, previewButton:Landroid/widget/Button;
    new-instance v2, Lcom/android/lgesettings/lge/ScreenOffEffect$1;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/lge/ScreenOffEffect$1;-><init>(Lcom/android/lgesettings/lge/ScreenOffEffect;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    return-object v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 167
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 168
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ScreenOffEffect;->finish()V

    .line 170
    const/4 v1, 0x1

    .line 172
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v4, 0x1

    .line 110
    invoke-static {}, Lcom/android/lgesettings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    :goto_0
    return v4

    .line 113
    :cond_0
    invoke-direct {p0}, Lcom/android/lgesettings/lge/ScreenOffEffect;->initToggles()V

    .line 117
    iget-object v0, p0, Lcom/android/lgesettings/lge/ScreenOffEffect;->mFirstScreenOffEffect:Lcom/android/lgesettings/lge/RadioButtonPreference;

    if-ne p1, v0, :cond_2

    .line 118
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ScreenOffEffect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_effect_set"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 120
    iget-object v0, p0, Lcom/android/lgesettings/lge/ScreenOffEffect;->mFirstScreenOffEffect:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v0, v4}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 131
    :cond_1
    :goto_1
    const-string v0, "ScreenOffEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ScreenOffEffect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_off_effect_set"

    invoke-static {v2, v3, v4}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/lge/ScreenOffEffect;->mSecondScreenOffEffect:Lcom/android/lgesettings/lge/RadioButtonPreference;

    if-ne p1, v0, :cond_3

    .line 122
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ScreenOffEffect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_effect_set"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 124
    iget-object v0, p0, Lcom/android/lgesettings/lge/ScreenOffEffect;->mSecondScreenOffEffect:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v0, v4}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    goto :goto_1

    .line 125
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/lge/ScreenOffEffect;->mThirdScreenOffEffect:Lcom/android/lgesettings/lge/RadioButtonPreference;

    if-ne p1, v0, :cond_1

    .line 126
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/ScreenOffEffect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_effect_set"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 128
    iget-object v0, p0, Lcom/android/lgesettings/lge/ScreenOffEffect;->mThirdScreenOffEffect:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v0, v4}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 160
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onResume()V

    .line 161
    invoke-direct {p0}, Lcom/android/lgesettings/lge/ScreenOffEffect;->updateToggles()V

    .line 162
    return-void
.end method
