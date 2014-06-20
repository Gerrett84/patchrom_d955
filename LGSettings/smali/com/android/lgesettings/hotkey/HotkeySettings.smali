.class public Lcom/android/lgesettings/hotkey/HotkeySettings;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "HotkeySettings.java"


# instance fields
.field private mCustomImagePreference:Landroid/widget/ImageView;

.field private mHotkeyImage:Landroid/preference/Preference;

.field private mHotkeyInfo:Lcom/android/lgesettings/hotkey/HotkeyInfo;

.field private mLongPress:Landroid/preference/Preference;

.field mPm:Landroid/content/pm/PackageManager;

.field mShortcuts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mShrotPress:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private initPreference()V
    .locals 3

    .prologue
    .line 83
    const v0, 0x7f060028

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/hotkey/HotkeySettings;->addPreferencesFromResource(I)V

    .line 84
    const-string v0, "hotkey_image"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/hotkey/HotkeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/hotkey/HotkeySettings;->mHotkeyImage:Landroid/preference/Preference;

    .line 85
    iget-object v0, p0, Lcom/android/lgesettings/hotkey/HotkeySettings;->mHotkeyImage:Landroid/preference/Preference;

    const v1, 0x7f04009b

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 92
    const-string v0, "short_press"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/hotkey/HotkeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/hotkey/HotkeySettings;->mShrotPress:Landroid/preference/Preference;

    .line 93
    const-string v0, "long_press"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/hotkey/HotkeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/hotkey/HotkeySettings;->mLongPress:Landroid/preference/Preference;

    .line 95
    invoke-virtual {p0}, Lcom/android/lgesettings/hotkey/HotkeySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/android/lgesettings/hotkey/HotkeySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/lgesettings/hotkey/HotkeySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "long_press"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 99
    :cond_0
    invoke-direct {p0}, Lcom/android/lgesettings/hotkey/HotkeySettings;->updateSummary()V

    .line 100
    return-void
.end method

