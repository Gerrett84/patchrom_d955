.class public Lcom/android/lgesettings/MultiTaskingSettings;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "MultiTaskingSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field mBreadCrumb:Lcom/android/lgesettings/SettingsBreadCrumb;

.field private mContext:Landroid/content/Context;

.field private mCustomImagePreference:Lcom/android/lgesettings/CustomImagePreference;

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/MultiTaskingSettings;->mCustomImagePreference:Lcom/android/lgesettings/CustomImagePreference;

    return-void
.end method

.method private checkPreference()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 144
    invoke-virtual {p0}, Lcom/android/lgesettings/MultiTaskingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "multitasking_slide_aside"

    invoke-static {v1, v2, v0}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    .line 146
    .local v0, isEnabled:Z
    :goto_0
    return-void

    .line 144
    .end local v0           #isEnabled:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initPreference()V
    .locals 2

    .prologue
    .line 136
    const v0, 0x7f060032

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/MultiTaskingSettings;->addPreferencesFromResource(I)V

    .line 137
    const-string v0, "slide_aside_image"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/MultiTaskingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/CustomImagePreference;

    iput-object v0, p0, Lcom/android/lgesettings/MultiTaskingSettings;->mCustomImagePreference:Lcom/android/lgesettings/CustomImagePreference;

    .line 138
    iget-object v0, p0, Lcom/android/lgesettings/MultiTaskingSettings;->mCustomImagePreference:Lcom/android/lgesettings/CustomImagePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/CustomImagePreference;->setSelectable(Z)V

    .line 141
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    .line 78
    invoke-virtual {p0}, Lcom/android/lgesettings/MultiTaskingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 80
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/android/lgesettings/MultiTaskingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "multitasking_slide_aside"

    invoke-static {v2, v3, v1}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    .line 81
    .local v1, isEnabled:Z
    :goto_0
    iget-object v2, p0, Lcom/android/lgesettings/MultiTaskingSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 83
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 84
    return-void

    .line 80
    .end local v1           #isEnabled:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "button"
    .parameter "status"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/lgesettings/MultiTaskingSettings;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/lgesettings/MultiTaskingSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/MultiTaskingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "multitasking_slide_aside"

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 203
    return-void

    .line 201
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/lgesettings/MultiTaskingSettings;->mCustomImagePreference:Lcom/android/lgesettings/CustomImagePreference;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/lgesettings/MultiTaskingSettings;->mCustomImagePreference:Lcom/android/lgesettings/CustomImagePreference;

    invoke-virtual {v0}, Lcom/android/lgesettings/CustomImagePreference;->cleanup()V

    .line 112
    iget-object v0, p0, Lcom/android/lgesettings/MultiTaskingSettings;->mCustomImagePreference:Lcom/android/lgesettings/CustomImagePreference;

    invoke-virtual {v0}, Lcom/android/lgesettings/CustomImagePreference;->getView()Landroid/view/View;

    .line 113
    const-string v0, "kimyow"

    const-string v1, "onConfigurationChanged::animation cleanup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 116
    const-string v0, "kimyow"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/16 v5, 0x10

    const/4 v6, -0x2

    const/4 v4, 0x0

    .line 48
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/android/lgesettings/MultiTaskingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 51
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/android/lgesettings/MultiTaskingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/MultiTaskingSettings;->mContext:Landroid/content/Context;

    .line 53
    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/lgesettings/MultiTaskingSettings;->mSwitch:Landroid/widget/Switch;

    .line 54
    iget-object v2, p0, Lcom/android/lgesettings/MultiTaskingSettings;->mSwitch:Landroid/widget/Switch;

    new-instance v3, Lcom/android/lgesettings/MultiTaskingSettings$1;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/MultiTaskingSettings$1;-><init>(Lcom/android/lgesettings/MultiTaskingSettings;)V

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v2, p0, Lcom/android/lgesettings/MultiTaskingSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 62
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 63
    .local v1, padding:I
    iget-object v2, p0, Lcom/android/lgesettings/MultiTaskingSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4, v4, v1, v4}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 64
    invoke-virtual {p0}, Lcom/android/lgesettings/MultiTaskingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/lgesettings/SettingsBreadCrumb;->isAttached(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 65
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 66
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/MultiTaskingSettings;->mSwitch:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const v5, 0x800015

    invoke-direct {v4, v6, v6, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 69
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/MultiTaskingSettings;->setHasOptionsMenu(Z)V

    .line 71
    invoke-direct {p0}, Lcom/android/lgesettings/MultiTaskingSettings;->initPreference()V

    .line 72
    invoke-direct {p0}, Lcom/android/lgesettings/MultiTaskingSettings;->checkPreference()V

    .line 74
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 121
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onDestroy()V

    .line 122
    iget-object v2, p0, Lcom/android/lgesettings/MultiTaskingSettings;->mCustomImagePreference:Lcom/android/lgesettings/CustomImagePreference;

    if-eqz v2, :cond_0

    .line 123
    iget-object v2, p0, Lcom/android/lgesettings/MultiTaskingSettings;->mCustomImagePreference:Lcom/android/lgesettings/CustomImagePreference;

    invoke-virtual {v2}, Lcom/android/lgesettings/CustomImagePreference;->cleanup()V

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/MultiTaskingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 126
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/android/lgesettings/MultiTaskingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/lgesettings/SettingsBreadCrumb;->isAttached(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 127
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    .line 128
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 129
    invoke-virtual {v1}, Landroid/view/View;->destroyDrawingCache()V

    .line 131
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 133
    .end local v1           #view:Landroid/view/View;
    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .parameter "item"

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x1

    .line 165
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 193
    :cond_0
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v8

    :goto_0
    return v8

    .line 167
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/lgesettings/MultiTaskingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "settings_style"

    invoke-static {v8, v10, v11}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 168
    .local v3, settingStyle:I
    if-ne v3, v9, :cond_0

    invoke-virtual {p0}, Lcom/android/lgesettings/MultiTaskingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/lgesettings/Utils;->supportEasySettings(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 169
    const-string v8, "activity"

    invoke-virtual {p0, v8}, Lcom/android/lgesettings/MultiTaskingSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 170
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0, v9}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 171
    .local v2, info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v8, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 172
    .local v6, topActivity:Landroid/content/ComponentName;
    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    .line 173
    .local v7, topActivityClassName:Ljava/lang/String;
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, baseActivityClassName:Ljava/lang/String;
    const-string v8, "MultiTaskingSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "top="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  base="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const-string v8, "com.lge.settings.easy.EasySettings"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 176
    invoke-virtual {p0}, Lcom/android/lgesettings/MultiTaskingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->onBackPressed()V

    move v8, v9

    .line 177
    goto :goto_0

    .line 179
    :cond_1
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.settings.SETTINGS"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 180
    .local v4, settings:Landroid/content/Intent;
    const/high16 v8, 0x1020

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 181
    invoke-static {v7}, Lcom/android/lgesettings/Utils;->getEasyTabIndex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 182
    .local v5, tabIndex:Ljava/lang/String;
    const-string v8, "kimyow"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "tabIndex="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const-string v8, "android.intent.extra.TEXT"

    invoke-virtual {v4, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    invoke-virtual {p0, v4}, Lcom/android/lgesettings/MultiTaskingSettings;->startActivity(Landroid/content/Intent;)V

    .line 185
    invoke-virtual {p0}, Lcom/android/lgesettings/MultiTaskingSettings;->finish()V

    move v8, v9

    .line 186
    goto/16 :goto_0

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPause()V

    .line 101
    invoke-virtual {p0}, Lcom/android/lgesettings/MultiTaskingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/SettingsBreadCrumb;->isAttached(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/lgesettings/MultiTaskingSettings;->mBreadCrumb:Lcom/android/lgesettings/SettingsBreadCrumb;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/lgesettings/MultiTaskingSettings;->mBreadCrumb:Lcom/android/lgesettings/SettingsBreadCrumb;

    invoke-virtual {v0}, Lcom/android/lgesettings/SettingsBreadCrumb;->removeSwitch()V

    .line 106
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 154
    invoke-super {p0, p1, p2}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onResume()V

    .line 89
    invoke-direct {p0}, Lcom/android/lgesettings/MultiTaskingSettings;->checkPreference()V

    .line 90
    invoke-virtual {p0}, Lcom/android/lgesettings/MultiTaskingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/SettingsBreadCrumb;->isAttached(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/android/lgesettings/MultiTaskingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/SettingsBreadCrumb;->get(Landroid/app/Activity;)Lcom/android/lgesettings/SettingsBreadCrumb;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/MultiTaskingSettings;->mBreadCrumb:Lcom/android/lgesettings/SettingsBreadCrumb;

    .line 92
    iget-object v0, p0, Lcom/android/lgesettings/MultiTaskingSettings;->mBreadCrumb:Lcom/android/lgesettings/SettingsBreadCrumb;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/lgesettings/MultiTaskingSettings;->mBreadCrumb:Lcom/android/lgesettings/SettingsBreadCrumb;

    iget-object v1, p0, Lcom/android/lgesettings/MultiTaskingSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/SettingsBreadCrumb;->addSwitch(Landroid/widget/Switch;)V

    .line 96
    :cond_0
    return-void
.end method
