.class public Lcom/android/lgesettings/lge/FrontTouchKeyTheme;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "FrontTouchKeyTheme.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/lge/FrontTouchKeyTheme$ThemeInfo;
    }
.end annotation


# instance fields
.field private current:Lcom/android/lgesettings/lge/RadioButtonPreference;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mSaveOldTheme:Z

.field private oldThemeName:Ljava/lang/String;

.field private final sOrderComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/lgesettings/lge/FrontTouchKeyTheme$ThemeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/lge/FrontTouchKeyTheme;->current:Lcom/android/lgesettings/lge/RadioButtonPreference;

    .line 335
    new-instance v0, Lcom/android/lgesettings/lge/FrontTouchKeyTheme$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/lge/FrontTouchKeyTheme$1;-><init>(Lcom/android/lgesettings/lge/FrontTouchKeyTheme;)V

    iput-object v0, p0, Lcom/android/lgesettings/lge/FrontTouchKeyTheme;->sOrderComparator:Ljava/util/Comparator;

    return-void
.end method

.method private getInfo(Lcom/android/lgesettings/lge/FrontTouchKeyTheme$ThemeInfo;)Z
    .locals 13
    .parameter "info"

    .prologue
    .line 271
    iget-object v5, p1, Lcom/android/lgesettings/lge/FrontTouchKeyTheme$ThemeInfo;->packageName:Ljava/lang/String;

    .line 273
    .local v5, packageName:Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/lgesettings/lge/FrontTouchKeyTheme;->getThemeResources(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    .line 274
    .local v4, mThemeResources:Landroid/content/res/Resources;
    if-nez v4, :cond_0

    .line 275
    const/4 v11, 0x0

    .line 325
    :goto_0
    return v11

    .line 278
    :cond_0
    const-string v11, "theme_resources"

    const-string v12, "xml"

    invoke-virtual {v4, v11, v12, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 280
    .local v10, themeXmlResId:I
    if-nez v10, :cond_1

    .line 281
    const/4 v11, 0x0

    goto :goto_0

    .line 286
    :cond_1
    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 288
    .local v6, parser:Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v2

    .line 289
    .local v2, eventType:I
    :goto_1
    const/4 v11, 0x1

    if-eq v2, v11, :cond_4

    .line 291
    const/4 v11, 0x2

    if-ne v2, v11, :cond_2

    .line 292
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 294
    .local v9, tagName:Ljava/lang/String;
    const-string v11, "ThemeName"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 295
    const/4 v11, 0x0

    const-string v12, "value"

    invoke-interface {v6, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 298
    .local v8, resName:Ljava/lang/String;
    const-string v11, "string"

    invoke-virtual {v4, v8, v11, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 300
    .local v7, resId:I
    if-eqz v7, :cond_2

    .line 301
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p1, Lcom/android/lgesettings/lge/FrontTouchKeyTheme$ThemeInfo;->themeName:Ljava/lang/String;

    .line 317
    .end local v7           #resId:I
    .end local v8           #resName:Ljava/lang/String;
    .end local v9           #tagName:Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    goto :goto_1

    .line 304
    .restart local v9       #tagName:Ljava/lang/String;
    :cond_3
    const-string v11, "Preview"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 305
    const/4 v11, 0x0

    const-string v12, "image"

    invoke-interface {v6, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, calendarBGImageResName:Ljava/lang/String;
    const-string v11, "drawable"

    invoke-virtual {v4, v0, v11, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 311
    .local v3, imageResId:I
    if-eqz v3, :cond_2

    .line 312
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iput-object v11, p1, Lcom/android/lgesettings/lge/FrontTouchKeyTheme$ThemeInfo;->preview:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 319
    .end local v0           #calendarBGImageResName:Ljava/lang/String;
    .end local v2           #eventType:I
    .end local v3           #imageResId:I
    .end local v9           #tagName:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 320
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    const/4 v11, 0x0

    goto :goto_0

    .line 321
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v1

    .line 322
    .local v1, e:Ljava/io/IOException;
    const/4 v11, 0x0

    goto :goto_0

    .line 325
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #eventType:I
    :cond_4
    const/4 v11, 0x1

    goto :goto_0
.end method

.method private getThemeResources(Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 3
    .parameter "packageName"

    .prologue
    const/4 v1, 0x0

    .line 253
    if-nez p1, :cond_0

    .line 266
    :goto_0
    return-object v1

    .line 259
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/lge/FrontTouchKeyTheme;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, mThemeResources:Landroid/content/res/Resources;
    goto :goto_0

    .line 261
    .end local v1           #mThemeResources:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 262
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private isMonkeyRunning()Z
    .locals 1

    .prologue
    .line 182
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    return v0
.end method

.method private readStoredPreference()V
    .locals 4

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/FrontTouchKeyTheme;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "navigation_bar_theme"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, currThemeName:Ljava/lang/String;
    iput-object v0, p0, Lcom/android/lgesettings/lge/FrontTouchKeyTheme;->oldThemeName:Ljava/lang/String;

    .line 170
    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lge/FrontTouchKeyTheme;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 173
    .local v1, pref:Landroid/preference/Preference;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/lgesettings/lge/RadioButtonPreference;

    if-eqz v2, :cond_0

    .line 174
    check-cast v1, Lcom/android/lgesettings/lge/RadioButtonPreference;

    .end local v1           #pref:Landroid/preference/Preference;
    iput-object v1, p0, Lcom/android/lgesettings/lge/FrontTouchKeyTheme;->current:Lcom/android/lgesettings/lge/RadioButtonPreference;

    .line 175
    iget-object v2, p0, Lcom/android/lgesettings/lge/FrontTouchKeyTheme;->current:Lcom/android/lgesettings/lge/RadioButtonPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 178
    :cond_0
    return-void
.end method

.method private searchThemePackage()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/lgesettings/lge/FrontTouchKeyTheme$ThemeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/16 v10, 0x270f

    .line 215
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .local v3, installedThemeInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/android/lgesettings/lge/FrontTouchKeyTheme$ThemeInfo;>;"
    iget-object v8, p0, Lcom/android/lgesettings/lge/FrontTouchKeyTheme;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v8, :cond_0

    move-object v3, v7

    .line 249
    .end local v3           #installedThemeInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/android/lgesettings/lge/FrontTouchKeyTheme$ThemeInfo;>;"
    :goto_0
    return-object v3

    .line 221
    .restart local v3       #installedThemeInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/android/lgesettings/lge/FrontTouchKeyTheme$ThemeInfo;>;"
    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.lge.systemui.navigation.THEME"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 224
    .local v4, lgThemePickIntent:Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/lgesettings/lge/FrontTouchKeyTheme;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v9, 0x80

    invoke-virtual {v8, v4, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 229
    .local v0, activityList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 230
    .local v2, info:Landroid/content/pm/ResolveInfo;
    new-instance v6, Lcom/android/lgesettings/lge/FrontTouchKeyTheme$ThemeInfo;

    invoke-direct {v6, p0, v7}, Lcom/android/lgesettings/lge/FrontTouchKeyTheme$ThemeInfo;-><init>(Lcom/android/lgesettings/lge/FrontTouchKeyTheme;Lcom/android/lgesettings/lge/FrontTouchKeyTheme$1;)V

    .line 231
    .local v6, themeInfo:Lcom/android/lgesettings/lge/FrontTouchKeyTheme$ThemeInfo;
    iget-object v8, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/lgesettings/lge/FrontTouchKeyTheme$ThemeInfo;->packageName:Ljava/lang/String;

    .line 233
    invoke-direct {p0, v6}, Lcom/android/lgesettings/lge/FrontTouchKeyTheme;->getInfo(Lcom/android/lgesettings/lge/FrontTouchKeyTheme$ThemeInfo;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 237
    iget-object v8, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v8, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 238
    .local v5, metadata:Landroid/os/Bundle;
    if-eqz v5, :cond_2

    .line 239
    const-string v8, "order"

    invoke-virtual {v5, v8, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v6, Lcom/android/lgesettings/lge/FrontTouchKeyTheme$ThemeInfo;->order:I

    .line 244
    :goto_2
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 241
    :cond_2
    iput v10, v6, Lcom/android/lgesettings/lge/FrontTouchKeyTheme$ThemeInfo;->order:I

    goto :goto_2

    .line 247
    .end local v2           #info:Landroid/content/pm/ResolveInfo;
    .end local v5           #metadata:Landroid/os/Bundle;
    .end local v6           #themeInfo:Lcom/android/lgesettings/lge/FrontTouchKeyTheme$ThemeInfo;
    :cond_3
    iget-object v7, p0, Lcom/android/lgesettings/lge/FrontTouchKeyTheme;->sOrderComparator:Ljava/util/Comparator;

    invoke-static {v3, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method private updateThemesPreferences()V
    .locals 7

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/FrontTouchKeyTheme;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 189
    .local v5, root:Landroid/preference/PreferenceScreen;
    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 190
    invoke-direct {p0}, Lcom/android/lgesettings/lge/FrontTouchKeyTheme;->searchThemePackage()Ljava/util/List;

    move-result-object v3

    .line 192
    .local v3, mThemeList:Ljava/util/List;,"Ljava/util/List<Lcom/android/lgesettings/lge/FrontTouchKeyTheme$ThemeInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 193
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/lgesettings/lge/FrontTouchKeyTheme$ThemeInfo;

    .line 195
    .local v2, info:Lcom/android/lgesettings/lge/FrontTouchKeyTheme$ThemeInfo;
    new-instance v4, Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/FrontTouchKeyTheme;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/android/lgesettings/lge/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 197
    .local v4, preference:Lcom/android/lgesettings/lge/RadioButtonPreference;
    const v6, 0x7f040102

    invoke-virtual {v4, v6}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setLayoutResource(I)V

    .line 199
    iget-object v6, v2, Lcom/android/lgesettings/lge/FrontTouchKeyTheme$ThemeInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setKey(Ljava/lang/String;)V

    .line 201
    iget-object v6, v2, Lcom/android/lgesettings/lge/FrontTouchKeyTheme$ThemeInfo;->themeName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v6, v2, Lcom/android/lgesettings/lge/FrontTouchKeyTheme$ThemeInfo;->preview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v6}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 204
    invoke-virtual {v4, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setOrder(I)V

    .line 205
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setPersistent(Z)V

    .line 207
    invoke-virtual {v4, p0}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 209
    invoke-virtual {v5, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 192
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    .end local v2           #info:Lcom/android/lgesettings/lge/FrontTouchKeyTheme$ThemeInfo;
    .end local v4           #preference:Lcom/android/lgesettings/lge/RadioButtonPreference;
    :cond_0
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/FrontTouchKeyTheme;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 121
    invoke-direct {p0}, Lcom/android/lgesettings/lge/FrontTouchKeyTheme;->updateThemesPreferences()V

    .line 122
    invoke-direct {p0}, Lcom/android/lgesettings/lge/FrontTouchKeyTheme;->readStoredPreference()V

    .line 123
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 124
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 68
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v1, 0x7f040081

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/lge/FrontTouchKeyTheme;->addPreferencesFromResource(I)V

    .line 71
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/FrontTouchKeyTheme;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/lge/FrontTouchKeyTheme;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 72
    iput-boolean v2, p0, Lcom/android/lgesettings/lge/FrontTouchKeyTheme;->mSaveOldTheme:Z

    .line 77
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/FrontTouchKeyTheme;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 78
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/FrontTouchKeyTheme;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/lgesettings/Utils;->supportSplitView(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 92
    const v1, 0x7f040082

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 107
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 127
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPause()V

    .line 128
    iget-boolean v0, p0, Lcom/android/lgesettings/lge/FrontTouchKeyTheme;->mSaveOldTheme:Z

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/FrontTouchKeyTheme;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navigation_bar_theme"

    iget-object v2, p0, Lcom/android/lgesettings/lge/FrontTouchKeyTheme;->oldThemeName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 132
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 139
    invoke-direct {p0}, Lcom/android/lgesettings/lge/FrontTouchKeyTheme;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    :goto_0
    return v3

    .line 143
    :cond_0
    instance-of v0, p1, Lcom/android/lgesettings/lge/RadioButtonPreference;

    if-eqz v0, :cond_2

    .line 144
    iget-object v0, p0, Lcom/android/lgesettings/lge/FrontTouchKeyTheme;->current:Lcom/android/lgesettings/lge/RadioButtonPreference;

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/android/lgesettings/lge/FrontTouchKeyTheme;->current:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v0, v4}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    :cond_1
    move-object v0, p1

    .line 148
    check-cast v0, Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    move-object v0, p1

    .line 149
    check-cast v0, Lcom/android/lgesettings/lge/RadioButtonPreference;

    iput-object v0, p0, Lcom/android/lgesettings/lge/FrontTouchKeyTheme;->current:Lcom/android/lgesettings/lge/RadioButtonPreference;

    .line 152
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/FrontTouchKeyTheme;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navigation_bar_theme"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 155
    :cond_2
    iput-boolean v4, p0, Lcom/android/lgesettings/lge/FrontTouchKeyTheme;->mSaveOldTheme:Z

    .line 156
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/FrontTouchKeyTheme;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/Utils;->supportSplitView(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 157
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/FrontTouchKeyTheme;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 159
    :cond_3
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/FrontTouchKeyTheme;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 112
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onResume()V

    .line 113
    invoke-direct {p0}, Lcom/android/lgesettings/lge/FrontTouchKeyTheme;->updateThemesPreferences()V

    .line 114
    invoke-direct {p0}, Lcom/android/lgesettings/lge/FrontTouchKeyTheme;->readStoredPreference()V

    .line 115
    return-void
.end method
