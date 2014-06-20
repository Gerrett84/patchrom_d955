.class public Lcom/android/lgesettings/lge/QuadGearBox;
.super Landroid/preference/PreferenceActivity;
.source "QuadGearBox.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private handler:Landroid/os/Handler;

.field private mCustomImagePreference:Lcom/android/lgesettings/CustomImagePreference2;

.field private mEcoModeObserver:Landroid/database/ContentObserver;

.field private mQuadGearboxPreference:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/lge/QuadGearBox;->handler:Landroid/os/Handler;

    .line 55
    new-instance v0, Lcom/android/lgesettings/lge/QuadGearBox$1;

    iget-object v1, p0, Lcom/android/lgesettings/lge/QuadGearBox;->handler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/lgesettings/lge/QuadGearBox$1;-><init>(Lcom/android/lgesettings/lge/QuadGearBox;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/lgesettings/lge/QuadGearBox;->mEcoModeObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/lge/QuadGearBox;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/lgesettings/lge/QuadGearBox;->mQuadGearboxPreference:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/lge/QuadGearBox;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/lgesettings/lge/QuadGearBox;->updateImage(Z)V

    return-void
.end method

.method private updateImage(Z)V
    .locals 2
    .parameter "on"

    .prologue
    .line 95
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/lgesettings/lge/QuadGearBox;->mCustomImagePreference:Lcom/android/lgesettings/CustomImagePreference2;

    const v1, 0x7f02021c

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/CustomImagePreference2;->setImage(I)V

    .line 99
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/lge/QuadGearBox;->mCustomImagePreference:Lcom/android/lgesettings/CustomImagePreference2;

    const v1, 0x7f02021b

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/CustomImagePreference2;->setImage(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "arg0"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 71
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuadGearBox;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 73
    .local v0, resolver:Landroid/content/ContentResolver;
    const v2, 0x7f06003d

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/lge/QuadGearBox;->addPreferencesFromResource(I)V

    .line 74
    const-string v2, "quad_gearbox_image"

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/lge/QuadGearBox;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/lgesettings/CustomImagePreference2;

    iput-object v2, p0, Lcom/android/lgesettings/lge/QuadGearBox;->mCustomImagePreference:Lcom/android/lgesettings/CustomImagePreference2;

    .line 75
    iget-object v2, p0, Lcom/android/lgesettings/lge/QuadGearBox;->mCustomImagePreference:Lcom/android/lgesettings/CustomImagePreference2;

    invoke-virtual {v2, v4}, Lcom/android/lgesettings/CustomImagePreference2;->setSelectable(Z)V

    .line 77
    const-string v2, "checkbox_quad_gearbox"

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/lge/QuadGearBox;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/lgesettings/lge/QuadGearBox;->mQuadGearboxPreference:Landroid/preference/CheckBoxPreference;

    .line 78
    iget-object v5, p0, Lcom/android/lgesettings/lge/QuadGearBox;->mQuadGearboxPreference:Landroid/preference/CheckBoxPreference;

    const-string v2, "eco_mode"

    invoke-static {v0, v2, v4}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 79
    iget-object v2, p0, Lcom/android/lgesettings/lge/QuadGearBox;->mQuadGearboxPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 80
    iget-object v2, p0, Lcom/android/lgesettings/lge/QuadGearBox;->mQuadGearboxPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/lgesettings/lge/QuadGearBox;->updateImage(Z)V

    .line 82
    const-string v2, "eco_mode"

    invoke-static {v2}, Lcom/lge/provider/SettingsEx$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 83
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/lgesettings/lge/QuadGearBox;->mEcoModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuadGearBox;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const v3, 0x7f02034c

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setIcon(I)V

    .line 86
    return-void

    .end local v1           #uri:Landroid/net/Uri;
    :cond_0
    move v2, v4

    .line 78
    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 90
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 91
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuadGearBox;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/lge/QuadGearBox;->mEcoModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 92
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .parameter "item"

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x1

    .line 115
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    const v10, 0x102002c

    if-ne v8, v10, :cond_2

    .line 116
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuadGearBox;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "settings_style"

    invoke-static {v8, v10, v11}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 117
    .local v3, settingStyle:I
    if-ne v3, v9, :cond_2

    invoke-static {p0}, Lcom/android/lgesettings/Utils;->supportEasySettings(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 118
    const-string v8, "activity"

    invoke-virtual {p0, v8}, Lcom/android/lgesettings/lge/QuadGearBox;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 119
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0, v9}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 121
    .local v2, info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-nez v2, :cond_0

    .line 122
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v8

    .line 144
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v2           #info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v3           #settingStyle:I
    :goto_0
    return v8

    .line 125
    .restart local v0       #am:Landroid/app/ActivityManager;
    .restart local v2       #info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v3       #settingStyle:I
    :cond_0
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v8, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 126
    .local v6, topActivity:Landroid/content/ComponentName;
    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    .line 127
    .local v7, topActivityClassName:Ljava/lang/String;
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, baseActivityClassName:Ljava/lang/String;
    const-string v8, "kimyow"

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

    .line 129
    const-string v8, "com.lge.settings.easy.EasySettings"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 130
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuadGearBox;->onBackPressed()V

    move v8, v9

    .line 131
    goto :goto_0

    .line 133
    :cond_1
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.settings.SETTINGS"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    .local v4, settings:Landroid/content/Intent;
    const/high16 v8, 0x1020

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 135
    invoke-static {v7}, Lcom/android/lgesettings/Utils;->getEasyTabIndex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 136
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

    .line 137
    const-string v8, "android.intent.extra.TEXT"

    invoke-virtual {v4, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    invoke-virtual {p0, v4}, Lcom/android/lgesettings/lge/QuadGearBox;->startActivity(Landroid/content/Intent;)V

    .line 139
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuadGearBox;->finish()V

    move v8, v9

    .line 140
    goto :goto_0

    .line 144
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v1           #baseActivityClassName:Ljava/lang/String;
    .end local v2           #info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v3           #settingStyle:I
    .end local v4           #settings:Landroid/content/Intent;
    .end local v5           #tabIndex:Ljava/lang/String;
    .end local v6           #topActivity:Landroid/content/ComponentName;
    .end local v7           #topActivityClassName:Ljava/lang/String;
    :cond_2
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v8

    goto/16 :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "arg1"

    .prologue
    const/4 v2, 0x1

    .line 104
    iget-object v1, p0, Lcom/android/lgesettings/lge/QuadGearBox;->mQuadGearboxPreference:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_0

    move-object v0, p2

    .line 106
    check-cast v0, Ljava/lang/Boolean;

    .line 107
    .local v0, newValue:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/lgesettings/lge/QuadGearBox;->updateImage(Z)V

    .line 108
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/QuadGearBox;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "eco_mode"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v3, v4, v1}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 110
    .end local v0           #newValue:Ljava/lang/Boolean;
    :cond_0
    return v2

    .line 108
    .restart local v0       #newValue:Ljava/lang/Boolean;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
