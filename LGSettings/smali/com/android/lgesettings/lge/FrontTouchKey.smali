.class public Lcom/android/lgesettings/lge/FrontTouchKey;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "FrontTouchKey.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mFrontTouchKey01:Lcom/android/lgesettings/lge/RadioButtonPreference;

.field private mFrontTouchKey02:Lcom/android/lgesettings/lge/RadioButtonPreference;

.field private mFrontTouchKey03:Lcom/android/lgesettings/lge/RadioButtonPreference;

.field private mFrontTouchKey04:Lcom/android/lgesettings/lge/RadioButtonPreference;

.field private mFrontTouchKey05:Lcom/android/lgesettings/lge/RadioButtonPreference;

.field private mFrontTouchKey06:Lcom/android/lgesettings/lge/RadioButtonPreference;

.field private mFrontkeyPosition:Landroid/preference/ListPreference;

.field private mHideNavigation:Landroid/preference/Preference;

.field private mOnehand:Landroid/preference/CheckBoxPreference;

.field private mOnehandGesture:Landroid/preference/CheckBoxPreference;

.field private mSummary:Landroid/preference/PreferenceScreen;

.field private mTheme:Landroid/preference/Preference;

.field private mTransparent:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private getThemeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "packageName"

    .prologue
    .line 340
    if-nez p1, :cond_0

    .line 341
    const-string v7, "Unknown"

    .line 380
    :goto_0
    return-object v7

    .line 344
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/lgesettings/lge/FrontTouchKey;->getThemeResources(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5

    .line 345
    .local v5, themeRes:Landroid/content/res/Resources;
    if-nez v5, :cond_1

    .line 346
    const-string v7, "Unknown"

    goto :goto_0

    .line 349
    :cond_1
    const-string v7, "theme_resources"

    const-string v8, "xml"

    invoke-virtual {v5, v7, v8, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 350
    .local v6, themeXmlResId:I
    if-nez v6, :cond_2

    .line 351
    const-string v7, "Unknown"

    goto :goto_0

    .line 356
    :cond_2
    :try_start_0
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 357
    .local v1, parser:Landroid/content/res/XmlResourceParser;
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    .line 358
    .local v0, eventType:I
    :goto_1
    const/4 v7, 0x1

    if-eq v0, v7, :cond_5

    .line 360
    const/4 v7, 0x2

    if-ne v0, v7, :cond_4

    .line 361
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 363
    .local v4, tagName:Ljava/lang/String;
    const-string v7, "ThemeName"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 364
    const/4 v7, 0x0

    const-string v8, "value"

    invoke-interface {v1, v7, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 366
    .local v3, resName:Ljava/lang/String;
    const-string v7, "string"

    invoke-virtual {v5, v3, v7, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 367
    .local v2, resId:I
    if-eqz v2, :cond_3

    .line 368
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 370
    :cond_3
    const-string v7, "Unknown"

    goto :goto_0

    .line 374
    .end local v2           #resId:I
    .end local v3           #resName:Ljava/lang/String;
    .end local v4           #tagName:Ljava/lang/String;
    :cond_4
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    .line 377
    .end local v0           #eventType:I
    .end local v1           #parser:Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v7

    .line 380
    :cond_5
    :goto_2
    const-string v7, "Unknown"

    goto :goto_0

    .line 376
    :catch_1
    move-exception v7

    goto :goto_2
.end method

.method private getThemeResources(Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 3
    .parameter "packageName"

    .prologue
    .line 387
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/FrontTouchKey;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 392
    :goto_0
    return-object v1

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 390
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initToggles()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 254
    iget-object v0, p0, Lcom/android/lgesettings/lge/FrontTouchKey;->mFrontTouchKey01:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 255
    iget-object v0, p0, Lcom/android/lgesettings/lge/FrontTouchKey;->mFrontTouchKey02:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 256
    iget-object v0, p0, Lcom/android/lgesettings/lge/FrontTouchKey;->mFrontTouchKey03:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 257
    iget-object v0, p0, Lcom/android/lgesettings/lge/FrontTouchKey;->mFrontTouchKey04:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 258
    iget-object v0, p0, Lcom/android/lgesettings/lge/FrontTouchKey;->mFrontTouchKey05:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 259
    iget-object v0, p0, Lcom/android/lgesettings/lge/FrontTouchKey;->mFrontTouchKey06:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 261
    return-void
.end method

.method private updateToggles()V
    .locals 12

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 263
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/FrontTouchKey;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "navigation_bar_edit"

    invoke-static {v6, v9, v7}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 264
    .local v0, frontDbValue:I
    const-string v6, "FrontTouchKey"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Refresh: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/FrontTouchKey;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "navigation_bar_edit"

    invoke-static {v10, v11, v7}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/FrontTouchKey;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "navigation_bar_option"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 266
    .local v5, transparent:I
    iget-object v9, p0, Lcom/android/lgesettings/lge/FrontTouchKey;->mTransparent:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_1

    move v6, v7

    :goto_0
    invoke-virtual {v9, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 267
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/FrontTouchKey;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "one_hand_front_touch_button"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 268
    .local v3, onehandGesture:I
    iget-object v9, p0, Lcom/android/lgesettings/lge/FrontTouchKey;->mOnehandGesture:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_2

    move v6, v7

    :goto_1
    invoke-virtual {v9, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 269
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/FrontTouchKey;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "one_hand_navigation_button"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 270
    .local v2, onehand:I
    iget-object v9, p0, Lcom/android/lgesettings/lge/FrontTouchKey;->mOnehand:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_3

    move v6, v7

    :goto_2
    invoke-virtual {v9, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 271
    if-ne v0, v7, :cond_4

    .line 272
    iget-object v6, p0, Lcom/android/lgesettings/lge/FrontTouchKey;->mFrontTouchKey01:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v6, v7}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 285
    :cond_0
    :goto_3
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/FrontTouchKey;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "navigation_bar_theme"

    invoke-static {v6, v7}, Lcom/lge/provider/SettingsEx$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 286
    .local v4, themeDbValue:Ljava/lang/String;
    const-string v6, "FrontTouchKey"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Theme: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v6, p0, Lcom/android/lgesettings/lge/FrontTouchKey;->mTheme:Landroid/preference/Preference;

    invoke-direct {p0, v4}, Lcom/android/lgesettings/lge/FrontTouchKey;->getThemeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 297
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/FrontTouchKey;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "front_touch_land_position"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 298
    .local v1, mFrontPositionDB:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/lgesettings/lge/FrontTouchKey;->mFrontkeyPosition:Landroid/preference/ListPreference;

    invoke-virtual {v6, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 299
    iget-object v6, p0, Lcom/android/lgesettings/lge/FrontTouchKey;->mFrontkeyPosition:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/lgesettings/lge/FrontTouchKey;->mFrontkeyPosition:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 300
    return-void

    .end local v1           #mFrontPositionDB:Ljava/lang/String;
    .end local v2           #onehand:I
    .end local v3           #onehandGesture:I
    .end local v4           #themeDbValue:Ljava/lang/String;
    :cond_1
    move v6, v8

    .line 266
    goto :goto_0

    .restart local v3       #onehandGesture:I
    :cond_2
    move v6, v8

    .line 268
    goto :goto_1

    .restart local v2       #onehand:I
    :cond_3
    move v6, v8

    .line 270
    goto :goto_2

    .line 273
    :cond_4
    const/4 v6, 0x2

    if-ne v0, v6, :cond_5

    .line 274
    iget-object v6, p0, Lcom/android/lgesettings/lge/FrontTouchKey;->mFrontTouchKey02:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v6, v7}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    goto :goto_3

    .line 275
    :cond_5
    const/4 v6, 0x3

    if-ne v0, v6, :cond_6

    .line 276
    iget-object v6, p0, Lcom/android/lgesettings/lge/FrontTouchKey;->mFrontTouchKey03:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v6, v7}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    goto :goto_3

    .line 277
    :cond_6
    const/4 v6, 0x4

    if-ne v0, v6, :cond_7

    .line 278
    iget-object v6, p0, Lcom/android/lgesettings/lge/FrontTouchKey;->mFrontTouchKey04:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v6, v7}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    goto :goto_3

    .line 279
    :cond_7
    const/4 v6, 0x5

    if-ne v0, v6, :cond_8

    .line 280
    iget-object v6, p0, Lcom/android/lgesettings/lge/FrontTouchKey;->mFrontTouchKey05:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v6, v7}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    goto :goto_3

    .line 281
    :cond_8
    const/4 v6, 0x6

    if-ne v0, v6, :cond_0

    .line 282
    iget-object v6, p0, Lcom/android/lgesettings/lge/FrontTouchKey;->mFrontTouchKey06:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v6, v7}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    goto :goto_3
.end method


# virtual methods
.method public createToggles()V
    .locals 21

    .prologue
    .line 101
    const v17, 0x7f040080

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/FrontTouchKey;->addPreferencesFromResource(I)V

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lge/FrontTouchKey;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    .line 103
    .local v13, root:Landroid/preference/PreferenceScreen;
    const-string v17, "fronttouchkey_01"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Lcom/android/lgesettings/lge/RadioButtonPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/lge/FrontTouchKey;->mFrontTouchKey01:Lcom/android/lgesettings/lge/RadioButtonPreference;

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lge/FrontTouchKey;->mFrontTouchKey01:Lcom/android/lgesettings/lge/RadioButtonPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lge/FrontTouchKey;->mFrontTouchKey01:Lcom/android/lgesettings/lge/RadioButtonPreference;

    move-object/from16 v17, v0

    const v18, 0x7f040103

    invoke-virtual/range {v17 .. v18}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setLayoutResource(I)V

    .line 106
    const-string v17, "fronttouchkey_02"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Lcom/android/lgesettings/lge/RadioButtonPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/lge/FrontTouchKey;->mFrontTouchKey02:Lcom/android/lgesettings/lge/RadioButtonPreference;

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lge/FrontTouchKey;->mFrontTouchKey02:Lcom/android/lgesettings/lge/RadioButtonPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lge/FrontTouchKey;->mFrontTouchKey02:Lcom/android/lgesettings/lge/RadioButtonPreference;

    move-object/from16 v17, v0

    const v18, 0x7f040103

    invoke-virtual/range {v17 .. v18}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setLayoutResource(I)V

    .line 109
    const-string v17, "fronttouchkey_03"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Lcom/android/lgesettings/lge/RadioButtonPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/lge/FrontTouchKey;->mFrontTouchKey03:Lcom/android/lgesettings/lge/RadioButtonPreference;

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lge/FrontTouchKey;->mFrontTouchKey03:Lcom/android/lgesettings/lge/RadioButtonPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lge/FrontTouchKey;->mFrontTouchKey03:Lcom/android/lgesettings/lge/RadioButtonPreference;

    move-object/from16 v17, v0

    const v18, 0x7f040103

    invoke-virtual/range {v17 .. v18}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setLayoutResource(I)V

    .line 112
    const-string v17, "fronttouchkey_04"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Lcom/android/lgesettings/lge/RadioButtonPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/lge/FrontTouchKey;->mFrontTouchKey04:Lcom/android/lgesettings/lge/RadioButtonPreference;

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lge/FrontTouchKey;->mFrontTouchKey04:Lcom/android/lgesettings/lge/RadioButtonPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lge/FrontTouchKey;->mFrontTouchKey04:Lcom/android/lgesettings/lge/RadioButtonPreference;

    move-object/from16 v17, v0

    const v18, 0x7f040103

    invoke-virtual/range {v17 .. v18}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setLayoutResource(I)V

    .line 115
    const-string v17, "fronttouchkey_05"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Lcom/android/lgesettings/lge/RadioButtonPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/lge/FrontTouchKey;->mFrontTouchKey05:Lcom/android/lgesettings/lge/RadioButtonPreference;

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lge/FrontTouchKey;->mFrontTouchKey05:Lcom/android/lgesettings/lge/RadioButtonPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lge/FrontTouchKey;->mFrontTouchKey05:Lcom/android/lgesettings/lge/RadioButtonPreference;

    move-object/from16 v17, v0

    const v18, 0x7f040103

    invoke-virtual/range {v17 .. v18}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setLayoutResource(I)V

    .line 118
    const-string v17, "fronttouchkey_06"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Lcom/android/lgesettings/lge/RadioButtonPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/lge/FrontTouchKey;->mFrontTouchKey06:Lcom/android/lgesettings/lge/RadioButtonPreference;

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lge/FrontTouchKey;->mFrontTouchKey06:Lcom/android/lgesettings/lge/RadioButtonPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lge/FrontTouchKey;->mFrontTouchKey06:Lcom/android/lgesettings/lge/RadioButtonPreference;

    move-object/from16 v17, v0

    const v18, 0x7f040103

    invoke-virtual/range {v17 .. v18}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setLayoutResource(I)V

    .line 121
    const-string v17, "front_touch_key_theme"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/FrontTouchKey;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/lge/FrontTouchKey;->mTheme:Landroid/preference/Preference;

    .line 122
    const-string v17, "transparent"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/FrontTouchKey;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/lge/FrontTouchKey;->mTransparent:Landroid/preference/CheckBoxPreference;

    .line 123
    const-string v17, "gesture"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/FrontTouchKey;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/lge/FrontTouchKey;->mOnehandGesture:Landroid/preference/CheckBoxPreference;

    .line 124
    const-string v17, "onehand"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/FrontTouchKey;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/lge/FrontTouchKey;->mOnehand:Landroid/preference/CheckBoxPreference;

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lge/FrontTouchKey;->mTransparent:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lge/FrontTouchKey;->mOnehandGesture:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lge/FrontTouchKey;->mOnehand:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 128
    const-string v17, "position_front_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/FrontTouchKey;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/ListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/lge/FrontTouchKey;->mFrontkeyPosition:Landroid/preference/ListPreference;

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lge/FrontTouchKey;->mFrontkeyPosition:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 130
    const-string v17, "hide_navigation"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/FrontTouchKey;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/lge/FrontTouchKey;->mHideNavigation:Landroid/preference/Preference;

    .line 132
    const-string v17, "front_summary"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/FrontTouchKey;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/lge/FrontTouchKey;->mSummary:Landroid/preference/PreferenceScreen;

    .line 133
    const/16 v16, 0x0

    .line 134
    .local v16, summaryString:Ljava/lang/String;
    const/4 v4, 0x0

    .line 136
    .local v4, QmemoString:Ljava/lang/String;
    const/4 v11, 0x0

    .line 137
    .local v11, pi:Landroid/content/pm/PackageInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lge/FrontTouchKey;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 139
    .local v12, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v17, "com.lge.QuickClip"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 140
    iget-object v0, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "com.lge.QuickClip"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 141
    iget-object v0, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lge/FrontTouchKey;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 142
    const-string v17, "FrontTouchKey"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "QmemoString : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :cond_0
    :goto_0
    const-string v17, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_6

    .line 153
    const v17, 0x7f08109a

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v4, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/lge/FrontTouchKey;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 157
    :goto_1
    const-string v17, "+"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 158
    .local v10, firstIndex:I
    const/4 v14, 0x0

    .line 159
    .local v14, secondIndex:I
    const-string v17, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 160
    const-string v17, "-"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 161
    const-string v17, "("

    add-int/lit8 v18, v14, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v17

    if-eqz v17, :cond_1

    .line 162
    const-string v17, "-"

    add-int/lit8 v18, v14, 0x1

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v14

    .line 165
    :cond_1
    new-instance v15, Landroid/text/SpannableStringBuilder;

    invoke-direct/range {v15 .. v16}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 166
    .local v15, stringBuilder:Landroid/text/SpannableStringBuilder;
    new-instance v17, Landroid/text/style/ImageSpan;

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lge/FrontTouchKey;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lge/FrontTouchKey;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0202bb

    invoke-static/range {v19 .. v20}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    add-int/lit8 v18, v10, -0x1

    add-int/lit8 v19, v10, 0x2

    const/16 v20, 0x12

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 171
    const-string v17, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 172
    new-instance v17, Landroid/text/style/ImageSpan;

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lge/FrontTouchKey;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lge/FrontTouchKey;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0202bc

    invoke-static/range {v19 .. v20}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    add-int/lit8 v18, v14, -0x1

    add-int/lit8 v19, v14, 0x2

    const/16 v20, 0x12

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 178
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lge/FrontTouchKey;->mSummary:Landroid/preference/PreferenceScreen;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 180
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lge/FrontTouchKey;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    const-string v18, "combination_category"

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    .line 181
    .local v8, combinationCategory:Landroid/preference/PreferenceCategory;
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lge/FrontTouchKey;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    const-string v18, "advanced_category"

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    .line 182
    .local v5, advancedCategory:Landroid/preference/PreferenceCategory;
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lge/FrontTouchKey;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    const-string v18, "background_category"

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    .line 183
    .local v7, backgroundCategory:Landroid/preference/PreferenceCategory;
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lge/FrontTouchKey;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    const-string v18, "advanced_settings_category"

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    .line 184
    .local v6, advancedSettingsCategory:Landroid/preference/PreferenceCategory;
    if-eqz v13, :cond_3

    const-string v17, "SPR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 185
    const-string v17, "fronttouchkey_01"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/FrontTouchKey;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 186
    const-string v17, "fronttouchkey_02"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/FrontTouchKey;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 187
    const-string v17, "fronttouchkey_03"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/FrontTouchKey;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 188
    const-string v17, "fronttouchkey_04"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/FrontTouchKey;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 189
    const-string v17, "fronttouchkey_05"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/FrontTouchKey;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 190
    const-string v17, "fronttouchkey_06"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/FrontTouchKey;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 191
    const-string v17, "front_summary"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/FrontTouchKey;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 193
    :cond_3
    if-eqz v5, :cond_4

    .line 194
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lge/FrontTouchKey;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x207002f

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    .line 195
    const-string v17, "advanced_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/FrontTouchKey;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 203
    :cond_4
    if-eqz v13, :cond_7

    if-eqz v6, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lge/FrontTouchKey;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x207002f

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    if-nez v17, :cond_7

    .line 204
    invoke-virtual {v13, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 213
    :cond_5
    :goto_2
    return-void

    .line 144
    .end local v5           #advancedCategory:Landroid/preference/PreferenceCategory;
    .end local v6           #advancedSettingsCategory:Landroid/preference/PreferenceCategory;
    .end local v7           #backgroundCategory:Landroid/preference/PreferenceCategory;
    .end local v8           #combinationCategory:Landroid/preference/PreferenceCategory;
    .end local v10           #firstIndex:I
    .end local v14           #secondIndex:I
    .end local v15           #stringBuilder:Landroid/text/SpannableStringBuilder;
    :catch_0
    move-exception v9

    .line 145
    .local v9, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v17, "FrontTouchKey"

    const-string v18, "package is not found(com.lge.QuickClip)"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 155
    .end local v9           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_6
    const v17, 0x7f08104b

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/lge/FrontTouchKey;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    .line 209
    .restart local v5       #advancedCategory:Landroid/preference/PreferenceCategory;
    .restart local v6       #advancedSettingsCategory:Landroid/preference/PreferenceCategory;
    .restart local v7       #backgroundCategory:Landroid/preference/PreferenceCategory;
    .restart local v8       #combinationCategory:Landroid/preference/PreferenceCategory;
    .restart local v10       #firstIndex:I
    .restart local v14       #secondIndex:I
    .restart local v15       #stringBuilder:Landroid/text/SpannableStringBuilder;
    :cond_7
    if-eqz v6, :cond_5

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lge/FrontTouchKey;->mFrontkeyPosition:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/FrontTouchKey;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 305
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/FrontTouchKey;->createToggles()V

    .line 306
    invoke-direct {p0}, Lcom/android/lgesettings/lge/FrontTouchKey;->updateToggles()V

    .line 307
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 308
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/FrontTouchKey;->createToggles()V

    .line 88
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/FrontTouchKey;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 89
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/FrontTouchKey;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/lgesettings/Utils;->supportSplitView(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 331
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 332
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 333
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/FrontTouchKey;->finish()V

    .line 334
    const/4 v1, 0x1

    .line 336
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v5, 0x1

    .line 219
    invoke-static {}, Lcom/android/lgesettings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    .end local p2
    :goto_0
    return v5

    .line 222
    .restart local p2
    :cond_0
    invoke-direct {p0}, Lcom/android/lgesettings/lge/FrontTouchKey;->initToggles()V

    .line 224
    iget-object v1, p0, Lcom/android/lgesettings/lge/FrontTouchKey;->mFrontTouchKey01:Lcom/android/lgesettings/lge/RadioButtonPreference;

    if-ne p1, v1, :cond_2

    .line 225
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/FrontTouchKey;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "navigation_bar_edit"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 226
    iget-object v1, p0, Lcom/android/lgesettings/lge/FrontTouchKey;->mFrontTouchKey01:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v1, v5}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    .line 250
    .end local p2
    :cond_1
    :goto_1
    const-string v1, "FrontTouchKey"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/FrontTouchKey;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "navigation_bar_edit"

    invoke-static {v3, v4, v5}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 227
    .restart local p2
    :cond_2
    iget-object v1, p0, Lcom/android/lgesettings/lge/FrontTouchKey;->mFrontTouchKey02:Lcom/android/lgesettings/lge/RadioButtonPreference;

    if-ne p1, v1, :cond_3

    .line 228
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/FrontTouchKey;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "navigation_bar_edit"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 229
    iget-object v1, p0, Lcom/android/lgesettings/lge/FrontTouchKey;->mFrontTouchKey02:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v1, v5}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    goto :goto_1

    .line 230
    :cond_3
    iget-object v1, p0, Lcom/android/lgesettings/lge/FrontTouchKey;->mFrontTouchKey03:Lcom/android/lgesettings/lge/RadioButtonPreference;

    if-ne p1, v1, :cond_4

    .line 231
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/FrontTouchKey;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "navigation_bar_edit"

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 232
    iget-object v1, p0, Lcom/android/lgesettings/lge/FrontTouchKey;->mFrontTouchKey03:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v1, v5}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    goto :goto_1

    .line 233
    :cond_4
    iget-object v1, p0, Lcom/android/lgesettings/lge/FrontTouchKey;->mFrontTouchKey04:Lcom/android/lgesettings/lge/RadioButtonPreference;

    if-ne p1, v1, :cond_5

    .line 234
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/FrontTouchKey;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "navigation_bar_edit"

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 235
    iget-object v1, p0, Lcom/android/lgesettings/lge/FrontTouchKey;->mFrontTouchKey04:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v1, v5}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    goto :goto_1

    .line 236
    :cond_5
    iget-object v1, p0, Lcom/android/lgesettings/lge/FrontTouchKey;->mFrontTouchKey05:Lcom/android/lgesettings/lge/RadioButtonPreference;

    if-ne p1, v1, :cond_6

    .line 237
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/FrontTouchKey;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "navigation_bar_edit"

    const/4 v3, 0x5

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 238
    iget-object v1, p0, Lcom/android/lgesettings/lge/FrontTouchKey;->mFrontTouchKey05:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v1, v5}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    goto :goto_1

    .line 239
    :cond_6
    iget-object v1, p0, Lcom/android/lgesettings/lge/FrontTouchKey;->mFrontTouchKey06:Lcom/android/lgesettings/lge/RadioButtonPreference;

    if-ne p1, v1, :cond_7

    .line 240
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/FrontTouchKey;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "navigation_bar_edit"

    const/4 v3, 0x6

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 241
    iget-object v1, p0, Lcom/android/lgesettings/lge/FrontTouchKey;->mFrontTouchKey06:Lcom/android/lgesettings/lge/RadioButtonPreference;

    invoke-virtual {v1, v5}, Lcom/android/lgesettings/lge/RadioButtonPreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 242
    :cond_7
    iget-object v1, p0, Lcom/android/lgesettings/lge/FrontTouchKey;->mFrontkeyPosition:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_1

    .line 243
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 244
    .local v0, value:I
    const-string v1, "FrontTouchKey"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set landscape position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/FrontTouchKey;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "front_touch_land_position"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 246
    iget-object v1, p0, Lcom/android/lgesettings/lge/FrontTouchKey;->mFrontkeyPosition:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 247
    iget-object v1, p0, Lcom/android/lgesettings/lge/FrontTouchKey;->mFrontkeyPosition:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/lgesettings/lge/FrontTouchKey;->mFrontkeyPosition:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 317
    iget-object v3, p0, Lcom/android/lgesettings/lge/FrontTouchKey;->mTransparent:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_2

    .line 318
    iget-object v3, p0, Lcom/android/lgesettings/lge/FrontTouchKey;->mTransparent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 319
    .local v0, value:Z
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/FrontTouchKey;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "navigation_bar_option"

    if-eqz v0, :cond_1

    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 327
    .end local v0           #value:Z
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .restart local v0       #value:Z
    :cond_1
    move v1, v2

    .line 319
    goto :goto_0

    .line 320
    .end local v0           #value:Z
    :cond_2
    iget-object v3, p0, Lcom/android/lgesettings/lge/FrontTouchKey;->mOnehand:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_4

    .line 321
    iget-object v3, p0, Lcom/android/lgesettings/lge/FrontTouchKey;->mOnehand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 322
    .restart local v0       #value:Z
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/FrontTouchKey;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "one_hand_navigation_button"

    if-eqz v0, :cond_3

    :goto_2
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    .line 323
    .end local v0           #value:Z
    :cond_4
    iget-object v3, p0, Lcom/android/lgesettings/lge/FrontTouchKey;->mOnehandGesture:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_0

    .line 324
    iget-object v3, p0, Lcom/android/lgesettings/lge/FrontTouchKey;->mOnehandGesture:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 325
    .restart local v0       #value:Z
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/FrontTouchKey;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "one_hand_front_touch_button"

    if-eqz v0, :cond_5

    :goto_3
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_3
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 312
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onResume()V

    .line 313
    invoke-direct {p0}, Lcom/android/lgesettings/lge/FrontTouchKey;->updateToggles()V

    .line 314
    return-void
.end method