.method private updateSummary()V
    .locals 12

    .prologue
    .line 103
    const-string v7, "none"

    iget-object v8, p0, Lcom/android/lgesettings/hotkey/HotkeySettings;->mHotkeyInfo:Lcom/android/lgesettings/hotkey/HotkeyInfo;

    invoke-virtual {v8}, Lcom/android/lgesettings/hotkey/HotkeyInfo;->getDBHotKeyShortPKG()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "none"

    iget-object v8, p0, Lcom/android/lgesettings/hotkey/HotkeySettings;->mHotkeyInfo:Lcom/android/lgesettings/hotkey/HotkeyInfo;

    invoke-virtual {v8}, Lcom/android/lgesettings/hotkey/HotkeyInfo;->getDBHotKeyShortClass()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 105
    iget-object v7, p0, Lcom/android/lgesettings/hotkey/HotkeySettings;->mShrotPress:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/lgesettings/hotkey/HotkeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f08097a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 106
    const-string v7, "HotkeySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[Normal] initPreference - ShrotPress Label : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/lgesettings/hotkey/HotkeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f08097a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    :goto_0
    const-string v7, "none"

    invoke-virtual {p0}, Lcom/android/lgesettings/hotkey/HotkeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "hotkey_long_package"

    invoke-static {v8, v9}, Lcom/lge/provider/SettingsEx$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "none"

    invoke-virtual {p0}, Lcom/android/lgesettings/hotkey/HotkeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "hotkey_long_class"

    invoke-static {v8, v9}, Lcom/lge/provider/SettingsEx$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 154
    iget-object v7, p0, Lcom/android/lgesettings/hotkey/HotkeySettings;->mLongPress:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/lgesettings/hotkey/HotkeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f08097a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 155
    const-string v7, "HotkeySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initPreference - LongPress Label : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/lgesettings/hotkey/HotkeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f08097b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_1
    :goto_1
    return-void

    .line 109
    :cond_2
    const-string v7, "com.lge.QuickClip"

    iget-object v8, p0, Lcom/android/lgesettings/hotkey/HotkeySettings;->mHotkeyInfo:Lcom/android/lgesettings/hotkey/HotkeyInfo;

    invoke-virtual {v8}, Lcom/android/lgesettings/hotkey/HotkeyInfo;->getDBHotKeyShortPKG()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "com.lge.QuickClip.QuickClipActivity"

    iget-object v8, p0, Lcom/android/lgesettings/hotkey/HotkeySettings;->mHotkeyInfo:Lcom/android/lgesettings/hotkey/HotkeyInfo;

    invoke-virtual {v8}, Lcom/android/lgesettings/hotkey/HotkeyInfo;->getDBHotKeyShortClass()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 112
    :try_start_0
    iget-object v7, p0, Lcom/android/lgesettings/hotkey/HotkeySettings;->mShrotPress:Landroid/preference/Preference;

    iget-object v8, p0, Lcom/android/lgesettings/hotkey/HotkeySettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v9, p0, Lcom/android/lgesettings/hotkey/HotkeySettings;->mPm:Landroid/content/pm/PackageManager;

    const-string v10, "com.lge.QuickClip"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 117
    :goto_2
    const-string v7, "HotkeySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[Default] initPreference - ShrotPress Label : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/lgesettings/hotkey/HotkeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f08097b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 119
    :cond_3
    iget-object v7, p0, Lcom/android/lgesettings/hotkey/HotkeySettings;->mHotkeyInfo:Lcom/android/lgesettings/hotkey/HotkeyInfo;

    iget-object v8, p0, Lcom/android/lgesettings/hotkey/HotkeySettings;->mHotkeyInfo:Lcom/android/lgesettings/hotkey/HotkeyInfo;

    invoke-virtual {v8}, Lcom/android/lgesettings/hotkey/HotkeyInfo;->getDBHotKeyShortPKG()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/lgesettings/hotkey/HotkeyInfo;->isNormalPackage(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "none"

    iget-object v8, p0, Lcom/android/lgesettings/hotkey/HotkeySettings;->mHotkeyInfo:Lcom/android/lgesettings/hotkey/HotkeyInfo;

    invoke-virtual {v8}, Lcom/android/lgesettings/hotkey/HotkeyInfo;->getDBHotKeyShortClass()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 122
    const-string v7, "HotkeySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[Dummay] initPreference - ShrotPress Label : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/lgesettings/hotkey/HotkeySettings;->mHotkeyInfo:Lcom/android/lgesettings/hotkey/HotkeyInfo;

    iget-object v10, p0, Lcom/android/lgesettings/hotkey/HotkeySettings;->mHotkeyInfo:Lcom/android/lgesettings/hotkey/HotkeyInfo;

    invoke-virtual {v10}, Lcom/android/lgesettings/hotkey/HotkeyInfo;->getDBHotKeyShortPKG()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/lgesettings/hotkey/HotkeyInfo;->getDummyPKGResID(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v7, p0, Lcom/android/lgesettings/hotkey/HotkeySettings;->mShrotPress:Landroid/preference/Preference;

    iget-object v8, p0, Lcom/android/lgesettings/hotkey/HotkeySettings;->mHotkeyInfo:Lcom/android/lgesettings/hotkey/HotkeyInfo;

    iget-object v9, p0, Lcom/android/lgesettings/hotkey/HotkeySettings;->mHotkeyInfo:Lcom/android/lgesettings/hotkey/HotkeyInfo;

    invoke-virtual {v9}, Lcom/android/lgesettings/hotkey/HotkeyInfo;->getDBHotKeyShortPKG()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/lgesettings/hotkey/HotkeyInfo;->getDummyPKGResID(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    .line 128
    :cond_4
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    const/4 v8, 0x0

    invoke-direct {v5, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 129
    .local v5, intentLauncher:Landroid/content/Intent;
    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    iget-object v7, p0, Lcom/android/lgesettings/hotkey/HotkeySettings;->mPm:Landroid/content/pm/PackageManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v5, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/android/lgesettings/hotkey/HotkeySettings;->mShortcuts:Ljava/util/List;

    .line 133
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    const/4 v8, 0x0

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 134
    .local v4, intentHotkey:Landroid/content/Intent;
    const-string v7, "com.lge.lockscreensettings.CATEGORY_LOCKSCREEN"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    iget-object v7, p0, Lcom/android/lgesettings/hotkey/HotkeySettings;->mPm:Landroid/content/pm/PackageManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v4, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 137
    .local v1, hotkeyShortcuts:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v7, p0, Lcom/android/lgesettings/hotkey/HotkeySettings;->mShortcuts:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 139
    iget-object v7, p0, Lcom/android/lgesettings/hotkey/HotkeySettings;->mShortcuts:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 140
    .local v3, info:Landroid/content/pm/ResolveInfo;
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 141
    .local v6, packageName:Ljava/lang/String;
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 143
    .local v0, className:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/lgesettings/hotkey/HotkeySettings;->mHotkeyInfo:Lcom/android/lgesettings/hotkey/HotkeyInfo;

    invoke-virtual {v7}, Lcom/android/lgesettings/hotkey/HotkeyInfo;->getDBHotKeyShortPKG()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/lgesettings/hotkey/HotkeySettings;->mHotkeyInfo:Lcom/android/lgesettings/hotkey/HotkeyInfo;

    invoke-virtual {v7}, Lcom/android/lgesettings/hotkey/HotkeyInfo;->getDBHotKeyShortClass()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 145
    iget-object v7, p0, Lcom/android/lgesettings/hotkey/HotkeySettings;->mShrotPress:Landroid/preference/Preference;

    iget-object v8, p0, Lcom/android/lgesettings/hotkey/HotkeySettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v8}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 146
    const-string v7, "HotkeySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initPreference - ShrotPress Label : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/lgesettings/hotkey/HotkeySettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v9}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 157
    .end local v0           #className:Ljava/lang/String;
    .end local v1           #hotkeyShortcuts:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #info:Landroid/content/pm/ResolveInfo;
    .end local v4           #intentHotkey:Landroid/content/Intent;
    .end local v5           #intentLauncher:Landroid/content/Intent;
    .end local v6           #packageName:Ljava/lang/String;
    :cond_6
    const-string v7, "com.lge.QuickClip"

    invoke-virtual {p0}, Lcom/android/lgesettings/hotkey/HotkeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "hotkey_long_package"

    invoke-static {v8, v9}, Lcom/lge/provider/SettingsEx$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "com.lge.QuickClip.QuickClipActivity"

    invoke-virtual {p0}, Lcom/android/lgesettings/hotkey/HotkeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "hotkey_long_class"

    invoke-static {v8, v9}, Lcom/lge/provider/SettingsEx$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 160
    :try_start_1
    iget-object v7, p0, Lcom/android/lgesettings/hotkey/HotkeySettings;->mLongPress:Landroid/preference/Preference;

    iget-object v8, p0, Lcom/android/lgesettings/hotkey/HotkeySettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v9, p0, Lcom/android/lgesettings/hotkey/HotkeySettings;->mPm:Landroid/content/pm/PackageManager;

    const-string v10, "com.lge.QuickClip"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 165
    :goto_4
    const-string v7, "HotkeySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initPreference - LongPress Label : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/lgesettings/hotkey/HotkeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f08097b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 168
    :cond_7
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    const/4 v8, 0x0

    invoke-direct {v5, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 169
    .restart local v5       #intentLauncher:Landroid/content/Intent;
    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    iget-object v7, p0, Lcom/android/lgesettings/hotkey/HotkeySettings;->mPm:Landroid/content/pm/PackageManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v5, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/android/lgesettings/hotkey/HotkeySettings;->mShortcuts:Ljava/util/List;

    .line 173
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    const/4 v8, 0x0

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 174
    .restart local v4       #intentHotkey:Landroid/content/Intent;
    const-string v7, "com.lge.lockscreensettings.CATEGORY_LOCKSCREEN"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    iget-object v7, p0, Lcom/android/lgesettings/hotkey/HotkeySettings;->mPm:Landroid/content/pm/PackageManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v4, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 177
    .restart local v1       #hotkeyShortcuts:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v7, p0, Lcom/android/lgesettings/hotkey/HotkeySettings;->mShortcuts:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 179
    iget-object v7, p0, Lcom/android/lgesettings/hotkey/HotkeySettings;->mShortcuts:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_8
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 180
    .restart local v3       #info:Landroid/content/pm/ResolveInfo;
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 181
    .restart local v6       #packageName:Ljava/lang/String;
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 183
    .restart local v0       #className:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/lgesettings/hotkey/HotkeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "hotkey_long_package"

    invoke-static {v7, v8}, Lcom/lge/provider/SettingsEx$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {p0}, Lcom/android/lgesettings/hotkey/HotkeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "hotkey_long_class"

    invoke-static {v7, v8}, Lcom/lge/provider/SettingsEx$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 185
    iget-object v7, p0, Lcom/android/lgesettings/hotkey/HotkeySettings;->mLongPress:Landroid/preference/Preference;

    iget-object v8, p0, Lcom/android/lgesettings/hotkey/HotkeySettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v8}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 186
    const-string v7, "HotkeySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initPreference - LongPress Label : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/lgesettings/hotkey/HotkeySettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v9}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 161
    .end local v0           #className:Ljava/lang/String;
    .end local v1           #hotkeyShortcuts:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #info:Landroid/content/pm/ResolveInfo;
    .end local v4           #intentHotkey:Landroid/content/Intent;
    .end local v5           #intentLauncher:Landroid/content/Intent;
    .end local v6           #packageName:Ljava/lang/String;
    :catch_0
    move-exception v7

    goto/16 :goto_4

    .line 113
    :catch_1
    move-exception v7

    goto/16 :goto_2
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 80
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/android/lgesettings/hotkey/HotkeySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/hotkey/HotkeySettings;->mPm:Landroid/content/pm/PackageManager;

    .line 52
    new-instance v0, Lcom/android/lgesettings/hotkey/HotkeyInfo;

    invoke-virtual {p0}, Lcom/android/lgesettings/hotkey/HotkeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/lgesettings/hotkey/HotkeyInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/lgesettings/hotkey/HotkeySettings;->mHotkeyInfo:Lcom/android/lgesettings/hotkey/HotkeyInfo;

    .line 53
    invoke-direct {p0}, Lcom/android/lgesettings/hotkey/HotkeySettings;->initPreference()V

    .line 54
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/lgesettings/hotkey/HotkeySettings;->mCustomImagePreference:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/android/lgesettings/Utils;->recycleView(Landroid/view/View;)V

    .line 66
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 67
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onDestroy()V

    .line 68
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .parameter "item"

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x1

    .line 195
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 225
    :cond_0
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v8

    :goto_0
    return v8

    .line 197
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/lgesettings/hotkey/HotkeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "settings_style"

    invoke-static {v8, v10, v11}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 198
    .local v3, settingStyle:I
    if-ne v3, v9, :cond_0

    invoke-virtual {p0}, Lcom/android/lgesettings/hotkey/HotkeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/lgesettings/Utils;->supportEasySettings(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 199
    const-string v8, "activity"

    invoke-virtual {p0, v8}, Lcom/android/lgesettings/hotkey/HotkeySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 200
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0, v9}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 201
    .local v2, info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v8, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 202
    .local v6, topActivity:Landroid/content/ComponentName;
    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    .line 203
    .local v7, topActivityClassName:Ljava/lang/String;
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, baseActivityClassName:Ljava/lang/String;
    const-string v8, "HotkeySettings"

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

    .line 205
    const-string v8, "com.lge.settings.easy.EasySettings"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 206
    invoke-virtual {p0}, Lcom/android/lgesettings/hotkey/HotkeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->onBackPressed()V

    move v8, v9

    .line 207
    goto :goto_0

    .line 209
    :cond_1
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.settings.SETTINGS"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 210
    .local v4, settings:Landroid/content/Intent;
    const/high16 v8, 0x1020

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 211
    invoke-static {v7}, Lcom/android/lgesettings/Utils;->getEasyTabIndex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 212
    .local v5, tabIndex:Ljava/lang/String;
    const-string v8, "HotkeySettings"

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

    .line 213
    const-string v8, "android.intent.extra.TEXT"

    invoke-virtual {v4, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    invoke-virtual {p0, v4}, Lcom/android/lgesettings/hotkey/HotkeySettings;->startActivity(Landroid/content/Intent;)V

    .line 215
    invoke-virtual {p0}, Lcom/android/lgesettings/hotkey/HotkeySettings;->finish()V

    move v8, v9

    .line 216
    goto/16 :goto_0

    .line 195
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 73
    invoke-super {p0, p1, p2}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onResume()V

    .line 60
    invoke-direct {p0}, Lcom/android/lgesettings/hotkey/HotkeySettings;->updateSummary()V

    .line 61
    return-void
.end method
